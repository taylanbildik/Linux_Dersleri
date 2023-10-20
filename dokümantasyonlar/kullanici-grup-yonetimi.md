# Kullanıcı ve Grup Yönetimi

Bu bölüm içerisinde Linux sistemindeki kullanıcı ve grup yönetimi gibi kavramlara değinip yetkiler üzerine konuşacağız. 

Sistem kaynaklarına erişimi olan ve sistemini yetkileri dahilinde yönetenlere genel olarak kullanıcı diyoruz. Linux'ta "<strong class="text-danger">süper(Super User)</strong>", "<strong class="text-primary">sistem(System User)</strong>" ve "<strong class="text-success">normal(Normal User)</strong>" olmak üzere üç tür kullanıcı bulunuyor. Şimdi sırasıyla bu kullanıcıları açıklayacak olursak;

<strong class="text-danger">Süper Kullanıcı:</strong> Aslında daha çok “<strong class="text-danger">root</strong>” yani “<strong class="text-danger">Kök Kullanıcı</strong>” olarak bilinen, sistem üzerindeki tüm haklara sahip olan en yetkili kullanıcı hesabına verilen bir isim. Yani biz root hesabını kullanıyorken, sistemdeki en yetkili olan "süper kullanıcı" hesabını yönetiyor olacağız. 

<strong class="text-primary">Sistem Kullanıcısı:</strong> Yazılım veya uygulamalar tarafından oluşturulan ve yönetilen kullanıcılara da “sistem kullanıcısı” deniyor. Örneğin sistemimizde saatin senkronize edilmesini sağlayan “**ntp**” isimli bir araç yüklüyse bu aracın görevini yerine getirmek için kendisine ait bir sistem kullanıcı hesabı bulunuyordur. Bu sayede gerektiğinde bu kullanıcı hesabı üzerinden görevlerini yerine getirebilir. Tabii ki tüm araçların kendilerine ait kullanıcı hesapları olmasa da işte tıpkı “**ntp**” aracında olduğu gibi sistemdeki çeşitli yazılımların, işlerini görmek için kendi kullanıcı hesapları olması gerekebiliyor. Bu hesaplar insanların değil yazılımların, sistemdeki çeşitli görevleri yerine getirebilmek için kullandığı türden hesaplardır. Bu sebeple bu tür hesaplara “sistem kullanıcı” hesabı deniyor. Bu kullanıcıların yetkileri, yalnızca görevlerini yerine getirebilecekleri düzeyde olduğu için yetkileri olmayan işler yapamazlar.

<strong class="text-success">Normal Kullanıcı:</strong> Normal olarak geçen kullanıcı hesapları, kök kullanıcısının oluşturduğu standart kullanıcı hesaplarıdır. Standart kullanıcıların temel görevleri yerine getirebilmeleri için oluşturulan hesaplardır. Bu tür hesapları standart insanlar kullanacağı için normal kullanıcılar kendi ev dizinlere sahiptir. Yani genellikle ***/home*** dizini altında kullanıcı isimleriyle oluşturulmuş olan bir klasörde, kişisel dosyalarını barındırmaları için bir ev dizinleri vardır. Ev dizini, insanların kişisel dosyalarını düzenli şekilde tutabilmeleri ve kendi kullanıcı hesaplarına yönelik kişiselleştirilmiş çalışma ortamına sahip olabilmeleri için önemli bir yaklaşım. Ev dizini kavramının ne olduğunu biliyorsunuz zaten. Ev dizinleri dışında tabii ki normal kullanıcılar da sahip oldukları yetkiler dahilinde sistemdeki araçları kullanabilirler. Yetkilerinin düşük veya yüksek olmasına göre sistem üzerinde yetkileri dahilinde hareket edebilirler. 

# `sudo` Komutunu Anlamak

Sistemi yönetirken, yetki gerektiren işlemler yapmamız gerebilir. Sistemde en yetkili kullanıcının **root** olduğunu öğrendik. Bu durumda ilgili görevleri yerine getirmek için root hesabına geçiş yapabiliriz. Ancak root hesabındayken, tüm yetkilere sahip olacağınız için, hatalı şekilde kritik dosyaları silmenizi önleyecek veya sistemin işleyişine zarar verecek bir eyleminizde sizi uyaracak bir mekanizma yoktur. Çünkü root hesabını yalnızca gerektiğinde kullandığınız ve ne yaptığınızı bildiğiniz varsayılır. Zaten root hesabını kullanmak tehlikeli olabileceği için çoğu sistemde root hesabı pasif şekilde gelir. Siz aktifleştirmediğiniz sürece root hesabı kullanılamaz. 

Buna karşın root hesabı aktif olmasa bile yetki gerektiren işlerimiz için geçici olarak root  yetkileri ile hareket edebilmemizi sağlayan `sudo` komutunu kullanabiliyoruz. `sudo` sayesinde root hesabı aktif değilken veya root aktifse bile root hesabının şifresini bilmeden yönetici ayrıcalıkları ile işlerimizi yürütmemiz mümkün oluyor. Elbette hangi kullanıcıların hangi ayrıcalıklara erişebileceğini belirlemek için düzenlememiz gereken konfigürasyonlar bulunuyor. Fakat henüz bölümün başındayken bu detaylardan bahsetmeyeceğiz. İleride bu detaylar çok daha anlaşılır olacaktır.

Şimdilik `sudo` komutunun kullanıcıya, işlemleri yetkili şekilde gerçekleştirebilme imkanı tanıdığını bilmemiz yeterli. Hatta hemen basit bir örnek olarak **root** kullanıcısının ev dizini görüntülemeyi deneyebiliriz. Ben görüntülemek için `ls /root` komutunu giriyorum. 

```bash
[taylan@linuxdersleri ~]$ ls /root/
ls: cannot open directory '/root/': Permission denied
```

Gördüğünüz gibi erişim hatası aldık. Şimdi aynı komutu `sudo` komutu başta olacak şekilde tekrar girelim. 

```bash
[taylan@linuxdersleri ~]$ sudo ls /root
[sudo] password for taylan:
```

Buraya kendi hesabımın parolasını girmem gerekiyor. Güvenlik için parola yazarken gözükmüyor, gözükmese de yazıp <kbd>Enter</kbd> ile onaylayın.

```bash
[taylan@linuxdersleri ~]$ sudo ls /root
[sudo] password for taylan: 
anaconda-ks.cfg  Desktop  Documents  Downloads	Music  Pictures  Public  Templates  Videos
[taylan@linuxdersleri ~]$
```

Parolamı doğru yazdığım için yetkili şekilde ***/root*** dizinin içeriğini görüntüleyebildim. İşte `sudo` komutunun en temel kullanımı bu şekilde. Bu bölüme gelinceye kadar, yetki gerektiren işlemiz için defalarca `sudo` komutunu kullandığımız için zaten bu duruma aşina olduğunuzu düşünüyorum. Şimdilik bu kadarlık bilgi de yeterli. Temel kavramları netleştirmek için öncelikle nasıl yeni bir kullanıcı hesabı oluşturabileceğimizden bahsederek başlayalım.

# Kullanıcı Hesabı Oluşturmak

Yeni bir kullanıcı hesabı oluşturmak istiyorsak, kullanıcı hesabı oluşturabilecek yetkimizin olması gerekiyor. Dolayısıyla bu işlem için en yetkili kullanıcı olan root kullanıcı hesabına ihtiyacımız var. Fakat bu durumun bir istisnası bulunuyor. Eğer normal bir kullanıcı root hesabının bulunduğu yetki grubuna dahil edildiyse bu kullanıcı, root gibi davranarak yetki gerektiren işlemleri yapabilir. Biz yetkili gruba dahil olduğumuzu kanıtlamak için `sudo` komutunu kullanıyoruz. Zaten `sudo` komutuna da kısaca değindik. 

Yeni bir hesap oluşturmak için, "`adduser`" ya da "`useradd`" komutlarından herhangi birini kullanabiliyoruz. `adduser` daha kullanışlı olduğu için benim öncelikli tercihim. Yine de biz her ikisini de kısaca ele alacağız.

## `adduser`

Ben “**nil**” isminde yeni bir kullanıcı oluşturmak istiyorum. Bunun için `sudo adduser nil` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo adduser nil
[sudo] password for taylan:
```

Eğer `sudo` komutunu kullanmazsak, yetkimiz olmadığı için işlem başarısız olur. Bu işlemi gerçekleştirme yetkimiz olduğunu kanıtlamak için mevcut kullanıcı hesabımızın parolasını girip işlemi onaylamamız gerekiyor. 
```bash
[sudo] password for taylan: 
Adding user `nil' ...
Adding new group `nil' (1002) ...
Adding new user `nil' (1001) with group `nil' ...
Creating home directory `/home/nil' ...
Copying files from `/etc/skel' ...
New password:
```
Çıktıları inceleyecek olursak:

- Belirttiğim isimde yani “**nil**” ismiyle kullanıcını eklendiği,

- “**nil**” isimli yeni bir grup oluşturulduğu,

- “**nil**” kullanıcısının bu gruba eklendiği,

- **nil**’in ev dizinin ***/home/nil*** dizininde oluşturulduğu, 

- ev dizinine ***/etc/skel*** dizinindeki dosyaların kopyalandığı belirtilmiş. 

Bu ***/etc/skel*** klasörü standart kullanıcılar için gerekli olan temel dosyaları barındıran bir klasör. Zaten ev dizinin temel iskeletini oluşturmaya atıfta bulunmak için "**skel**" klasör ismi de İngilizce “**iskelet**” ifadesinden geliyor. 

Kullanıcı hesabına ait temel işlemler gerçekleştirildikten sonra, bizden bu kullanıcının parolasını tanımlamamız bekleniyor. 

```bash
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for nil
Enter the new value, or press ENTER for the default
        Full Name []:
```

Parola tanımlama işleminden sonra, eğer istersem kullanıcıyla ilgili burada bana sorulacak olan ek kişisel bilgileri doldurabilirim. Şu an için pek gerekli değil o yüzden <kbd>Enter</kbd> ile tüm soruları geçiyorum. Tabii ki siz dilerseniz doldurabilirsiniz. 

```bash
Enter the new value, or press ENTER for the default
        Full Name []: 
        Room Number []: 
        Work Phone []: 
        Home Phone []: 
        Other []: 
Is the information correct? [Y/n]
```

Son olarak bilgileri de "**y**" ile onaylayıp işlemi tamamlıyorum. Böylelikle “**nil**” kullanıcı hesabı oluşturulmuş oldu. Teyit etmek için `ls /home/` komutuyla ev dizinin içeriğini sorgulayalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls /home/
kali  nil  taylan
```

***/home*** dizini altında **nil** isimli kullanıcının ev dizini oluşturulmuş. İşte `adduser` komutu ile kullanıcı oluşturma işlemi bu kadar kolay. 

## `useradd`

Normalde `useradd` komutunu kullandığımızda, biz özellikle belirtmezsek, `adduser` komutunda olduğu gibi kullanıcının ev dizini oluşturulmuyor. 

Kullanıcının ev dizinin de oluşturulması için özellikle komutumuzu `useradd -m kullanıcı-adı` şeklinde girmemiz gerekiyor. Ben “**ali**” isimli bir kullanıcı hesabı oluşturmak istiyorum. Bunun için `useradd -m ali` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo useradd -m ali

┌──(taylan㉿linuxdersleri)-[~]
└─$
```

Hiç bir çıktı almadık, bize ne şifre sordu ne de başka bir bilgi yalnızca kullanıcı sisteme eklendi. Eklendiğini de ***/home*** dizinini listeleyerek teyit edebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls /home/
ali  kali  nil  taylan
```

Bu kullanıcının bir parolası olmadığı için tabii ki şu an bu hesapta oturum açamayız. Bu kullanıcı hesabına parola tanımlamak için de `passwd` komutunu kullanabiliriz. Ben `sudo passwd ali` şeklinde yazıyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo passwd ali
New password: 
Retype new password: 
passwd: password updated successfully
```

Böylelikle **ali** kullanıcısı için de bir parola tanımlamış olduk. Sizlerin de fark etmiş olduğu gibi, ele aldığımız önceki araç yani `adduser` komutu çok daha kullanıcı dostu bir araç. Çünkü ev dizinini otomatik oluşturup parola oluşturmamız için bizden talepte bulunuyor ve kullanıcıyla ilgili diğer çeşitli bilgileri de sorup doldurmamızı sağlıyor. Bu sebeple zaten yeni kullanıcı oluşturmak için genellikle `adduser` aracı tercih ediliyor.

Neticede kullanıcı oluşturmanın en temel iki yolundan bahsetmiş olduk. Şimdi hazır kullanıcı oluşturmaktan bahsetmişken, kullanıcı hesaplarıyla ilişkili olan birkaç dosyadan da bahsetmek istiyorum. 

## ***/etc/passwd*** Dosyası Hakkında

İçeriğini inceleyebilmek için `cat /etc/passwd` komutu ile dosyamızı okuyalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /etc/passwd                                                                                                                                   
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:100:102:systemd Network Management,,,:/run/systemd:/usr/sbin/nologin
systemd-resolve:x:101:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
_apt:x:102:65534::/nonexistent:/usr/sbin/nologin
mysql:x:103:110:MySQL Server,,,:/nonexistent:/bin/false
tss:x:104:111:TPM software stack,,,:/var/lib/tpm:/bin/false
strongswan:x:105:65534::/var/lib/strongswan:/usr/sbin/nologin
systemd-timesync:x:106:112:systemd Time Synchronization,,,:/run/systemd:/usr/sbin/nologin
redsocks:x:107:113::/var/run/redsocks:/usr/sbin/nologin
rwhod:x:108:65534::/var/spool/rwho:/usr/sbin/nologin
iodine:x:109:65534::/run/iodine:/usr/sbin/nologin
messagebus:x:110:114::/nonexistent:/usr/sbin/nologin
miredo:x:111:65534::/var/run/miredo:/usr/sbin/nologin
_rpc:x:112:65534::/run/rpcbind:/usr/sbin/nologin
usbmux:x:113:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
tcpdump:x:114:120::/nonexistent:/usr/sbin/nologin
rtkit:x:115:121:RealtimeKit,,,:/proc:/usr/sbin/nologin
sshd:x:116:65534::/run/sshd:/usr/sbin/nologin
dnsmasq:x:117:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin
statd:x:118:65534::/var/lib/nfs:/usr/sbin/nologin
avahi:x:119:125:Avahi mDNS daemon,,,:/run/avahi-daemon:/usr/sbin/nologin
nm-openvpn:x:120:126:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
stunnel4:x:121:127::/var/run/stunnel4:/usr/sbin/nologin
nm-openconnect:x:122:128:NetworkManager OpenConnect plugin,,,:/var/lib/NetworkManager:/usr/sbin/nologin
Debian-snmp:x:123:129::/var/lib/snmp:/bin/false
speech-dispatcher:x:124:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
sslh:x:125:130::/nonexistent:/usr/sbin/nologin
postgres:x:126:131:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
pulse:x:127:132:PulseAudio daemon,,,:/run/pulse:/usr/sbin/nologin
saned:x:128:135::/var/lib/saned:/usr/sbin/nologin
inetsim:x:129:137::/var/lib/inetsim:/usr/sbin/nologin
lightdm:x:130:138:Light Display Manager:/var/lib/lightdm:/bin/false
colord:x:131:139:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
geoclue:x:132:140::/var/lib/geoclue:/usr/sbin/nologin
king-phisher:x:133:141::/var/lib/king-phisher:/usr/sbin/nologin
taylan:x:1000:1000:,,,:/home/taylan:/usr/bin/bash
nil:x:1001:1002:,,,:/home/nil:/bin/bash
ali:x:1002:1004::/home/ali:/bin/sh
```

Dosyanın sonuna, yeni eklemiş olduğum iki kullanıcı hesabı için iki satır daha eklenmiş. Bu dosyada, sistemdeki her bir kullanıcı hesabının soldan sağa sırasıyla; ismi, parolası, kullanıcı numarası, grup numarası, hesap bilgileri(hesap bilgilerinden kasıt; `adduser` komutuyla bize sorulan tam isim, telefon numarası, oda numarası gibi bilgiler), ev dizini ve varsayılan kabuk programı bilgisi satırlar halinde tutuluyor. 

![passwd.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kullanici/passwd.webp)

Biz `adduser` ya da `useradd` gibi araçları kullanarak kullanıcı oluşturduğumuzda aslında araçların yaptığı işlerden biri de bu dosyaya, ilgili kullanıcı hesabının detaylarını eklemek oluyor.

```bash
nil:x:1001:1002:,,,:/home/nil:/bin/bash
ali:x:1002:1004::/home/ali:/bin/sh
```

Örneğin `adduser` komutu ile oluşturduğumuz “**nil**” kullanıcısının kabuğu **bash** olarak ayarlanmışken, `useradd` komutu “**ali**” kullanıcısının varsayılan kabuğunu **sh** olarak tanımlamış. Farklı kabukları tanımlamış olsalar da neticede her iki araç da kullanıcı bilgilerini bu dosyaya eklemiş. Listenin geri kalanına baktığımızda mevcut kullanıcı hesabımıza ek olarak, farklı araç ve yazılımların sistem kullanıcı hesaplarının da aynı şekilde bu listede olduğunu görebiliyoruz. Yani bu dosya mevcut sistemdeki tüm kullanıcı hesaplarının temel bilgilerini barındıran dosyamız. 

Bu dosya, kullanıcıların hesap detaylarını barındırdığı için dosya içerisinde gerçekleştireceğimiz değişklikler de ilgili hesapları doğrudan etkiliyor. Örneğin ben dilersem buradan **ali** kullanıcısının kabuğunu, **bash** kabuğunun tam dosya adresini belirterek **bash** olarak değiştirebilirim. Bunun için `sudo nano /etc/passwd` komutu ile yetkili şekilde ***passwd*** dosyasını açalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo nano /etc/passwd
[sudo] password for taylan:
```

**ali** kullanıcısının kabuğunda değişiklik yapmak için son satıra gelip, kabuk bölümüne bash kabuğunun dosya adresini yazabiliriz. 

![change-shell.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kullanici/change-shell.webp)

Dosyamı kaydettiğimde, **ali** kullanıcısının kabuğu da "bash" olarak değişmiş olacak. Zaten eğer hatırlıyorsanız, eğitimin başında varsayılan kabuğunu bash olarak değiştirmek için de bu dosyada değişiklik yapmıştık. İşte Linux sisteminde her şey dosya yapısı üzerinden ele alındığı için sistem yönetimi ve düzenlemesi de dosyalar üzerinden kolayca gerçekleştirilebiliyor. Pek çok araç yani pek çok komutta aslında bu ve bunun gibi dosyalar üzerinde, kısayoldan düzenleme yapmamıza olanak sağlıyor. Biz hangi dosyanın hangi işlevde olduğunu biliyorsak, istersek manuel olarak elle dosyayı düzenleriz istersek de aynı işi yapan bir aracı yani komutu kullanırız. Bu dosya üzerinden açıkladığımız gibi sistemdeki dosyaların işlevlerini bildiğimiz zaman denetim ve yönetim noktasında pek çok avantaja sahip oluyoruz. Ben <kbd>Ctrl</kbd> + <kbd>x</kbd> ile dosyayı kaydetmek üzere kapatıp kaydetme işlemini de onaylıyorum. Neticede **ali** kullanıcı hesabı için varsayılan kabuğu, kullanıcı hesapları hakkında bilgileri barındıran bu ***/etc/passwd*** dosyasında elle düzenleme yaparak değiştirmiş oldum.

Tıpkı bu kabuk düzenleme işlemi gibi aslında istersek `adduser` veya `useradd` gibi araçları kullanmadan kendimiz bu ***passwd*** dosyasına yeni kullanıcı hesabı tanımlayıp yeni kullanıcı da oluşturabiliriz. 

Manuel şekilde kullanıcı oluşturabiliyor olsak da, yine de **en kolay ve mantıklı yöntem** `adduser` komutunu kullanıp `adduser` komutunun yeni kullanıcı için gereken tüm ayarlamaları yapmasını sağlamaktır. Dosya içeriğinde oynama yapıp kullanıcı hesabıyla ilgili bilgileri kolayca değiştirebiliyor olmamız güzel bir esneklik evet. Ancak tek tek pek çok ayarlama yapmamız gerektiği için sıfırdan kullanıcı oluştururken önerdiğim veya kullandığım bir yöntem değil. Oluşturması da silmesi de daha sonra zahmetli olabiliyor. Zaten dilerseniz henüz kullanıcı hesabını oluşturma aşamasında `adduser` komutunun seçeneklerini kullanarak da kullanıcı hesapları ile ilgili detayları ***/etc/passwd*** dosyasını elle düzenlemeye gerek kalmadan belirtebilirsiniz. Hangi seçenekler olduğunu görmek için `adduser --help` komutu ile çıktıları inceleyebilirsiniz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]                                                                                                                              
└─$ adduser --help
adduser [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]                                                                                          
[--firstuid ID] [--lastuid ID] [--gecos GECOS] [--ingroup GROUP | --gid ID]
[--disabled-password] [--disabled-login] [--add_extra_groups] USER
   Add a normal user

adduser --system [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--gecos GECOS] [--group | --ingroup GROUP | --gid ID] [--disabled-password]
[--disabled-login] [--add_extra_groups] USER
   Add a system user

adduser --group [--gid ID] GROUP
addgroup [--gid ID] GROUP
   Add a user group

addgroup --system [--gid ID] GROUP
   Add a system group

adduser USER GROUP
   Add an existing user to an existing group

general options:
  --quiet | -q      don't give process information to stdout
  --force-badname   allow usernames which do not match the
                    NAME_REGEX configuration variable
  --help | -h       usage message
  --version | -v    version number and copyright
  --conf | -c FILE  use FILE as configuration file
```

Yeni kullanıcı oluşturma aşamasında; spesifik ev dizinini veya farklı bir kabuğu belirtebiliriz, dilersek ev dizini olmamasını sağlayabiliriz, kullanıcı numarasını belirtebiliriz ve benzeri tüm ayarlamaları buradaki seçenekleri kullanarak gerçekleştirebiliriz. Tek yapmanız gereken `adduser` komutunun doğru seçeneklerini kullanmaktır. 

***/etc/passwd*** dosyası hakkında son birkaç detaydan daha bahsedip parolaların tutulduğu dosyayı açıklamak istiyorum. Tekrar `sudo nano /etc/passwd` komutuyla dosyamızı açıp üzerinden konuşmaya devam edelim. 

### Hesabı Deaktif Hale Getirmek

Eğer bir kullanıcı hesabının bilgilerini silmeden o kullanıcı hesabını deaktif halde getirmek istersek; ilgili kullanıcının varsayılan kabuk programı yerine, kullanıcının oturum açmasını reddeden ***/usr/sbin/nologin*** dosyasını yazabiliriz. 

```bash
inetsim:x:129:137::/var/lib/inetsim:/usr/sbin/nologin
lightdm:x:130:138:Light Display Manager:/var/lib/lightdm:/bin/false
colord:x:131:139:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
geoclue:x:132:140::/var/lib/geoclue:/usr/sbin/nologin
king-phisher:x:133:141::/var/lib/king-phisher:/usr/sbin/nologin
taylan:x:1000:1000:,,,:/home/taylan:/usr/bin/bash
nil:x:1001:1002:,,,:/home/nil:/bin/bash
ali:x:1002:1004::/home/ali:/bin/bash
```

Burada çeşitli araçlara ait olan sistem kullanıcıların neredeyse hepsi bu şekilde ayarlı. Araçlara ait kullanıcılar olduğu için zaten bu kullanıcıların oturum açıp kabuk kullanması gerekmediği için bu şekilde belirtilmişler. İşte bizler de herhangi bir kullanıcının oturum açmasını kibarca reddetmek için buraya kabuk yerine bu dosyayı ekleyebiliriz. 

Ben **ali** kullanıcısının oturum açmasını engellemek için buradaki kabuğu ***/usr/sbin/nologin*** şeklinde giriyorum. 

```bash
ali:x:1002:1004::/home/ali:/usr/sbin/nologin
```

Tamamdır dosyamızı kaydedip kapatalım.

Mevcut konsolumuz üzerinden yeni bir kullanıcı hesabına geçiş yapmak için `su` komutunun ardından geçiş yapmak istediğimiz hesabın ismini girmemiz yeterli oluyor. Ben **ali** kullanıcısına geçiş yapmak için `su ali` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su ali                                                                               
Password: 
This account is currently not available.
```

“***bu hesap şu anda müsait değil***” şeklinde hata aldık. Normalde eğer bir kabuk programı tanımlı olsaydı direk o kabuk başlatılacaktı fakat biz ***nologin*** dosyasını varsayılan olarak ayarladığımız için bu şekilde hesabı pasif hale getirmiş olduk.

Tekrar ***passwd*** dosyasına bakacak olursak ***nologin*** seçeneği dışında, listede ***/bin/false*** şeklinde olan kullanıcı hesapları olduğunu da görebiliriz. 

```bash
inetsim:x:129:137::/var/lib/inetsim:/usr/sbin/nologin
lightdm:x:130:138:Light Display Manager:/var/lib/lightdm:/bin/false
colord:x:131:139:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
```

***nologin*** dosyasına benzer şekilde ***false*** dosyası da kullanıcının oturum açmasına engel olmak için kullanılan dosya. Fakat ***nologin*** dosyasından farklı olarak kullanıcıya bu durumda bir uyarı verilmeden kullanıcı doğrudan reddediliyor. Bu bilgiler ışığında, gerektiğinde siz de bu şekilde kullanıcı bilgisini dosyadan silmeden kullanıcı hesabını kolayca pasifleştirebilirsiniz. Daha sonra dilediğiniz zaman da tekrar bu dosyayı düzenleyip kullanıcıya kabuk tanımlayarak aktifleştirebilirsiniz.

Ayrıca hiç değinmedik ama mutlaka parola bölümündeki “**x**”’ler dikkatinizi çekmiştir. Buradaki “**x**” karakterleri, kullanıcı hesabının parolasının ***/etc/shadow*** dosyasında şifrelenmiş şekilde tutulduğuna işaret ediyor. Zaten kullanıcı hesaplarına ait parolalar şifresiz şekilde yani okunabilir biçimde bu listede bulunsaydı hesapların güvenliğini riske girerdi. Bunun yerine tüm kullanıcıların parola bilgileri ***/etc/shadow*** dosyasında şifrelenmiş şekilde tutuluyor. Daha iyi anlamak için şimdi ***/etc/shadow*** dosyasından bahsederek devam edelim.

## ***/etc/shadow*** Dosyası

Dosya hakkında konuşmak için önce dosyamızı açalım. Ben açmak için `sudo nano /etc/shadow` komutunu giriyorum. Eğer `sudo` komutuyla bu dosyayı yetkili şekilde açmazsanız dosya içeriğini görüntüleyemezsiniz çünkü bu dosyada kullanıcı hesaplarının parola bilgileri bulunuyor.

 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo nano /etc/shadow
```

![shadow.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kullanici/shadow.webp)

Tıpkı ***passwd*** dosyasına benziyor fakat ***shadow*** dosyasında, kullanıcıların parolalarıyla ilgili çeşitli bilgiler tutuluyor. 

Örneğin en son oluşturduğumuz kullanıcılar hakkında bilgi almak için satırın en sonuna inelim. 

```bash
...
lightdm:*:19034:0:99999:7:::
colord:*:19034:0:99999:7:::
geoclue:*:19034:0:99999:7:::
king-phisher:*:19034:0:99999:7:::
taylan:$y$j9T$Pyz0SQwuvSF01.mwGAhvH/$qzPyKX48Q/or41dhLgZeaOCmE9zK0dTBXR1hvGPvwV2:19536:0>
nil:$y$j9T$/s/63wuMbCMeshxKZipnC1$YHg/TzBK83mhgdG2O9hpSaQ0Ovvcbw6UHG1ZyRnJT5A:19545:0:99>
ali:$y$j9T$yMJlpgDGakI6Z9SUpCY9D.$FPXXtQsbFzwN6WkcgryAU3.OS5gYJRfvgRX8vFIt4h/:19545:0:99>
```

Mevcut kullanıcı hesabım da dahil yeni oluşturduğum kullanıcıların isimleri ve yanlarında da parola bilgileri bulunuyor. 

Burada iki nokta üst üste işaretiyle birbirinden ayrılmış bölümleri tek tek ele almak istemiyorum çünkü ele alsam bile muhtemelen aklımızda kalmayacak. Eğer buradaki detayları merak ediyorsanız kısa bir araştırma ile bu sütunların ne ifade ettiğini öğrenebilirsiniz. Ben özellikle bahsetmiyorum çünkü aslında buradaki seçenekleri çok daha kolay okuyup değiştirmemiz için kullanabileceğimiz bir araç var. Anlatımın devamında o araçtan bahsedeceğim için buradaki unutulacak detaylarla vakit kaybetmemize gerek yok. Yine de ilk iki sütunu açıklayacak olursak.

İlk sütunda kullanıcı hesabının ismi bulunuyor. İkinci sütunda ise şifrelenmiş şekilde o kullanıcının parola bilgisi bulunuyor. Biz hesabımızda oturum açmaya çalıştığımızda eğer doğru parolayı girersek, girdiğimiz parola tekrar buradaki yöntemle şifreleniyor ve bu dosyadaki değer ile eşleşiyorsa bu kullanıcı hesabında oturum açabiliyoruz.

Şimdilik ***/etc*** dizini altındaki ***shadow*** dosyasının kullanıcılara ait parola bilgilerini tuttuğunu bilmeniz yeterli.

Kullanıcı hesapları hakkında anlatımlarımıza devam edeceğiz. Fakat daha fazla devam etmeden önce "grup" kavramından da bahsetmek istiyorum. 

# Linux Üzerinde Gruplar

Grup yapısı sayesinde, ortak izinlere sahip olmasını istediğimiz kullanıcıları aynı grupta toplayıp bireysel kullanıcı yetkileri dışında toplu şekilde erişim yetkileri tanımlayabiliyoruz.

Öncelikle grup yönetiminden bahsedelim, daha sonra zaten grupların neden bu kadar önemli olduğunu yetkilendirme bölümünde daha iyi anlamış olacağız.

Normalde yeni bir kullanıcı oluştururken bizzat deneyimlediğimiz gibi; oluşturulan kullanıcının kendisine ait, kullanıcı hesabıyla aynı isimde bir grup oluşturuluyor. İşte bu grup o kullanıcının "birincil grubu" olarak geçiyor. Sistem üzerindeki tüm kullanıcıların birincil grubu bulunuyor. Örneğin ben **ali** isimli kullanıcı oluşturduğum için **ali** kullanıcısının birincil grubu **ali** isimli grup oluyor.

Öncelikle bu durumu teyit etmek için mesela **ali** kullanıcısının grubunu sorgulamak üzere `groups ali` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ groups ali
ali : ali
```

Buradaki `groups` komutundan sonra argüman olarak girdiğimiz kullanıcı isimlerinin dahil olduğu gruplar bu araç sayesinde bastırılıyor. Bakın **ali** kullanıcısı **ali** isimli gruba dahilmiş.

Bunun dışında mesela kendi kullanıcı hesabımızı da sorgulayabiliriz. Ben şu an **taylan** kullanıcı hesabını yönettiğim için `groups taylan` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ groups taylan                                                                        
taylan : taylan adm dialout cdrom floppy sudo audio dip video plugdev netdev wireshark bluetooth scanner kaboxer
```

Bu sefer birden fazla grup listelendi. **taylan** kullanıcısı, birincil olarak **taylan** grubu dahil olmak üzere ikincil şekilde pek çok harici gruba da dahilmiş. 

Örneğin **taylan** kullanıcısı buradaki **sudo** grubuna dahil olduğu için `sudo` aracıyla gerektiğinde **root** yetkileriyle komutlarını çalıştırabiliyor. Ama **ali** kullanıcısı **sudo** grubunda olmadığı için `sudo` aracını kullanıp yetkili şekilde işlem yapmaya kalkarsa erişim yetkisi hatası alır. İşte gruplar zaten bu şekilde birden fazla kullanıcıya ortak şekilde bazı yetkileri vermek için kullanılıyor.

## ***/etc/group*** Dosyası Hakkında

`groups` komutuyla aldığımız çıktıların dışında, kullanıcıların hangi gruplara dahil olduğunun bilgisini öğrenmek için ***/etc/group*** dosyasını da kontrol edebiliriz. Ben göz atmak için `cat` ile dosyayı okumak istiyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /etc/group                                                                                                                                          
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:root,taylan
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:root,taylan
fax:x:21:
voice:x:22:
cdrom:x:24:taylan
floppy:x:25:taylan
tape:x:26:
sudo:x:27:taylan
audio:x:29:pulse,taylan
dip:x:30:taylan
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
gnats:x:41:
shadow:x:42:
utmp:x:43:
video:x:44:taylan
sasl:x:45:
plugdev:x:46:taylan
staff:x:50:
games:x:60:
users:x:100:
nogroup:x:65534:
systemd-journal:x:101:
systemd-network:x:102:
systemd-resolve:x:103:
input:x:104:
sgx:x:105:
kvm:x:106:
render:x:107:
crontab:x:108:
netdev:x:109:taylan
mysql:x:110:
tss:x:111:
systemd-timesync:x:112:
redsocks:x:113:
messagebus:x:114:
kismet:x:115:
_ssh:x:116:
ssl-cert:x:117:postgres
plocate:x:118:
wireshark:x:119:root,taylan
tcpdump:x:120:
rtkit:x:121:
bluetooth:x:122:taylan
kali-trusted:x:123:
i2c:x:124:
avahi:x:125:
nm-openvpn:x:126:
stunnel4:x:127:
nm-openconnect:x:128:
Debian-snmp:x:129:
sslh:x:130:
postgres:x:131:
pulse:x:132:
pulse-access:x:133:
scanner:x:134:saned,taylan
saned:x:135:
sambashare:x:136:
inetsim:x:137:
lightdm:x:138:
colord:x:139:
geoclue:x:140:
kpadmins:x:141:
taylan:1000:
vboxsf:x:142:
kaboxer:x:143:root,taylan
taylan:x:1000:
nil:x:1002:
ali:x:1004:
```

Burada yer alan ilk sütunların hepsi grupların isimleridir. Örneğin en alt satıra inecek olursak, **nil** ve **ali** kullanıcılarının da kendi isimlerinde grupları oluşturulduğu için onların grupları da burada gözüküyor. İlk sütun grup isimleri dedik. İkinci sütun, varsa grubun şifresini temsil ediyor. Ancak çoğunlukla grup şifresi kullanılmadığı için bu konuyu es geçebiliriz. Sondaki sayı ise, bu grubu temsil eden benzersiz "grup numarası". Hatırlıyorsanız kullanıcıları temsil eden “**user id**” yani “kullanıcı numaraları” da ***/etc/passwd*** dosyasında her kullanıcının kendi satırında yazıyordu. Buradaki sayı da bu grubun "grup numarası" işte. Ayrıca en sondaki iki nokta üst üste işaretinden sonra bazı gruplarda boş sütunlar varken bazılarında kullanıcı isimleri var. 

```bash
kaboxer:x:143:root,taylan
yeni-grup:x:1003:
taylan:x:1000:
nil:x:1002:
ali:x:1004:
```

Bu sondaki sütun, bu gruba dahil olan ikincil kullanıcıları temsil ediyor. Yani örneğin **nil** gruba **nil** kullanıcısı dışında hiç kimse dahil olmadığı için buradaki sütun boş. Ama burada **kaboxer** olarak geçen gruba **root** ve **taylan** kullanıcıları dahil olduğu için o kullanıcıların isimleri burada yazıyor. Hatta aldığım çıktıya dönüp dikkatlice bakacak olursanız pek çok grubun sonunda mevcut kullanıcı hesabımın yani **taylan** kullanıcısının bu gruplara ekli olduğunu görebilirsiniz. Zaten **taylan** kullanıcısının dahil olduğu grupları listelediğimizde bu grupların isimlerini görmüştük. İşte bir kez daha teyit etmiş olduk. Neticede bizzat gördüğümüz gibi gruplarla ilgili bilgiler bu dosyada tutuluyor. Yani istersek bu dosyada değişiklik yaparak gruplarla ilgili tanımlamaları değiştirebiliriz. Fakat tabii ki daha önce de olduğu gibi bu işi elle yapmak yerine bu iş için uygun olan aracı kullanarak çok daha sağlıklı şekilde grup oluşturma, gruba yeni kullanıcı ekleme ve çıkarma gibi işlemleri yapabiliriz. Yani ne yaptığınızın gerçekten farkında olmadığınız sürece manuel şekilde müdahale etmenizi önermem. 

## Yeni Grup Oluşturmak

Yeni bir grup oluşturmak için `groupadd` aracını kullanabiliriz. Ben **yeni-grup** isminde bir grup oluşturmak istediğim için `sudo groupadd yeni-grup` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo groupadd yeni-grup
```

Tamamdır grubumun sorunsuzca oluşturulmuş olması gerek. Teyit etmek için `tail -1 /etc/group` komutunu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ tail -1 /etc/group
yeni-grup:x:1005:
```

**yeni-grup** isimli grup oluşturulmuş ve grup numarası olarak da boşta bu sayı bulunduğu için bu sayı tanımlanmış. Şimdi oluşturduğumuz bu gruba yeni bir kullanıcı eklemeyi deneyebiliriz. 

## Gruba Kullanıcı Eklemek

Mevcut gruba kullanıcı eklemek için `gpasswd` aracını kullanabiliriz. Ben **ali** isimli kullanıcıyı "yeni-grup" grubuna eklemek istediğim için `gpasswd -a ali yeni-grup` şeklinde komutumu yazıyorum. `gpasswd` aracına vermiş olduğum `-a` seçeneği benim “add” yani “ekleme” yapmak istediğimi belirten bir seçenek. Ekleme seçeneğinin ardından hangi kullanıcının hangi gruba ekleneceğini de argümanlar olarak yazıyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ gpasswd -a ali yeni-grup                                                             
gpasswd: Permission denied.
```

Ben başta `sudo` komutu olmadan girdiğim için yetki hatası aldım. `sudo !!` komutuyla en sonra girdiğimiz komutu yetkili şekilde tekrar çalıştırmayı deneyelim. Bildiğiniz gibi buradaki çift ünlem işareti, en son çalıştırılan komutu geçmişten çağırıyor. Ben de `sudo` komutundan sonra en son çalıştırılan bu komutu çağırıp yetkili şekilde tekrar çalıştırılmasını sağlıyorum. Zaten genelde yetki gerektiren işlerde `sudo` komutunu girmeyi unuttuğumuzda bu şekilde `sudo !!` komutuyla en son girdiğimiz komutu sıklıkla çağırıyoruz, büyük kolaylık gerçekten. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo !!                                                                              
sudo gpasswd -a ali yeni-grup 
Adding user ali to group yeni-grup
```

Bu kez herhangi bir yetki hatası almadık.

Şimdi tekrar konumuza dönecek olursak, girdiğimiz komut neticesinde **ali** kullanıcısının **yeni-grup** isimli gruba eklenmiş olması gerekiyor. Bunu teyit etmek için yine `tail -1 /etc/group` ya da `groups ali` şekline komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ tail -1 /etc/group                                                                   
yeni-grup:x:1005:ali

┌──(taylan㉿linuxdersleri)-[~]
└─$ groups ali
ali : ali yeni-grup
```

Çıktılardan teyit edebildiğimiz üzere, **yeni-grub**’un sonuna **ali** kullanıcısı da eklenmiş. Yani gruba ekleme işlemi başarılı.

## Gruptan Kullanıcı Silmek

 `gpasswd` aracının `-d` seçeneği yani “**d**elete” seçeneğiyle gruba ekli olan kullanıcıyı silebiliriz. Ben eklediğim **ali** kullanıcısını silmek için `sudo gpasswd -d ali yeni-grup` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo gpasswd -d ali yeni-grup 
Removing user ali from group yeni-grup
```

Şimdi gruptan silindiğini teyit etmek için `groups ali` komutuyla ali kullanıcısının dahil olduğu grupları sorgulayalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ groups ali
ali : ali
```

Artık **yeni-grup** çıktılarda gözükmüyor. Yani **ali** kullanıcısını bu gruptan sildiğimizi teyit edebiliyoruz.

## Grubu Silmek

Grup oluştururken `groupadd` aracını kullanmıştık. Silmek için de `groupdel` aracını kullanabiliyoruz. Ben **yeni-grup** isimli grubu silmek için `sudo groupdel yeni-grup` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo groupdel yeni-grup

┌──(taylan㉿linuxdersleri)-[~]
└─$
```

Tamamdır grubumun silinmiş olması lazım. Teyit etmek için `grep “yeni-grup” /etc/group` komutunu kullanabiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ grep "yeni-grup" /etc/group

┌──(taylan㉿linuxdersleri)-[~]
└─$
```

Herhangi bir çıktı almadık çünkü bu grubu biraz önce silmiştik. Yani silme işlemini de böylelikle teyit etmiş olduk.

Kullanıcı hesapları ve gruplar hakkında temelde bilmemiz gerekenlerden bahsettiğimize göre anlatımlarımıza erişim yetkileri ile devam edebiliriz.

# Erişim Yetkileri

Erişim yetkilerinden bahsedebilmek için öncelikle bu yetkilerin nasıl gözüktüğünü bilmemiz gerekiyor. Ben bunun için ev dizinindeyken, `ls -l` komutuyla detaylı şekilde mevcut dizinimi listeliyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l                                                                                
total 52
drwxr-xr-x 2 taylan taylan 4096 Jun 28 10:58 'bu bir deneme metnidir'
-rw-r--r-- 1 taylan taylan   59 Jul  2 10:29  deneme
drwxr-xr-x 2 taylan taylan 4096 Jul  4 01:45  Desktop
drwxr-xr-x 3 taylan taylan 4096 Jul  3 12:10  Documents
drwxr-xr-x 2 taylan taylan 4096 Jul  5 10:25  Downloads
-rw-r--r-- 1 taylan taylan 7751 Jul  2 14:38  isimler.txt
drwxr-xr-x 2 taylan taylan 4096 Jun 28 10:59  Music
drwxr-xr-x 2 taylan taylan 4096 Jun 28 07:47  Pictures
drwxr-xr-x 2 taylan taylan 4096 Jun 28 01:35  Public
drwxr-xr-x 2 taylan taylan 4096 Jun 28 01:35  Templates
drwxr-xr-x 2 taylan taylan 4096 Jun 28 12:30  test
drwxr-xr-x 2 taylan taylan 4096 Jun 28 01:35  Videos
```

Aldığımız çıktılarda yer alan ilk sütun dosya ve dizinlerin yetkilerini diğer bir deyişle modlarını temsil eden bölüm. Buradaki “**mod**” ifadesi önemli çünkü ileride bu yetkileri değiştirirken aslında “**mod**” değiştirme(`chmod`) aracını kullanıyor olacağız. Yetkilerin devamında yer alan sütunlar da ilgili dosya ve dizinin "hangi kullanıcı" ve "hangi gruba" ait olduğunu yani "**sahiplik**" bilgisini belirtiyor.

![ls -l.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kullanici/ls-l.webp)

Ben kendi ev dizinimi listelediğim için tüm dosya ve dizinleri sahibi ve grubu hep **taylan** kullanıcısı olarak gözüküyor. Bu konuya daha sonra ayrıca değineceğiz. Şimdi tekrar buradaki "yetki" yani "mod" tanımlamalarına dönecek olursak, en genel açıklama aşağıdaki görselde olduğu şekilde:

![permission.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kullanici/permission.webp)

Elbette kavramların netleşebilmesi için tek tek buradaki karakterlerin ne anlama geldiğini açıklamamız gerek.

## Dosya Türü

İlk karakter her zaman dosya veya dizinin "türü" hakkında bilgi sunan karakter oluyor. Örneğin dizinler “**d**irectory” ifadesinin kısaltmasından gelen “**d**” karakteri ile temsil ediliyorken, standart dosyalar kısa çizgi “**-**” ile belirtiliyor. Ayrıca sembolik linkler de “**l**” karakteri ile temsil ediliyor. Tabii ki buradaki çıktılar yalnızca örnek yani sistemdeki tüm dosya türleri burada yer almıyor. Aldığınız çıktıdaki karakterin ne anlama geldiğini bilmediğinizde kısa bir internet araştırmasıyla bu karakter temsili hakkında kolayca pek çok bilgi edinebilirsiniz. Şimdilik yalnızca bu ilk karakter alanın, mevcut dosya veya klasörün türünü temsil ettiğini bilmemiz yeterli.

![permission-first-column.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kullanici/permission-first-column.webp)

## Erişim Yetkileri

Dosya türünün ardından gelen 9 basamaklı karakterlere geçecek olursak. Bu karakterleri 3'er basamaklı 3 gruba ayırmamız gerekiyor. Çünkü buradaki ilk üç karakter bu dosyanın sahibinin izinlerini temsil ediyorken, ikinci üç karakter de bu dosyanın grubunun sahip olduğu yetkileri temsil ediyor. Son üç karakter ise sahibi ve grubu haricindekileri yani hem bu dosyanın sahibi olmayan hem de bu dosyanın grubuyla aynı grupta bulunmayan diğer kullanıcılar için yetkileri temsil ediyor.

![ownership.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kullanici/ownership.webp)

Bu üç ayrı yetki grubu sayesinde her bir dosya ve klasörü yalnızca istediğimiz kullanıcıların erişebileceği şekilde yetkilendirebiliyoruz. 

<p class="yesil">Bu yetki karakterinde kullanılan "<strong>r</strong>", karakteri “<strong>r</strong>ead” yani “okuma” yetkisini temsil eden karakter. Eğer bu karakteri görüyorsanız o dosya veya klasörün içeriğini görüntüleyebilirsiniz. </p>

<p class="mor">"<strong>w</strong>" karakteri, “<strong>w</strong>rite” yani “yazma” yetkisini temsil eden karakter. Bu karakter varsa dosya içeriğini düzenleyip, klasörlerde de dosya ekleme ve silme gibi işlemleri gerçekleştirebilirsiniz. </p>

<p class="turuncu">"<strong>x</strong>" karakteri ise “e<strong>x</strong>ecute” yani “çalıştırma” yetkisini temsil ediyor. Bu yetki varsa dosyaları çalıştırabilir ya da klasör içeriklerini yazma yetkisi de varsa düzenleyebilirsiniz. Klasör içeriklerini düzenlemek için yazma ve çalıştırma yetkisinin her ikisinin de bulunması şart, aksi halde düzenleme yapılamıyor. Ama okuma yetkisi olmadan da düzenleme yapılabilir. </p>

Söylediklerim şu an için pek anlaşılır gelmemiş olabilir. Örnekler üzerinden ele alırsak netleşmiş olacak.

Ben testler sırasında kullanabilmek için basit bir betik dosyası oluşturmak istiyorum. Bunun için `echo "echo ben betik dosyasıyım" > testfile.sh` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ echo "echo ben betik dosyasıyım" > testfile.sh
```

`ls -l testfile.sh` komutuyla yetkileriyle birlikte dosya bilgisini bastıralım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh 
-rw-r--r-- 1 taylan taylan 23 Jul  7 06:01 testfile.sh
```

Öncelikle dosyanın yetkilerine göz atacak olursak; bu dosyanın sahibi hem okuma hem yazma yetkisine sahipken, dosyanın grubundaki kullanıcılar ve diğer kullanıcılar bu dosyayı yalnızca okuyabiliyormuş. 

Bu dosyanın sahibi "taylan" kullanıcısı olduğu için taylan kullanıcısı **rw-** yani **okuma ve yazma** yetkilerine sahip. 

Dosya "taylan" grubuna dahil olduğu için taylan grubundaki tüm kullanıcılar da bu dosya üzerinde **r—** yani yalnızca **okuma** yetkisine sahip. 

Dosyanın sahibi olmayan veya bu grupta bulunmayan diğer tüm kullanıcılar da dosya üzerinde **r—** yani yine yalnızca **okuma** yetkisine sahip. 

Buradaki çıktıdan bizzat teyit ettiğimiz gibi ilgili yetki mevcutsa harf karşılığı gösteriliyorken, yetki yoksa kısa çizgi ile bu yetkinin olmadığı belirtiliyor. Zaten yetki tanımlamasının sıralaması hep **okuma yazma çalıştırma** yani **rwx** şeklinde gittiği için hangi yetkinin olup olmadığını kolayca anlayabiliyoruz. 

### Erişim Yetkilerinin Etkileri

Öncelikle dosyanın sahibi üzerinden yetkilerin nasıl çalıştığını görmek için yeni bir konsol açalım ve dosyamızın okuma yetkisini test etmek için `cat testfile.sh` komutuyla açalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat testfile.sh 
ben betik dosyasıyım
```

Ben dosyanın sahibi olan taylan kullanıcısı olduğum için buradaki okuma yetkim sayesinde bu dosyanın içeriğini okuyabiliyorum. Şimdi yazma yetkisini test etmek için `echo “test” >> testfile.sh` komutu ile yeni veri girişinde bulunalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ echo "test" >> testfile.sh 

┌──(taylan㉿linuxdersleri)-[~]
└─$ cat testfile.sh 
ben betik dosyasıyım
test
```

Yazma yetkim sayesinde dosyaya "test" ifadesini eklemeyi başardım. Şimdi son olarak bu dosyamızı çalıştırmayı denemek için tıpkı daha önce de yaptığımız gibi `./testfile.sh` şeklinde komutumuzu girelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ./testfile.sh
bash: ./testfile.sh: Permission denied
```

Bu kez yetki hatası aldık. Dosyanın yetkilerini tekrar hatırlayacak olursak, dosya sahibinin yani benim bu dosyayı çalıştırma “x” yetkim olmadığını görebiliyoruz.

```bash
└─$ ls -l testfile.sh 
-rw-r--r-- 1 taylan taylan 23 Jul  7 06:01 testfile.sh
```

Dolayısıyla bu dosyayı bir betik dosyası yani bir program gibi çalıştırmam mümkün değil. Çalıştırabilmek için daha önce de yaptığımız gibi `chmod` aracı yardımıyla bu dosyaya çalıştırma yetkisi vermemiz gerek. Bu yetkilere “**mod**” denildiğini özellikle söylemiştim. İşte bu yetkileri değiştirmek için kullandığımız araç da “**ch**ange **mod**e” ifadesinin kısaltması olarak `chmod` şeklinde isimlendirilmiş.

Betik dosyama çalıştırma yetkisi vermek için daha önce de birkaç kez yaptığımız gibi `chmod +x testfile.sh` komutunu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod +x testfile.sh
```

Şimdi tekrar `ls -l` komutuyla listeleyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh 
-rwxr-xr-x 1 taylan taylan 28 Jul  7 06:08 testfile.sh
```

Tüm yetki grupları için çalıştırılma yetkisi verilmiş. Yani artık bu dosyayı herkes çalıştırabilir. Ben denemek için tekrar `./testfile.sh` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ./testfile.sh
ben betik dosyasıyım
```

Bu kez betik dosyam sorunsuzca çalıştı. Yani çalıştırma yetkisi vermeyi başardık. Fakat bu örneğimizde herkese çalıştırma yetkisi vermiş olduk. Bu yaklaşım pek güvenli ve her zaman isteyeceğimiz bir yaklaşım değil. Şimdi yetki verme işlemini nasıl daha spesifik olarak tanımlayabileceğimizden bahsederek devam edelim.

### Erişim Yetkilerini Tanımlamak

Tüm izinleri daha rahat gösterebilmek için öncelikle dosyamdaki tüm yetkileri kaldırmak üzere `chmod -rwx testfile.sh` komutunu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod -rwx testfile.sh 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh                                                                                                        
---------- 1 taylan taylan 33 Jul  7 06:15 testfile.sh
```

Dosyamın tüm yetkileri kaldırılmış. Ben yalnızca dosyanın sahibine çalıştırma yetkisi vermek için `chmod u+x testfile.sh` komutunu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod u+x testfile.sh 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh                                                                                                    
---x------ 1 taylan taylan 33 Jul  7 06:15 testfile.sh
```

Girmiş olduğum komuttaki `u` parametresi “**u**ser” yani “kullanıcı” ifadesinin kısaltmasından gelen “**dosyanın sahibini**” temsil eden parametredir. `+x` tanımı da yalnızca **çalıştırma yetkisi eklemek** istediğimi belirtmek için kullandığım bir parametre. Neticede `ls -l` komutunun çıktısıyla bizzat teyit edebildiğimiz gibi dosyanın sahibine çalıştırma yetkisi vermeyi başardık. 

Yetkiyi silmek istersek de artı yerine eksi işaretini kullanabiliriz. Ben yine dosyanın sahibinden çalıştırma yetkisini kaldırmak istediğim için `chmod u-x testfile.sh` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod u-x testfile.sh                                                                                                    

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh                                                                                                    
---------- 1 taylan taylan 33 Jul  7 06:15 testfile.sh
```

Eksi işareti sayesinde yetki kaldırma işlemini de sorunsuzca gerçekleştirdik.

Eğer dosya sahibinin yetkilerini değil de dosya grubunun yetkilerini değiştirmek istersek `u` yerine `g` karakterini kullanabiliriz. Ben denemek için gruptaki kullanıcılara **okuma ve yazma** yetkisi vermek için `chmod g+rw testfile.sh` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g+rw testfile.sh 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh 
----rw---- 1 taylan taylan 33 Jul  7 06:15 testfile.sh
```

Dosyanın grubu için okuma ve çalıştırma yetkileri verilmiş.

Diğer kullanıcılar için yetki tanımlaması yaparken de “**o**thers” yani “diğerleri” ifadesinin kısaltmasından gelen `o` karakterini kullanabiliyoruz. Ben diğer kullanıcılara yalnızca okuma yetkisi vermek istediğim için `chmod o+r testfile.sh` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod o+r testfile.sh 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh                                                                                                        
----rw-r-- 1 taylan taylan 33 Jul  7 06:15 testfile.sh
```

Diğer kullanıcılar için yalnızca okuma yetkisi tanımlanmış.

İşte bu ele aldığımız yaklaşımlar sayesinde toplu veya tekil olarak istediğimiz yetki tanımlamasını yapabiliyoruz. Örneğin tüm kullanıcıların okuma yetkisini kaldırmak istersek `chmod -r testfile.sh` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod -r testfile.sh 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh 
-----w---- 1 taylan taylan 33 Jul  7 06:15 testfile.sh
```

Okuma yetkisi olanların yalnızca okuma yetkileri kaldırılmış oldu. Neticede burada öğrendiğiniz ekleme ve çıkarma yaklaşımı sayesinde hem spesifik kullanıcı grubuna hem de toplu şekilde tüm kullanıcı yetkilerine ekleme ve çıkarma yapabilirsiniz. Bu arada fark ettiyseniz biz şimdiye kadar hep ekleme ve çıkarma yaptık. Eğer artı ve eksi işaretleriyle ekleme veya çıkarma yapmak yerine doğrudan tanımlamak istediğimiz yetkiler varsa eşittir işaretini kullanabiliyoruz.

Örneğin ***testfile.sh*** dosyasının şu anda yalnızca grubu için yazma yetkisi bulunuyor. Ben grubuna doğrudan okuma ve çalıştırma yetkisi tanımlamak için `chmod g=rx testfile.sh` şeklinde komutumu girebilirim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g=rx testfile.sh 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh 
----r-x--- 1 taylan taylan 33 Jul  7 06:15 testfile.sh
```

Gördüğünüz gibi yazma yetkisi kaldırılıp yalnızca okuma ve çalıştırma yetkisi verilmiş oldu.

Yani özetleyecek olursak; yetki ekleme işlemi için artı, çıkarma işlemi için eksi ve doğrudan yetkiyi tanımlamak için de eşittir işaretini kullanabiliyoruz.

### Rakamlar ile Yetki Tanımlaması

Ayrıca bizim burada kullandığımız yetkileri temsil eden harfler yerine aslında yetki tanımlamak için bu yetkilerin rakam karşılıklarını kullanma imkanımız da var. Üstelik rakamları kullanarak birden fazla yetki gruba tek sefer yetki tanımlamak çok daha kolay. Neden daha kolay olduğunu anlayabilmemiz için öncelikle rakamla nasıl yetki tanımlayabileceğimizden bahsetmemiz lazım.

<span class="yesil">**r** karakteri ile temsil edilen **okuma** yetkisinin sayısal karşılığı **4** rakamıdır.</span>

<span class="mor">**w** karakteri ile temsil edilen **yazma** yetkisinin sayısal karşılığı **2** rakamıdır.</span>

<span class="turuncu">**x** karakteri ile temsil edilen **çalıştırma** yetkisinin sayısal karşılığı **1** rakamıdır.</span>

Biz üç yetki grubuna(sahibi-grubu-diğerleri) yetki tanımlaması yapmak için üç basamaklı şekilde bu rakamların toplamlarını girebiliyoruz.

Önceki örneklerimizi hep dosyalar üzerinde uyguladık fakat yetkiler, klasörler için de aynen geçerli. Ben bu durumu kanıtlamak için örneklerimde kullanmak üzere yeni bir klasör oluşturmak istiyorum.

`mkdir testfolder` komutuyla hemen oluşturalım. Hatta tam bir klasör olması için `touch testfolder/dosya{1..4}` komutuyla birden fazla dosyayı da içerisine ekleyelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ mkdir testfolder

┌──(taylan㉿linuxdersleri)-[~]
└─$ touch testfolder/dosya{1..4}

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder                                                                                                              
drwxr-xr-x 2 taylan taylan 4096 Jul  7 07:39 testfolder
```

Şu anda klasörümün yetkileri bu şekilde. Eğer ben klasör grubundaki kullanıcılara yazma yetkisi vermek istersem **yazma(w)** yetkisini temsil eden **2** rakamını kullanabilirim.

**Ekleme** yapacağım için yine `chmod` komutundan sonra `+` işaretini kullanmam gerekiyor. Şimdi ben yalnızca klasör grubundaki kullanıcılara yazma yetkisi eklemek istediğim için `chmod +020 testfolder` şeklinde komutumu yazıyorum. Burada üç basamaklı sayı yazmamız gerekiyor çünkü ilk sayı her zaman kullanıcıya, ikinci sayı gruba, üçüncü sayı da diğer kullanıcılara ait olan yetkileri temsil ediyor. Ben yalnızca gruba yazma yetkisi eklemek istediğim için diğer yetkilere ekleme yapılmaması için **0** şeklinde yazdım ve grubu temsil eden ortadaki sayıya yazma yetkisini temsil eden **2** rakamını girdim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod +020 testfolder/

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder/
drwxrwxr-x 2 taylan taylan 4096 Jul  7 07:39 testfolder/
```

Klasör grubundakilere yazma yetkisi de eklenmiş.

Kullanımı daha iyi anlamak için mesela yalnızca klasör sahibine okuma izni verip geri kalan tüm yetkileri silmeyi deneyebiliriz. Yetki kaldırma işlemi yapacağımız için eksi işaretini kullanacağız. 

Klasör sahibinden yazma(2) ve çalıştırma(1) yetkisini eksiltmek istediğimiz için yazma ve çalıştırmayı temsil eden 2 ve 1 rakamlarının toplamını yani 3 rakamını buraya yazmamız gerekiyor. Daha sonra diğer tüm kullanıcıların tüm yetkilerini kaldırmak istediğimiz için okuma(4) yazma(2) ve çalıştırma(1) yetkilerinin sayı toplamları 4 + 2 + 1 den 7 ettiği ikinci ve üçüncü sayı kısmına da 7 rakamlarını ekleyebiliriz. Yani komutumuz `chmod -377 testfolder` halini alıyor.

 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod -377 testfolder/                                                                                                   

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder/                                                                                                   
dr-------- 2 taylan taylan 4096 Jul  7 07:39 testfolder/
```

Gördüğünüz gibi klasörün sahibinin yalnızca okuma yetkisi varken grup ve diğer kullanıcıların yetkileri kaldırılmış.

Bence bu örnek bu yetki işlemini gayet net biçimde açıklıyor. Yine de bir tane daha örnek ele alabiliriz. Şu anda bu klasörün yalnızca sahibi için okuma yetkisi var.

Eğer sahibine yazma ve çalıştırma yetkisi ekleyip, grubu için yalnızca okuma ve yazma yetkisi eklemek ve diğer kullanıcılar için de yalnızca okuma yetkisi eklemek istersek komutumuzu nasıl girmemiz gerekir ? 

Yetki eklemesi yapacağım için `chmod +` şeklinde yazıyorum. İlk sayımızda klasörün sahibine yazma ve çalıştırma yetkisi vereceğiz. Yazma yetkisi 2 rakamıyla temsil ediliyor, çalıştırma da 1 rakamıyla. Her iki yetkiyi temsil etmesi için toplamlarını yani 3 rakamını yazabiliriz. 

Grubu için okuma ve yazma yetkisi yani 4 ve 2 rakamlarının toplamını 6 rakamıyla girebiliriz. 

Son olarak diğer kullanıcılara yalnızca okuma yetkisi eklemek için de 4 rakamını yazabiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod +364 testfolder/                                                                                                   

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder/                                                                                                       
drwxrw-r-- 2 taylan taylan 4096 Jul  7 07:39 testfolder/
```

Tam olarak istediğimiz yetkileri eklemeyi başardık. 

Yetkileri temsil eden rakamları kullanarak yetki ekleme ve çıkarma işlemi bu şekilde. Ayrıca ekleme ve çıkarma işlemi dışında dilerseniz daha önce de yaptığımız gibi doğrudan yetki tanımlaması da yapabilirsiniz. 

Örneğin ben dosyanın sahibine tüm yetkileri vermek, grubuna ve diğerlerine yalnızca okuma ile çalıştırma yetkisi vermek için `chmod 755 testfolder` komutunu girebilirim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod 755 testfolder/                                                                                                  

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder/                                                                                                    
drwxr-xr-x 2 taylan taylan 4096 Jul  7 07:39 testfolder/
```

Belki bu sayıların kullanımı başta biraz kafa karıştırıcı gelmiş olabilir fakat kendiniz biraz pratik yaparsanız aslında ne kadar kolay ve kullanışlı olduğunu bizzat görebilirsiniz. Test etmek için dosya veya klasörler oluşturup, bir yetki tanımlaması planlayıp bu yetkilendirmeyi doğru şekilde tanımlayıp tanımlayamayacağınızı test edebilirsiniz. Bu şekilde alıştırmalar yaparsanız zaten tam olarak kullanımını kavramış olacaksınız.

### Yetki Tanımlarının Alt Dizinlere İşlenmesi

Kimi zaman klasörler üzerinde çalışıyorken, klasör içerisindeki dosya ve dizinlerde de ortak yetki tanımlaması yapmak isteyebiliyoruz. Bu noktada “özyineleme” yani “**r**ecursive” ifadesinin kısaltmasından gelen `R` seçeneğini kullanabiliyoruz.

Öncelikle klasörler üzerindeki standart yetki tanımlamalarının alt dizinlerde geçerli olmadığını teyit edelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder/                                                                                                    
drwxr-xr-x 2 taylan taylan 4096 Jul  7 07:39 testfolder/

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfolder/                                                                                                        
total 0
-rw-r--r-- 1 taylan taylan 0 Jul  7 07:39 dosya1
-rw-r--r-- 1 taylan taylan 0 Jul  7 07:39 dosya2
-rw-r--r-- 1 taylan taylan 0 Jul  7 07:39 dosya3
-rw-r--r-- 1 taylan taylan 0 Jul  7 07:39 dosya4
```

Gördüğünüz gibi daha önceki yetki tanımlamalarımız klasör içindeki dosyalarda geçerli olmamış. Klasör ve içerisindeki dosyaların yetkileri farklı gözüküyor. Şimdi özyinelemeli şekilde komutumuzu girip değişimi kontrol edelim.

Ben denemek için tüm kullanıcılara çalıştırmak yetkisi eklemek üzere `chmod -R +111 testfolder` şeklinde komutumu giriyorum. Buradaki büyük `R` seçeneği sayesinde buradaki yetki ekleme işleminin bu klasörün içinde yer alan tüm içeriklerde de aynen geçerli olması lazım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod -R +111 testfolder/

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder/                                                                                                      
drwxr-xr-x 2 taylan taylan 4096 Jul  7 07:39 testfolder/

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfolder/                                                                                                      
total 0
-rwxr-xr-x 1 taylan taylan 0 Jul  7 07:39 dosya1
-rwxr-xr-x 1 taylan taylan 0 Jul  7 07:39 dosya2
-rwxr-xr-x 1 taylan taylan 0 Jul  7 07:39 dosya3
-rwxr-xr-x 1 taylan taylan 0 Jul  7 07:39 dosya4
```

Alt dizindekiler de dahil tüm dosyalarda tüm kullanıcılar için çalıştırma yetkisi eklenmiş.  

Ben yetkilendirme tanımlaması için sayıları kullandım ama harfler ile de aynı şekilde `R` seçeneği sayesinde tüm alt dizinlerdeki içeriklerde aynı izin tanımlamalarının geçerli olmasını sağlayabiliriz. 

Dizinlerdeki yetki tanımlamalarıyla ilgili bahsetmek istediklerim bu kadar. Artık bu erişim yetkilerinin etkilerini anlayabilmek için birkaç test yaparak devam etsek hiç fena olmaz. 

# Erişim Yetkilerinin Etkileri

Şimdiye kadar kullanıcılardan, gruplardan ve erişim izinlerinden bahsettik ancak doğrudan erişim yetkilerinin dosya ve dizinler üzerindeki etkilerini gözlemlemedik.

Dosya veya dizinlerin; "sahibi", "grubundaki kullanıcılar" ve "diğerleri" şeklinde yetki tanımlamaları olduğunu öğrendik.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh 
-rwxr-xr-x 1 taylan taylan 33 Jul  7 06:15 testfile.sh
```

Örneğin ***testfile.sh*** dosyasını **taylan** kullanıcısı oluşturduğu için dosyanın sahibi ve grubu **taylan** olarak geçiyor.

Burada bahsi geçen **taylan** grubu **taylan** kullanıcısının birincil grubu olduğu için tabii ki biz özellikle başka bir kullanıcıyı ekleyene kadar bu grupta başka bir kullanıcı bulunmuyor. Ben grup yetkilerini test edebilmek için **ali** isimli kullanıcı hesabını bu **taylan** grubuna eklemek istiyorum. Bunun için `sudo gpasswd -a ali taylan` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]                         
└─$ sudo gpasswd -a ali taylan
[sudo] password for taylan:                            
Adding user ali to group taylan
```

`groups ali` komutuyla **ali** kullanıcısının gruplarını sorgulayalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ groups ali
ali : ali taylan
```

**ali**, **taylan** grubuna dahil olmuş.

Neticede şu anda sistemimde bu dosyanın sahibi olan "taylan" kullanıcısı, bu dosya için tanımlı olan taylan grubundaki "ali" kullanıcısı ve bunların hiç birine dahil olmayan "nil" isimli bir kullanıcı hesabım bulunuyor. Ben şimdi sırasıyla bu kullanıcı hesapları üzerinden dosya üzerindeki yetkileri test etmek istiyorum. Bunun için iki yeni konsol daha açalım. 

Öncelikle `su ali` komutuyla ali kullanıcı hesabında oturum açıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su ali
Password: 
This account is currently not available.
```

Daha önce örnekler sırasında ali kullanıcısının oturum açmasını engellemek için ***passwd*** dosyasında varsayılan kabuk yerine ***nologin*** dosyasını eklediğim için oturum açamıyoruz. `sudo nano /etc/passwd` komutuyla dosyayı açıp **ali** satırındaki ***nologin*** dosyasını ***/usr/bin/bash*** olarak değiştirip kaydedelim. 

Şimdi tekrar `su ali` komutuyla geçiş yapmayı deneyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su ali
Password: 
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$
```

Bu kez sorunsuzca ali kullanıcı hesabında oturum açmış olduk.

Şimdi diğer konsolumuzda da **nil** kullanıcı hesabında oturum açmak üzere `su nil` şeklinde komutumuzu girelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su nil
Password: 
┌──(nil㉿linuxdersleri)-[/home/taylan]
└─$
```

Tamamdır, bu konsol üzerinde de nil kullanıcı hesabında oturum açmış oldum. 

Ben sırasıyla dosya ve klasörlerin hangi yetkilere hangi şekilde tepki verdiğini ele alabilmek için olası yetki türlerini “ali” kullanıcısı üzerinden test etmek istiyorum. ali kullanıcısını taylan gruba eklediğim için “***testfile.sh***” ve “***testfolder***” üzerinde çalışırken, gruplar için geçerli olan yetkileri değiştirmem yeterli olacak. İleride dosyanın sahibi, grubu ve diğer kullanıcılar için yetki sınırını da örnekleyeceğiz ancak şimdilik erişim yetkilerinin sonuçlarını test edelim.

## Dosyalar Üzerindeki Etkisi

Test etmek üzere kullanacağım dosyam “***testfile.sh***” dosyası.

### `r—` | Yalnızca Okuma

Dosyamıza yalnızca okuma yetkisi verelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g=r testfile.sh 
                                                
┌──(taylan㉿linuxdersleri)-[~]                  
└─$ ls -l testfile.sh 
-rwxr--r-x 1 taylan taylan 33 Jul  7 06:15 testfile.sh
```

ali kullanıcısı üzerinden sırasıyla okuma yazma ve çalıştırmayı deneyelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfile.sh 
echo ben betik dosyasıyım
test

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "ekle" >> testfile.sh
bash: testfile.sh: Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ./testfile.sh
bash: ./testfile.sh: Permission denied
```

Gördüğünüz gibi okuma yetkisi bulunan dosyayı yalnızca okuyabiliyoruz.

### `rw-` | Okuma ve Yazma

Okuma ve yazma yetkisini verelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]                  
└─$ chmod g=rw testfile.sh                      
                                                
┌──(taylan㉿linuxdersleri)-[~]                  
└─$ ls -l testfile.sh 
-rwxrw-r-x 1 taylan taylan 33 Jul  7 06:15 testfile.sh
```

Test edelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "ekle" >> testfile.sh   

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfile.sh                 
echo ben betik dosyasıyım
test
ekle

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ./testfile.sh
bash: ./testfile.sh: Permission denied
```

Çalıştırma(x) yetkisi olmadığı için betik dosyasının çalıştırılamadığını gördük.

### `rwx` | Okuma Yazma Çalıştırma

Tüm yetkileri verelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]                  
└─$ chmod g=rwx testfile.sh                     

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh                     
-rwxrwxr-x 1 taylan taylan 38 Jul  8 01:38 testfile.sh
```

Test edelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "ekle2" >> testfile.sh     

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfile.sh   
echo ben betik dosyasıyım
test
ekle
ekle2

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ./testfile.sh     
ben betik dosyasıyım
./testfile.sh: line 3: ekle: command not found
./testfile.sh: line 4: ekle2: command not found
```

Yazma, okuma ve çalıştırmayı başardık.

### `r-x` | Okuma Çalıştırma

Yetkiyi verelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g=rx testfile.sh                     

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh                      
-rwxr-xr-x 1 taylan taylan 44 Jul  8 01:40 testfile.sh
```

Test edelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfile.sh                 
echo ben betik dosyasıyım
test
ekle
ekle2

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "ekle3" >> testfile.sh  
bash: testfile.sh: Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ./testfile.sh     
ben betik dosyasıyım
./testfile.sh: line 3: ekle: command not found
./testfile.sh: line 4: ekle2: command not found
```

Yazma yetkisi olmadığı için yeni veri eklemesi yapamadık. Silme işlemi de yapamazdık çünkü dosya üzerinde değişiklik hakkına sahip değiliz. Yazma yetkisi dosya üzerinde değişiklik yapma yetkisini temsil ediyor. 

### `—x` | Çalıştırma

Yetkiyi verelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g=x testfile.sh                     

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh 
-rwx--xr-x 1 taylan taylan 44 Jul  8 01:40 testfile.sh
```

Test edelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfile.sh                 
cat: testfile.sh: Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "ekle2" >> testfile.sh  
bash: testfile.sh: Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ./testfile.sh     
bash: ./testfile.sh: Permission denied
```

Çalıştırma yetkimiz olmasına rağmen “yetki hatası” aldık çünkü okuma yetkisi olmadan çalıştırma yetkisi tek başına yeterli değil. Dosya içeriğinin okunması mümkün olmadığı için çalıştırılması da doğal olarak mümkün olmuyor. Bu sebeple dosyalar üzerindeki yalın “çalıştırma(x)” izni dosyayı çalıştırmak için yeterli değil.

Hemen okuma izni de ekleyip tekrar deneyelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g=rx testfile.sh                      

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh                      
-rwxr-xr-x 1 taylan taylan 44 Jul  8 01:40 testfile.sh
```

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ./testfile.sh                   
ben betik dosyasıyım
./testfile.sh: line 3: ekle: command not found
./testfile.sh: line 4: ekle2: command not found
```

Gördüğünüz gibi okuma ve çalıştırma bir arada olduğunda dosyanın çalıştırılması mümkün oluyor.

## Klasörler Üzerindeki Etkisi

Yetkilerin klasörler üzerindeki etkilerini gözlemlemeden önce kısaca sıralayacak olursak:

**Okuma**(`r`): dizin içeriğini listelemesine izin verir.

**Yazma**(`w`): dizin içindeki dosyaları oluşturmasına, yeniden adlandırmasına veya silmesine ve dizinin özniteliklerini değiştirmesine izin verir.

**Çalıştırma**(`x`): dizine geçiş yapılmasına ve içindeki dosyalara ve dizinlere erişmesine izin verir. 

Etkilerini daha iyi anlamak için birkaç test gerçekleştirebiliriz. 

Testlerden önce, klasör içerisindeki dosya ve dizinlerin yetkileri konusunda sorun yaşamamak için ben `sudo chmod -R g=rwx testfolder/` komutuyla klasör içindeki içeriklerin tamamına tüm yetkiyi veriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo chmod -R g=rwx testfolder/
[sudo] password for taylan: 
                                 
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -lR testfolder/                       
testfolder/:
total 8
-rwxrwxr-x 1 taylan taylan 38 Jul  8 03:56 dosya1                                           
-rwxrwxr-x 1 taylan taylan  0 Jul  7 07:39 dosya2                                           
-rwxrwxr-x 1 taylan taylan  0 Jul  7 07:39 dosya3                                           
-rwxrwxr-x 1 taylan taylan  0 Jul  7 07:39 dosya4                                           
-rw-rwxr-- 1 ali    ali    59 Jul  8 03:48 yeni-belge
```

Normalde işlem yaparken hem klasör hem de klasör içindeki dosya ve dizinlerin yetkileri önemli. Fakat biz öncelikle klasörün etkilerini görmek için, içerisindekilere tam yetki verelim. Anlatımın devamında aksi durumlardan da bahsedeceğiz zaten.

### `r—` | Okuma

Yetki tanımlayalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g=r testfolder/
                                              
┌──(taylan㉿linuxdersleri)-[~]                
└─$ ls -ld testfolder/                        
drwxr--r-x 2 taylan taylan 4096 Jul  7 07:39 testfolder/
```

Test edelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cd testfolder/
bash: cd: testfolder/: Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ls testfolder/
ls: cannot access 'testfolder/dosya4': Permission denied
ls: cannot access 'testfolder/dosya1': Permission denied
ls: cannot access 'testfolder/dosya2': Permission denied
ls: cannot access 'testfolder/yeni-belge': Permission denied
ls: cannot access 'testfolder/dosya3': Permission denied
dosya1  dosya3  yeni-belge
dosya2  dosya4

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfolder/dosya1
cat: testfolder/dosya1: Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "son ekleme" >> testfolder/dosya1
bash: testfolder/dosya1: Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cp deneme testfolder/          
cp: cannot stat 'testfolder/deneme': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ mv deneme testfolder/          
mv: cannot stat 'testfolder/deneme': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ rm testfolder/dosya2
rm: cannot remove 'testfolder/dosya2': Permission denied
```

Yalnızca okuma yetkimiz varken, dizin içeriğindeki dosyaları, listeleme, taşıma ve geçiş yapma gibi işlemlerde “erişim yetkisi” hatası aldık. Burada küçük bir nüans var. Esasen okuma yetkisi bize dizin içeriklerini listeleme yetkisi veriyor. Fakat `ls` aracı `alias ls` komutunun çıktısından bizzat görebileceğimiz gibi yalın halde çalışmıyor. 

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ alias ls                       
alias ls='ls --color=auto'
```

Gördüğünüz gibi biz `ls` komutunu kullandığımızda çıktıları renklendirmek üzere `ls --color=auto` komutu çalıştırılıyor. `ls` komutunun harici bir parametresinin çalışabilmesi için de o dizinde çalıştırma(x) yetkisine ihtiyacı var. Dolayısıyla biz bu takma isimli komutu girdiğimizde dizin içeriğini listeleyemiyoruz. Bunun yerine `command ls` komutu ile `ls` aracının yalın haliyle çalışmasını sağlayabiliriz. `command` komutu takma isimlerin görmezden gelinmesini sağladığı için yalnızca `ls` komutunun çalışmasını sağlıyor.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ command ls testfolder/
dosya1  dosya2  dosya3  dosya4
```

Bu kez dizin içeriğini listeleyebildik. Okuma yetkisi yalnızca klasör içindeki dosya ve dizinlerin isimlerini okuma yetkisi veriyor. Örneğin detaylı çıktı almak üzere `command ls -l` komutunu girersek yine hata alacağız çünkü detaylı bilgi almaya yetkimiz bulunmuyor. 

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ command ls -l testfolder/      
ls: cannot access 'testfolder/dosya4': Permission denied
ls: cannot access 'testfolder/dosya1': Permission denied
ls: cannot access 'testfolder/dosya2': Permission denied
ls: cannot access 'testfolder/dosya3': Permission denied
total 0
-????????? ? ? ? ?            ? dosya1
-????????? ? ? ? ?            ? dosya2
-????????? ? ? ? ?            ? dosya3
-????????? ? ? ? ?            ? dosya4
```

Gördüğünüz gibi dosya isimleri hariç detaylı bilgi almaya yetkimiz olmadığı için bu şekilde çıktı aldık. Dosya isimlerini listeleme dışındaki tüm işlemler için çalıştırma yetkisine ihtiyacımız var. 

### `rw-` | Okuma Yazma

Yetki tanımlayalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g=rw testfolder/
                                              
┌──(taylan㉿linuxdersleri)-[~]                
└─$ ls -ld testfolder/                        
drwxrw-r-x 2 taylan taylan 4096 Jul  7 07:39 testfolder/
```

Test edelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cd testfolder/
bash: cd: testfolder/: Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ls testfolder/
ls: cannot access 'testfolder/dosya4': Permission denied
ls: cannot access 'testfolder/dosya1': Permission denied
ls: cannot access 'testfolder/dosya2': Permission denied
ls: cannot access 'testfolder/dosya3': Permission denied
dosya1  dosya2  dosya3  dosya4

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ command ls testfolder/
dosya1  dosya2  dosya3  dosya4

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cp deneme testfolder/
cp: cannot stat 'testfolder/deneme': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfolder/dosya1
cat: testfolder/dosya1: Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "deneme" > testfolder/yeni
bash: testfolder/yeni: Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ mv testfolder/dosya1 testfolder/yeni
mv: failed to access 'testfolder/yeni': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ rm testfolder/dosya3
rm: cannot remove 'testfolder/dosya3': Permission denied
```

Çalıştırma yetkisi olmadan okuma ve yazma yetkisi de fark oluşturmuyor. Yalnızca dizin içerisindeki dosya isimlerini listeleyebiliyoruz. 

### `rwx` | Okuma Yazma Çalıştırma

Test etmeye gerek yok çünkü dizin üstünde tüm yetkilere sahip olduğumuz için okuma, yazma, kopyalama taşıma, silme çalıştırma gibi işlemleri yapabiliyoruz. 

### `r-x` | Okuma Çalıştırma

Yetki tanımlayalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g=rx testfolder/                  

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder/
drwxr-xr-x 2 taylan taylan 4096 Jul  7 07:39 testfolder/
```

Test edelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ls testfolder/
dosya1  dosya2  dosya3  dosya4  yeni-belge

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ls -l testfolder/
total 12
-rwxrwxr-x 1 taylan taylan 38 Jul  8 03:56 dosya1
-rwxrwxr-x 1 taylan taylan 11 Jul  8 05:42 dosya2
-rwxrwxr-x 1 taylan taylan  0 Jul  7 07:39 dosya3
-rwxrwxr-x 1 taylan taylan  0 Jul  7 07:39 dosya4
-rw-rwxr-- 1 ali    ali    59 Jul  8 03:48 yeni-belge

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfolder/dosya1
metin belgesi
yeni ekleme
yeni ekleme

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "son ekleme" >> testfolder/dosya2

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfolder/dosya2
son ekleme

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ mv testfolder/dosya2 testfolder/yeni-dosya
mv: cannot move 'testfolder/dosya2' to 'testfolder/yeni-dosya': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cp deneme testfolder/
cp: cannot create regular file 'testfolder/deneme': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ rm testfolder/dosya2
rm: cannot remove 'testfolder/dosya2': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cd testfolder/
```

Okuma, listeleme dizine geçiş gibi işlevlerini yerine getirip, dosya içeriklerinde değişiklik yapabiliyorken, taşıma silme kopyalama veya değiştirme gibi işlevleri yerine getiremiyoruz. Klasör üzerinde yazma yetkimiz olmadığında, klasör içindeki dosya ve klasörleri kopyalama, silme veya değiştirme gibi işlemleri yapamıyoruz.

### `-wx` | Yazma Çalıştırma

Yetkiyi verelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g=wx testfolder/            

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder/                
drwx-wxr-x 2 taylan taylan 4096 Jul  8 03:40 testfolder/
```

Test edelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cd testfolder/

┌──(ali㉿linuxdersleri)-[/home/taylan/testfolder]
└─$ cd ..

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ls testfolder/
ls: cannot open directory 'testfolder/': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ command ls testfolder/
ls: cannot open directory 'testfolder/': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfolder/dosya1
metin belgesi
yeni ekleme
yeni ekleme

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "son" >> testfolder/dosya1

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfolder/dosya1
metin belgesi
yeni ekleme
yeni ekleme
son

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ mv testfolder/dosya2 testfolder/yeni-dosya

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cp testfolder/yeni-dosya testfolder/dosya

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ rm testfolder/dosya
```

Gördüğünüz gibi okuma yetkisi olmadığı için klasör içeriğini listeleyemedik ama diğer işlemleri yerine getirebiliyoruz. 

### `—x` | Çalıştırma

Yetkimizi tanımlayalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]                                             
└─$ chmod g=x testfolder/
                                                                           
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder/                                                     
drwx--xr-x 2 taylan taylan 4096 Jul  8 05:50 testfolder/
```

Test edelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cd testfolder/

┌──(ali㉿linuxdersleri)-[/home/taylan/testfolder]
└─$ cd ..

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ls testfolder/
ls: cannot open directory 'testfolder/': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ command ls testfolder/
ls: cannot open directory 'testfolder/': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfolder/dosya1
metin belgesi
yeni ekleme
yeni ekleme
son

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "son ekleme" >> testfolder/dosya1

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfolder/dosya1
metin belgesi
yeni ekleme
yeni ekleme
son
son ekleme

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ mv testfolder/dosya3 testfolder/dosya
mv: cannot move 'testfolder/dosya3' to 'testfolder/dosya': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cp deneme testfolder/
cp: cannot create regular file 'testfolder/deneme': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ rm testfolder/dosya3
rm: cannot remove 'testfolder/dosya3': Permission denied

```

Yalnızca çalıştırma yetkisi varken, dizine geçiş ve dosya içeriğinde düzenleme gibi işlevleri yerine getirebiliyoruz.

Tabii ki şimdiye kadar ele aldığımız tüm örneklerde, klasör içindeki dosyanın tüm yetkileri vardı. Bu sayede dosya üzerinde tüm işlemleri yapabilme özgürlüğüne sahiptik. Eğer dosyanın erişim yetkileri kısıtlanmışsa klasörün yetkileri önemini yitiriyor. 

Yani esasen klasörün yetkileri; klasöre geçiş, klasör içeriğini listeleme ve klasör içeriğini düzenleme kapsamında.

Dosyaların yetkileri ise; dosyaları çalıştırma veya içeriklerinde düzenleme yapma kapsamında. 

Bu bağlamda yapmak istediğiniz işlemler için her iki yetki düzeyinin de uygun olması şart.

Örneğin klasör üzerinde tüm yetkileriniz olsa, ama dosyada yazma yetkiniz bulunmasa bu dosyanın içeriğini düzenleyemezsiniz. Hemen deneyelim. Öncelikle klasöre tüm yetkileri verip, dosyanın yazma yetkisini kaldıralım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g=rwx testfolder/                                                

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder/                                                
drwxrwxr-x 2 taylan taylan 4096 Jul  8 05:50 testfolder/

┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g=rx testfolder/dosya1 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfolder/dosya1                                                
-rwxr-xr-x 1 taylan taylan 53 Jul  8 05:55 testfolder/dosya1
```

Şimdi ali kullanıcısı üzerinden bu dosyayı okumayı ve içerisine veri eklemeyi deneyelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ cat testfolder/dosya1
metin belgesi
yeni ekleme
yeni ekleme
son
son ekleme

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "deneme" >> testfolder/dosya1
bash: testfolder/dosya1: Permission denied
```

Gördüğünüz gibi klasörün tüm yetkileri olmasına rağmen, dosyanın yazma yetkisi olmadığı için dosyaya yeni veri girişi yapamadık. Sanırım bu örnek klasör ve dosya düzeyindeki erişim yetkilerini anlamak için basit ama yeterli. 

Ayrıca tüm bunların dışına eğer anlatım sırasında fark ettiyseniz, dosya ve klasörlerin yetkilerini yalnızca o dosya veya klasörün sahibi değiştirebiliyor. Örneğin gruptaki kullanıcılara tüm izinler verilmiş olsa bile, gruptaki kullanıcılar ilgili dosya veya dizinin yetkilerini değiştiremez.

Ben bu durumu da teyit etmek için öncelikle taylan kullanıcı hesabı üzerinden `chmod g+rwx testfile.sh` komutuyla bu dosyanın gruba tüm yetkileri veriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod g+rwx testfile.sh 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh                                                      
-rwxrwxr-x 1 taylan taylan 44 Jul  8 01:40 testfile.sh
```

Tüm yetkileri verdim. Şimdi bu gruba dahil olan ali kullanıcı hesabı üzerinden mesela tüm kullanıcılara tüm yetkileri vermek üzere `chmod a+rwx testfile.sh` şeklinde komutumuzu girmeyi deneyebiliriz. 

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ chmod a+rwx testfile.sh                                       
chmod: changing permissions of 'testfile.sh': Operation not permitted
```

Yetki hatası aldık çünkü ali kullanıcısının okuma yazma ve çalıştırma yetkisi olsa da bu dosyanın izinlerini değiştirme yetkisi yok. Dosya ve dizinlerin yetkilerini yalnızca sahipler değiştirebiliyor. Zaten böyle olmasaydı erişim yetkilerinin hiç bir anlamı kalmazdı. Çünkü örneğin dosyanın sahibi dışındaki herhangi bir kullanıcıya dosyayı okuması çalıştırması ve yeni veriler yazması için yetki verdiğimizde bu kullanıcı diğer herkesin yetkilerini düşürüp dosyanın tüm yetkilerini devralabilirdi. 

Bu sebeple dosya ve dizinlerin yetkilerini yalnızca sahiplerinin değiştirebileceğini unutmayın. Tabii ki sistem üzerindeki en yetkili olan root kullanıcısı da değiştirebilir fakat bu bir istisna ve root kullanıcısı zaten süper yetkilere sahip.

Biz şimdi dosya ve dizinlerin sahibini ve grubunu değiştirmekten bahsedelim.

# Dosya ve Dizinlerin Sahiplerini ve Gruplarını Değiştirmek

Burada değiştirmek istediğimiz, dosya ve dizinlerin sahipliği olduğu için “**own**er” yani “sahip” ifadesinin kısaltmasından gelen `chown` aracından faydalanabiliyoruz. İsmi işlevini temsil ettiği için zaten ihtiyacımız olduğunda aracın ismini hatırlamamız da çok kolay oluyor. Ayrıca kullanımı da çok kolay zaten.

## Sahibini Değiştirmek

Ben örnek olarak taylan kullanıcısına ait olan ***testfile.sh*** isimli dosyanın sahipliğini değiştirmek istiyorum. İstersek hem dosya sahibini hem de grubunu aynı anda değiştirebileceğimiz gibi, ayrı ayrı sahibini ve grubunu da değiştirebiliriz.

Ben öncelikle yalnızca bu dosya sahibini **nil** olarak değiştirmek için `chown nil testfile.sh` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ chown nil testfile.sh 
chown: changing ownership of 'testfile.sh': Operation not permitted
```

Ben bu dosyanın sahibi de olsam bu işlemi yapmak için yetkim yok. Bu işlemi yapmak için yönetici ayrıcalıklarına sahip olmamız gerekiyor. Ben komutun başında `sudo` yazıp tekrar giriyorum. Buradaki `sudo` komutu sayesinde bu işlemi root yetkileriyle yerine getirebiliyor olacağım. taylan kullanıcısı **sudo** grubuna dahil olduğu için `sudo` aracını kullanarak geçici olarak yetkilerini yükseltebiliyor. İleride bu konudan da ayrıca bahsediyor olacağız. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo chown nil testfile.sh 
[sudo] password for taylan:
```

Şimdi mevcut kullanıcı hesabımın yani taylan kullanıcısının parolasını girip onaylıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo chown nil testfile.sh 

┌──(taylan㉿linuxdersleri)-[~]
└─$
```

Bu kez herhangi bir hata almadık. Şimdi `ls -l` ile listeleyip dosyanın izinlerine bakalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh                                                      
-rwxrwxr-x 1 nil taylan 44 Jul  8 01:40 testfile.sh
```

Dosyanın sahibi olarak **nil** kullanıcısı gözüküyor. Yani artık buradaki izinler **nil** kullanıcısında geçerli ve nil kullanıcısı bu dosyanın izinleri değiştirebilir çünkü nil artık dosyanın sahibi.

## Grubunu Değiştirmek

Yalnızca grubu değiştirmek için `:grup` parametresini kullanabiliyoruz. Ben örnek olarak taylan kullanıcısı üzerinden `sudo chown :ali testfile.sh` şeklinde giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo chown :ali testfile.sh 
[sudo] password for taylan: 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh                                                        
-rwxrwxr-x 1 nil ali 44 Jul  8 01:40 testfile.sh
```

Dosyanın grubunu artık "ali" olarak geçiyor. Yani ali grubundakiler buradaki yetkiler dahilinde bu dosya üzerinde işlemler yapabiliyor olacak.

## Sahibi ve Grubu Değiştirmek

Tek seferde hem sahibini hem de grubunu değiştirmek istersek `chown sahibi:grubu dosya-dizin-adı` şeklinde girebiliriz. Ben ***testfile.sh*** dosyasının sahibini ve grubunu "ali" olarak değiştirmek için taylan hesabı üzerinden `sudo chown ali:ali testfile.sh` komutunu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo chown ali:ali testfile.sh 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l testfile.sh                                           
-rwxrwxr-x 1 ali ali 44 Jul  8 01:40 testfile.sh
```

<p class="mavi"><strong>ℹ️ Not:</strong> <code class="language-plaintext highlighter-rouge">sudo</code> grubuna dahil olduğu için tüm işlemleri taylan kullanıcı hesabı üzerinden root yetkileri ile gerçekleştiriyoruz.</p> 

Dosyanın sahibi ve grubunu tek seferde yine "ali" olarak ayarlamış oldum.

İşte neticede sahiplik ve grup değiştirme işlemi bu şekilde. Örneğin ben yalnızca tek bir dosya üzerinde ele aldım ancak isterseniz birden fazla dosya veya klasör üzerinde de aynen kullanabilirsiniz. Hatta daha önce yetki işlemlerinde ele aldığımız gibi klasörün altındaki içeriklerde geçerli olacak sahiplik ve grup değişimi için büyük `R` karakteri ile “recursive” yani “özyinelemeli” şekilde değişiklik de yapabiliriz. 

Ben denemek için “***testfolder***” klasörümün altındaki tüm içeriğin grubunu **nil** grubu ile değiştirmek için `sudo chown -R  :nil testfolder/` şeklinde komutumu yazıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo chown -R :nil testfolder/

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -lR testfolder/                                                       
testfolder/:
total 12
-rwxr-xr-x 1 taylan nil 53 Jul  8 05:55 dosya1
-rwxrwxr-x 1 taylan nil  0 Jul  7 07:39 dosya3
-rwxrwxr-x 1 taylan nil  0 Jul  7 07:39 dosya4
-rw-rwxr-- 1 ali    nil 59 Jul  8 03:48 yeni-belge
-rwxrwxr-x 1 taylan nil 11 Jul  8 05:42 yeni-dosya
```

Bu dizin içindeki tüm dosya ve klasörlerin grubu nil olarak değişmiş. Yani artık tüm bu içeriklerin grup bölümündeki yetkileri nil isimli grubdaki kullanıcılar için geçerli olacak.

Ayrıca tabii ki bir tek alt dizinlerdeki gruplar değil, bizzat ***testfolder*** dizininin grubu da değişti. Teyit etmek için `ls -ld` komutunu kullanabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld testfolder/                                                       
drwxrwxr-x 2 taylan nil 4096 Jul  8 05:50 testfolder/
```

Bu klasörün grubu da nil olarak değişmiş.

Örneğin bu dosyaların grubu nil olarak değiştiği için ali kullanıcısı artık bu gruba dahil değil. Dolayısıyla bu dizin içindeki dosyalara veri eklemesi de mümkün değil. Hemen deneyelim.

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ echo "veri ekleme" >> testfolder/dosya2
bash: testfolder/dosya2: Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ su nil
Password: 
┌──(nil㉿linuxdersleri)-[/home/taylan]
└─$ echo "veri ekleme" >> testfolder/dosya2

┌──(nil㉿linuxdersleri)-[/home/taylan]
└─$ cat testfolder/dosya2
veri ekleme
```

Gördüğünüz gibi ali kullanıcısı “diğerleri” gruba dahil olduğu için yazma yetkisi bulunmuyor, dolayısıyla veri de ekleyemiyor. Fakat nil kullanıcısı nil grubunda olduğu için dosya üzerinde yazma yetkisi bulunuyor. Yani dosya içeriğini istediği gibi düzenleyebiliyor. 

Bu yaklaşım sayesinde ilgili dosya ve klasörlere erişmesini istediğiniz kullanıcılar için bir grup oluşturup o grubu bu dosya veya klasörün grubu olarak ayarlayabilirsiniz. Dosya veya klasörün grup yetkilerini düzenleyerek de aynı anda bu gruptaki tüm kullanıcılar için ortak olarak yetki tanımlaması da yapmış olursunuz. 

En nihayetinde böylelikle yetkiler hakkında temel işleyişten bahsetmiş olduk. Yine de henüz yetkilendirmenin önemli bir yapısı olan `sudo`'dan bahsetmedik. Gelin anlatımlarımıza `sudo` yapısından bahsederek devam edelim.

# `sudo` | ***sudoers*** Dosyasını Düzenlemek

`sudo` aracı, komutlarımızı sistem üzerindeki başka bir kullanıcı gibi çalıştırmamızı sağlıyor. Peki bu ne demek oluyor ?

Daha önce yetkilerden bahsederken, dosya ve dizinler üzerindeki yetkilerin, sahibi ve grubuna göre belirlendiğini bizzat deneyimledik. Yani örneğin düzenlemek istediğiniz dosya üzerinde yetkisi olan bir kullanıcı hesabını yönetmiyorsanız o dosyayı düzenleyemezsiniz. Bu güzel bir güvenlik önlemi fakat, sistem üzerinde birden fazla kullanıcı hesabı ve grup oluşturulabileceğini biliyoruz. Dolayısıyla özellikle sistem yöneticisi olarak kimi zaman başka bir kullanıcının veya grubun sahipliğindeki dosya ve klasörler üzerinde işlem yapmamız da gerekebiliyor. 

Bu durumda düzenlemeyi yapmak için temelde üç alternatifimiz var. 

Öncelikle sistemdeki süper kullanıcı olan yani en yetkili kullanıcı olan root hesabına geçiş yapıp ilgili düzenlemeyi yapabiliriz. Fakat pek çok sistemde root hesabı varsayılan olarak aktif olmayabiliyor. Çünkü root en yetkili kullanıcı olduğu için gerekmedikçe bu yetkiyle çalışılması hiç güvenli değil. Ayrıca root hesabını aktifleştirip kullansak bile yetkili şekilde işlem yapması gereken tek kişi biz de olmayabiliriz. Sistem üzerindeki diğer kullanıcıların da yetkili şekilde işlem yapması gerekebilir. Bu durumda sistemdeki en yetkili kullanıcı olan root kullanıcısının parolasını herkesle paylaşmamız sizce mantıklı olur mu ? Kesinlikle olmaz. Çünkü herkes sistem üzerindeki tüm kontrole sahip olur ve güvenlikten söz edemeyiz. 

root hesabında oturum açmak istemiyorsak dosya veya dizinin sahibi olan kullanıcı olarak oturum açıp ilgili düzenlemeyi de yapabiliriz. Fakat tabii ki ilk yaklaşım da hem verimlilik hem de güvenlik açısından mantıklı bir yok değil. Düşünsenize yöneticisi olduğunuz bir sistemde 10 farklı kullanıcı bile olsa, 10 farklı hesap bilgisini hatırlayıp gerektikçe sürekli bu 10 farklı hesapta oturum açmanız gerekir. Bu kesinlikle mantıklı bir yaklaşım değil. Ayrıca yetkili şekilde işlem yapmaya bir tek sizin de ihtiyacınız olmayacak. Kimi kullanıcıların bazı başka kullanıcıların yetkilerini gerektiren işlemler yapması da gerekecek. Bu durumda tüm kullanıcıların birbiri ile parola bilgilerini paylaşmaları gerekir ki bu tamamen korkunç yaklaşım.

Bu yöntemler dışında üçüncü alternatifimiz ise komutlarımızı çalıştırırken ilgili kullanıcı gibi davranmamızı sağlayan `sudo` yapısından faydalanmak.

Başkası gibi komut çalıştırabilme yaklaşımı sayesinde, konfigürasyon dosyasında bu kullanıcılar gibi komutları çalıştırmak için kendimize yetki verdiysek, bu kullanıcıların şifresini bilmeden yani bu kullanıcı hesaplarında oturum açmamıza gerek kalmadan komutlarımızı tıpkı bu kullanıcılarmış gibi çalıştırabiliyoruz. 

Bu sayede biz başka bir kullanıcı gibi komut çalıştırdığımızda, aslında kendi hesabımızı kullanarak bu işlemi yaptığımız için bu işlemin kim tarafından yapıldığı da loglara kaydediliyor. Yani bu yaklaşım sayesinde yetkimiz olsa bile bu yetkileri hangi amaçla kullandığımız kayıt altında oluyor. Ayrıca tüm kullanıcılar kendi hesabını kullandığı için kullanıcı özelinde izin ve kısıtlama da tanımlayabiliyoruz. Yani "başkası gibi davranma" yetkilerini sınırlamamız da mümkün oluyor. 

İşte `sudo` aracının en temel çalışma yapısı aslında bu şekilde. Eğer söylediklerim sizin için henüz anlamlı gelmiyorsa merak etmeyin bölüm sonunda tüm anlatımlar netleşmiş olacak.

Şimdiye kadar yetki gerektiren çeşitli işlerimiz için pek çok kez `sudo` yapısını kullandık. Şimdi daha yakından bakıp temel çalışma yapısı hakkında konuşmak istiyorum. 

# `sudo` Aracını Anlamak

`sudo` geçici olarak yetkilerimizi yükseltmemize olanak tanıyan bir araç. Biz herhangi bir komuttan önce `sudo` komutunu kullandığımızda, `sudo` aracının yapılandırma dosyası olan ***/etc/sudoers*** dosyasına bakılıyor. Eğer bu konfigürasyon dosyasında bize bu komutu çalıştırmak için özel ayrıcalık verildiyse komutu yetkili şekilde çalıştırabiliyoruz.

Bu durumu daha iyi anlamak için root parolasını bilmeye gerek kalmadan root olarak işlem yapmaya basit bir örnek verebiliriz. 

Örneğin ben konsola `whoami` şeklinde yazacak olursam;

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ whoami
taylan
```

Çıktı olarak kendi kullanıcı adımı aldım. 

Çünkü bu komutu taylan kullanıcı olarak ben çalıştırdım. Şimdi bir de yetkili şekilde çalıştırmak için `sudo whoami` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo whoami
[sudo] password for taylan:
```

Kendi kullanıcı hesabımızın parolasını girmemiz isteniyor. Girelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo whoami
[sudo] password for taylan: 
root
```

Bu sefer `whoami` sorgusunun yanıtı olarak **root** çıktısını aldık. Çünkü aslında biz burada `sudo` komutunu kullandığımızda `whoami` komutu root yetkileriyle çalıştırıldı. Dolayısıyla `whoami` aracı da komutu giren kişinin root olduğunu belirten çıktıyı bastırdı.

Komutumuzu root yetkileri ile çalıştırmış olmamızın yanında eğer dikkatinizi çektiyse bu işlem için root hesabının parolasına ihtiyacımız olmadı, yalnızca kendi hesabımızın parolasını girdik. Kendi hesabımızın parolasını girmemiz yeterli oldu çünkü mevcut hesabımız `sudo` üzerinden root yetkilerini kullanabilecek şekilde konfigürasyon dosyasında tanımlanmış. 

İşte bizzat bu basit örnekle teyit ettiğimiz gibi `sudo` aracı bizlere güvenli yoldan root yetkileri ile çalışabilmeyi sağlayan bir çözüm aslında.

## ***sudoers*** Dosyasını Düzenlemek

`sudo` aracını kimlerin ne şekilde kullanabileceğini düzenlemek için ***/etc/sudoers*** dosyasını metin editöründe açıp düzenleyebiliriz. Düzenleme işlemi için de `visudo` komutunu aracını kullanmamız gerekiyor. Aslında normalde herhangi bir metin editörünü de kullanabiliriz fakat `visudo` aracı sayesinde dosyadaki yeni tanımların hata kontrolü yapıldığı için olası yanlış konfigürasyonların önüne geçmemiz de mümkün oluyor.

Konfigürasyon dosyasını açmak için `sudo visudo` komutuyla dosyamızı yetkili şekilde açabiliriz. 

![visudo.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kullanici/visudo.webp)

Dosyam şu anda template(***sudoers.tmp***) şablon halinde olduğu için burada ***.tmp*** uzantısı var. Eğer değişiklik yapıp kaydedecek olursak asıl dosya olan ***/etc*** dizini atlındaki ***sudoers*** dosyasına kaydolmuş olacak. 

Şimdi dosya içeriğine bakacak olursak. Dosyanın en başında bulunan bu tanımlar güvenlik amaçlı. Ayrıntılar için ***suoders*** dosyasının manual sayfalarına bakabilirsiniz. Ben detaylar üzerinde durmayacağım ama örneğin ilk satır tanımlanmış olabilecek zararlı değişkenleri sıfırlıyor. Üçüncü satır ise zararlı dosyaları içerebilecek ek PATH yollarının tanımlanmış olma ihtimaline karşı standart olan PATH yolunu tekrar tanımlıyor. Dediğim gibi bunlar güvenlik önlemi bunlara müdahale etmeden devam edeceğiz. Daha fazla bilgi almak için manual sayfasına göz atabilirsiniz.

Diyez `#` sembolü olan satırlar da zaten yorum satırları. Bunlar işleme alınmıyor. Gördüğünüz gibi tanımlı seçenekler hakkında kısa açıklamalar yazmak için kullanılıyor. Ayrıca sayfayı inceleyecek olursanız bazı tanımlamaların başında diyez işareti olduğu için pasif durumda olduklarını görebilirsiniz. Ben şimdi en temel işlem olan yetki tanımlamalarından bahsetmek için dosyanın alt satırlarına geliyorum.

```bash
# User privilege specification
#root   ALL=(ALL:ALL) ALL

# Allow members of group sudo to execute any command
%sudo   ALL=(ALL:ALL) ALL

# See sudoers(5) for more information on "@include" directives:

@includedir /etc/sudoers.d
```

Buradaki ilk tanımlama ile başlayacak olursak, bu satır root kullanıcısının **sudo** ayrıcalıklarını belirtiyor. 

```bash
# User privilege specification
#root   ALL=(ALL:ALL) ALL
```
Daha net anlaşılabilmesi için renklendirelim.

<div class="highlight"><pre class="highlight"><code>
<span class="mavi">root</span>   <span class="yesil">ALL</span>=(<span class="mor">ALL</span>:<span class="turuncu">ALL</span>) <span class="kirmizi">ALL</span>
</code></pre></div>

<p class="mavi">Bu tanımlamadaki ilk kısım bu kuralın geçerli olacağı kullanıcının ismini belirtiyor. Yani bu kural <strong>root</strong> kullanıcısı için tanımlanmış.</p>
<p class="yesil">İkinci kısımdaki <strong>ALL</strong> ifadesi bu kuralın <strong>tüm hostlarda</strong> yani ağ üzerindeki tüm ana makinelerde geçerli olmasını sağlıyor. İleride ağ bölümünde “host” kavramına değindiğimizde buradaki tüm hostlardan kastımızın ne olduğunu net biçimde anlamış olacaksınız.</p>
<p class="mor">Eşittir işaretinden sonra parantez içinde yazılan ilk <strong>ALL</strong>, komutları tüm kullanıcılar gibi çalıştırabileceğini gösteriyor.</p>
<p class="turuncu"> İkinci <strong>ALL</strong> ise root kullanıcısının komutları tüm gruplar gibi çalıştırabileceğini belirtiyor.<br>Dosya ve dizinlerin sahibini ve grubunu değiştirirken <strong>sahibi:grubu</strong> şeklinde tanımlama yapmıştık. İşte buradaki tanımlama da aynı aslında. Burada <strong>ALL:ALL</strong> şeklinde yazdığı için komutlarını istediği bir kullanıcı veya grup ayrıcalıkları ile çalıştırabiliyor. Tüm kullanıcıları kapsayan bu <strong>ALL</strong> seçeneği, biz aksini belirtmediğimiz sürece en yetkili olan "root" kullanıcı yetkileri ile çalıştırılmasını sağlıyor. Fakat istersek, dilediğimiz bir kullanıcı veya grup yetkileri ile çalıştırmamız da mümkün.</p>
<p class="kirmizi">En sondaki <strong>ALL</strong> ise bu kuralların tüm komutlar üzerinde geçerli olmasını sağlıyor.</p>

Şimdi muhtemelen, "*root kullanıcısı zaten sistemde en yetkili kullanıcı o zaman niye burada root kullanıcısı için bir daha yetki tanımlaması yapılıyor?*" diye düşünmüş olabilirsiniz.

Normalde biz root hesabını kullanıyorken girdiğimiz tüm komutlarımızı en yetkili şekilde çalıştırabiliyoruz. Fakat biz root hesabındayken alışkanlık gereği yine `sudo` komutunu kullanırsak, `sudo` aracı konfigürasyon dosyasında root kullanıcısı için yetki tanımlaması olmadığı için en yetkili kullanıcı da olsa hata verir. Ne demek istediğimi daha net anlamak için hemen yeni bir konsol başlatalım. 

Ben bu konsol üzerinden root hesabına geçiş yapmak istiyorum fakat benim sistemimde root hesabı şu anda pasif durumda. Aktifleştirmek için root hesabına bir parola belirlemem gerekiyor. Bunun için de `sudo passwd root` şeklinde komutumu girebilirim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo passwd root
New password: 
Retype new password: 
passwd: password updated successfully
```

Tamamdır, artık root hesabının bir parolası olduğu için root hesabına geçiş yapabiliriz. Ben `su root` komutuyla geçiş yapıyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su root
Password: 
┌──(root㉿linuxdersleri)-[/home/taylan]
└─#
```

Şimdi denemek için yine yalnızca `whoami` şeklinde komutumuzu girebiliriz. 

```bash
┌──(root㉿linuxdersleri)-[/home/taylan]
└─# whoami
root
```

root çıktısını aldık. Şimdi bir de `sudo whoami` şeklinde girelim. 

```bash
┌──(root㉿linuxdersleri)-[/home/taylan]
└─# sudo whoami
root is not in the sudoers file.  This incident will be reported.
```

Bu kez root hesabının sudoers dosyasında olmadığı belirtilerek çalıştırma işlemi reddedildi. Yani bizzat gördüğümüz gibi root kullanıcısı da olsa, `sudo` aracını kullanabilmesi için ***sudoers*** konfigürasyon dosyasında tanımlanmış olması gerekiyor.

Şimdi konfigürasyonu yaptığımız pencereye geri dönüp root hesabı için tanımlı olan satırın başındaki diyez işaretini kaydırıp dosyamızı kaydedelim.  Kaydetme işlemi, klasik `nano` aracında olduğu gibi <kbd>Ctrl</kbd> + <kbd>o</kbd> ile yapılabilir.

```bash
# User privilege specification
root    ALL=(ALL:ALL) ALL
```

Kayıt işleminden sonra tekrar root hesabının oturum açtığı konsola dönüp `sudo whoami` komutunu girebiliriz.

```bash
┌──(root㉿linuxdersleri)-[/home/taylan]
└─# sudo whoami
root
```

root hesabı için geçerli olan tanımlamayı ***sudoers*** dosyasında aktifleştirmiş olduğumuz için bu kez "root" çıktısını almış olduk. 

Eğer yetki gerektiren işler için `sudo` aracını kullanmaya alıştıysanız root hesabına geçiş yapıp root olarak çalışıyor olsanız da alışkanlık gereği `sudo` komutunu kullanmaya devam edebilirsiniz. Bu durumda `sudo` dosyasında root hesabı için tanımlama yoksa hata almanız da kaçınılmaz.

Ayrıca etkileşimli şekilde root hesabını kullanmak dışında örneğin sistemin işleyişi için kullanılan bir betik dosyası içerisinde `sudo` komutu bulunuyor olabilir. Ve bu betik dosyasını root hesabı üzerinden çalıştıracak olursak, tıpkı buradaki gibi ***sudoers*** dosyasında root için tanımlama olmadığından dolayı en yetkili kullanıcı da olsa hata alırız. Yani içerisinde `sudo` komutu bulunan betik dosyamız doğru şekilde çalışmaz. 

Özetle bizzat teyit ettiğimiz gibi, root kullanıcısı en yetkili kullanıcı da olsa `sudo` komutunun işleyişi dolayısıyla stabil bir sistem yönetimi için ***sudoers*** dosyası içinde bulunması gerekiyor.

Şimdi ben konfigürasyon dosyasından biraz daha bahsetmek üzere dosyanın açık olduğu konsola dönüyorum. Açıklamalara devam etmek için tekrar alt satırlara gelelim.

```bash
# User privilege specification
root    ALL=(ALL:ALL) ALL

# Allow members of group sudo to execute any command
%sudo   ALL=(ALL:ALL) ALL

# See sudoers(5) for more information on "@include" directives:

@includedir /etc/sudoers.d
```

Başında yüzde işareti olanlar **yetki gruplarını** temsil ediyor. Örneğin **sudo** grubu için burada tüm yetkiler tanımlanmış, dolayısıyla bu gruba dahil olan tüm kullanıcılar bu yetkiler dahilinde hareket edebiliyor.  

Hatırlıyorsanız gruplardan bahsederken taylan kullanıcısının **sudo** grubuna dahil olduğunu da görmüştük. Hatta tekrar teyit etmek istersek, yeni bir konsol açıp `groups taylan` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ groups taylan
taylan : taylan adm dialout cdrom floppy sudo audio dip video plugdev netdev wireshark bluetooth scanner kaboxer
```

**taylan** kullanıcısı **sudo** grubuna da dahil. Bu sayede biz taylan kullanıcısını yönetiyorken, `sudo` aracını kullandığımızda buradaki **sudo** grubu için tanımlı olan bu yetkiler dahilinde işlerimizi yürütebiliyoruz. 

Dolayısıyla örneğin tıpkı taylan kullanıcısında olduğu gibi aynı yetkilere sahip olmasını istediğimiz kullanıcılar olursa onları da **sudo** grubuna ekleyip bu yetkiler dahilinde hareket etmelerini sağlayabiliriz. Ya da yeni bir grup oluşturup, burada bu gruba özel olarak izin tanımlaması da yapabiliriz. 

Ayrıca bu noktada dikkatinizi çekmek istediğim bir husus var. Sizin kullandığınız dağıtımdaki ***sudoers*** dosyasında buradaki gibi **sudo** isimli bir grup varsayılan olarak tanımlı olmayabilir. Farklı isimde örneğin “**admin**” veya “**wheel**” isimlerinde gruplar da tanımlı olabilir. Hatta hiç bir grup tanımlanmamış da olabilir. Burada asıl mesele, istersek tek bir kullanıcı için veya daha fazla kişiyi etkilemesi için bir gruba özel yetki tanımlaması yapabiliyor olmamız. Bu tanımlamalar varsayılan olarak bu dosyada bulunmasa bile biz ihtiyaçlarımıza göre kendimiz ekleyebiliriz. 

Gruplar dışında burada **@includedir** tanımının ardından bir dizin adresi belirtilmiş. 

```bash
# See sudoers(5) for more information on "@include" directives:

@includedir /etc/sudoers.d
```

Bu tanımlama sayesinde yalnızca mevcut ***sudoers*** dosyası değil, bu dizin altında yer alan diğer konfigürasyon dosyaları da okunup geçerli oluyor. Bu yaklaşım sayesinde ***/etc*** dizini altındaki ana ***sudoers*** dosyasında yani şu an görüntülediğimiz dosyada değişiklik yapmadan bu dizindeki dosyalarda güvenli şekilde tanımlamalar yapabiliyoruz. Şu an incelediğimiz bu ***sudoers*** dosyası ana konfigürasyon dosyası olduğu için genellikle en temel tanımlamalar burada oluyor. Özellikle çok fazla tanımlama yapılacaksa bu tanımlamaları burada belirtilen dizin altındaki konfigürasyon dosyalarında yapmak, sistemi düzenli kullanmak adına çok daha doğru bir yaklaşım. Zaten pek çok aracın konfigürasyon dosyasında da aslında bu yaklaşım kullanılıyor. Ana konfigürasyon dosyasını sade tutmak ve mevcut yapısını bozmamak için konfigürasyon dosyasının isminin sonuna ***.d*** eklenmiş bir dizinde harici konfigürasyonlar tanımlanıp kullanılabiliyor. Buradaki ***.d*** ifadesi “**d**irectory” yani “dizin” ifadesinin kısaltmasından geliyor. Özetle şimdiden haberiniz olsun, tıpkı burada ***sudoers*** dosyasında olduğu gibi sistem üzerindeki diğer çeşitli konfigürasyonlarda da bu şekilde harici konfigürasyonların alt dizinde tutulduğuna şahit olacaksınız.

Şimdi tekrar ***sudoers*** dosyasına dönecek olursak, buraya dahil edilen dizin içeriğine bakmak için öncelikle mevcut konfigürasyon dosyamızı kapatalım. Şimdi ls ***/etc/sudoers.d/*** komutuyla dizin içeriğini listeleyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls /etc/sudoers.d/
kali-grant-root  README
```

Örneğin benim sistemimde “kali-grant-root” isimli bir konfigürasyon dosyası var. Okumak için `visudo` komutunun ardından bu dosyanın tam konumu yazabiliriz. 

```bash
sudo visudo /etc/sudoers.d/kali-grant-root
```

Burada **kali-tursted** isimli bir grup tanımlanmış ve bu gruba tüm komutları parola olmadan çalıştırabilme yetkisi tanımlanmış. 

```bash
# Allow members of group kali-trusted to execute any command without a
# password prompt
%kali-trusted   ALL=(ALL:ALL) NOPASSWD: ALL
```

Buradaki **NOPASSWD** ifadesi parola sorulmadan buradaki yetkilerin uygulanabilmesini sağlıyor.

Dolayısıyla bu **kali-trusted** grubundaki tüm kullanıcılar tüm komutları kendi parolaları dahi sorulmadan sorunsuzca çalıştırabilirler. Hatta buradaki yetki tanımlamasının etkisini bizzat görmek için bu gruba bir kullanıcı ekli mi diye kontrol edip, varsa o kullanıcı üzerinden testimizi gerçekleştirebiliriz. 

Yeni bir konsol üzerinden bu gruptaki kullanıcıları listelemek için `grep “kali-trusted” /etc/group` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ grep "kali-trusted" /etc/group
kali-trusted:x:123:
```

Bu grup hakkında bilgi sunan satır filtrelendi ama buradaki tanımlamanın sonunda, yani gruba dahil olan kullanıcıların bulunması gereken sütunda herhangi bir kullanıcının ekli olmadığını görebiliyoruz. Eğer testi yine de gerçekleştirmek istersek bu gruba kullanıcı ekleyip deneyebiliriz. Ben **nil** isimli kullanıcı hesabını bu gruba dahil etmek üzere `sudo gpasswd -a nil kali-trusted` komutunu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo gpasswd -a nil kali-trusted 
[sudo] password for taylan: 
Adding user nil to group kali-trusted
```

**taylan** kullanıcısı **sudo** grubunda olduğu için ve sudo grubundakilere parola sorulmaması gibi özel bir tanımlama olmadığı için taylan kullanıcısı yetkili şekilde bir işlem yapmadan önce buraya parolasını girmesi gerekti. Neticede nil kullanıcısını “kali-trusted” grubuna eklemiş olduk. Kontrol etmek için yine `grep “kali-trusted” /etc/group` komutunu geçmişten çağırıp kullanabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ grep "kali-trusted" /etc/group                 
kali-trusted:x:123:nil
```

Bu kez son sütunda nil kullanıcısının ismi gözüküyor. Yani gruba ekleme işlemi başarılı. Şimdi yetki işlemini teyit etmek için hemen `su nil` komutuyla nil kullanıcı hesabına geçiş yapalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su nil                                                                   
Password: 
┌──(nil㉿linuxdersleri)-[/home/taylan]
└─$
```

Tamamdır. Şimdi tekrar ***sudoers.d*** dizini altındaki konfigürasyon dosyasına dönecek olursak, burada bu gruba dahil olan tüm kullanıcıların tüm komutları parola olmadan çalıştırabileceği belirtiliyor. 

```bash
# Allow members of group kali-trusted to execute any command without a
# password prompt
%kali-trusted   ALL=(ALL:ALL) NOPASSWD: ALL
```

Şimdi bu durumu teyit etmek için nil kullanıcısı üzerinden `sudo whoami` komutunu girebiliriz. 

```bash
┌──(nil㉿linuxdersleri)-[/home/taylan]
└─$ sudo whoami
root
```

Bana yani "nil" kullanıcısına, parola sorulmadan anında `whoami` komutu en yetkili kullanıcı olan root kullanıcısının yetkileriyle çalıştırdı. İşte bu basit örnek, konfigürasyon dosyasındaki parola sorulmadan tüm yetkileri veren "**NOPASSWD**" tanımlamasının geçerli olduğunun kanıtı.

Eğer süper kullanıcı yetkilerine kendi hesabının şifresini bile girmeden erişmesini istediğimiz kullanıcılar varsa bu gruba ekleyebiliriz. Ya da örneğin sizde böyle bir grup tanımlaması yoksa, buradaki tanımlamanın aynısını yazarak aynı konfigürasyonların geçerli olmasını da sağlayabilirsiniz. Fakat tabii ki buradaki gibi sınırsız yetkiyi kime vermek istediğinize de iyi karar vermeniz gerekiyor çünkü bu durum sistem güvenliği için tehlikeli olabilir. Bu mevcut tanımlamalarla tüm yetkileri vermek yerine eğer istersek ihtiyaçlarımıza göre farklı kısıtlamalar içeren bir grup da ya da kullanıcı özelinde tanımlamalar da oluşturabiliriz. 

Şimdi gelin çok kısaca bu tanımlamalardan bahsederek devam edelim.

## Özel Kural Tanımlama

`sudo` aracılığı ile spesifik bir kullanıcı gibi komut yürütmek istersek `sudo -u kullanıcı-adı komut` şeklinde komutumuzu girebiliyoruz. Benzer şekilde spesifik bir grubun yetkileri dahilinde bir komutu çalıştırmak istediğimizde de `sudo -g grup-adı komut` şeklinde `sudo` aracını kullanabiliyoruz. 

Daha önce ***sudoers*** konfigürasyonlarında bizzat gördüğümüz gibi <strong><span class="mavi">sudo</span></strong> grubundaki kullanıcılara "<strong><span class="kirmizi">ALL:ALL</span></strong>" yani <strong><span class="kirmizi">tüm kullanıcı ve grupların yetkileri ile hareket etme</span></strong> imkanı tanındığını biliyoruz. Tekrar hatırlayalım:

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="c"># User privilege specification</span>
root    <span class="nv">ALL</span><span class="o">=(</span>ALL:ALL<span class="o">)</span> ALL

<span class="c"># Allow members of group sudo to execute any command</span>
<span class="mavi">%sudo   <span class="nv">ALL</span><span class="o">=(</span><span class="kirmizi">ALL:ALL</span><span class="o">)</span> ALL</span> 

<span class="c"># See sudoers(5) for more information on "@include" directives:</span>

@includedir /etc/sudoers.d
</code></pre></div></div>

**taylan** kullanıcısı da **sudo** grubunda olduğu için ben taylan kullanıcı hesabı üzerinden istediğim kullanıcı veya grubun yetkileri ile komutlar çalıştırabilirim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo whoami
[sudo] password for taylan: 
root

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo -u nil whoami
nil

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo -u ali whoami
ali

┌──(taylan㉿linuxdersleri)-[~]
└─$ whoami
taylan

```
Gördüğünüz gibi tüm kullanıcı ve grup yetkileri ile çalıştırma hakkımız olduğunda; biz **özellikle belirtmediğimiz zaman** `sudo` aracını kullandığımızda, komutlarımız **varsayılan olarak "root" yetkileri** ile çalıştırılıyor. Fakat `sudo` aracının `-u` veya `-g` seçenekleri ile kullanıcı veya istediğimiz grup yetkileri de komutlarımızı çalıştırmamız mümkün oluyor.

Örneğin ali kullanıcısı sudo grubununda olmadığı için bu işlemleri gerçekleştiremez.

```bash
┌──(ali㉿linuxdersleri)-[~]
└─$ whoami
ali

┌──(ali㉿linuxdersleri)-[~]
└─$ sudo whoami
[sudo] password for ali: 
ali is not in the sudoers file.  This incident will be reported.

┌──(ali㉿linuxdersleri)-[~]
└─$ sudo -u nil whoami
[sudo] password for ali: 
ali is not in the sudoers file.  This incident will be reported.

```

Yani tekrar özetleyecek olursak "**ALL=(ALL:ALL) ALL**" tanımlaması aslında tüm hostlardaki tüm kullanıcı ve grupların yetkileri ile tüm komutların çalıştırılabileceğini belirten en geniş yetki tanımlamasıdır.

Artık ***sudoers*** dosyasının genel sözdizimine aşina olduğumuza göre, ihtiyaçlarımıza göre bazı yeni kurallar tanımlayabiliriz. Tanımlama yaparken ***/etc/sudoers*** dosyası içinde veya ***/etc/sudoers.d*** dizini altındaki dosyalarda tanımlama yapmamız mümkün. Ben bu dizin altında yeni konfigürasyon dosyası oluşturmak için `sudo visudo /etc/sudoers.d/yeni-tanim` şeklinde komutumu giriyorum.

### Kullanıcıya Özel Tanımlama

Ben öncelikle tek bir kullanıcı için özel tanımla yapmak istiyorum. İlk olarak tanımlamayı yapıp, daha sonra üzerine konuşalım.

```bash
#ali kullanıcısı için yetki tanımlaması
ali ALL= /usr/bin/ls, /usr/bin/whoami
```

Dosyaya sonradan baktığımızda bu tanımlamayı neden yaptığımızı daha net anlayabilmek için ilk olarak diyez **#** işaretinden sonra kısaca açıklama ekledik. Örneğin ben ali kullanıcısı için tanımlama yapmak istediğim için buraya “ali kullanıcısı için yetki tanımlaması” şeklinde yazdım. 

Tanımlama tek bir kullanıcıyı etkileyecekse, doğrudan kullanıcının ismini yazmamız gerekiyor. Ben de **ali** şeklinde yazdım. 

Tanımladığım bu yetkinin tüm hostlarda geçerli olmasını istediğim için kullanıcı ismini yazdıktan sonra boşluk bırakıp **ALL** yazıp eşittir işaretini koydum. Yetki tanımlamasını bu eşittir işaretinden sonra yazabiliyoruz. 

Ben ali kullanıcısının herhangi bir kullanıcı veya grup olarak komut çalıştırmasını **istemediğim için** parantez açıp, içine hangi kullanıcılar veya gruplar olarak komut çalıştırabileceğini **belirtmedim**. Biz özellikle kullanıcı adı veya grup belirtmediğimizde komutlar **root** yetkileriyle çalıştırılıyor olacak. Eğer siz **tüm kullanıcı hesapları ve grupları gibi** komut yürütebilmesini isterseniz (**ALL:ALL)** şeklinde belirtebilirsiniz. 

```bash
ali ALL=(ALL:ALL) /usr/bin/ls, /usr/bin/whoami
```

İleride komutlarımızı nasıl farklı kullanıcılar veya gruplar gibi çalıştırabileceğimizden bahsettiğimizde buradaki tanımlama sizin için çok daha anlaşılır olacak. Ayrıca isterseniz tüm kullanıcılar gibi çalıştırma yetkisi yerine spesifik olarak istediğiniz kişi veya grupları da, aralarına virgüller ile ayırarak belirtebilirsiniz. 

```bash
ali ALL=(akullanıcı, bkullanıcı, ckullanıcı:agrubu, bgrubu) /usr/bin/ls, /usr/bin/whoami
```

Ben hiç birini istemediğim için parantez açmadım. Parantez açmadığım için ali kullanıcısı komutlarını yalnızca **root** olarak çalıştırabiliyor olacak.

Son olarak eğer ali kullanıcısının **tüm komutları** root yetkileriyle çalıştırabilmesini istersem sonda **ALL** şeklinde yazabilirdim. 

```bash
ali ALL= ALL
```

Ancak ben size kısıtlı yetkiyi göstermek için ali kullanıcısının yalnızca `ls` ve `whoami` araçlarını kullanmasına izin vermek istiyorum. Bunun için de `ls` ve `whoami` araçlarının tam dosya konumlarını buraya yazdım.

```bash
ali ALL= /usr/bin/ls /usr/bin/whoami
```

Araçların konumlarını `which` komutu ile öğrenebilirsiniz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ which ls
/usr/bin/ls

┌──(taylan㉿linuxdersleri)-[~]
└─$ which whoami
/usr/bin/whoami
```

İşte bu şekilde istediğimiz kullanıcı hesabına istediğimiz araçları root olarak çalıştırabilme yetkisi verebiliyoruz. Kuralı kendi ihtiyacınıza göre istediğiniz şekilde özelleştirebilirsiniz. Kuralı denemek için öncelikle konfigürasyon dosyamızı kaydedip kapatalım.

Ben ali kullanıcısı için tanımladığım için `su ali` komutu ile bu kullanıcı hesabına geçiş yapıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su ali
Password: 
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$
```

Şimdi yetkilerimizi deneyebiliriz. 

```bash
┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ ls /root
ls: cannot open directory '/root': Permission denied

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ sudo ls /root
[sudo] password for ali: 
Desktop  Documents  Downloads  Music  Pictures  Public  Templates  test  Videos

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ whoami
ali

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ sudo whoami
root

┌──(ali㉿linuxdersleri)-[/home/taylan]
└─$ sudo echo "deneme"
Sorry, user ali is not allowed to execute '/usr/bin/echo deneme' as root on linuxdersleri.net.
```

Gördüğünüz gibi ali kullanıcısı tam olarak benim izin verdiğim şekilde yalnızca `ls` ve `whoami` komutlarını `sudo` sayesinde root yetkileriyle çalıştırabiliyor. Örneğin `echo` aracı için **sudo** kuralı belirtmediğim için bu aracı `sudo` komutu ile root yetkileriyle çalıştıramadım. 

Ayrıca root dışında, diğer kullanıcı hesapları üzerinden çalıştırmayı da deneyebiliriz. 

```bash
┌──(ali㉿linuxdersleri)-[/]
└─$ sudo -u nil whoami
Sorry, user ali is not allowed to execute '/usr/bin/whoami' as nil on linuxdersleri.net.
```
Bakın ben "nil" kullanıcı yetkileri ile çalıştırmayı denedim ama konfigürasyonlarda bunu belirtmediğim için çalıştıramadım. Ben konfigürasyonlarda hiç bir kullanıcı veya grubu belirtmediğim için yalnızca "root" yetkileri ile çalıştırmam mümkün oldu. O da yalnızca izin verdiğim araçları çalıştırabildim. Yani ali kullanıcısı için tanımladığımız konfigürasyonun geçerli olduğunu bizzat teyit etmiş olduk.

Esasen benzer şekilde spesifik olarak izin verip, kısıtlayabileceğimiz ve başka parametreler ile kapsamını değiştirebileceğimiz pek çok tanımlama mevcut. Fakat temel işleyişten haberiniz olduğu için manual sayfaları üzerinden bu tanımlara bakmanız çok daha etkili olacaktır. Zira aksi takdirde manual sayfalarının tekrarı gibi biraz uzun ve kendini tekrar eden tanımlama açıklamaları yapmam kaçınılmaz olacak. Ben de ihtiyaç duyduğumda manual sayfalarına bakıp tanımlama kurallarını hatırlıyorum.

Tanımlama yaparken önemli olan, kime hangi yetkiyi verdiğinizdir. Gereksiz ve hatalı yetki tanımlamaları çok büyük güvenlik zafiyetlerin sebebiyet verebileceği için tanımlamalarınızı yaparken lütfen dikkatli davranın. 

Neyse bence artık `sudo` aracı hakkında gerekli olan temel bilgilerden bahsetmiş olduk. Artık tek ihtiyacınız pratik yaparak öğrendiklerinizi pekiştirmek ve merak ettiğiniz soruları kendi kendinize araştırıp uygulama yaparak kavramak.

# `su` Komutu Hakkında

Şimdiye kadar özellikle ele almamış olsak da aslında kullanıcı hesapları arasında geçiş yapmak için `su` komutunu defalarca kez kullandık. `su` komutunun ismi de “**s**witch **u**ser” yani “kullanıcı değiştir” ifadesinin kısaltmasından geliyor.

Bildiğiniz gibi `su` komutu kendisinden sonra belirtilmiş olan kullanıcı hesabında, mevcut konsol üzerinden oturum açmayı sağlıyor. Fakat bu komutu kullanırken aslında temelde iki alternatif kullanım yönetimine sahibiz. Eğer `su` komutundan sonra yalnızca geçiş yapılması gereken kullanıcı ismini girersek, bu kullanıcı hesabı mevcut bulunduğumuz kabuğun altında yeni başlatılan kabukta bizim bu komutu girdiğimiz konumdan çalışmaya başlayacak. Mevcut kabuğun altında yeni bir kabuk başlatıldığı için de mevcut kabuk üzerinde geçerli olan global ortam değişkenleri gibi çeşitli bilgiler de bu yeni başlatılan kabuğa aktarılıyor olacak. Ne demek istediğimi en iyi örnek üzerinden açıklayabilirim. 

Şimdi ben farklı bir kullanıcı hesabına geçiş yapmadan önce `export test=”bu bir testtir”` komutuyla, mevcut kabuk ortamımda **test** isimli yeni bir global değişken tanımlamak istiyorum. Bu sayede bu değişken mevcut kabuk altında başlatılan tüm alt kabuklarda da aynen geçerli olacak. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ export test="bu bir testtir"

┌──(taylan㉿linuxdersleri)-[~]
└─$ echo $test
bu bir testtir

┌──(taylan㉿linuxdersleri)-[~]
└─$ bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ echo $test
bu bir testtir
```

Tanımadığım değere şu an ulaşabiliyorum. Son olarak bir de mevcut bulunduğumuz dizini `pwd` komutu ile öğrenelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ pwd
/home/taylan
```

Gördüğünüz gibi ben şu anda bu kabukta taylan kullanıcısının ev dizininde yani ***/home/taylan*** dizininde çalışıyorum. 

Şimdi `su root` komutu ile **root** kullanıcısına geçiş yapmayı deneyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su root
Password:
```

Ben daha önce root hesabı için parola tanımladığım için burada tanımadığım parolayı giriyorum. Tabii siz root hesabını aktifleştirmediyseniz örnek için farklı bir kullanıcıya da geçiş yapmayı deneyebilirsiniz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su root
Password: 
┌──(root㉿linuxdersleri)-[/home/taylan]
└─#
```

Tamamdır root hesabı için tanımlı olan varsayılan kabuğa geçişimi yapmış oldum. Hatta kabuğu sorgulamak için `echo $SHELL` komutunu girebiliriz. 

```bash
┌──(root㉿linuxdersleri)-[/home/taylan]
└─# echo $SHELL
/usr/bin/zsh
```

Benim kullandığım sistemde root hesabının varsayılan kabuğu `zsh` kabuğu olduğu için bu şekilde çıktı aldım.

Şimdi esas konumuza dönecek olursak ben taylan kullanıcısının kabuğu üzerinde tanımlamış olduğum değişkene bu kabuk üzerinden ulaşıp ulaşamayacağımı merak ediyorum. Öğrenmek için `echo $test` şeklinde komutumuzu girelim. 

```bash
┌──(root㉿linuxdersleri)-[/home/taylan]
└─# echo $test 
bu bir testtir
```

taylan kullanıcısının kabuğunda tanımlı olan değişken burada da geçerli. Üstelik farklı kabuk olsalar bile değişken değeri aktarılmış. Bir de mevcut bulunduğumuz dizini de `pwd` komutuyla bastıralım. 

```bash
┌──(root㉿linuxdersleri)-[/home/taylan]
└─# pwd               
/home/taylan
```

Bakın, hala taylan kullanıcısının ev dizinde(***/home/taylan***) çalışıyorum.

## `su` ile `su -` Arasındaki Fark

Burada hala aynı dizinde çalışma ve diğer kullanıcının kabuğunda tanımlanmış global değişkene ulaşabiliyor olma nedenim `su` komutunda sonra doğrudan yalnızca kullanıcı ismi girmiş olmam. Bu şekilde komut girdiğimizde `su` aracı, ilgili kullanıcı hesabına geçiş yaparken mevcut kabuğun çalışma ortamındaki mevcut dizinini ve ortam değişkenleri gibi çeşitli özellikleri koruyarak geçiş yapılan kullanıcının kabuğunu alt kabukta başlatıyor. Yani aslında sıfırdan temiz bir kabuk ortamı başlatılmıyor.

Eğer biz mevcut kabuktan etkilenmeyecek temiz bir kabuk başlatılsın istersek komutumuz `su - kullanıcı-adı` şeklinde girebiliriz. Ben denemek için mevcut root oturumunu kapatmak üzere `exit` komutunu giriyorum. 

```bash
┌──(root㉿linuxdersleri)-[/home/taylan]
└─# exit      

┌──(taylan㉿linuxdersleri)-[~]
└─$
```

Tamamdır. Şimdi oturum açtığımız kullanıcın, temiz bir kabuğunu başlatmak için `su - root` şeklinde komutumuzu girelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su - root
Password: 
┌──(root㉿linuxdersleri)-[~]
└─# 
```

Tamamdır. Hemen bulunduğumuz dizini bastıralım. 

```bash
┌──(root㉿linuxdersleri)-[~]
└─# pwd       
/root
```

Bu kez root kullanıcısının ev dizininde yani ***/root*** dizininde çalışmaya başladım. Bir de taylan kullanıcısının kabuğunda tanımlı **test** isimli global değişkeni sorgulamak için `echo $test` şeklinde komutumuzu girelim. 

```bash
┌──(root㉿linuxdersleri)-[~]
└─# echo $test 

                                                                                                                                                            
┌──(root㉿linuxdersleri)-[~]
└─#
```

Herhangi bir çıktı almadık çünkü bu değişken, başlatılan yeni kabuğa aktarılmadı. Biz `su` komutunda sonra tire `-` işaretini girdiğimiz için geçiş yaptığımız kullanıcının varsayılan kabuğu, standart ortam özellikleriyle birlikte tahsis edilmiş oldu.

Bu kullanım yani `su - kullanıcı-adı` kullanımı özellikle güvenlik gerekçesiyle sistem yöneticileri tarafından sıklıkla tercih ediliyor. Çünkü farklı bir kullanıcı hesabına geçiş yapılmadan önce, o anda üzerinde çalışılmakta olan mevcut kabuk üzerinde istenmeyen ortam değişkenleri tanımlanmış olabilir. Bu gibi güvenlik riski oluşturabilecek durumlardan kaçınmak için temiz bir kabuk başlatan `su - kullanıcı-adı` şeklinde komut girmek çok daha makul bir yaklaşım.

# Mevcut Kullanıcı Hesabını Silmek

Oluşturduğumuz yeni kullanıcı hesaplarını anlatımlar sırasında kullandığımız için nasıl silineceklerini en son ele almanın daha makul olacağını düşündüm. Bu sebeple bu açıklamalar en sonda bulunuyor.

## `userdel` Komutu

Mevcut bir kullanıcıyı silmek için `userdel` komutuna silinmesini istediğimiz kullanıcı hesabının ismini girmemiz yeterli oluyor. Fakat bu şekilde kullandığımızda kullanıcı hesabının ev dizini silinmediği için ek olarak `-r` seçeneğini de eklememiz gerekiyor.

Örneğin **ali** isimli kullanıcı hesabını silmek istersem `sudo userdel -r ali` şeklinde komutumu girebilirim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo userdel -r ali
[sudo] password for taylan:
```

Parolamızı girip onaylayalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo userdel -r ali
[sudo] password for taylan: 
userdel: user ali is currently used by process 13099
```

Bende olduğu şekilde eğer sizin de silmek istediğiniz kullanıcının oturumu hala aktifse ve çalışmakta olan işlemler dolayısıyla silme işlemi başarısız olur. Bu durumda bu işlemleri sonlandırıp silme işlemini tekrar deneyebiliriz. İleride işlemleri nasıl sonlandırabileceğimizden bahsedeceğimiz için şimdi bunun yerine ben bu silme işlemini zorlayarak yapmak istiyorum. Bunun için `force` yani zorlama seçeneğini kullanabiliriz. Bu seçenek sayesinde, silmek istediğimiz kullanıcıya ait aktif işlemler olsa bile silme işlemi gerçekleştiriliyor. 

Ben komutumu bu kez `sudo userdel -rf ali` şeklinde giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo userdel -rf ali
userdel: user ali is currently used by process 13099
userdel: ali mail spool (/var/mail/ali) not found
```

Kullanıcının silindiğini teyit etmek için `su ali` komutu ile geçiş yapmayı deneyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su ali
su: user ali does not exist or the user entry does not contain all the required fields
```

Böyle bir kullanıcının var olmadığına dair uyarı aldık. Bunun dışında dilerseniz `ls /home` komutuyla ev dizinin silindiğini de teyit edebilirsiniz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls /home
kali  nil  taylan
```

Gördüğünüz gibi **ali** için bir ev dizini artık mevcut değil.

Tabii ki biz buradaki işlemle kullanıcının ev dizinini ve kullanıcı kaydını sildik. Eğer sistemin farklı konumlarında bu kullanıcıya ait bu kullanıcın oluşturduğu dosya ve dizinler varsa onlar silinmedi. Eğer ne yaptığınızdan eminseniz ve gerçekten bu kullanıcının oluşturduğu dosyaları silmek istiyorsanız `find` aracından yararlanabilirsiniz. Geçmişte `find` **pipe** ve `xargs` araçlarından bahsettiğimiz için nasıl yapabileceğinizi kısa bir araştırma ile keşfedebileceğinizi düşünüyorum. **Yine de kullanıcıların oluşturdukları dosyaları kontrolsüzce silmek, sistemin işleyişine beklenmedik şekilde zarar verebilir.** Bu sebeple uygulamaya geçmeden önce ne yaptığınızın farkında olun lütfen.

Benim temel seviye kullanıcı ve grup yönetimi için söylemek istediklerim bu kadardı. Bir sonraki bölümde disk yönetiminden bahsederek devam edeceğiz.
