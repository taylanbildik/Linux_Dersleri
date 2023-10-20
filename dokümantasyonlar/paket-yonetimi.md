# Paket Yönetimi | Kurma - Kaldırma - Güncelleme

Söz konusu Linux sistem yönetimi olduğunda en önemli konuların başında paket yönetimi geliyor. Paket yönetimi dediğimiz yapı, sisteme yeni yazılımların yüklenmesi ve gerektiğinde var olanların güncellenmesi, yeniden konfigüre edilmesi veya silinmesi gibi işlemlere olanak tanır. Kullanmakta olduğumuz Linux dağıtımına bir yazılım yüklemek istediğimizde en kolay yöntem paket yönetim aracını kullanmaktır. Çünkü yazılımlar ilgili dağıtıma kolayca kurulup yönetilebilsin diye geliştiriciler tarafından yazılımın tüm dosyaları tek bir paket olarak bize sunuluyor. Bizler de bu paketler üzerinden ilgili yazılımları kolayca kurup yönetebiliyoruz. Burada bahsi geçen paket yönetimi kavramı üzerinde ayrıca duracağız zaten. Eğer hatırlıyorsanız eğitimin başında dağıtımlardan bahsederken, dağıtımların genel olarak birbirlerinden ayrıştığı noktanın başta paket yönetim araçları olmak üzere dağıtımlarda varsayılan olarak yüklü bulunan araçlar olduğuna değinmiştik. Çeşitli araçların mevcut dağıtımda sorunsuzca çalıştırılabilir güvenli paketlerini sunmak, dağıtımların en temel sorumluluklarının başında geliyor. Çünkü bizler sistemi yönetirken aslında sisteme yüklediğimiz araçları kullanıyoruz. Eğer aradığımız araçların güncel güvenilir ve stabil sürümlerine kolay erişemiyorsak ilgili dağıtımı kullanmak için bir sebep kalmıyor. Her bir kullanıcının bireysel olarak paket yönetimi ile boğuşması verimlilik açısından kesinlikle sürdürülebilir ve mantıklı değildir. Özellikle işletmeler güvenli ve güncel paket depolarına sahip olmayan dağıtımları kullanmayı kesinlikle istemezler. Neticede paket yönetimi oldukça kritik öneme sahip bir konu. Şimdi kısaca paket yönetimi fikrinin nereden çıktığı ve temelde ne olduğuna değinelim.

Linux üzerinde araçların kurulumu, güncellenmesi ve silinmesi gibi tüm işlemleri paket yöneticileri üzerinde kolayca gerçekleştirebiliyoruz. Ancak bu her zaman böyle değildi. 

Paket yönetimi yaklaşımı geliştirilmeden önce yazılımların yüklenebilmesi için kaynak koddan derlenerek kurulmaları gerekiyordu. Peki kaynak koddan kurulum ne denemek ? 

Geliştiriciler yazmış oldukları yazılımların kaynak kodlarını ve elbette bu kaynak kodlarının sisteme kurulmasını sağlayacak olan bazı konfigürasyon betiklerini, kurulum dokümanlarını kullanıcılar ile paylaşıyorlar. Sistemine bu yazılımı kurmak isteyen kişiler de kurulum dokümanlarının da yardımıyla ilgili yazılımın nasıl kurulacağı ve bu yazılımın kurulması için gerekli olan başka yazılımlar olup olmadığını öğreniyorlar. Kurulum işlemi genellikle kaynak kodlarının çalıştırılabilir ikili dosyalara dönüştürülmesi için geliştiricinin sunduğu konfigürasyon betiğinin çalıştırılması ve daha sonra bu dosyaların, sistemin uygun dizinlerine konumlandırılması işlemidir. Bir yazılımın kaynak koddan ikili dosyalara dönüştürülme ve daha sonra doğru şekilde çalışabilmesi için farklı yazılımlara da ihtiyacı olabilir. Bu durumda ilgili yazılımların da aynı şekilde kaynak koddan derlenerek kurulmaları gerekiyor. Elbette bu yazılımların da bağımlılıkları olabileceği için onların da kurulması gerekiyor. Biraz kompleks bir aracı bu şekilde kurmayı denediğinizi düşünsenize? Eğer çok fazla bağımlılığı yani çalışması için gereken ek yazılım varsa bunları teker teker kaynak koddan kurmak kesinlikle bir kabus olacaktır. 

Eğer daha önce kaynak koddan kurulum yapmadıysanız yeni başlayan kullanıcılar için pek de kullanışlı olmadığını ileride kaynak koddan kurulumu ele alırken sizler de bizzat görmüş olacaksınız. 

Elbette bu durum geliştiriciler tarafından fark edilmiş ve kaynak koddan derleme yerine herkes için işleri kolaylaştırmak adına paket yaklaşımı geliştirilmiştir.

Paket dediğimiz yapı, ilgili aracın kurulacağı sisteme tam olarak uyumlu şekilde önceden hazırlanmış dosyalarının paket haline getirilip kullanıcılara sunulmasıdır. Bu paket içinde aracın çalıştırılabilir dosyaları, kütüphane dosyaları veya dokümantasyon dosyaları gibi ilgili aracın tüm dosyaları önceden derlenmiş yani hazırlanmış şekilde geliyor. Dolayısıyla bizlerin kaynak koddan derlemeyle uğraşmamız gerekmiyor. Derlenmiş yani çalıştırılabilir hale getirilmiş dosyalar zaten paketin içinde bulunuyor. Tek yapmamız gereken bu paketi temin edip, paketi kurabilecek aracı kullanmaktır. Paketlerin herkes tarafından güvenli şekilde temin edilebilmesi için de bu paketler sunucular üzerinden herkesin erişimine açık şekilde paylaşılıyor. Geliştiricilerin kendi yazılım paketlerini sunduğu kendilerine ait sunucuları olmakla birlikte bir de dağıtımların çeşitli paketleri bir araya toparlayıp tek bir sunucu üzerinden sunduğu “repository” yani “repo” yaklaşımı da bulunuyor. Zaten buradaki “repository” ifadesi "depo" ya da "ambar" anlamına geliyor ve kısaca “repo” olarak ifade ediliyor. Bir çok farklı paket tek bir sunucuda tutulduğu için bu sunucu depo görevi görüyor buna da İngilizce olarak repo deniyor. Örneğin ben Kali dağıtımını kullandığım için kali’nin resmi repo adresi üzerinden Kali tarafından denetlenip sunucuya eklenmiş olan stabil yazılım paketlerine kolayca ulaşıp bunları indirebilirim. Zaten bir aracın kurulabilmesi için gereken ek bağımlılıklar dağıtım geliştiricileri tarafından bilindiği için bu bağımlılıkların paketleri de mutlaka repoda bulunuyor. Yani bir yazılımın kurulması için gereken tüm ek bileşenler de repolar üzerinde paketler halinde kullanıcılara sunuluyor. Dağıtımların en önemli sorumluluklarından biri de kullanıcılarına yazılımların tüm bağımlılıklarıyla birlikte güvenilir ve güncel paketlerin bulunduğu bir repo sunmaktır. Bu sayede bizler ekstra çaba sarf etmeden istediğimiz yazılımı mevcut sistemimize güvenli şekilde kurabiliyoruz. 

Yani uzun lafın kısası, Linux'a yeni bir program yüklemek ilk günlerine oranla şimdilerde inanılmaz derecede kolay. 

Repodaki paketlerin mevcut sisteme kurulması ve daha sonra bu paketlerin silinmesi veya güncellenmesi gibi yönetimsel işlemlerin yapılabilmesi için de “paket yöneticileri” vardır. Paket yöneticisi sayesinde ilgili paketi sistemimize kurup yönetebiliyoruz.

Ana dağıtımlar birbirinden farklı paket sistemleri kullandığı için kullanılan dağıtıma göre paketlerin kurulumu ve yönetimi için kullanılan farklı türde çeşitli araçlar bulunuyor. Örneğin **Debian** tabanlı dağıtımlar **apt** ve **dpkg** araçlarını kullanırken, **Red Hat** tabanlı dağıtımlar, **yum** ve **rpm** araçları kullanılır. Elbette diğer ana dağıtımlarda da kendilerine özgü paket yöneticileri bulunuyor. Çünkü yazılımlar ilgili dağıtımda çalışmaya uygun şekilde derlenip paketlendiği için, bu paketleri açmak için de uygun paket yöneticilerinin kullanılması gerekiyor. Örneğin **Debian** tabanlı dağıtımlarda kullanılacak olan paketler “***.deb***” uzantılı ile sunulurken, **Red Hat** tabanlı dağıtımların paketleri “***.rpm***” uzantılıdır. Benzeri şekilde pek çok ana dağıtımın paket yapısı ve paket yönetim aracı da doğal olarak farklı oluyor. 

Ancak ben anlatım sırasında özellikle söz konusu sunucu yönetimi olduğunda en çok karşılaştığımız dağıtımlar gereği Debian ve Red Hat için geçerli olan paket yöneticilerinden bahsediyor olacağım. Yine de merak etmeyin, temelde tüm paket yöneticilerinin çalışma şekilleri birbirine benzediği için tek yapmanız gereken kullandığınız paket yöneticisine özgü olan komutları öğrenmek. 

Biz öncelikle Debian tabanlı dağıtımlar için geçerli olan paket yönetiminden bahsederek başlayalım.

# Debian Tabanlı Sistemlerde Paket Yönetimi

Debian dağıtımları için özel olarak hazırlanmış olan paketlerin “***.deb***” uzantısı ile dağıtıldığından bahsettik. Debian tabanlı bir sisteme “***.deb***”  uzantılı paketi kurmak için tek yapmamız gereken bu paketi işleyebilen `dpkg` aracını kullanmaktır. 

## `dpkg`

`dpkg` aracı Debian’a özel olan “***.deb***” paketlerinin kurulması, konfigüre edilmesi, ve silinmesi gibi temel paket yönetiminden sorumlu araçtır. “**dpkg**” kısaltması “**D**ebian **p**ac**k**a**g**e” yani “Debian paketi” ifadesinden geliyor.  

## `apt`

Bir de `apt` isimli bir araç mevcut. `apt` aracının ismi de, “**a**dvanced **p**ackage **t**ool” yani “gelişmiş paket aracı” ifadesinin kısaltmasından geliyor. Bu araç `dpkg` aracına oranla, kullanıcının işlerini daha da kolaylaştırmak üzere geliştirilmiştir. `apt` aracı paketlerin uzak sunucundan bağımlılıkları ile birlikte indirip kurulmasını sağlıyor. Ve diğer paket yönetim işlerini de bu araç üzerinden gerçekleştirebiliyoruz. `apt` aracı aslında kurulum ve kaldırma gibi paket yönetimi işleri için arka planda `dpkg` aracını kullanıyor. `apt` aracının avantajı, kurmak istediğimiz aracın paketini **repo** üzerinden otomatik bulması ve bu aracın ihtiyaç duyduğu diğer ek paketleri yani bağımlılıklarını da çözümleyip bunları da bulup kurmasıdır. Bu sayede biz bağlandığımız uzak sunucu depolarında olduğu sürece istediğimiz aracı kolayca kurabiliyoruz. Zaten repolar da bir aracın kurulması için gereken tüm bağımlılıkları içerecek şekilde düzenlendiği için `apt` aracı bütüncül olarak bizlere oldukça kolay bir paket yönetim imkanı sunuyor. 

Normalde `dpkg` aracını kullanarak yalnızca indirmiş olduğumuz yani lokal olarak bilgisayarımızda mevcut olan tek bir paketi kurabiliyoruz. Bu paketin, daha doğrusu kurduğumuz aracın çalışması için gereken harici paketler `dpkg` tarafından bulunup indirilmiyor. Bunu yapan `apt` aracıdır. Bizler `dpkg` aracını lokal paket yönetimi için kullanıyoruz. Yani bu durumda `dpkg` aracını kullanarak kurulum yapacaksak kurduğumuz paketin ihtiyaç duyduğu ek paketleri de tek tek bulup indirmemiz ve onları da `dpkg` aracını kullanarak kurmamız gerekiyor. Bahsetmiş olduğum bu durumu pratik yaparken yani uygulamalar üzerinden çok daha net görmüş olacağız zaten. Her ne kadar `apt` aracı daha kullanışlı olsa da öncelikle `dpkg` aracından bahsedip bu aracın temel kullanımını da öğrenmemiz gerekiyor. 

# `dpkg` Kullanımı

`dpkg` aracının kullanımını örneklemek için öncelikle kurmak istediğimiz bir yazılımın Debian için uygun paketini edinmemiz gerekiyor. Eğer kurmak istediğimiz araç, Debian dağıtımlarında kullanıma uygun olarak geliştirildiyse zaten geliştiricisi tarafından mutlaka websitesindeki indirme seçeneklerin ***.deb*** uzantılı paket dosyası sunulmuştur. Ben örnek olarak “zoom” aracını kurmak istiyorum. 

Aracın Linux için indirme kaynağını kısa bir internet araştırması ile bulabilirsiniz. 

![zoom-for-linux.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/zoom-for-linux.webp)

Bakın indirmeden önce hangi Linux dağıtımını kullandığımı seçmem gereken bir listeyle karşılaştım. Özellikle farklı ana dağıtımlar farklı paket yönetim sistemi kullandıkları için buradan kullanmakta olduğunuz dağıtıma uygun olan paketi seçmeniz önemli. Görebildiğiniz gibi buradaki seçeneklerde doğrudan Ubuntu, Mint gibi Debian tabanlı olan dağıtımlar da var ancak Kali, Debian tabanlı olduğu için doğrudan Debian dağıtımını seçmem daha doğru olacaktır. İndirme butonuna basarak da Debian dağıtımlarına uygun olan ***.deb*** uzantılı paketi indirebiliriz. 

![zoom-for-linux2.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/zoom-for-linux2.webp)

## Paket Kurulumu

Sistemimize uygun paketi temin ettikten sonra ilgili paketi kurmak için tek yapmamız gereken `dpkg` komutunun “**i**nstall” yani “kurma” anlamına gelen `i` seçeneğinin ardından kurmak istediğimiz paketin ismini girmek. Paket indirilenler konumunda olduğu için öncelikle bu konuma geçiş yapalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cd ~/Downloads/                                                                                                                                         

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls                                                                                                                                                      
zoom_amd64.deb
```

Şimdi kurulum yapmak üzere `sudo dpkg -i paketin-adı` şeklinde komutumuzu girebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ sudo dpkg -i zoom_amd64.deb 
[sudo] password for taylan:
```

Kurma işlemi yetki gerektirdiği için komutumuzun başına `sudo` ekledik. Bu doğrultuda bizden mevcut hesabımızın parolasını girmemiz bekleniyor. Hesabımızın parolasını girip <kbd>enter</kbd> ile kurulumu onaylayalım.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ sudo dpkg -i zoom_amd64.deb 
[sudo] password for taylan: 
Selecting previously unselected package zoom.
(Reading database ... 291494 files and directories currently installed.)
Preparing to unpack zoom_amd64.deb ...
Unpacking zoom (5.15.2.4260) ...
dpkg: dependency problems prevent configuration of zoom:
 zoom depends on libgl1-mesa-glx; however:
  Package libgl1-mesa-glx is not installed.
 zoom depends on libegl1-mesa; however:
  Package libegl1-mesa is not installed.
 zoom depends on libxcb-xtest0; however:
  Package libxcb-xtest0 is not installed.
 zoom depends on ibus; however:
  Package ibus is not installed.
 zoom depends on libxcb-cursor0; however:
  Package libxcb-cursor0 is not installed.

dpkg: error processing package zoom (--install):
 dependency problems - leaving unconfigured
Processing triggers for kali-menu (2021.4.2) ...
Processing triggers for desktop-file-utils (0.26-1) ...
Processing triggers for mailcap (3.70+nmu1) ...
Processing triggers for shared-mime-info (2.1-2) ...
Errors were encountered while processing:
 zoom
```

Bakın paket çıkarılıp kuruldu ancak aracın doğru şekilde çalışması için gereken ek paketler yani bağımlılıklar olduğu `dpkg` aracı tarafından bize bildirildi. Çoğu durumda eksik paketler olduğu için mevcut paket bile kurulmaz aslında. Ama **zoom** paketi eksik de olsa kuruldu. Yani eksik paketler olmadan çalışmayacak ama sistemde kurulu gözüküyor. Bizzat emin olmak için `zoom` komutu ile aracı çalıştırmayı deneyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ zoom                                                                                                                                                    
ZoomLauncher started.
Zoom path is: /opt/zoom
cmd line: 
Start subprocess: /opt/zoom/zoom sucessfully,  process pid: 28449 
Can't load/home/taylan/.config/zoomus.conf
/opt/zoom/zoom: error while loading shared libraries: libxcb-xtest.so.0: cannot open shared object file: No such file or directory
Something went wrong while running zoom, exit code is 127.
ZoomLauncher exit.
```

Bakın araç yüklenmiş olmasına rağmen eksik kütüphane dosyaları gibi bağımlılık sorunları olduğu için çalıştırılamadı. Zaten `dpkg` çıktılarında da bu eksik paketler açıkça belirtilmişti. `dpkg` aracı mevcut paketteki aracın ihtiyaç duyduğu ek paketleri bize söyleyebilir ancak bunları otomatik olarak bulup yükleyemez. Bizim bu çıktılara bakarak gidip bu paketleri edinip aynı şekilde kurmamız gerekiyor. Ayrıca elbette bu bağımlılıkları kurarken bu paketlerin de başka paketlere bağımlılığı olabilir. Gerekirse bunları da bulup kurmamız gerekiyor. Bu şekilde aracın çalışması için gereken tüm ek paketleri yani bağımlılıkları tek tek elle kurmamız gerekiyor. Eğer kuracağınız aracın çok fazla bağımlılığı varsa bu iş gerçekten çok uğraştırıcı olabilir. Ben örnek olarak basit bir araç seçtiğim için çok fazla bağımlılığı yok ama bu bile çok uğraştırıcı. Merak etmeyin anlatımın devamında bağımlılıkları otomatik olarak bulup gerekli paketleri kuran `apt` aracından zaten bahsedeceğiz. Ancak şimdilik `dpkg` aracı ile gerektiğinde paketlerimizi nasıl kurabileceğimizi öğrenmemiz gerekiyor.

Paketleri bulmak için Google gibi bir arama motoru üzerinden araştırma yapabilirsiniz. Ancak yine de en sağlıklısı Debian'ın resmi paket kaynağı olan [packages.Debian.org](http://packages.Debian.org) adresini kullanmak. Ben de aldığım hata çıktısına bakarak gerekli olan tüm bağımlılıkları bu adres üzerinden bulup indireceğim.

  

![dpkg-download.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/dpkg-download.webp)

Ayrıca kurulacak olan paketlerin de kendi bağımlılıkları olacağı için bunları da kurmamız gerekecek. Hatta varsa o indirdiğimiz paketlerin bağımlı olduğu paketleri de indirmemiz gerekiyor. Bağımlılıkları [packages.Debian.org](https://packages.Debian.org/search?keywords=search) adresi üzerinden görebilirsiniz. 

![dpkg-dependency.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/dpkg-dependency.webp)

İşte görebildiğiniz gibi hepsini tek elle indirmek zorundayız ve bu gerçekten çok verimsiz bir yöntem. Ben tek tek tüm paketlerin kurulumuna değinmek istemiyorum. Eğer siz ***.deb*** uzantılı bir paketi kurmak istiyorsanız tek yapmanız gereken burada ele aldığımız şekilde tüm bağımlıkları için gereken paketleri indirip `dpkg -i paket-adı` komutu ile tek tek kurmaktır. Lokal paketlerin yani internet bağlantısının olmadığı durumlarda disk üzerindeki paketlerin kurulumu için `dpkg` aracını kullanıyoruz. Ancak internet bağlantımız varken `dpkg` aracı ile kurulum için uğraşmak pek mantıklı değil. Yine de ihtiyaç duyduğumuzda kullanabilmemiz için `dpkg` aracını da öğrenmemiz gerekiyor. Gelin yüklü bulunan paketleri nasıl kaldırabileceğimizle devam edelim.

## Kurulu Paketin Kaldırılması

Sistemimize kurmuş olduğumuz paketi silmek istersek `dpkg` aracının “**r**emove” yani “silmek- kaldırmak” ifadesinin kısaltmasından gelen `r` seçeneğini kullanabiliyoruz. Örneğin ben **zoom** paketini kurduğum için `sudo dpkg -r zoom` komutu ile kurduğum paketin kaldırılmasını sağlayabilirim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ sudo dpkg -r zoom
[sudo] password for taylan: 
(Reading database ... 294386 files and directories currently installed.)
Removing zoom (5.15.2.4260) ...
run post uninstall script, action is remove ...
Processing triggers for kali-menu (2021.4.2) ...
Processing triggers for shared-mime-info (2.1-2) ...
Processing triggers for desktop-file-utils (0.26-1) ...
Processing triggers for mailcap (3.70+nmu1) ...
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ zoom
Command 'zoom' not found, did you mean:
  command 'zoem' from deb zoem
  command 'xzoom' from deb xzoom
Try: sudo apt install <deb name>
```

Gördüğünüz gibi **zoom** paketi sorunsuzca kaldırıldı. Eğer kaldırdığım bu paket başka araçların çalışması için gerekli olan bir paket olsaydı yani herhangi bir aracın bu pakete bağımlılığı olsaydı, bu aracı kaldırırken hata alacaktım. Örnek olması için ben `apt` aracını silmek üzere `sudo dpkg -r apt` komutunu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ sudo dpkg -r apt                                                                                                                                        
dpkg: dependency problems prevent removal of apt:
 tasksel depends on apt.
 apt-utils depends on apt (= 2.3.14+kali1).
 apt-file depends on apt (>= 1.3~exp1~).

dpkg: error processing package apt (--remove):
 dependency problems - not removing
Errors were encountered while processing:
 apt
```

Bakın bana bu paketin silinemeyeceğini çünkü bu paketi kullanan başka araçlar olduğunu yani bu pakete başka araçların bağımlılığı olduğu çıktılarda belirtiliyor. Bu yaklaşım sayesinde, bir paketi kaldırırken başka araçların bozulması önlenmiş oluyor. Yine de araçların bozulması pahasına paketi kaldırmak istiyorsanız `—force-all` yani zorlama seçeneğini kullanarak ilgili paketi kaldırmaya zorlayabilirsiniz. **Ancak ne yaptığınızın farkında değilseniz bu seçeneği kullanmanızı kesinlikle ama kesinlikle önermiyorum.** Çünkü araçların bağımlılıklarını bozup çalışmalarına ve dolaylı olarak da sistemin işleyişine engel olabilirsiniz. 

## Kalıntıların Kaldırılması

Ayrıca `dpkg` aracının “remove” seçeneği dışında bir de “purge” seçeneği bulunuyor. Normalde “**r**emove” yani `r` seçeneğini kullanarak bir paketi kaldırdığımızda, konfigürasyon dosyaları hariç araçla ilişkili olan tüm dosyalar silinir. Bu sayede ileride aracı tekrar yüklediğimizde tekrar konfigüre edilmesi gerekmez çünkü zaten konfigürasyon dosyaları silinmemiştir. Eğer aracın konfigürasyon dosyaları da dahil olmak üzere tüm dosyalarının kaldırılmasını istersek “purge” yani “arındırmak” anlamındaki `P` seçeneğini kullanabiliyoruz. Ben örnek olması için daha önce `r` seçeneği ile kaldırdığım **zoom** aracının konfigürasyon dosyalarını da silmek için bu kez `sudo dpkg -P zoom` yazıp onaylıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ sudo dpkg -P zoom
(Reading database ... 291494 files and directories currently installed.)
Purging configuration files for zoom (5.15.2.4260) ...
run post uninstall script, action is purge ...
```

Bakın konfigürasyon dosyalarının silindiğine dair çıktılar da konsola basıldı. Ben daha önce kaldırdığım `zoom` aracının konfigürasyon dosyalarını temizlemek için kullandım ancak doğrudan “purge” seçeneği ile aracın her şeyinin silinmesi de mümkündür. Yani `zoom` aracını silmeden önce `dpkg -P zoom` komutunu girseydim konfigürasyon dosyaları da dahil her şey silinmiş olacaktı. 

Paket yönetimindeki en temel işlevler olan kurma ve kaldırmadan bahsettiğimize göre şimdi biraz da bilgi alma seçeneklerinden bahsedelim.

## Paket Hakkında Bilgi Almak

Henüz paketi kurmadan önce paketin içeriği hakkında bilgi almak istersek “**i**nfo” ifadesinin kısaltmasından gelen büyük `I` karakterini kullanabiliriz. Ben daha önce indirmiş olduğum **zoom** aracının paket dosyası hakkında bilgi almak için `dpkg -I paket-adı` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ dpkg -I zoom_amd64.deb 
 new Debian package, version 2.0.
 size 177915954 bytes: control archive=55064 bytes.
    1293 bytes,    17 lines      control              
  245135 bytes,  2773 lines      md5sums              
     593 bytes,    18 lines   *  postinst             #!/bin/bash
     226 bytes,    11 lines   *  postrm               #!/bin/bash
 Package: zoom
 Version: 5.15.2.4260
 License: see https://www.zoom.us/
 Vendor: Zoom Video Communications, Inc.
 Architecture: amd64
 Maintainer: Zoom Linux Team <https://support.zoom.us>
 Installed-Size: 656507
 Depends: libglib2.0-0, libxcb-keysyms1, libxcb-xinerama0, libdbus-1-3, libxcb-shape0, libxcb-shm0, libxcb-xfixes0, libxcb-randr0, libxcb-image0, libfontconfig1, libgl1-mesa-glx, libegl1-mesa, libxi6, libsm6, libxrender1, libpulse0, libxcomposite1, libxslt1.1, libsqlite3-0, libxcb-xtest0, libxtst6, ibus, libxkbcommon-x11-0, desktop-file-utils, libgbm1, libdrm2, libxcb-cursor0, libxcb-icccm4, libfreetype6 (>= 2.6)
 Section: default
 Priority: optional
 Homepage: https://www.zoom.us
 Description: Zoom Cloud Meetings 
  Zoom brings people together to connect and get more done in a frictionless, secure video environment. Our easy, reliable, and innovative video-first solutions provide video meetings and chat, with additional options for webinars and phone service. 
  .
  Zoom is the leading unified communications platform and helps individuals, schools, healthcare professionals and enterprises stay connected. Visit blog.zoom.us and follow @zoom_us. 
  .
  By installing this app, you agree to our Terms of Service (https://zoom.us/terms) and Privacy Statement (https://zoom.us/privacy).
```

Bakın adlığım çıktıda paketin ismi, sürümü, üreticisi kurulu boyutu ve bağımlılıkları gibi pek çok bilgiyi görebiliyorum. Ayrıca bu paketin işleviyle ve amacıyla ilgili açıklamalar da bulunuyor. İşte bu bilgi alma seçeneğini bir paketin özellikleri hakkında bilgi almak ve paketi tanımak için kullanabiliyoruz. Zaten bilgi alma seçeneği yani "`I`" “**i**nfo” ifadesinin kısaltmasından geldiği için kolay akılda kalan bir seçenek.

Ayrıca tek bir paket yerine istersek sistemde kurulu olan tüm paketler hakkında da bilgi alabiliriz. Yani mevcut sistemdeki paketleri listeleyebiliriz. 

## Paketlerin Listelenmesi

Sistemde yüklü bulunan tüm paketleri listelemek için “**l**ist” yani “listelemek” ifadesinin kısalmasından gelen `l` seçeneğini kullanıyoruz. Bakın paketlerin isimleri sürümleri ve açıklamaları tek tek konsolumuza bastırıldı. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ dpkg -l
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                                   Version                              Architecture Description
+++-======================================-====================================-============-==============================================================>
ii  acl                                    2.3.1-1                              amd64        access control list - utilities
ii  adduser                                3.118                                all          add and remove users and groups
ii  adwaita-icon-theme                     41.0-1                               all          default icon theme of GNOME
ii  aircrack-ng                            1:1.6+git20210130.91820bc-2          amd64        wireless WEP/WPA cracking utilities
ii  alsa-topology-conf                     1.2.5.1-2                            all          ALSA topology configuration files
ii  alsa-ucm-conf                          1.2.6.3-1                            all          ALSA Use Case Manager configuration files
ii  amass                                  3.16.0-0kali1                        amd64        In-depth DNS Enumeration and Network Mapping
ii  amass-common                           3.16.0-0kali1                        all          In-depth DNS Enumeration and Network Mapping
ii  amd64-microcode                        3.20191218.1                         amd64        Processor microcode firmware for AMD CPUs
ii  apache2                                2.4.52-1                             amd64        Apache HTTP Server
ii  apache2-bin                            2.4.52-1                             amd64        Apache HTTP Server (modules and other binary files)
ii  apache2-data                           2.4.52-1                             all          Apache HTTP Server (common files)
ii  apache2-utils                          2.4.52-1                             amd64        Apache HTTP Server (utility programs for web servers)
ii  apparmor                               3.0.3-6                              amd64        user-space parser utility for AppArmor
ri  apt                                    2.3.14+kali1                         amd64        commandline package manager
ii  apt-file                               3.2.2                                all          search for files within Debian packages (command-line interfac>
ii  apt-utils                              2.3.14+kali1                         amd64        package management related utility programs
ii  arj                                    3.10.22-25                           amd64        archiver for .arj files
ii  arp-scan                               1.9.7-2                              amd64        arp scanning and fingerprinting tool
ii  arping                                 2.22-1                               amd64        sends IP and/or ARP pings (to the MAC address)
ii  aspell                                 0.60.8-4                             amd64        GNU Aspell spell-checker
ii  aspell-en                              2018.04.16-0-1                       all          English dictionary for GNU Aspell
ii  aspnetcore-runtime-3.1                 3.1.14-1                             amd64        
ii  aspnetcore-targeting-pack-3.1          3.1.10-1                             amd64        
ii  at-spi2-core                           2.42.0-2                             amd64        Assistive Technology Service Provider Interface (dbus core)
ii  atftpd                                 0.7.git20210915-3                    amd64        advanced TFTP server
ii  atril                                  1.26.0-1                             amd64        MATE document viewer
ii  atril-common                           1.26.0-1                             all          MATE document viewer (common files)
ii  attr                                   1:2.5.1-1                            amd64        utilities for manipulating filesystem extended attributes
ii  autopsy                                2.24-5                               all          graphical interface to SleuthKit
ii  avahi-daemon                           0.8-5                                amd64        Avahi mDNS/DNS-SD daemon
ii  axel                                   2.17.11-1                            amd64        light command line download accelerator
ii  base-files                             1:2022.1.0                           amd64        Debian base system miscellaneous files
ii  base-passwd                            3.5.52                               amd64        Debian base system master password and group files
ii  base58                                 1.0.3-1.1                            all          base58 encode/decode: command-line interface
ii  bash                                   5.1-6                                amd64        GNU Bourne Again SHell
ii  bash-completion                        1:2.11-5                             all          programmable completion for the bash shell
ii  bind9-dnsutils                         1:9.18.0-2                           amd64        Clients provided with BIND 9
ii  bind9-host                             1:9.18.0-2                           amd64        DNS Lookup Utility
ii  bind9-libs:amd64                       1:9.18.0-2                           amd64        Shared Libraries used by BIND 9
ii  binutils                               2.40-2                               amd64        GNU assembler, linker and binary utilities
ii  binutils-common:amd64                  2.40-2                               amd64        Common files for the GNU assembler, linker and binary utilities
ii  binutils-x86-64-linux-gnu              2.40-2                               amd64        GNU binary utilities, for x86-64-linux-gnu target
ii  binwalk                                2.3.2+dfsg1-1                        all          tool library for analyzing binary blobs and executable code
ii  blt                                    2.5.3+dfsg-4.1                       amd64        graphics extension library for Tcl/Tk - run-time
ii  blueman                                2.2.3-1                              amd64        Graphical bluetooth manager
ii  bluez                                  5.62-2+kali1                         amd64        Bluetooth tools and daemons
```

Çok fazla paket kurulu olduğu için elbette hepsi konsol ekranına sığmıyor. Dolayısıyla <kbd>space</kbd> tuşuna basarak kurulu araçların listesi üzerinde sayfa sayfa gezinebilirsiniz. 

Tüm liste yerine tek bir aracın yüklü olup olmadığını sorgulamak için `dpkg -l paket-adı` şeklinde de araştırma yapabiliyoruz. Örneğin ben **apt** paketinin kurulu olup olmadığını araştırmak istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ dpkg -l apt
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name           Version      Architecture Description
+++-==============-============-============-=================================
ri  apt            2.3.14+kali1 amd64        commandline package manager
```

Bakın **apt** paketi kuruluymuş. İşte sizler de bu şekilde isterseniz tüm paketlerin listesini ya da tek bir paketin adını vererek tek bir paketin bilgisini alabilirsiniz.

Ayrıca bunlar dışında aslında pek çok ek seçenek var fakat diğerlerine nadiren ihtiyaç duyacağınız için değinmeyi mantıklı bulmuyorum. Eğer merak ediyorsanız `dpkg` aracının yardım sayfasına göz atıp bizzat deneyimleyebilirsiniz. Ben son olarak kurulu paketleri nasıl yeniden konfigüre edebileceğimize de değinerek `dpkg` aracının anlatımını noktalamak istiyorum.

## Kurulu Paketleri Yeniden Yapılandırma

Paketler kurulurken ilgili aracın mevcut sistemde sorunsuzca çalışabilmesi için konfigüre edilmesi sağlanıyor. Bu konfigürasyonlar çoğu zaman paket kurulurken arka planda bize herhangi bir soru sorumadan veya konfigürasyona dair çıktı üretmeden gerçekleşiyor. Çok sık karşılaşmasak da kimi paketleri yüklerken konfigürasyon aşamasında araçla ilgili bazı ayarları özelleştirmemiz için bize sorular da sorulabiliyor. Ve neticede yaptığımız seçimlere göre veya otomatik olarak uygulanan konfigürasyonlara göre ilgili araç mevcut sisteme adapte ediliyor. Özetle konfigürasyonlar, araçların doğru şekilde çalışabilmesi için çok önemli. 

İşte bizler bir aracı kurduktan sonra konfigürasyonları hatalı veya eksik uygulandıysa tekrar ilgili aracı baştan kurmadan yalnızca konfigürasyonların tekrar yapılmasını sağlamak isteyebiliriz. Konfigürasyonları yeniden yapılandırmak için de `dpkg-reconfigure` aracını kullanıyoruz. Bu genellikle konfigürasyon dosyaları bozulmuş veya konfigürasyonu için sorulan sorulara yeniden farklı şekilde yanıt vermek istediğimizde kullandığımız bir seçenektir.

Bir paketi yeniden konfigüre etmek için `dpkg-reconfigure paketin-adı` şeklinde komut girmemiz yeterli. Örneğin ben `firefox` aracının konfigürasyonlarını bozduysam ve aracım açılmıyorsa yeniden konfigüre etmeyi deneyebilirim. Bunun için `sudo dpkg-reconfigure firefox-esr` komutunu girmem yeterli. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ sudo dpkg-reconfigure firefox-esr
```

Bakın konfigürasyona dair bir çıktı almadım. Tıpkı daha önce söylediğim gibi pek çok araçta konfigürasyonlar sessizce gerçekleşiyor. Yine de bizden konfigürasyon için seçim yapmamızın istendiği araçlar da var. Bu duruma basit bir örnek olarak sistemdeki yerelleştirmeden sorumlu `locales` aracını ele alabiliriz. Ben `locales` aracını tekrar konfigüre etmek için `sudo dpkg-reconfigure locales` şeklinde komutumu giriyorum. 

![dpkg-reconfigure-locales.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/dpkg-reconfigure-locales.webp)

Bakın etkileşimli konfigürasyon penceresi açıldı ve benden seçim yapmam isteniyor. Klavyemdeki yön tuşlarını kullanarak istediğimi seçin üzerine gelip <kbd>enter</kbd> ile onaylayabilirim. Örneğin benim sistem dilim İngilizce ama ben Türkçe yapmak istersem buradan Türkçeyi bulup <kbd>space</kbd> ile seçerek ilgili konfigürasyonların geçerli olmasını sağlayabilirim. 

![locales-tr.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/locales-tr.webp)

<kbd>space</kbd> ile seçtikten sonra <kbd>tab</kbd> tuşuna basıp **Ok** seçeneğinin üzerine gelip <kbd>enter</kbd> ile bu değişimi onaylayabilirim. Daha sonra bana sistem genelinde hangi dil ayarının geçerli olması gerektiğini soran bir seçenek getiriliyor. Ben buradan da Türkçe’nin üzerine gelip <kbd>tab</kbd> ile **Ok** seçeneğinin üzerine gelip değişimi onaylıyorum.

![locales-tr-set.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/locales-tr-set.webp)

<p class="mavi"><strong>ℹ️ Not:</strong> Eğer burada Türkçe seçeneği çıkmazsa mevcut seçeneklerden birini seçip tekrar bu konfigürasyon menüsüne girmek için <code class="language-plaintext highlighter-rouge">sudo dpkg-reconfigure locales</code> şeklinde yazın ve yine Türkçe dilini bulup seçin. İkinci sefer denediğinizde mutlaka eklediğiniz ek dil seçeneği gelecektir.</p>

Bu konfigürasyon değişiminin ardından konsolda değişime dair bilgiler bastırılıp değişim gerçekleştiriliyor.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ sudo dpkg-reconfigure locales                                                                                                                       
Generating locales (this might take a while)...
  en_US.UTF-8... done
  tr_TR.UTF-8... done
Generation complete.
```

Bu işlemin ardından oturumumu kapatıp tekrar oturum açtığımda, oturum ekranında Türkçe desteğinin gelmiş olduğunu görebiliyorum.

![locale-change.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/locale-change.webp)

Oturum açtıktan sonra da klasör isimlerinin dile göre güncellenmesi için seçenek sunulduğunu görebiliyoruz. Yani dil değişimi tamamdır. 

![locales-reboot.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/locales-reboot.webp)

Eğer yaptığınız değişikliği geri almak isterseniz de yine `dpkg-reconfigure locales` komutu ile dil konfigürasyonlarınızı eski haline getirebilirsiniz. Türkçe dilini seçtiyseniz, yine Türkçeyi bulun ve üzerine gelip <kbd>space</kbd> tuşu ile dil paketini kaldırın ve seçim menüsünden de İngilizce paketi seçip onaylayın. Ben İngilizce kullanımı tercih ettiğim için tekrar eski haline çevireceğim. Size de İngilizce şekilde kullanmanızı tavsiye ederim. 

Yani bizzat bu örneğimiz üzerinden teyit ettiğimiz gibi, `dpkg-reconfigure` sayesinde bize sorulan konfigürasyon ayarlarını kolayca tamamlayabiliyoruz. 

Bu noktada dikkatinizi çekmek istediğim asıl nokta tüm konfigürasyonların benim verdiğim örnekteki gibi bir arayüz üzerinden gerçekleşmeyebileceği. Yani yalnızca komut satırından yazılı şekilde soru cevap biçiminde de konfigürasyonlara onay vermeniz gerekebilir. Bu konfigürasyon tanımlamaların nasıl düzenleneceği ilgili aracın yapısına bağlıdır. 

Yeniden konfigüre etme işlemine pek ihtiyaç duymasak da ihtiyacımız olduğunda böyle bir seçeneğin varlığından haberdar olmamız bizim yararımıza. 

Evet bence temel düzeyde `dpkg` aracı için bu kadarlık bilgi yeterli. Zaten bu seçenekler dışında paketlerin kurulumu veya konfigürasyonu noktasında problem yaşandığında `dpkg` aracı, hangi komutları kullanmanız gerektiği konusunda ayrıca yönlendirme yapıyor. Ve bizler çoğunlukla araçlarımızı çok daha işlevsel olan `apt` aracı üzerinden yönetiyor olacağız. Gelin anlatımlarımıza `apt` aracı ile devam edelim.

# `apt`

`apt` aracı repolarda paket arama ve otomatik bağımlılık çözümleme gibi özellikleri ile paket yönetimini bizler için oldukça kolay hale getiren gelişmiş paket yönetim aracıdır. Zaten `apt` ile `dpkg` arasındaki farkı anlatımın başında kısaca ele almıştık. 

Mevcut sisteme kurulabilecek araçları `apt`, tanımlanmış olan repolar üzerinden çekip alır ve yükler. Yani bizlerin gerekli olan tüm paketleri tek tek arayıp indirmemiz gerekmez. Dağıtıma uygun olan tüm paketler ve bağımlılıkları **repo** olarak isimlendirilen paket depolarında tutulur. Bu sayede paketlerin aranıp bulunması ve yüklenmesi hem güvenli hem de tutarlı hale gelir. Repo dediğimiz paket deposunu yalnızca uzak sunucuda bulunan internete açık olan depo olarak da düşünmeyin. Bu depolar internete açık uzak sunucularda barındırılabileceği gibi lokal depolar oluşturmak da mümkündür. Yani örneğin internete bağlı olmayan lokal ağda bir diski “repo” olarak tanımlayıp içine istediğimiz paketleri yerleştirebiliriz. Bu sayede lokal ağdaki tüm cihazların bu diskte bulunan paketleri `apt` aracı üzerinden yüklemesi mümkün olur.

Sizlerin de tahmin edebileceği gibi özellikle paketlerin bağımlılıkları da hesaba katıldığında repoların oluşturulması yani sürekli güncel ve güvenilir paketlerin kullanıcılar için barındırılması kesinlikle çok önemli ve meşakkatli bir iştir. Bizler de bu sebeple genellikle kullandığımız dağıtımın resmi repolarını kullanarak güvenli ve güncel paketlere ulaşabiliyoruz. Elbette bazı durumlarda internete açık olmayan ağlarda lokal repolarımızı oluşturmamız veya resmi repolarda bulunmayan paketleri indirmek için alternatif repoları kullanmamız da gerekebiliyor. Neticede `apt` aracını kullanacaksak repolar bizler için olmazsa olmazdır. Repo ifadesi de Türkçe olarak daha önce de söylediğimiz gibi “depo ambar” gibi anlamlara gelen “repository” kelimesinden geliyor.

Ben hep `apt` aracı olarak ifade ettim ancak `apt` tek bir komuttan ibaret değil. `apt` yönetimi için birden fazla yardımcı araç bulunuyor, örneğin bu araçlardan başlıcaları; `apt-get` `apt-cache` ve `apt-file` araçlarıdır. Kısaca açıklamamız gerekirse;

`apt-get`: aracını, paketleri indirmek, kurmak, güncellemek ve silmek için kullanıyoruz.

`apt-cache`: aracını, repolarda paket araştırması yapmak için kullanıyoruz. 

`apt-file`: aracını ise paketlerin içindeki dosyaları aramak için kullanıyoruz.

Ayrıca sık kullanılan `apt-get` ve `apt-cache` araçlarını tek bir araçta birleştiren `apt` adlı kullanıcı dostu bir yardımcı araç da bulunuyor. Yani `apt-get` ve `apt-cache` komutları ile uzun uzadıya komut girmek yerine yalnızca `apt` komutu ile aynı işlevleri de yerine getirebiliyoruz.

Ben `apt` aracını çok daha kolay ve kullanışlı bulduğum için sıklıkla kullanıyorum. Ancak bazı eski sistemlerde `apt` aracıyla karşılaşmayabilirsiniz. Bu sebeple en azından bahsetmiş olduğum üç temel yardımcı araçtan haberdar olmanız kesinlikle yararınıza olacaktır. Ayrıca zaten geçmişten beri çok uzun süredir `apt-get` ve `apt-cache` araçları kullanıldığı için araştırma yaptığınızda bu komutların yer aldığı bir çok kaynakla karşılamanız da kaçınılmaz olacak. Yani aktif olarak kullanmak istemeseniz bile bilmeniz gerekiyor.

Tamamdır **apt** ile ilgili bilmemiz gereken temel kavramlardan bahsettiğimize göre gelin anlatımlara paket indekslerini güncelleme ile başlayalım.

## Paket Listesinin Güncellenmesi

apt'nin repolar üzerinden paketleri çekip yüklediğinden bahsettik. `apt` aracının doğru şekilde çalışabilmesi için de kullanılan repoların en güncel durumundan `apt` aracının haberi olması gerekiyor. Zira hangi paketlerin en son hangi sürümlerinin repolara eklendiği ve bu paketlere tam olarak hangi dizinden ulaşabileceğini `apt` aracı bilmezse ilgili paketleri bulup kuramaz. 

Yani repolar sürekli güncellendiği için paketler kurulmadan evvel paketlerin isimleri ve dizinleri hakkında en güncel repo bilgisinin alınması gerekiyor. Bu işleme de “index güncelleneme” deniyor. Yani güncelleme yapıyorum dediğimde aslında repolardaki en son durum hakkında en yeni bilginin `apt` aracı tarafından öğrenilmesini sağlıyorum. Bir nevi paket listesinin en güncel halini alıyoruz. 

`apt` aracıyla repolardaki paketlerin en güncel index bilgisini almak için de `sudo apt-get update` komutunu kullanıyoruz. Zaten girdiğimiz komut son derece açık. İşlemi `sudo` komutu ile yetkili şekilde yapıyoruz ve `apt-get` aracının `update` yani “güncelleme” yapması gerektiğini belirtiyoruz aslında. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt-get update
[sudo] password for taylan: 
Get:1 http://kali.download/kali kali-rolling InRelease [41.2 kB]
Get:2 http://kali.download/kali kali-rolling/main amd64 Packages [19.4 MB]
Get:3 http://kali.download/kali kali-rolling/main amd64 Contents (deb) [45.2 MB]               
Fetched 64.7 MB in 33s (1,973 kB/s)                                                            
Reading package lists... Done
```

Bakın burada mevcut dağıtımda varsayılan olarak kullanılan repo adresleri üzerinden güncel index bilgilerinin alındığını görebiliyoruz. Burada belirtilen adresler benim kullanmakta olduğum sistemde tanımlı olan repo adresleridir. Sizde bulunan repo adresleri, kullandığınız dağıtıma ve sürüme göre değişiklik gösterebilir. 

Paket listesi güncellendikten sonra, artık repolar üzerinden yeni paketleri alıp sorunsuzca kurulmalarını sağlayabileceğiz. Ben burada `sudo apt-get update` komutunu kullandım ancak bunun yerine yalnızca `sudo apt update` komutunu da kullanabilirdim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt update
Hit:1 http://kali.download/kali kali-rolling InRelease
Reading package lists... Done   
Building dependency tree... Done
Reading state information... Done
1844 packages can be upgraded. Run 'apt list --upgradable' to see them.
```

Bakın aynı şekilde güncel repo indexleri `apt` komutu ile de alınmış oldu. Yani `apt update` komutu ile de aynı şekilde güncelleme yapabiliyoruz. Eğer iki komutun çıktılarının farklı olmasına takıldıysanız `apt update` komutundan önce `apt-get update` komutu ile güncelleme yaptığımız için tekrar güncel index bilgisi alınmadı. Kontrol edildi ama daha yeni güncellendiği için alınacak yeni bir index listesi bulunamadı. Yani aslında her iki komutta aynı işi yapıyor. Tamam, her iki komutun da aynı olduğunu kabul ettik. Şimdi bunu bir kenara bırakıp aldığımız çıktılara göz atacak olursak;

Bakın `apt update` komutunun çıktılarında,  güncel index bilgisine dayanarak sistemde yüklü bulunan bazı paketlerin yükseltilebileceği hakkında not da bulunuyor. Sistemimizdeki sürümleri ile repolardaki sürümler uyuşmadığında yani sistemimizdeki sürümler repolardakilerden eski olduğunda bu şekilde yükseltme yapabileceğimize dair çıktılar alıyoruz. Yani yalnızca güncelleme yapılmıyor, aynı zamanda olası yükseltmeler için de bilgilendiriliyoruz. Yükseltme işlemine daha sonra değineceğiz.

Şimdi, aradığımız paketleri nasıl bulabileceğimizden bahsedelim. Yalnız unutmayın, araştırmaya geçmeden önce mutlaka repolardaki güncel paket bilgilerinin alınabilmesi için `apt update` ya da `apt-get update` komutu ile repolarınızı güncelleyin. Aksi halde aradığınız pek çok araç repolarda bulunamaz. Yani güncel olmayan bir listede araştırma yapmış olursunuz.

## Paketlerin Araştırılması | `apt search` | `apt-cache search`

Bir paketi kurmadan önce ilgili paketin repoda hangi isimde tutulduğunu öğrenmeniz gerek. Bu öğrenme işini de `apt search` veya `apt-cache search` komutu ile konsol üzerinden gerçekleştirebilirsiniz. Ben denemek için “leafpad” isimli bir aracı araştırmak istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ apt-cache search leafpad
l3afpad - Simple text editor forked from Leafpad
leafpad - GTK+ based simple text editor
libmousepad-dev - development files for libmousepad
libmousepad0 - mousepad plugins library
mousepad - simple Xfce oriented text editor

┌──(taylan㉿linuxdersleri)-[~]
└─$ apt search leafpad                                                              
Sorting... Done
Full Text Search... Done
l3afpad/kali-rolling 0.8.18.1.11-4 amd64
  Simple text editor forked from Leafpad

leafpad/kali-rolling 0.8.18.1-5 amd64
  GTK+ based simple text editor

libmousepad-dev/kali-rolling 0.6.1-1 amd64
  development files for libmousepad

libmousepad0/kali-rolling 0.6.1-1 amd64 [upgradable from: 0.5.8-1+b1]
  mousepad plugins library

mousepad/kali-rolling 0.6.1-1 amd64 [upgradable from: 0.5.8-1+b1]
  simple Xfce oriented text editor
```

Gördüğünüz gibi her iki komutta “**leafpad**” ismiyle ilişkili olan paketlerin bilgilerini karşımıza getirildi. Artık paket isminden veya kısa paket açıklamasından hangi paketi kurmak istediğime karar verebilirim.

## Paketlerin Kurulumu

Bir paketi kurmak için `sudo apt-get install` veya `sudo apt install` komutundan sonra kurmak istediğimiz paketin adını girmemiz yeterli. 

APT aracı, kurulacak olan paketin doğru şekilde kurulabilmesi için gereken tüm ek bağımlılıkları yani ek paketleri de otomatik olarak yüklediği için tek yapmanız gereken kurulum aşamasında sizden istenen kurulum onayını vermektir. Ben kuruluma örnek olması için metin editörü olan `leafpad` aracını kurmak istiyorum. Öncelikle sistemimde `leafpad` aracının yüklü olmadığını teyit etmek için `leafpad`  komutunu kullanabilirim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ leafpad                                                                         
Command 'leafpad' not found, but can be installed with:
sudo apt install leafpad
Do you want to install it? (N/y)
```

Bakın bu isimde bir komut olmadığı ve eğer istersem aşağıdaki komutlar ile bu ismin geçtiği paketi yükleyebileceğim belirtilmiş. Buradaki soruya “**y**” yani **yes** ile olumlu yanıt verirsem `sudo apt install leafpad` komutu çalışıp bu araç kurulacak. Ben “**n**” yani **no** ile reddedip komutu kendim elle girmek istiyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt install leafpad
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Suggested packages:
  evince-gtk
The following NEW packages will be installed:
  leafpad
0 upgraded, 1 newly installed, 0 to remove and 1844 not upgraded.
Need to get 0 B/90.9 kB of archives.
After this operation, 465 kB of additional disk space will be used.
Selecting previously unselected package leafpad.
(Reading database ... 291441 files and directories currently installed.)
Preparing to unpack .../leafpad_0.8.18.1-5_amd64.deb ...
Unpacking leafpad (0.8.18.1-5) ...
Setting up leafpad (0.8.18.1-5) ...
update-alternatives: using /usr/bin/leafpad to provide /usr/bin/gnome-text-editor (gnome-text-editor) in auto mode
Processing triggers for kali-menu (2021.4.2) ...
Processing triggers for desktop-file-utils (0.26-1) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for man-db (2.9.4-4) ...
Processing triggers for mailcap (3.70+nmu1) ...
```

Bakın girmiş olduğumuz komut neticesinde gerekli olan kurulum gerçekleşti. Bu arada eğer istersek `apt install` komutu yerine `apt-get install` komutunu da girebilirdik. Benim tercihim kısa olandan yana.

Eğer siz bu kurulum komutundan önce `apt-get update` ya da `apt update` komutu ile repo indexlerini güncellemediyseniz, muhtemelen **leafpad** aracının bulunamadığına dair bir hata almışsınızdır. İşte ben de özellikle bu sebeple sizlere kurulumdan önce mutlaka güncelleme yapmanız gerektiğini belirtmiştim. 

Şimdi `leafpad` komutunu girip kurduğumuz aracın çalışma durumunu kontrol edelim.

![leafpad.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/leafpad.webp)

Araç sorunsuzca açıldı. İşte `apt` ile, paketlerin kurulumu bu kadar kolay. 

## Paketlerin Kaldırılması

Bir aracı kaldırmak için `apt-get remove` ya da `apt remove` komutlarını kullanabiliyoruz. Ben biraz önce kurmuş olduğum **leafpad** aracını silmek için `sudo apt remove leafpad` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt remove leafpad
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages will be REMOVED:
  leafpad
0 upgraded, 0 newly installed, 1 to remove and 1844 not upgraded.
After this operation, 465 kB disk space will be freed.
Do you want to continue? [Y/n]
```

Bakın burada silinecek olan paketler belirtiliyor. Şu an yalnızca “leafpad” paketinin silineceği belirtiliyor. 

`remove` komutu ile yalnızca spesifik olarak belirttiğimiz paket veya birden fazla paket ismini yan yana yazdıysak o paketler siliniyor. Bu paketlerin bağımlı olduğu ve başka araçlar tarafından kullanılmayan paketler silinmiyor. Silinmeyen gereksiz paketler de zamanla sistem kaynaklarını olumsuz etkilemeye başlıyor. Bu sebeple özel bir neden olmadığı sürece `autoremove` komutu ile bir paketin artık kullanılmayan bağımlılıklarının da kaldırılmasını sağlamak en mantıklısı. Ben de bu silme işlemini “**n**” ile iptal ediyorum. 

Şimdi komutumu `autoremove` şeklinde tekrar giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt autoremove leafpad
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages will be REMOVED:
  leafpad
0 upgraded, 0 newly installed, 1 to remove and 1844 not upgraded.
After this operation, 465 kB disk space will be freed.
Do you want to continue? [Y/n]
```

Başka bir araç tarafından kullanılmayan, “**leafpad**” aracının bağımlı olduğu bir paket olmadığı için burada ekstra bir paket görmüyoruz. Fakat sizin sileceğiniz diğer araçlarda harici olarak artık gerekli olmayan pek çok bağımlılık olabileceği için `autoremove` komutunu kullanmanız çok daha mantıklıdır. Silmek istiyorsam **y** yazıp onaylamam yeterli.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt autoremove leafpad
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages will be REMOVED:
  leafpad
0 upgraded, 0 newly installed, 1 to remove and 1844 not upgraded.
After this operation, 465 kB disk space will be freed.
Do you want to continue? [Y/n] y
(Reading database ... 291494 files and directories currently installed.)
Removing leafpad (0.8.18.1-5) ...
Processing triggers for desktop-file-utils (0.26-1) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for man-db (2.9.4-4) ...
Processing triggers for mailcap (3.70+nmu1) ...
Processing triggers for kali-menu (2021.4.2) ...
```

Hazır yeri gelmişken belirteyim, eğer bu komutun sonuna `-y` argümanını eklemiş olsaydım bana sorulmadan leafpad paketi ve leafpad ile ilişkili artık gerekli olmayan paketler de silinmiş olacaktı. 

Yani komutumu `sudo apt remove leafpad -y` şeklinde girip harici olarak benden onay alınmadan gereksiz tüm paketlerin silinmesini de sağlayabilirdim. 

Neticede `apt` aracı ile kurmuş olduğumuz `leafpad` aracının kaldırma işlemi de başarıyla sonuçlandı. Hatta `leafpad` komutunu kullanarak aracın kaldırıldığını bizzat teyit edebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ leafpad
bash: /usr/bin/leafpad: No such file or directory
```

Bakın leafpad aracının çalıştırılabilir dosyası “***/usr/bin/leafpad***“ konumundaymış ama silindiği için “böyle bir dosya veya dizin yok” şeklinde hata aldık. Yani aracımızın kaldırıldığınız bizzat teyit ettik. Fakat burada dikkatimizi çekene detay, araç kaldırılmış olmasına rağmen araçla ilgili konfigürasyonların hala duruyor olması. Aksi halde buradaki bu çıktıyı almamız gerekirdi. Bu durumda araçlardan geriye kalan tüm konfigürasyonları temizlememiz gerek.

## Konfigürasyonların Temizlenmesi

Tıpkı `dpkg` aracında olduğu gibi `apt` aracı da `remove` ya da `autoremove` seçenekleri kullanıldığında ilgili aracın konfigürasyon dosyaları silinmiyor. Konfigürasyon dosyalarının da silinmesi için `remove` yerine `purge` seçeneğinin kullanılması gerekiyor. 

`purge` seçeneğinin kullanımında dikkat etmemiz gereken detay eğer `apt-get` aracıyla birlikte kullanacaksak `sudo apt-get autoremove —purge leafpad` şeklinde komut girmemiz gerektiğidir. Eğer `autoremove` seçeneğini kullanmazsak, yalnızca **leafpad** paketinin konfigürasyon dosyaları silinir. İlişkili ama kullanılmayan tüm paketlerin de konfigürasyon dosyalarının silinmesi için tekrar `autoremove` ifadesini eklememiz gerekiyor. Burada otomatik olarak tüm gereksiz paketlerin konfigürasyon dosyaları ile birlikte silinmesi mümkündür. Ayrıca bunun yerine `sudo apt autopurge leafpad` komutu ile en başında konfigürasyon dosyaları ve kullanılmayan bağımlılık paketleri de dahil her şeyin silinmesi mümkündür. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt autopurge leafpad
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Package 'leafpad' is not installed, so not removed
0 upgraded, 0 newly installed, 0 to remove and 1844 not upgraded.
```

Bu komutumuzun ardından konfigürasyonların temizlendiğini teyit etmek için tekrar `leafpad` komutunu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ leafpad
Command 'leafpad' not found, but can be installed with:
sudo apt install leafpad
Do you want to install it? (N/y)
```

Bakın tıpkı hiç kurmadan önce olduğu gibi “leafpad” aracının kurulabileceğine dair çıktı aldık. Yani artık bu aracın “***/usr/bin/leafpad***“ konumunda olduğuna dair eski konfigürasyonlar silinmiş bulunuyor.

Kaldırma işlemiyle ilgili son bir detaydan bahsetmek istiyorum.

Ben kurduğum aracı, `apt autoremove` komutu ile sildikten sonra `apt autopurge` seçeneğini kullandım ancak `autopurge` seçeneği tek başına kullanıldığında paketler de dahil tüm dosyaları silebiliyor. Yani önce `remove` ya da `autoremove` sonra `autopurge` seçeneğini kullanmak zorunda değilsiniz. Her şeyi silmek istiyorsanız `apt autopurge` seçeneğini kullanabilirsiniz.

Ben yalnızca daha önce silmiş olduğunu ama hala konfigürasyonları dosyaları bulunanları nasıl temizleyeceğinizi göstermek için ayrı ayrı ele aldım.

Kaldırma işlemini de netleştirdiğimize göre şimdi bir diğer önemli konu olan paket bağımlılıkların düzeltilmesinden bahsederek devam edelim.

## Bozuk Bağımlılıkların Düzeltilmesi

Bağımlılık kavramını defalarca dile getirdik. Bir aracın çalışması için çoğunlukla birden fazla ek pakete ihtiyacı vardır. Yani araçların bağımlılıkları vardır. Ve bu bağımlılıklar hatalı işlemler sonucu bozulabilir. 

Hatalı işlemeler sonucu sistem üzerindeki araçların bağımlılıklarının olduğu paketleri sildiysek veya zarar verdiysek bu bağımlılık sorunlarını çözülmesi gerekiyor. `apt` aracı da bu durum için bizlere “**f**ix” yani “düzeltme” ifadesinin kısalmasından gelen `f` seçeneğini sunuyor. 

Örneğin benim sistemimde vim aracı kurulu. Ve bu aracın çalışabilmesi için de vim-runtime isimli bir pakete ihtiyacı var, yani vim aracının bağımlılığı. Dolayısıyla ben `vim` aracıyla birlikte yüklenmiş olan `vim-runtime` paketini yani `vim` aracının bağımlılığı olan bir paketi silersem `vim` aracı düzgün çalışmayabilir. 

Ben örnek olması için `vim` aracının bağımlılığı olan `vim-runtime` paketini silmek istiyorum. Normalde bu paketi silmek için `apt` aracın kullanırsak otomatik olarak `vim` aracının kendisi de silinmek istenecektir. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt remove vim-runtime 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages will be REMOVED:
  kali-linux-default kali-linux-headless vim vim-runtime
0 upgraded, 0 newly installed, 4 to remove and 1842 not upgraded.
After this operation, 41.1 MB disk space will be freed.
Do you want to continue? [Y/n]
```

Bakın “**will be REMOVED**” yani “**silinecek**” başlığı altında vim aracı da silinecek şekilde işaretlenmiş. Ama ben yalnızca “**vim-runtime**” paketini silmek istiyorum. Eğer `dpkg` aracını kullanırsam bakın bu kez de bu paket başka bir paketin bağımlılığı olduğu için silinmesinin sorun oluşturacağı belirtilerek `dpkg` aracı bu paketi silmeyi reddediyor. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo dpkg -r vim-runtime
dpkg: dependency problems prevent removal of vim-runtime:
 vim depends on vim-runtime (= 2:9.0.1378-2).

dpkg: error processing package vim-runtime (--remove):
 dependency problems - not removing
Errors were encountered while processing:
 vim-runtime
```

Ancak biz bağımlılık sorunlarının nasıl çözüldüğünü örnekleyebilmek için zorlama yoluyla bu bağımlılık paketini silebiliriz. Eğer hatırlıyorsanız `dpkg` aracının `—force-all` seçeneği kullanılarak paketlerin silinmesine zorlayabileceğimizden çok kısaca bahsetmiştik. Ben şimdi bu bağımlılık paketini zorla silmek için `dpkg —force-all -r vim-runtime` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo dpkg --force-all -r vim-runtime
dpkg: vim-runtime: dependency problems, but removing anyway as you requested:
 vim depends on vim-runtime (= 2:9.0.1378-2).

(Reading database ... 291441 files and directories currently installed.)
Removing vim-runtime (2:9.0.1378-2) ...
Removing 'diversion of /usr/share/vim/vim90/doc/help.txt to /usr/share/vim/vim90/doc/help.txt.vim-tiny by vim-runtime'
Removing 'diversion of /usr/share/vim/vim90/doc/tags to /usr/share/vim/vim90/doc/tags.vim-tiny by vim-runtime'
Processing triggers for man-db (2.9.4-4) ...
Processing triggers for kali-menu (2021.4.2) ...
```

Bakın burada yalnızca **vim-runtime** paketinin silinmesi sağlandı. Tamamdır artık bir bağımlılık sorunumuz var. Ben gözlemlemek için konsola `vim` komutunu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ vim                                                                                                                                                      
E1187: Failed to source defaults.vim
Press ENTER or type command to continue
```

Bakın `vim` aracı hata verdi. Yine de çıktıda belirtildiği üzere, eğer <kbd>enter</kbd>’a tıklarsam aracım açılacak ancak hangi işlevlerin kaybolduğunu bilemiyorum. 

![vim.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/vim.webp)

**vim-runtime** paketi olmadığı için `vim` aracım eskisi gibi stabil çalışmayacak. <kbd>esc</kbd> tuşuna basıp `:q` komutu ile araçtan çıkıp konsola dönüyorum. Ben kendim oluşturduğum için tam olarak bağımlılık sorununu biliyorum. Ancak normalde bizim farkında olmadan bozduğumuz ya da sildiğimiz paketler olabileceği için en ideal yol `apt` aracının **fix** seçeneğini kullanmak. Bunun için aşağıdaki her iki komuttan birini girebiliriz.

```bash
sudo apt —fix-broken install
```

ya da

```bash
sudo apt-get install -f
```

Her iki komutta, sistemde yüklü bulunan paketlerin bağımlılıklarını kontrol edip eksik olanların yüklenmesini sağlayacaktır.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt --fix-broken install                                                                    
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Correcting dependencies... Done
The following additional packages will be installed:
  vim-runtime
The following NEW packages will be installed:
  vim-runtime
0 upgraded, 1 newly installed, 0 to remove and 1844 not upgraded.
Need to get 7,025 kB of archives.
After this operation, 37.3 MB of additional disk space will be used.
Do you want to continue? [Y/n]
```

Tüm sistemdeki paketler ve bağımlılıkları çok kısa sürede tarandı ve benim biraz önce silmiş olduğum paketin eksik olduğu burada açıkça belirtiliyor. Ben yüklenmesine “y” ile onay veriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt --fix-broken install                                                                    
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Correcting dependencies... Done
The following additional packages will be installed:
  vim-runtime
The following NEW packages will be installed:
  vim-runtime
0 upgraded, 1 newly installed, 0 to remove and 1844 not upgraded.
Need to get 7,025 kB of archives.
After this operation, 37.3 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://kali.download/kali kali-rolling/main amd64 vim-runtime all 2:9.0.1378-2 [7,025 kB]
Fetched 7,025 kB in 12s (580 kB/s)       
Selecting previously unselected package vim-runtime.
(Reading database ... 289384 files and directories currently installed.)
Preparing to unpack .../vim-runtime_2%3a9.0.1378-2_all.deb ...
Adding 'diversion of /usr/share/vim/vim90/doc/help.txt to /usr/share/vim/vim90/doc/help.txt.vim-tiny by vim-runtime'
Adding 'diversion of /usr/share/vim/vim90/doc/tags to /usr/share/vim/vim90/doc/tags.vim-tiny by vim-runtime'
Unpacking vim-runtime (2:9.0.1378-2) ...
Setting up vim-runtime (2:9.0.1378-2) ...
Processing triggers for man-db (2.9.4-4) ...
Processing triggers for kali-menu (2021.4.2) ...
```

Evet gerekli paket de kuruldu. Artık bağımlılık sorunun kalmadığını teyit etmek için tekrar aynı komutu da girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt --fix-broken install
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
0 upgraded, 0 newly installed, 0 to remove and 1844 not upgraded.

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt-get install -f
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
0 upgraded, 0 newly installed, 0 to remove and 1844 not upgraded.
```

Bakın herhangi bir bağımlılık sorunu bulunamadı. Ayrıca `vim` komutunu da tekrar girebiliriz.

![vim.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/vim.webp)

Gördüğünüz gibi `vim` aracı herhangi bir hata vermeden anında açıldı. Netice `apt` aracının düzeltme seçeneği sayesinde bağımlılık sorunlarını çözebileceğimizi de öğrenmiş olduk. Eğer bazı araçları kullanırken hata alıyorsanız veya araçlar açılmıyorsa öncelikle burada ele aldığımız şekilde bağımlılık sorunlarının kontrol edilip çözülmesini deneyebilirsiniz. Ayrıca bağımlılık sorunlarını kontrol etmeden evvel tabii ki repodaki güncel paket bilgilerini almak için `sudo apt update` komutunu da girin mutlaka. Özellikle uzun süredir paket kurma veya güncelleme gibi faaliyetler yapmadıysanız repo listeniz eskide kalmış olabilir. Bu da bağımlılık sorunlarının bulunamamasına neden olabilir. 

Bağımlılık sorunlarının çözümünü de ele aldığımıza göre artık sistemimizde yüklü bulunan paketleri nasıl yeni sürümlerine yükseltebileceğimizi ele alalım.

## Paketlerin Güncellenmesi

Repo index bilgilerinin nasıl güncelleneceğinden ve nasıl araç kurup kaldırabileceğimizden bahsettik. Şimdi de mevcut araçları nasıl güncel sürümlerine yükseltebileceğimizi ele alalım. Elbette mevcut paketlerin sürümlerini yükseltmek için öncelikle repo indexlerinin güncel olması gerekiyor. Yani yükseltme işleminden önce mutlaka, `sudo apt-get update` ya da `sudo apt update` komutları ile index bilgilerini güncellememiz gerekiyor. Zaten bu repo index bilgisini güncelledikten sonra komut çıktısının sonunda kaç tane aracın yükseltilebilir durumda olduğu da belirtiliyor. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt update                                                                                  
[sudo] password for taylan: 
Get:1 http://kali.download/kali kali-rolling InRelease [41.2 kB]
Get:2 http://kali.download/kali kali-rolling/main amd64 Packages [19.4 MB]
Get:3 http://kali.download/kali kali-rolling/main amd64 Contents (deb) [45.3 MB]                    
Get:4 http://kali.download/kali kali-rolling/contrib amd64 Packages [119 kB]                        
Fetched 64.8 MB in 32s (2,013 kB/s)                                                                 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
1844 packages can be upgraded. Run 'apt list --upgradable' to see them.
```

Eğer tüm yükseltilebilir olan paketleri güncel sürümlerine yükseltmek istiyorsanız `sudo apt-get upgrade` ya da `sudo apt upgrade` komutlarından birini girmeniz yeterli. Bu sayede sistem üzerinde yüklü bulunan tüm paketler repolarda bulunan en güncel sürümüne yükseltilir. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt upgrade                                                                                 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Calculating upgrade... Done
The following packages were automatically installed and are no longer required:
  fonts-roboto-slab libatk1.0-data libavfilter7 libavformat58 libev4 libexporter-tiny-perl libflac8
  libfmt8 libgeos3.10.2 libgssdp-1.2-0 libgupnp-1.2-1 libhttp-server-simple-perl libilmbase25
  liblist-moreutils-perl liblist-moreutils-xs-perl libllvm12 liblttng-ust-ctl4 liblttng-ust0
  libmms0 libnginx-mod-http-geoip libnginx-mod-http-image-filter libnginx-mod-http-xslt-filter
  libnginx-mod-mail libnginx-mod-stream libnginx-mod-stream-geoip libofa0 libopenexr25 libperl5.32
  libpostproc55 libsrt1.4-gnutls libswscale5 libwebsockets16 libwireshark15 libwiretap12
  libwmf-0.2-7 libwmf0.2-7 libwsutil13 nginx-core openjdk-11-jre perl-modules-5.32 php8.1-mysql
  python-pastedeploy-tpl python3-commonmark python3-dataclasses-json python3-ipaddr
  python3-jaraco.classes python3-limiter python3-marshmallow-enum python3-mistune
  python3-mypy-extensions python3-responses python3-singledispatch python3-speaklater python3-spyse
  python3-texttable python3-token-bucket python3-toml python3-twisted-bin python3-typing-inspect
  ruby2.7 ruby2.7-dev
Use 'sudo apt autoremove' to remove them.
The following NEW packages will be installed:
  at-spi2-common binutils-mingw-w64-i686 binutils-mingw-w64-x86-64 clang-14 clang-15 coreboot-utils
  coreboot-utils-doc cron-daemon-common docbook-xml firmware-ath9k-htc flashrom fonts-dejavu
  fonts-freefont-ttf fonts-liberation2 fonts-lmodern fonts-texgyre fonts-texgyre-math
  gcc-mingw-w64-base gcc-mingw-w64-i686-win32 gcc-mingw-w64-i686-win32-runtime
  gcc-mingw-w64-x86-64-win32 gcc-mingw-w64-x86-64-win32-runtime gnome-icon-theme gnutls-bin
  inetutils-telnet isympy-common isympy3 kali-system-cli kali-system-core kali-system-gui
  kali-wallpapers-2023 libabsl20220623 libapache2-mod-php8.2 libavcodec59 libavfilter8
	postgresql-15 postgresql-client-15 proj-bin python-tinycss2-common python3-aesedb
  python3-argcomplete python3-asttokens python3-asyauth python3-async-generator python3-autocommand
  python3-dsinternals python3-exceptiongroup python3-executing python3-httpcore python3-httpx
  python3-inflect python3-jaraco.context python3-json-pointer python3-markdown-it python3-mdurl
  python3-mistune0 python3-mitmproxy-wireguard python3-multipart python3-oscrypto python3-outcome
  python3-pastedeploy-tpl python3-psycopg python3-pure-eval python3-rfc3986 python3-rfc3987
  python3-stack-data python3-tinycss2 python3-tomli python3-trio python3-trio-websocket
  python3-unicrypto python3-uritemplate python3-webcolors racc redis-server redis-tools ree
  rpm-common rpm2cpio ruby-levenshtein ruby-mini-portile2 ruby-sdbm ruby-webrick ruby3.1
  ruby3.1-dev ruby3.1-doc sane-airscan sgml-base sgml-data tk8.6 tree usrmerge util-linux-extra
  xcvt xml-core xml-twig-tools yelp yelp-xsl zstd
The following packages have been kept back:
  blueman crackmapexec cython3 default-mysql-server faraday gir1.2-freedesktop gir1.2-glib-2.0
  gir1.2-nm-1.0 gobject-introspection kali-desktop-xfce kali-linux-headless libgirepository-1.0-1
  libgs9-common libinput-bin libinput10 libldb2 libnewt0.52 libnm0 libnss-systemd libpam-systemd
  aphviz python3-pymssql python3-pyproj python3-pyqt5 python3-pyqt5.sip
  python3-pyqtgraph python3-pyrsistent python3-redis python3-ruamel.yaml.clib python3-samba
  python3-scipy python3-setproctitle python3-simplejson python3-snappy python3-sqlalchemy
  python3-sqlalchemy-ext python3-tables python3-tables-lib python3-talloc python3-tdb python3-tk
  python3-ubjson python3-ufolib2 python3-ujson python3-urwid python3-uvloop python3-wsaccel
  python3-yaml python3-yara python3-yarl python3-zope.interface qt5-gtk-platformtheme qt5ct
  qtbase5-dev-tools qterminal qtermwidget5-data samba samba-common samba-common-bin
  samba-dsdb-modules samba-libs samba-vfs-modules smbclient systemd systemd-timesyncd whiptail
  winexe wpasupplicant
The following packages will be upgraded:
  acl adduser adwaita-icon-theme aircrack-ng alsa-ucm-conf amass amass-common amd64-microcode
  apache2 apache2-bin apache2-data apache2-utils apparmor apt apt-file apt-utils arj arp-scan
  arping aspell aspell-en at-spi2-core atftpd atril atril-common attr avahi-daemon axel base-files
  base-passwd base58 bash bash-completion bind9-dnsutils bind9-host bind9-libs binwalk bluez
  bluez-firmware bluez-hcidump bluez-obexd bsdextrautils bsdutils bubblewrap bulk-extractor bully
  xfce4-cpugraph-plugin xfce4-datetime-plugin xfce4-diskperf-plugin xfce4-helpers
  xfce4-netload-plugin xfce4-notifyd xfce4-panel xfce4-places-plugin xfce4-power-manager
  xfce4-power-manager-data xfce4-power-manager-plugins xfce4-pulseaudio-plugin xfce4-screenshooter
  xfce4-sensors-plugin xfce4-session xfce4-settings xfce4-systemload-plugin xfce4-taskmanager
  xfce4-timer-plugin xfce4-wavelan-plugin xfce4-whiskermenu-plugin xfce4-xkb-plugin xfconf
  xfdesktop4 xfdesktop4-data xfonts-100dpi xfonts-75dpi xfonts-base xfonts-encodings
  xfonts-scalable xfwm4 xiccd xkb-data xkbset xl2tpd xserver-common xserver-xorg-core
  xserver-xorg-input-libinput xserver-xorg-legacy xserver-xorg-video-amdgpu xserver-xorg-video-ati
  xserver-xorg-video-fbdev xserver-xorg-video-nouveau xserver-xorg-video-radeon
  xserver-xorg-video-vesa xserver-xorg-video-vmware xsltproc xterm xtightvncviewer xvfb xxd
  xz-utils zenity zenity-common zip zlib1g zlib1g-dev zsh zsh-common
1677 upgraded, 241 newly installed, 0 to remove and 167 not upgraded.
Need to get 2,297 MB of archives.
After this operation, 3,571 MB of additional disk space will be used.
Do you want to continue? [Y/n]
```

Bakın burada güncel sürümüne yükseltilebilir olan paketlerin hepsi belirtilmiş. Üstelik kaç paketin yükseltileceği ve ne kadarlık disk alanına gerek olacağı gibi detaylar da burada yer alıyor. Eğer “y” ile onay verecek olursam buradaki tüm yükseltmeler gerçekleştirilecek. Ancak her zaman tüm paketlerin sürümlerini yükseltmek istemeyebilirsiniz.

### Spesifik Paketleri Güncellemek

Eğer amacınız tüm paketleri değil de spesifik olarak bazı paketleri güncellemek ise, güncellemek istediğiniz paketi tekrar kurmak üzere `sudo apt install paket-adı` şeklinde komutunuzu girebilirsiniz. Bu sayede ilgili aracın en son sürümüne güncelleme yapılacaktır. Zaten `apt` aracı sistemde aynı isimli paket olduğunu fark edeceği için yalnızca ilgili paketi üst sürüme yükseltmeyi teklif ediyor. 

Ben denemek için daha önce `sudo apt upgrade` komutunun neticesinde yükseltilebilecek olan paketler içerisinde gördüğüm herhangi bir paketi güncellemek istiyorum. Örneğin ben çıktılarda **python3-git** isimli paketin güncellenebileceğini görmüştüm. Bu paketi tek başına güncellemek için `sudo apt install python3-git` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt install python3-git                                                   
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Suggested packages:
  python-git-doc
The following packages will be upgraded:
  python3-git
1 upgraded, 0 newly installed, 0 to remove and 1843 not upgraded.
Need to get 135 kB of archives.
After this operation, 20.5 kB of additional disk space will be used.
Get:1 http://kali.download/kali kali-rolling/main amd64 python3-git all 3.1.30-1 [135 kB]
Fetched 135 kB in 11s (12.7 kB/s)
(Reading database ... 291441 files and directories currently installed.)
Preparing to unpack .../python3-git_3.1.30-1_all.deb ...
Unpacking python3-git (3.1.30-1) over (3.1.24-1) ...
Setting up python3-git (3.1.30-1) ...
```

Bakın mevcut sistemde **python3-git** paketi olduğu için yalnızca güncelleme olduğu belirtildi ve bu güncel paket kuruldu. Bu sayede spesifik bir paketi `apt install` komutu ile güncelleyebileceğimizi görmüş olduk.

Burada dikkat etmeniz gereken detay; **`apt`** aracı, mevcut paketin güncel bir sürümünü indirip kurarak güncelleme yapar. Bu, paketin yapılandırma dosyalarına dokunmaz veya önceki yapılandırmaları etkilemez. Bu nedenle, paketin yapılandırması hakkında herhangi bir değişiklik yapmadan sadece güncel bir sürümünü yüklersiniz.

Bununla birlikte, bazı durumlarda güncellenen bir paketin yeni bir sürümü, yapılandırma dosyalarını etkileyebilir. Bu durumda, **`apt`** aracı güncelleme işlemi sırasında size yapılandırma dosyaları hakkında seçenekler sunabilir. Örneğin, mevcut yapılandırmayı korumak veya güncellenmiş yapılandırmayı kullanmak gibi seçenekler sunulabilir. Bu sebeple kurulum işlemi sırasında ve sonrasında size sorulan soruları doğru şekilde okuyup anladığınızdan ve doğru onayı verdiğinizden emin olun mutlaka. 

### Kapsamlı Güncelleme

Normalde biz `sudo apt upgrade` komutunu kullandığımızda yalnızca sistemde yüklü bulunan paketler repodaki güncel sürümlerine yükseltiliyor. Ancak sistemde yüklü bulunan bir paketin bağımlılıkları arttıysa veya azaldıysa tek başına `upgrade` komutu ile herhangi bir kurma veya kaldırma işlemi yapılmıyor. `dist-upgrade` seçeneği ile güncelleme yapılırken aynı zamanda varsa yeni paketlerin kurulması ve ayrıca artık gerekli olmayan paketlerin de kaldırılması mümkün oluyor. Bu sebeple genellikle bütüncül bir güncelleme için `sudo apt-get update` komutunun ardından `sudo apt-get dist-upgrade` komutu da kullanılır. 

Ayrıca yalnızca `apt` komutunu kullanırken, `dist-upgrade` değil `apt full-upgrade` komutunu girmemiz gerekiyor. `dist-upgrade` ve `full-upgrade` sayesinde güncelleme esnasında bağımlılık sorunlarının da ilgili paket için otomatik olarak çözülmesi sağlanıyor. Paketleri güncelleme ile ilgili bilmemiz gerekenler bunlar.


```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt full-upgrade 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Calculating upgrade... Done
The following packages were automatically installed and are no longer required:
  bluez-firmware faraday-client firmware-ath9k-htc firmware-atheros
  firmware-brcm80211 firmware-intel-sound firmware-iwlwifi firmware-libertas
  python3-limiter python3-marshmallow-enum python3-mistune python3-mypy-extensions
  python3-pyproj python3-pyshp python3-responses python3-singledispatch
  python3-speaklater python3-spyse python3-texttable python3-token-bucket
  python3-toml python3-typing-inspect python3.10 python3.10-minimal python3.9
  python3.9-dev python3.9-minimal ruby2.7 ruby2.7-dev
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  faraday-angular-frontend libapache2-mod-php8.1 libgs9 libnfsidmap2
  libqtermwidget5-0 libwacom2 mariadb-client-10.5 mariadb-client-core-10.5
  mariadb-server-core-10.5 php8.1 php8.1-cli php8.1-common php8.1-mysql
  php8.1-opcache php8.1-readline python3-mpltoolkits.basemap python3-twisted-bin
  tftp
The following NEW packages will be installed:
  aspnetcore-runtime-6.0 aspnetcore-targeting-pack-6.0 at-spi2-common
  binutils-mingw-w64-i686 binutils-mingw-w64-x86-64 certipy-ad clang-14 clang-15
  coreboot-utils coreboot-utils-doc cron-daemon-common debugedit doc-base
  ruby3.1-dev ruby3.1-doc samba-ad-provision sane-airscan sgml-base sgml-data
  starkiller t1utils tcl tex-common tex-gyre texlive-base texlive-binaries
  texlive-fonts-recommended texlive-latex-base texlive-latex-extra
  texlive-latex-recommended texlive-pictures texlive-plain-generic tftp-hpa tipa
  tk tk8.6 tree usrmerge util-linux-extra xcvt xml-core xml-twig-tools yelp
  yelp-xsl zstd
The following packages have been kept back:
  kali-desktop-xfce
The following packages will be upgraded:
  acl adduser adwaita-icon-theme aircrack-ng alsa-ucm-conf amass amass-common
  amd64-microcode apache2 apache2-bin apache2-data apache2-utils apparmor apt
  apt-file apt-utils arj arp-scan arping aspell aspell-en at-spi2-core atftpd
  atril atril-common attr avahi-daemon axel base-files base-passwd base58 bash
  bash-completion bind9-dnsutils bind9-host bind9-libs binwalk blueman bluez
  bluez-firmware bluez-hcidump bluez-obexd bsdextrautils bsdutils bubblewrap
  xserver-xorg-core xserver-xorg-input-libinput xserver-xorg-legacy
  xserver-xorg-video-amdgpu xserver-xorg-video-ati xserver-xorg-video-fbdev
  xserver-xorg-video-nouveau xserver-xorg-video-radeon xserver-xorg-video-vesa
  xserver-xorg-video-vmware xsltproc xterm xtightvncviewer xvfb xxd xz-utils
  zenity zenity-common zip zlib1g zlib1g-dev zsh zsh-common
1842 upgraded, 461 newly installed, 18 to remove and 1 not upgraded.
Need to get 2,869 MB of archives.
After this operation, 5,034 MB of additional disk space will be used.
Do you want to continue? [Y/n]
```

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt-get dist-upgrade
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Calculating upgrade... Done
The following packages were automatically installed and are no longer required:
  bluez-firmware faraday-client firmware-ath9k-htc firmware-atheros
  firmware-brcm80211 firmware-intel-sound firmware-iwlwifi firmware-libertas
  python3-limiter python3-marshmallow-enum python3-mistune python3-mypy-extensions
  python3-pyproj python3-pyshp python3-responses python3-singledispatch
  python3-speaklater python3-spyse python3-texttable python3-token-bucket
  python3-toml python3-typing-inspect python3.10 python3.10-minimal python3.9
  python3.9-dev python3.9-minimal ruby2.7 ruby2.7-dev
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  faraday-angular-frontend libapache2-mod-php8.1 libgs9 libnfsidmap2
  libqtermwidget5-0 libwacom2 mariadb-client-10.5 mariadb-client-core-10.5
  mariadb-server-core-10.5 php8.1 php8.1-cli php8.1-common php8.1-mysql
  php8.1-opcache php8.1-readline python3-mpltoolkits.basemap python3-twisted-bin
  tftp
The following NEW packages will be installed:
  aspnetcore-runtime-6.0 aspnetcore-targeting-pack-6.0 at-spi2-common
  binutils-mingw-w64-i686 binutils-mingw-w64-x86-64 certipy-ad clang-14 clang-15
  coreboot-utils coreboot-utils-doc cron-daemon-common debugedit doc-base
  ruby3.1-dev ruby3.1-doc samba-ad-provision sane-airscan sgml-base sgml-data
  starkiller t1utils tcl tex-common tex-gyre texlive-base texlive-binaries
  texlive-fonts-recommended texlive-latex-base texlive-latex-extra
  texlive-latex-recommended texlive-pictures texlive-plain-generic tftp-hpa tipa
  tk tk8.6 tree usrmerge util-linux-extra xcvt xml-core xml-twig-tools yelp
  yelp-xsl zstd
The following packages have been kept back:
  kali-desktop-xfce
The following packages will be upgraded:
  acl adduser adwaita-icon-theme aircrack-ng alsa-ucm-conf amass amass-common
  amd64-microcode apache2 apache2-bin apache2-data apache2-utils apparmor apt
  apt-file apt-utils arj arp-scan arping aspell aspell-en at-spi2-core atftpd
  atril atril-common attr avahi-daemon axel base-files base-passwd base58 bash
  bash-completion bind9-dnsutils bind9-host bind9-libs binwalk blueman bluez
  bluez-firmware bluez-hcidump bluez-obexd bsdextrautils bsdutils bubblewrap
  xserver-xorg-core xserver-xorg-input-libinput xserver-xorg-legacy
  xserver-xorg-video-amdgpu xserver-xorg-video-ati xserver-xorg-video-fbdev
  xserver-xorg-video-nouveau xserver-xorg-video-radeon xserver-xorg-video-vesa
  xserver-xorg-video-vmware xsltproc xterm xtightvncviewer xvfb xxd xz-utils
  zenity zenity-common zip zlib1g zlib1g-dev zsh zsh-common
1842 upgraded, 461 newly installed, 18 to remove and 1 not upgraded.
Need to get 2,869 MB of archives.
After this operation, 5,034 MB of additional disk space will be used.
Do you want to continue? [Y/n]
```

Bu çıktılar ile daha önce girmiş olduğumuz `apt upgrade` veya `apt-get upgrade` komutlarının çıktılarını kıyaslayacak olursanız, `dist-upgrade` veya `full-upgrade` komutlarının daha fazla güncelleme istediğini kendiniz de görebilirsiniz. 

<p class="mavi"><strong>ℹ️ Not:</strong> Dağıtım geliştiricileri aksini belirten bir konfigürasyon eklemediği sürece, işletim sisteminin bir üst sürüme yükseltilmesi de  <code class="language-plaintext highlighter-rouge">dist-upgrade</code> veya <code class="language-plaintext highlighter-rouge">full-upgrade</code> komutları sayesinde gerçekleştiriliyor. Yine de tabii ki sürüm yükseltme için öncelikli olarak ilgili dağıtımın size sunduğu yükseltme rehberini kullanmanız en doğrusu. Çünkü gerçekleştirilmesi gereken ek konfigürasyonlar ve atılması gereken farklı adımlar olabilir. </p>

## Gereksiz Paketlerin Silinmesi

Neticede sorunsuzca istediğimiz paketleri yüklemeyi, yükseltmeyi ve silmeyi öğrendik. Bu harika ancak, indirilen paketler daha sonra tekrar kullanılma ihtimaline karşı diskte tutuluyorlar. Yani biz bir aracı kurmak için komut girdiğimizde o aracın paketi tekrar kullanılmak üzere diskte tutuluyor. Bu paketler “***/var/cache/apt/archives***” dizini altında tutuluyor. `ls` komutu ile listeleyerek kayıtlı tüm paket dosyalarını görebiliyoruz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls /var/cache/apt/archives/
leafpad_0.8.18.1-5_amd64.deb  lock  partial
```

Ben yakın zamanda yalnızca **leafpad** aracını kurduğum için bu aracın paketi var. Ancak daha fazla kurulum gerçekleştirilen bir sistemde bu paket sayısı çok daha fazla olabiliyor. Bu klasördeki paketleri silmezsek zaman için yeni araçların kurulumu ve güncellenmesi ile bu klasörün içeriği diskte gereksiz alan işgaline neden olacaktır. Eğer internetten izole bir ortamda çalışmanız gerekmeyecekse bu paketleri lokal olarak bulundurmanız pek mantıklı değil. Bunları silmek için de yine `apt` aracını kullanabiliriz. Eğer `apt-get clean` ya da `apt clean` komutlarını kullanırsak bu paketlerin hepsi silinmiş olacak. Ben diskte kayıtlı paket dosyalarını silmek üzere komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt clean                                                                  

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls /var/cache/apt/archives/                                                
lock  partial
```

Bakın artık dizin gereksiz paketlerden temizlenmiş oldu. Eğer sisteminizi internetten izole olarak kullanmayacaksanız ve bu paketlere lokal olarak tekrar erişmeyi gerektirecek özel bir durumla karşılaşmıyorsanız ara sıra bu paketleri temizlemeniz iyi olur.

## ***.deb*** Uzantılı Paketleri `apt` ile Kurmak

Hazır lokal paketlerin tekrar `apt` aracı üzerinden kurulabildiğinden bahsetmişken, ***.deb*** uzantılı paketleri kurmak için doğrudan `dpkg` aracını kullanmak zorunda olmadığımızı da belirtmek istiyorum. Örneğin ben anlatımın başında `dpkg` aracı ile **zoom’**un ***.deb*** uzantılı paketini kurmayı denemiştim ancak bağımlılıklarını tek tek bulup yüklemekle uğraşmak istemediğim için kurmaktan vazgeçmiştim. Eğer indirmiş olduğumuz ***.deb*** uzantılı paketi `apt` aracı ile kurarsak, internet bağlantımız da olduğu için `apt` aracı bu paketin bağımlılıklarını da otomatik çözümleyip kuracak. Yani lokal olarak bulunan paketleri dahi `apt` aracı ile kurabiliyoruz. Zaten `apt` aracının arkaplanda `dpkg` aracını kullandığını ancak `dpkg` aracına ek olarak bağımlılık gibi sorunları çözerek bizlerin işlerini kolaylaştırdığını daha önce de söylemiştik hatırlarsanız. Ben şimdi indirmiş olduğum **zoom** paketini bu kez de `apt` aracı ile kurmayı denemek istiyorum. Bunun için `sudo apt-get install ~/Downloads/paket-adı.deb` şeklinde komutumu girebilirim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt install ~/Downloads/zoom_amd64.deb 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Note, selecting 'zoom' instead of '/home/taylan/Downloads/zoom_amd64.deb'
The following additional packages will be installed:
  dconf-cli dconf-gsettings-backend dconf-service gir1.2-ibus-1.0 ibus ibus-data
  ibus-gtk ibus-gtk3 ibus-gtk4 im-config libcairo-gobject2
  libcairo-script-interpreter2 libcairo2 libcloudproviders0 libdconf1 libegl1-mesa
  libgl1-mesa-glx libglib2.0-0 libglib2.0-bin libgtk-4-1 libgtk-4-bin
  libgtk-4-common libgtk-4-media-gstreamer libharfbuzz0b libibus-1.0-5 liblerc4
  libtiff6 libwayland-client0 libwayland-egl1 libwebp7 libxcb-cursor0
  libxcb-xtest0 libxfixes3 python3-ibus-1.0
Suggested packages:
  ibus-clutter ibus-doc low-memory-monitor
The following NEW packages will be installed:
  dconf-cli gir1.2-ibus-1.0 ibus ibus-data ibus-gtk ibus-gtk3 ibus-gtk4 im-config
  libcairo-script-interpreter2 libcloudproviders0 libegl1-mesa libgl1-mesa-glx
  libgtk-4-1 libgtk-4-bin libgtk-4-common libgtk-4-media-gstreamer libibus-1.0-5
  liblerc4 libtiff6 libwebp7 libxcb-cursor0 libxcb-xtest0 python3-ibus-1.0 zoom
The following packages will be upgraded:
  dconf-gsettings-backend dconf-service libcairo-gobject2 libcairo2 libdconf1
  libglib2.0-0 libglib2.0-bin libharfbuzz0b libwayland-client0 libwayland-egl1
  libxfixes3
11 upgraded, 24 newly installed, 0 to remove and 1832 not upgraded.
Need to get 23.9 MB/202 MB of archives.
After this operation, 814 MB of additional disk space will be used.
Do you want to continue? [Y/n]
```

Bakın bana bu paketin bağımlı olduğu diğer paketler olduğunu ve bunları kurmak isteyip istemediğimi soruyor. Eğer “**y**” tuşuna basıp onay verirsem tek tek tüm gerekli paketler ve daha sonra **zoom** aracı kurulacak. Zaten daha önce de `apt` aracının lokal veya uzak sunucudaki paketleri yükleyebildiğinden bahsettiğimiz için aslında bu örnek çok da şaşırtıcı değil. Aracın bağımlı olduğu paketler repolarda varsa `apt` aracı ile kurmak son derece kolay. Yine de bu kullanım metoduna da dikkatinizi çekmek istedim. 

## Kaynak Listesi

Repoların ne olduğundan bahsettik, yani artık paketleri repo olarak isimlendirilen depolar üzerinden edindiğimizi biliyoruz. Daha önce de bahsettiğimiz gibi söz konusu repo olduğunda da ihtiyaca yönelik çözüm sunan pek çok farklı repo adresi bulunuyor. Örneğin bireysel olarak geliştiricilerin paketleri yayınladıkları repolardan, dağıtım geliştiricilerinin resmi olarak sundukları repolara kadar pek çok farklı repo adresi bulunuyor. Neticede tek bir repo adresi olmadığı için de APT aracının doğru paketleri bulabilmesi için, APT aracının ilgili repo adreslerini biliyor olması lazım. İşte bizler bu repo adreslerini sistem üzerindeki “**sources.list**” yani “kaynak listesi” dosyasında belirtiliyoruz. APT aracı bu kaynak listesine bakıp sorgulama yapacağı repo adreslerini öğreniyor. 

Debian tabanlı dağıtımlarda kaynak listesi “***/etc/apt***” dizini altındaki “***sources.list***” isimli dosyadır. Bu dosyada `apt` aracının paketleri edinmek için hangi adreslere bakması gerektiğini belirten bağlantılar vardır. Yani repoların adresi bu “***sources.list***” dosyası içinde tanımlanmıştır. Hemen `nano` aracı ile dosyamızı açalım. 

```bash
GNU nano 6.0                    /etc/apt/sources.list *                           
# See https://www.kali.org/docs/general-use/kali-linux-sources-list-repositories/
deb http://http.kali.org/kali kali-rolling main contrib non-free

# Additional line for source packages
# deb-src http://http.kali.org/kali kali-rolling main contrib non-free

^G Help       ^O Write Out  ^W Where Is   ^K Cut        ^T Execute    ^C Location
^X Exit       ^R Read File  ^\ Replace    ^U Paste      ^J Justify    ^/ Go To Line
```

Bakın burada repo bağlantıları bulunuyor. Zaten tıpkı Kali’de olduğu gibi pek çok dağıtımda, dağıtımın resmi repoları varsayılan olarak kaynak dosyasında eklenmiş şekilde geliyor. Yani spesifik paketleri yüklemek istemediğimiz sürece bu kaynak dosyasını değiştirmeye pek ihtiyacımız olmuyor. Elbette bizler ihtiyaç duyduğumuzda kullanabilmemiz için kaynak listesindeki işleyişten de kısaca bahsedelim. 

### Yeni Repo Adresi Eklemek

Tanımlı olan repoları anlamak veya doğru şekilde yeni repo tanımlaması yapabilmek için kullanmakta olduğunuz dağıtımın repolar ile ilgili olan yardım sayfalarına göz atarak daha fazla bilgi alabilirsiniz. Zaten her zaman en güncel ve doğru bilgi için mutlaka kullanmakta olduğunuz dağıtımın yardım sayfalarını takip etmeniz gerekiyor. Özellikle güncel repo bilgilerini almak için öncelikle resmi websitesi üzerindeki kaynaklardan yararlanmalısınız. Çünkü dağıtımların izlediği repo adresleme biçimi ve kategorizasyon türleri değişiklik gösterebilir. Ben burada Kali üzerinden genel işleyişe değiniyorum yalnızca. Örneğin Ubuntu kullanıyorsanız, Ubuntu’nun repolar ile ilgili resmi sayfalarını okuyarak en güncel bilgiyi ulaşabilirsiniz. Benzer yaklaşımı kulandığınız herhangi bir dağıtım için de aynen takip edebilirsiniz.

Ben örnek olarak “**kali linux repositroy**” yazıp araştırdığımda, aşağıdaki gibi resmi yardım sayfasına ulaşabildim.

![kali-repo.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/kali-repo.webp)

Bu rehberde Kali Linux'un resmi reposunun nasıl tanımlanması gerektiği belirtilmiş. 

Örneğin ek bir repo adresi eklemek için aşağıdaki komutu kullanabileceğim bu rehbede belirtiliyor.

```bash
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware" | sudo tee -a /etc/apt/sources.list
```

Bu rehberi takip edip gerekli repo adresini ***sources.list*** dosyasına ekleyip dosyayı kaydetmeniz yeterli. Daha sonra bu repo adresinin kullanılabilmesi için `sudo apt update` komutu ile paket listesinin güncellenmesini sağlamanız gerek. Repo adresi güncellendikten sonra ilgili adresteki paketlere ulaşabiliyor olacaksınız.

Ayrıca örneğin kullandığınız dağıtımın resmi repolarında sizin kurmak istediğiniz araç bulunmuyorsa, bu aracın sunulduğu repo adresini de benzer şekilde ilgili aracın dokümanı yardımıyla ***source.list*** dosyasına ekleyip kolayca bu repoyu da kullanabilirsiniz. Tabii ki güvenliğinden emin olmadığınız herhangi bir repoyu da kesinlikle eklememelisiniz.  

# Grafiksel Arayüzde Paket Yönetimi

Ben komut satırı üzerinden kullandığımız `dpkg` ve `apt` araçlarına odaklandım ancak elbette paket yüklemek için bunlar ile sınırlı değiliz. Kullandığınız dağıtımda mutlaka grafiksel arayüzle paket yönetim imkanı tanıyan araç vardır. Bu konuda birden fazla araç olduğu ve grafiksel arayüzlü oldukları için özellikle değinmemizi gerektirecek bir yanları olduğunu düşünmüyorum. Kullanmakta olduğunuz dağıtımı kurcalayıp market uygulamasını bulabilirsiniz. Ayrıca kısa bir internet araştırması ile de rahatlıkla grafiksel arayüzlü paket yönetim araçları hakkında bilgi edinebilirsiniz.

Biliyorum doğrudan anlatmayıp keşfetme işini sizlere bırakmış olmam pek çok kişinin hoşuna gitmedi ancak grafiksel arayüzler keşfedemeyeceğiniz zorlukta değil ve ayrıca her zaman size rehberlik edecek birileri olmayacak. Kendi kendinize keşfedip öğrenme yaklaşımına alışmanız çok önemli. Hem kendini kendinize öğrendiğiniz bilgiler çok daha kalıcı olacak. Bu sebeple bahsetmiş olduğum paket yönetimi araçlarını keşfetmeyi, merakınızın rehberliğinde sizlere bırakıyorum.

Debian tabanlı dağıtımların paket yönetimini temel olarak ele aldığımıza göre anlatımlara Red Hat tabanlı dağıtımların paket yönetiminden bahsederek devam edebiliriz. 

# Red Hat Tabanlı Dağıtımlarda Paket Yönetimi

Debian tabanlı dağıtımlarda kullandığımız `dpkg` ve `apt` araçlarının Red Hat tabanlı dağıtımlardaki karşılığı sırasıyla `rpm` ve `yum` araçlarıdır. Debian tabanlı dağıtımlar için hazırlanmış olan paketler ***.deb*** uzantılı iken, Red Hat tabanlı dağıtımlar için hazırlanmış olan paketler ***.rpm*** uzantılıdır. ***.rpm*** uzantılı paketleri yönetmek için de `rpm` aracını kullanıyoruz. `rpm` aracı tıpkı `dpkg` aracı gibi paketlerin lokal olarak yönetilebilmesini sağlıyor. `yum` aracı ise tıpkı `apt` aracı gibi repolar üzerinden paketlerin ve bağımlılıkların kolayca yönetilebilmesini sağlıyor. `yum` aracı da aslında arkaplanda `rpm` aracını kullanarak repolardan paketlerin bulunması bağımlılıkların otomatik olarak çözümlenmesi gibi pek çok faydalı işlevi sunan üst seviyeli bir paket yönetim aracıdır. Zaten Debian üzerinden paket yönetimini ele aldığımız için temel kavramları biliyorsunuz. Tek fark burada benzer paket yönetimi işlemleri için farklı komutlar giriyor olmanızdır. Neticede farklı araçları kullanacağımız için gireceğimiz komutlar da doğal olarak farklı olacak.

Elbette bu araçları kullanabilmek için öncelikle Red Hat tabanlı bir dağıtıma sahip olmanız gerekiyor. Red Hat tabanlı olduğu sürece dilediğiniz bir dağıtımı kullanabilirsiniz. Ben Rocky Linux dağıtımını kullanıyor olacağım ancak sizler isterseniz Fedora, Alma Linux, CentOS ya da doğrudan Red Hat Linux da kullanabilirsiniz. 

Ben Red Hat tabanlı bir dağıtım üzerinden bu dersleri takip ettiğinizi varsayarak anlatıma devam ediyor olacağım.

# RPM

`rpm`, Red Hat tabanlı dağıtımlardaki paketleri yönetmek için geliştirilmiş olan temel bir araçtır. Debian dağıtımlarındaki `dpkg` aracının Red Hat dağıtımlarındaki karşılığı olduğundan zaten bahsettik. Şimdi lafı daha fazla uzatmandan paket kurulumlarının nasıl yapılabileceğiyle başlayabiliriz.

## `rpm` ile Paket Kurulumu

rpm uzantılı bir paketi kurmak için tek yapmamız gereken `rpm -i` komutunun ardından kurmak istediğimiz paketin adını girmektir. Buradaki -`i` seçeneği “**i**nstall” yani “kurmak” ifadesinin kısaltmasından geliyor.

Ben tıpkı Debian üzerinde uyguladığım gibi “zoom” aracının Red Hat dağıtımlarına uygun olan “***.rpm***” paketini indirip kurmak istiyorum. Bunun için öncelikle zoom aracının rpm uzantılı paketini indirmem lazım. Zaten indirme sayfasını açmıştım. Buradan ben Rocky Linux kullanıyorum ancak zaten Red Hat tabanlı olduğu için buradan Red Hat seçeneğini seçebilirim. 

![Red Hat-zoom.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/redhat-zoom.webp)

Şimdi paketi kurmak için konsoldan indirilenler konumuna geçiş yapalım ve `ls` komutu ile dizin içeriğini listeleyelim. 

```bash
[taylan@linuxdersleri ~]$ cd ~/Downloads/
[taylan@linuxdersleri Downloads]$ ls
zoom_x86_64.rpm
```

Bakın ***.rpm*** paketi burada bulunuyor. 

Kurmak için `rpm -i` komutunun ardından paketin tam ismini girmemiz yeterli. 

```bash
[taylan@linuxdersleri Downloads]$ rpm -i zoom_x86_64.rpm 
warning: zoom_x86_64.rpm: Header V4 RSA/SHA512 Signature, key ID dd79b481: NOKEY
error: Failed dependencies:
	ibus-m17n is needed by zoom-5.15.2.4260-1.x86_64
	libXss.so.1()(64bit) is needed by zoom-5.15.2.4260-1.x86_64
	libxcb-icccm.so.4()(64bit) is needed by zoom-5.15.2.4260-1.x86_64
	libxcb-image.so.0()(64bit) is needed by zoom-5.15.2.4260-1.x86_64
	libxcb-keysyms.so.1()(64bit) is needed by zoom-5.15.2.4260-1.x86_64
	libxcb-render-util.so.0()(64bit) is needed by zoom-5.15.2.4260-1.x86_64
```

Komutu doğru girdim ama tıpkı Debian üzerinde de olduğu şekilde paketin bağımlılıkları bulunduğu için paketi yükleyemedim. Bu paketi `rpm` aracı ile yüklemek için buradaki bağımlılık olarak gözüken paketleri ve elbette varsa bu paketlerin de bağımlı olduğu diğer paketleri indirip kurmam gerekiyor. Bu paketleri bulmak için yine internet üzerinden araştırma yapabilirim. Ancak ben bu işle uğraşmak istemiyorum. Bunun yerine zaten `yum` aracını kullanarak tüm bağımlılıkların çözülerek paketlerin yüklenmesi mümkün. `yum` aracı da aslında `rpm` aracını kullanıyor ama bağımlılık sorunları çözme ve paketleri otomatik olarak bulup indirme gibi işlevler sunduğu için bizler lokal paketler dışında `rpm` aracını pek kullanmıyoruz. Ben yine de tanımamız ve gerektiğinde kullanabilmemiz için bahsetmek istedim. Her ne kadar henüz yeni bir paket kurmamış olsam da kurulu paketlerin nasıl kaldırılacağından da bahsedelim.

## `rpm` ile Paket Kaldırma

Sistemde kurulu olan bir paketi kaldırmak için `rpm` komutunun -`e` seçeneğinden sonra ilgili paketin ismini girmemiz yeterli. Buradaki `e` seçeneği “**e**rase” yani “silmek” ifadesinin kısaltmasından geliyor.

Ben örnek olması için halihazırda sistemimde yüklü olan `wget` aracını silmek istiyorum. Bunun için `sudo rpm -e wget` komutunu girebilirim. Ancak bu komutu bu şekilde girersek herhangi bir çıktı alamayacağız. Araç silinecek ancak silinme işlemine dair bir çıktı bastırılmayacak. Eğer işlemler hakkında detaylıca çıktı almak istersek “**v**erbose” ifadesinin kısaltması olan `v` seçeneğini kullanabiliriz. Eğer bu seçeneği eklemezseniz araç silinir ancak herhangi bir çıktı olmazsınız. 

```bash
[taylan@linuxdersleri Downloads]$ sudo rpm -ve wget
Preparing packages...
wget-1.21.1-7.el9.x86_64
```

Bakın kısa da olsa işleme dair bir çıktı aldım, yani `wget` aracı silindi. Hatta doğrudan `wget` komutunu girerek de teyit edebiliriz. 

```bash
[taylan@linuxdersleri Downloads]$ wget
bash: wget: command not found...
Install package 'wget' to provide command 'wget'? [N/y]
```

Bakın böyle bir komut olmadığına dair hata aldık yani `wget` aracı silinmiş. Hatta “**y**” ile onay verirsem bu paketin kurulabileceği belirtiliyor. Ben daha sonra ayrıca kuracağım için “n” ile reddediyorum. 

Esasen `rpm` aracının çok fazla ek seçeneği bulunuyor ancak bu kadarlık temel bilgi bizim için yeterli. Zaten paket yönetiminde `rpm` aracından ziyade daha fonksiyonel olan `yum` aracını daha sık kullanıyor olacağız. Şimdi `yum` aracından bahsederek devam edelim.

# YUM ve DNF

`yum` aracı tıpkı `apt` aracı gibi paketlerin bulunması, kurulması, bağımlılıklarının otomatik olarak çözümlenmesi, güncellenmesi, kaldırılması gibi paket yönetimi işlerini bizler için kolay hale getiren Red Hat tabanlı dağıtımlarda kullanılan kararlı yapıdaki paket yönetim aracıdır. Fakat bu aracın daha gelişmiş versiyonu olan `dnf` aracını öğrenmek daha makul bir yaklaşım olacaktır. 

Öncelikle repolardan bir paketin nasıl bulunabileceğinden bahsederek başlayabiliriz.

## `dnf` ile Paketlerin Araştırılması

Repolardaki paketlerde araştırma yapmak için `dnf search paket-adı` komutunu kullanabiliyoruz. Ben denemek için `wget` aracını araştırmak üzere `dnf search wget` şeklinde yazıyorum. 

```bash
[taylan@linuxdersleri Downloads]$ dnf search wget
Extra Packages for Enterprise Linux 9 - x86_64  826 kB/s |  18 MB     00:22    
Rocky Linux 9 - BaseOS                          117 kB/s | 1.9 MB     00:16    
Rocky Linux 9 - AppStream                       416 kB/s | 7.1 MB     00:17    
Rocky Linux 9 - Extras                          650  B/s |  10 kB     00:15
Last metadata expiration check: 0:21:41 ago on Thu 06 Jul 2023 02:55:55 PM +03.
========================================= Name Exactly Matched: wget ==========================================
wget.x86_64 : A utility for retrieving files using the HTTP or FTP protocols
======================================== Name & Summary Matched: wget =========================================
perl-HTTP-Tinyish-Wget.noarch : HTTP::Tinyish wget backend
```

Bakın repolarda araştırma işleminden önce repo bilgileri güncelleniyor. Bu sayede en güncel paket bilgileri repolardan alınabiliyor. Bu repo bilgilerinin güncellenmesi işlemi belirli aralıklarla biz paket yönetim aracını kullandıkça otomatik olarak gerçekleştiriliyor olacak. Bu sayede hep en güncel repo index bilgisine sahip olabiliyoruz. Yani `apt` aracında olduğu gibi bizim özellikle index bilgilerini güncellemek için harici bir komut girmemiz gerekmiyor. Repo indexleri güncellendikten sonra gördüğünüz gibi `wget` isminin geçtiği bir paket bulunmuş ve paketin işlevi de kısaca burada yazıyor. Eğer yüklemek istersem bu paketin ismini girmem yeterli. `wget` örneğinde paketin ismi kolay tahmin edilebilirdir ancak her paket için aynı durum geçerli değil. Tüm paketlerin isimleri benzersiz olmak zorunda olduğu için paketlerin repolardaki isimleri farklı biçimlerde olabiliyor. Bu sebeple eğer indirmek istediğiniz paketin tam isminden emin değilseniz `search` seçeneğini kullanarak repolarda araştırma yapmaktan çekinmeyin lütfen. Paket ismini nasıl öğrenebileceğimizden de bahsettiğimize göre paketleri nasıl kurabileceğimizi ele alarak devam edelim.

## `dnf` ile Paket Kurulumu

Paket kurmak için `dnf install paket-adı` şeklinde komut girebiliyoruz. Ben denemek için **wget** aracını kurmak üzere `dnf install wget` komutunu giriyorum.

```bash
[taylan@linuxdersleri Downloads]$ sudo dnf install wget
Last metadata expiration check: 0:30:29 ago on Thu 06 Jul 2023 03:05:03 PM +03.
Dependencies resolved.
===============================================================================================================
 Package               Architecture            Version                        Repository                  Size
===============================================================================================================
Installing:
 wget                  x86_64                  1.21.1-7.el9                   appstream                  769 k

Transaction Summary
===============================================================================================================
Install  1 Package

Total download size: 769 k
Installed size: 3.1 M
Is this ok [y/N]: y
```

Bakın kurulacak paketin ismi, paket boyutu ve kurulduğunda kaplayacağı boyut gibi çeşitli özellikleri burada belirtiliyor. Eğer kurmak istediğimiz paket buysa “**y**” ile onaylayabiliriz. 

```bash
Downloading Packages:
wget-1.21.1-7.el9.x86_64.rpm                                                   142 kB/s | 769 kB     00:05    
---------------------------------------------------------------------------------------------------------------
Total                                                                           71 kB/s | 769 kB     00:10     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                       1/1 
  Installing       : wget-1.21.1-7.el9.x86_64                                                              1/1 
  Running scriptlet: wget-1.21.1-7.el9.x86_64                                                              1/1 
  Verifying        : wget-1.21.1-7.el9.x86_64                                                              1/1 

Installed:
  wget-1.21.1-7.el9.x86_64                                                                                     

Complete!
```

 `wget` aracı çok küçük olduğu için hemen kuruluyor. Kurulum işleminin ardından `wget` komutunu girerek de yüklendiğini teyit edebiliriz. 

```bash
[taylan@linuxdersleri Downloads]$ wget
wget: missing URL
Usage: wget [OPTION]... [URL]...

Try `wget --help' for more options.
```

Yükleme işlemi işte bu kadar kolay. 

Ayrıca yükleme işlemi sırasında benden onay alınmasını istedim ancak istemezsem tıpkı daha önce uyguladığım şekilde komutun sonuna `-y` argümanını eklemem yani `dnf install paket-adı -y` şeklinde girmem yeterli. Bu sayede gerekli onayı peşinen komutla birlikte vermiş oluyorum. 

Nasıl paket kurabileceğimizi ele aldık, şimdi de mevcut paketleri nasıl yükseltebileceğimizden bahsedebiliriz. 

## `dnf` ile Güncelleme

Güncelleme yaparken birkaç farklı yaklaşıma sahibiz.

### Güncellemeleri Kontrol Etmek

Sistemde kurulu paketlerin güncellemelerini kontrol etmek için `dnf check-update` komutunu girebiliyoruz. 

```bash
taylan@linuxdersleri Downloads]$ sudo dnf check-update
[sudo] password for taylan: 
Sorry, try again.
[sudo] password for taylan: 
Last metadata expiration check: 1:07:13 ago on Thu 06 Jul 2023 03:05:03 PM +03.

ModemManager.x86_64                                        1.20.2-1.el9                              baseos    
ModemManager-glib.x86_64                                   1.20.2-1.el9                              baseos    
NetworkManager.x86_64                                      1:1.42.2-3.el9_2                          baseos    
NetworkManager-adsl.x86_64                                 1:1.42.2-3.el9_2                          baseos    
NetworkManager-bluetooth.x86_64                            1:1.42.2-3.el9_2
...
..
.          
```

Gördüğünüz gibi güncellenebilir olanlar listelenmiş oldu. Tüm paketleri kontrol etmek yerine dilersek `check-update` komutundan sonra paket ismi girip spesifik paket güncellemesini de kontrol edebiliriz. 

```bash
[taylan@linuxdersleri Downloads]$ dnf check-update ModemManager
Last metadata expiration check: 1:18:53 ago on Thu 06 Jul 2023 02:55:55 PM +03.

ModemManager.x86_64                                     1.20.2-1.el9                                     baseos
```

### Güncellemeleri Yüklemek

Eğer yalnızca kontrol etmek yerine güncellemelerin yüklenmesini de istiyorsak `dnf update` komutunu kullanabiliyoruz. 

```bash
[taylan@linuxdersleri Downloads]$ sudo dnf update
Last metadata expiration check: 1:12:02 ago on Thu 06 Jul 2023 03:05:03 PM +03.
Dependencies resolved.
===============================================================================================================
 Package                                      Arch      Version                             Repository    Size
===============================================================================================================
Upgrading:
 ModemManager                                 x86_64    1.20.2-1.el9                        baseos       1.2 M
 ModemManager-glib                            x86_64    1.20.2-1.el9                        baseos       334 k
 NetworkManager                               x86_64    1:1.42.2-3.el9_2                    baseos       2.2 M
 python3-file-magic                           noarch    5.39-12.el9                         appstream     16 k

Transaction Summary
===============================================================================================================
Install    6 Packages
Upgrade  510 Packages

Total download size: 784 M
Is this ok [y/N]:
```

Gördüğünüz gibi gerçekleştirilebilecek güncellemeler hakkında bize bilgi sunuluyor. Eğer “y” ile onaylarsam tüm güncelleme ve kurulum işlemleri gerçekleştirilecek.

### Spesifik Paketlerin Güncellenmesi

Spesifik olarak tek bir paketi güncellemek istersek `sudo dnf install paket-adı` komutu ile varsa ilgili aracın güncelleştirilmesini sağlayabiliriz. 

```bash
[taylan@linuxdersleri Downloads]$ sudo dnf install ModemManager
Last metadata expiration check: 1:14:29 ago on Thu 06 Jul 2023 03:05:03 PM +03.
Package ModemManager-1.18.2-3.el9.x86_64 is already installed.
Dependencies resolved.
===============================================================================================================
 Package                         Architecture         Version                       Repository            Size
===============================================================================================================
Upgrading:
 ModemManager                    x86_64               1.20.2-1.el9                  baseos               1.2 M
 ModemManager-glib               x86_64               1.20.2-1.el9                  baseos               334 k
 libmbim                         x86_64               1.28.2-2.el9                  baseos               258 k
 libmbim-utils                   x86_64               1.28.2-2.el9                  baseos               106 k
 libqmi                          x86_64               1.32.2-1.el9                  baseos               1.0 M
 libqmi-utils                    x86_64               1.32.2-1.el9                  baseos               231 k

Transaction Summary
===============================================================================================================
Upgrade  6 Packages

Total download size: 3.1 M
Is this ok [y/N]:
```

Eğer onay verirsem spesifik olarak belirtiğim “**ModemManager**” aracı ve bu aracın bağımlı olduğu paketler güncellenmiş olacak. Gördüğünüz gibi spesifik olarak güncelleme yapmak için aslında tıpkı aracı yeniden kurarmışçasına `install` komutunu kullanıyoruz. 

## `dnf` ile Paketleri Kaldırmak

Silme işlemi için `dnf remove paket-adı` komutunu kullanıyoruz.

```bash
[taylan@linuxdersleri Downloads]$ sudo dnf remove wget
[sudo] password for taylan: 
Dependencies resolved.
===============================================================================================================
 Package               Architecture            Version                       Repository                   Size
===============================================================================================================
Removing:
 wget                  x86_64                  1.21.1-7.el9                  @appstream                  3.1 M

Transaction Summary
===============================================================================================================
Remove  1 Package

Freed space: 3.1 M
Is this ok [y/N]:
```

Eğer “**y**” ile onay verirsem `wget` aracı silinecek. Ben onaylıyorum.

```bash
Is this ok [y/N]: y
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                       1/1 
  Erasing          : wget-1.21.1-7.el9.x86_64                                                              1/1 
  Running scriptlet: wget-1.21.1-7.el9.x86_64                                                              1/1 
  Verifying        : wget-1.21.1-7.el9.x86_64                                                              1/1 

Removed:
  wget-1.21.1-7.el9.x86_64                                                                                     

Complete!
[taylan@linuxdersleri Downloads]$ wget
bash: wget: command not found...
```

Gördüğünüz gibi **wget** aracı silinmiş oldu. Tekrar yüklemek isterseniz nasıl yapacağınızı biliyorsunuz. 

### Gereksiz Paketlerin Silinmesi

Kurulmak üzere indirilen ve artık ihtiyaç duyulamayan paketlerin silinmesi için `sudo dnf clean all` komutunu kullanabiliyoruz. 

```bash
[taylan@linuxdersleri Downloads]$ sudo dnf clean all
36 files removed
[taylan@linuxdersleri Downloads]$
```

Burada açıkladıklarım temel yaklaşımlar. Bunlar dışında `dnf` aracının ihtiyaç duydukça kısa bir araştırma ile öğrenebileceğiniz pek çok ek seçeneği bulunuyor. Bunları özellikle ele almıyorum çünkü sık kullanılmadıkları için unutulacaklardır. Gerektiğinde manual sayfaları ya da internet araştırması ile kısa sürede kendi kendinize keşfedebilirsiniz. Ben son olarak `dnf` ile `yum` aracı arasındaki farka kısaca değinmek istiyorum.

## `dnf` ile `yum` Arasındaki Fark

`dnf` aracı `yum` aracının çatallanması ile oluşturulmuş alternatif bir paket yöneticisidir. Yani `yum` aracından tamamen bağımsız değildir doğrudan `yum` aracının değiştirilerek yeni bir paket yöneticisi oluşturulmasıyla ortaya çıkmıştır. Bu nedenle `yum` ile `dnf` aracının seçenekleri ve parametreleri benzerdir.  `dnf` aracını kullanabiliyorsanız `yum` aracını da rahatlıkla kullanabilirsiniz. `dnf` aracı çok daha verimli bulunduğu için ben de anlatımlar sırasında yalnızca `dnf` aracını ele aldım. Fakat siz dilediğiniz paket yöneticisini kullanabilecek bilgiye artık sahipsiniz. Temel paket yönetimi için özellikle ele almamız gereken ek bir detay bulunmuyor.

# Kaynak Koddan Derleyerek Kurulum

Şimdiye kadarki anlatımlarımızla, yeni nesil paket kavramından ve paket yönetiminin temellerinden bahsettik. Paketler, bir aracın ilgili dağıtıma göre önceden derlenip hazırlanması ve paketlenerek kullanıcılara sunulmasıdır. Bu sayede kullanıcılar tekrar kaynak koddan derlemeyle uğraşmadan mevcut sistemlerine uyumlu paketleri indirip kolayca kurabiliyor. Ancak her zaman mevcut sistem için hazırlanmış olan paket dosyası bulunmayabiliyor. Bu durumda bizlerin, ilgili aracın kaynak kodlarını kullanarak aracı mevcut sistemde çalışabilir şekilde derlememiz gerekiyor. Yani kaynak koddan derlemeye çok sık ihtiyaç duymuyoruz ancak ihtiyaç duyduğumuzda ne yapmamız gerektiğini bilmemiz önemli. Zaten kaynak koddan derlenerek kurulan araçlarda, geliştiriciler dokümanlar ve araçlar ile birlikte gelen metin belgelerinde kurulumun nasıl yapılması gerektiğini adım adım açıklıyorlar. Çünkü araçların birbirinden farklı ihtiyaçları dolayısıyla, uygulanması gereken çeşitli konfigürasyonları olabilir. Yani benim burada ele alacağım kaynak koddan kurulum ayrıntıları genel anlatımdır. Yine en doğru kurulum adımı için kurulmak istenen aracın yardım sayfalarına ve kurulum açıklamalarına göz atmanız gerekiyor. Hadi şimdi uygulamalı olarak bu durumu gözlemleyelim.

Ben örnek olarak `wget` aracının en güncel sürümünü derleyerek kurmak istiyorum. Aslında `wget` aracı mevcut sistemimde yüklü ancak ben henüz paket depolarında bulunmayan sürümünü kaynak koddan derleyerek yüklemek istiyorum. Öncelikle mevcut `wget` aracının sürümünü kontrol etmek için `wget —version` komutunu kullanabilirim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ wget --version
GNU Wget 1.21.2 built on linux-gnu.
```

Bakın varsayılan olarak yüklü gelen `wget` aracının sürümü bu. Bir de repolardaki sürümüne bakalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ apt search wget                                                                
Sorting... Done
Full Text Search... Done

wget/kali-rolling 1.21.2-2+b1 amd64
  retrieves files from the web

wget2/kali-rolling 1.99.1-2.2 amd64
  file and recursive website downloader

wget2-dev/kali-rolling 1.99.1-2.2 amd64
  development file for libwget2

wgetpaste/kali-rolling 2.30-0kali1 all
  Command-line interface to various online pastebin services

wput/kali-rolling 0.6.2+git20130413-11 amd64
  tiny wget-like ftp-client for uploading files
```

Bakın mevcut dağıtım için depolarda daha güncel bir sürüm sunulmamış. Zaten ben de depolarda bulunmadığı için kaynak koddan derleyerek kurmak istiyorum. Elbette her zaman depolarda her istediğimiz aracın her sürümünü bulamayabiliriz. Bu çok doğal. Çünkü en nihayetinde repoları da insanlar oluşturuyor ve denetleyip yönetiyor. Bu sebeple repoları sınırsız bir kaynak olarak görme hatasına düşmeyin lütfen. Repolarda önemli olan stabil ve güvenli sürümlerin sunulmasıdır.

Şimdi `wget` aracının kaynak kodunu araştırmak üzere arama motorunu kullanabiliriz. Kaynak kodlara ulaşmak için “**wget source code**” şeklinde araştırmamız yeterli. `wget` aracı GNU altında geliştirilen bir araç olduğu için GNU'nun websitesi üzerinden kaynak kodlarına ulaşabiliyoruz. 

![wget.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/wget.webp)

Ancak kaynak kodları bulma konusunda çok dikkatli olmanız gerekiyor. Benim örneğimde GNU güvenilir kaynak olduğu için sorun yok. Ancak sizin kurmak istediğiniz aracın kaynak kodu geliştiricinin websitesinde ya da Github gibi açık kaynaklı projelerin paylaşıldığı platformlarda olabilir. Eğer kaynak kodu websitesi üzerinden indiriyorsanız bu sitenin geliştiriciye ait olduğuna ya da güvenilir bir kaynak olduğuna emin olmadığınız sürece sakın bu aracı kurmayın. Websitesini doğrulamak için internet üzerinde ek araştırma yapabilir ya da çeşitli forumlar ve yardım sayfalarında bu sitenin ve aracın güvenilir olup olmadığına ve ilgili aracın kaynak kodlarına ulaşmak için hangi adresi kullanmanız gerektiğini sorgulayabilirsiniz.

Yani aslında Github gibi platformlarda açık kaynaklı ve resmi repolarda bulunmayan inanılmaz çeşitlilikte aracın kaynak kodlarına kolayca erişebilirsiniz. **Ancak bunların hepsinin iyi niyetli olduğunu yanılgısına sakın düşmeyin.** Açık kaynaklı olmasına rağmen pek çok zararlı yazılım da yer alıyor. Kısacası kaynak koddan kurulum, sunduğu esneklik dolayısıyla iyidir hoştur ama riskleri de beraberinde getirir. Emin değilseniz kişisel veya profesyonel amaçla kullandığınız makinenize sakın bu araçları kurmayın. 

Evet neticede kaynak koda erişim noktasında nerelere dikkat etmeniz gerektiğine de kısaca vurgu yaptığımıza göre aracın kaynak kodunu indirelim.

 `wget` aracının kaynak kodlarının sürümlere göre listelendiği bu FTP sunucusuna, resmi GNU sitesi üzerinden ulaştım. 

![wget-download.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/paket/wget-download.webp)

Ben en güncel sürümü istediğim için buradan en son sürümü içeren arşiv dosyasının üzerine tıklayıp indiriyorum. ***Downloads*** dizinine geçiyorum ve `tar -xf` komutu ile arşiv dosyasını buraya çıkarıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cd Downloads/

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls                                                                             
wget-1.21.4.tar.gz  zoom_amd64.deb

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -xf wget-1.21.4.tar.gz 
```

Şimdi kurulum yapmak için dizine geçiş yapıp, dosyaları listeleyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ cd wget-1.21.4/                                                                

┌──(taylan㉿linuxdersleri)-[~/Downloads/wget-1.21.4]
└─$ ls                                                                             
ABOUT-NLS   ChangeLog     doc          INSTALL       maint.mk     NEWS    testenv
aclocal.m4  configure     fuzz         lib           Makefile.am  po      tests
AUTHORS     configure.ac  gnulib_po    m4            Makefile.in  README  util
build-aux   COPYING       GNUmakefile  MAILING-LIST  msdos        src
```

Burada “**README**” ve “**INSTALL**” gibi isimlerde metin dosyaları bulunuyor. İstisnalar hariç neredeyse tüm araçların kaynak kodlarında, aracın kurulumu ve konfigürasyonları ile ilgili bilgi sunan bu tür dosyalar zaten geliyor. Ben genel olarak kurulumu ele alıyorum ancak daha önce de söylediğim şekilde en doğru bilgiyi geliştiricinin sunduğu doküman ve “***install***” veya “***readme***” gibi dosyalardan öğrenebilirsiniz. Ben kurulum yapacağım için **INSTALL** isimli dosya içeriğini `cat` komutu ile konsola bastırmak istiyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads/wget-1.21.4]
└─$ cat INSTALL 
Installation Instructions
*************************

   Copyright (C) 1994-1996, 1999-2002, 2004-2017, 2020-2021 Free
Software Foundation, Inc.

   Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.  This file is offered as-is,
without warranty of any kind.

Basic Installation
==================

   Briefly, the shell command './configure && make && make install'
should configure, build, and install this package.  The following
...
The simplest way to compile this package is:

  1. 'cd' to the directory containing the package's source code and type
     './configure' to configure the package for your system.

     Running 'configure' might take a while.  While running, it prints
     some messages telling which features it is checking for.

  2. Type 'make' to compile the package.

  3. Optionally, type 'make check' to run any self-tests that come with
     the package, generally using the just-built uninstalled binaries.

  4. Type 'make install' to install the programs and any data files and
     documentation.  When installing into a prefix owned by root, it is
     recommended that the package be configured and built as a regular
     user, and only the 'make install' phase executed with root
     privileges.

  5. Optionally, type 'make installcheck' to repeat any self-tests, but
     this time using the binaries in their final installed location.
     This target does not install anything.  Running this target as a
     regular user, particularly if the prior 'make install' required
     root privileges, verifies that the installation completed
     correctly.

  6. You can remove the program binaries and object files from the
     source code directory by typing 'make clean'.  To also remove the
     files that 'configure' created (so you can compile the package for
     a different kind of computer), type 'make distclean'.  There is
     also a 'make maintainer-clean' target, but that is intended mainly
     for the package's developers.  If you use it, you may have to get
     all sorts of other programs in order to regenerate files that came
     with the distribution.

  7. Often, you can also type 'make uninstall' to remove the installed
     files again.  In practice, not all packages have tested that
     uninstallation works correctly, even though it is required by the
     GNU Coding Standards.

  8. Some packages, particularly those that use Automake, provide 'make
     distcheck', which can by used by developers to test that all other
     targets like 'make install' and 'make uninstall' work correctly.
     This target is generally not run by end users.
..
.
```

<p class="mavi"><strong>ℹ️ Not:</strong> Çıktılar çok uzun olduğu için buraya kısaltarak ekledim.</p>

Bakın burada araç hakkında çeşitli bilgilerin yanında kaynak dosyalarının nasıl derleneceği de adım adım açıklanmış. Örneğin benim kuracağım araç için kullanmam gereken komutlar bakın burada belirtilmiş. Ben zaten arşiv dosyası olarak indirmiştim ve arşiv dosyasından da çıkarmıştım. Yani şimdi aracı kurmak için buradaki komutları sırasıyla kullanmam yeterli olacak. Burada listelenen dosyalar elbette ilgili yazılıma göre değişiklik gösterir. Ancak genel olarak bilgi içeren metin dosyalarının yanında kurulum için ön ayarlamaları yapan ***configure*** dosyası ve kurulum işlemini kolaylaştıran genellikle ***install.sh*** isminde kurulum betiği ile karşılaşırsınız. Örneğin bu araç için ***install.sh*** gibi bir betik yok ama konfigürasyonlar için ***configure*** dosyası var. Ayrıca buradaki ***makefile*** dosyaları da gerekli konfigürasyon ayarlamaları yapıldıktan sonra ilgili aracın derlenip kurulması için kullanıyor. Şimdi adım adım ilerleyelim. 

**Ancak tekrar belirtiyorum bu adımlar pek çok araç için aşağı yukarı benzer olsa da her zaman birebir aynı olmayacaktır. Çünkü pek çok farklı yazılımın pek çok farklı bağımlılıkları ve yapılandırma ayarları vardır.**

Ben **wget** aracının kaynak kodlarında belirtilen kurulum adımları üzerinden genel işleyişe değiniyorum sadece. Yani kurulum yaparken sizler mutlaka geliştiricinin sunduğu rehberi takip edin. Nitekim ben de şu an öyle yapıyorum.

Hatırlamayı da yaptığımıza göre kurulum rehberinde de belirtildiği şekilde `./configure` komutu ile  ***configure*** dosyasının çalıştırılmasını sağlayabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads/wget-1.21.4]
└─$ ./configure 
configure: configuring for GNU Wget 1.21.4
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a race-free mkdir -p... /usr/bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether make supports the include directive... yes (GNU style)
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for compress in -lz... yes
checking for GNUTLS... no
configure: error: in `/home/taylan/Downloads/wget-1.21.4':
configure: error: The pkg-config script could not be found or is too old.  Make sure it
is in your PATH or set the PKG_CONFIG environment variable to the full
path to pkg-config.

Alternatively, you may set the environment variables GNUTLS_CFLAGS
and GNUTLS_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.

To get pkg-config, see <http://pkg-config.freedesktop.org/>.
See `config.log' for more details
```

Bakın çeşitli kontroller yapıldı ancak sonunda bir hata aldık. Bu hatanın nedeni de çıktılardan anlayabildiğimiz kadarıyla `pkg-config` scriptinin sistemde yüklü olmamasından kaynaklanıyor. 

Hemen `sudo apt install pkg-config` komutu ile yükleyelim.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads/wget-1.21.4]
└─$ sudo apt install pkg-config
[sudo] password for taylan: 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libpkgconf3 pkgconf pkgconf-bin
The following NEW packages will be installed:
  libpkgconf3 pkg-config pkgconf pkgconf-bin
0 upgraded, 4 newly installed, 0 to remove and 1843 not upgraded.
Need to get 105 kB of archives.
After this operation, 283 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://kali.download/kali kali-rolling/main amd64 libpkgconf3 amd64 1.8.1-1 [36.1 kB]
Get:2 http://kali.download/kali kali-rolling/main amd64 pkgconf-bin amd64 1.8.1-1 [29.5 kB]
Get:3 http://kali.download/kali kali-rolling/main amd64 pkgconf amd64 1.8.1-1 [25.9 kB]
Get:4 http://kali.download/kali kali-rolling/main amd64 pkg-config amd64 1.8.1-1 [13.7 kB]
Fetched 105 kB in 11s (9,934 B/s)
Selecting previously unselected package libpkgconf3:amd64.
(Reading database ... 291440 files and directories currently installed.)
Preparing to unpack .../libpkgconf3_1.8.1-1_amd64.deb ...
Unpacking libpkgconf3:amd64 (1.8.1-1) ...
Selecting previously unselected package pkgconf-bin.
Preparing to unpack .../pkgconf-bin_1.8.1-1_amd64.deb ...
Unpacking pkgconf-bin (1.8.1-1) ...
Selecting previously unselected package pkgconf:amd64.
Preparing to unpack .../pkgconf_1.8.1-1_amd64.deb ...
Unpacking pkgconf:amd64 (1.8.1-1) ...
Selecting previously unselected package pkg-config:amd64.
Preparing to unpack .../pkg-config_1.8.1-1_amd64.deb ...
Unpacking pkg-config:amd64 (1.8.1-1) ...
Setting up libpkgconf3:amd64 (1.8.1-1) ...
Setting up pkgconf-bin (1.8.1-1) ...
Setting up pkgconf:amd64 (1.8.1-1) ...
Setting up pkg-config:amd64 (1.8.1-1) ...
Processing triggers for libc-bin (2.36-9) ...
Processing triggers for man-db (2.9.4-4) ...
Processing triggers for kali-menu (2021.4.2) ...
```

<p class="mavi"><strong>ℹ️ Not:</strong> Siz hiç hata almayabilir ya da farklı bir hata alabilirsiniz. İlk olarak konfigürasyon dosyasını çalıştırdığımız için mevcut sistemin derleme işlemine uygun olup olmadığı kontrol ediliyor. Dolayısıyla uyumlu değilse hata çıktısında belirtilen uyarıları araştırıp çözdükten sonra derleme adımlarına devam etmelisiniz.</p>

Ben hatadaki eksikliği giderdikten sonra `./configure` komutu ile konfigürasyonu tekrar çalıştırıyorum.

Bu kez de “***Package 'gnutls', required by 'virtual:world', not found***” hatasını aldım. Eksikliği gidermek için gerekli paketi de kuruyorum.

<p class="mavi"><strong>ℹ️ Not:</strong> Hataları gidermek için kurmanız gereken paketleri repolarda araştırabilir veya internet üzerinde bu hata ile araştırma yapıp eksiklik hakkında bilgi alabilirsiniz. Sizden önce mutlaka birileri bu konu hakkında soru sorup yanıt almıştır. Tek yapmanız gereken aldığınız hataları biraz araştırmak. Yeterince araştırmış olmanıza rağmen yanıt bulamadığınız durumda, forumlar aracılığı ile soru sorup yardım alabilirsiniz.</p>


```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads/wget-1.21.4]
└─$ sudo apt install libgnutls28-dev 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libgnutls-openssl27 libgnutlsxx30 libhogweed6 libidn2-0 libidn2-dev libnettle8
  libp11-kit-dev libp11-kit0 libtasn1-6 libtasn1-6-dev libtasn1-doc nettle-dev
  p11-kit-modules
Suggested packages:
  gnutls-doc p11-kit-doc
The following NEW packages will be installed:
  libgnutls-openssl27 libgnutls28-dev libgnutlsxx30 libidn2-dev libp11-kit-dev
  libtasn1-6-dev libtasn1-doc nettle-dev
The following packages will be upgraded:
  libhogweed6 libidn2-0 libnettle8 libp11-kit0 libtasn1-6 p11-kit-modules
6 upgraded, 8 newly installed, 0 to remove and 1833 not upgraded.
Need to get 5,121 kB of archives.
After this operation, 10.6 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://kali.download/kali kali-rolling/main amd64 libnettle8 amd64 3.8.1-2 [288 kB]
Get:2 http://kali.download/kali kali-rolling/main amd64 libhogweed6 amd64 3.8.1-2 [328 kB]
Get:3 http://http.kali.org/kali kali-rolling/main amd64 libidn2-0 amd64 2.3.3-1+b1 [124 kB]
Get:4 http://kali.download/kali kali-rolling/main amd64 libtasn1-6 amd64 4.19.0-2 [56.6 kB]
Get:5 http://kali.download/kali kali-rolling/main amd64 p11-kit-modules amd64 0.24.1-2 [233 kB]
Get:6 http://kali.download/kali kali-rolling/main amd64 libp11-kit0 amd64 0.24.1-2 [345 kB]
Get:7 http://kali.download/kali kali-rolling/main amd64 libgnutls-openssl27 amd64 3.7.9-2 [406 kB]
Get:8 http://kali.download/kali kali-rolling/main amd64 libgnutlsxx30 amd64 3.7.9-2 [14.3 kB]
Get:9 http://http.kali.org/kali kali-rolling/main amd64 libidn2-dev amd64 2.3.3-1+b1 [122 kB]
Get:10 http://kali.download/kali kali-rolling/main amd64 libp11-kit-dev amd64 0.24.1-2 [172 kB]
Get:11 http://kali.download/kali kali-rolling/main amd64 libtasn1-6-dev amd64 4.19.0-2 [106 kB]
Get:12 http://kali.download/kali kali-rolling/main amd64 nettle-dev amd64 3.8.1-2 [1,239 kB]
Get:13 http://kali.download/kali kali-rolling/main amd64 libgnutls28-dev amd64 3.7.9-2 [1,351 kB]
Get:14 http://kali.download/kali kali-rolling/main amd64 libtasn1-doc all 4.19.0-2 [337 kB]
Fetched 5,121 kB in 13s (400 kB/s)                                                
(Reading database ... 291515 files and directories currently installed.)
Preparing to unpack .../libnettle8_3.8.1-2_amd64.deb ...
Unpacking libnettle8:amd64 (3.8.1-2) over (3.7.3-1) ...
Setting up libnettle8:amd64 (3.8.1-2) ...
(Reading database ... 291515 files and directories currently installed.)
Setting up libgnutls28-dev:amd64 (3.7.9-2) ...
Processing triggers for man-db (2.9.4-4) ...
Processing triggers for install-info (6.8-4+b1) ...
Processing triggers for libc-bin (2.36-9) ...
```

Bu şekilde hata kalmayıncaya kadar devam etmem gerek.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads/wget-1.21.4]
└─$ ./configure 
configure: configuring for GNU Wget 1.21.4
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a race-free mkdir -p... /usr/bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether make supports the include directive... yes (GNU style)
checking for gcc... gcc
..
..
.
config.status: creating gnulib_po/POTFILES
config.status: creating gnulib_po/Makefile
configure: Summary of build options:

  Version:           1.21.4
  Host OS:           linux-gnu
  Install prefix:    /usr/local
  Compiler:          gcc
  CFlags:              -I/usr/include/p11-kit-1  -DHAVE_LIBGNUTLS  -DNDEBUG -g -O2   
  LDFlags:           
  Libs:              -lidn2  -lnettle  -lgnutls  -lz  
  SSL:               gnutls
  Zlib:              yes
  PSL:               no
  PCRE:              no
  Digest:            yes
  NTLM:              yes
  OPIE:              yes
  POSIX xattr:       yes
  Debugging:         yes
  Assertions:        no
  Valgrind:          Valgrind testing not enabled
  Metalink:          no
  Resolver:          libc, --bind-dns-address and --dns-servers not available
  GPGME:             no
  IRI:               yes
  Fuzzing build:     no,
```

Nihayet konfigürasyon aşaması tamamlandı. Şimdi sıradaki adım olan, `make` komutu ile derleme işlemini gerçekleştireceğiz.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads/wget-1.21.4]
└─$ make                                                                           
make  all-recursive
make[1]: Entering directory '/home/taylan/Downloads/wget-1.21.4'
Making all in lib
make[2]: Entering directory '/home/taylan/Downloads/wget-1.21.4/lib'
  GEN      alloca.h
  GEN      arpa/inet.h
  GEN      ctype.h
  GEN      dirent.h
  GEN      fcntl.h
  GEN      malloc/dynarray.gl.h
  GEN      malloc/dynarray-skeleton.gl.h
..
..
make[2]: Leaving directory '/home/taylan/Downloads/wget-1.21.4'
make[1]: Leaving directory '/home/taylan/Downloads/wget-1.21.4'
```

Derleme aşaması da tamam. Şimdi derlenmiş olanları kurmak için `sudo make install` komutunu girmeliyiz.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads/wget-1.21.4]
└─$ sudo make install                                                              
[sudo] password for taylan: 
make  install-recursive
make[1]: Entering directory '/home/taylan/Downloads/wget-1.21.4'
Making install in lib
make[2]: Entering directory '/home/taylan/Downloads/wget-1.21.4/lib'
make  install-am
make[3]: Entering directory '/home/taylan/Downloads/wget-1.21.4/lib'
make[4]: Entering directory '/home/taylan/Downloads/wget-1.21.4/lib'
make[4]: Nothing to be done for 'install-exec-am'.
make[4]: Nothing to be done for 'install-data-am'.
...
..
```

Böylelikle **INSTALL** dosyasında yazan kurulum adımlarını tamamlamış olduk. Şimdi teyit etmek için konsola `wget —version` şeklinde komutumuzu girelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ wget --version                                                                                                                                          
GNU Wget 1.21.4 built on linux-gnu.
```

Bakın derlemiş olduğum wget versiyonu karşıma gelmiş oldu. Yani kaynak koddan derleme işlemini geliştiricilerin verdiği rehberi takip ederek tamamlamış oldum.

Hatta kurulum için derlenmiş ama artık ihtiyaç duymadığımız dosyaları `make clean` komutu ile temizleyebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads/wget-1.21.4]
└─$ make clean                                                                     
Making clean in lib
make[1]: Entering directory '/home/taylan/Downloads/wget-1.21.4/lib'
test -z "" || rm -f 
test -z "libgnu.a" || rm -f libgnu.a
test -z "" || rm -f 
rm -f *.o
rm -f glthread/*.o
rm -f malloc/*.o
rm -f unicase/*.o
```

Buna ek olarak tabii ki indirmiş olduğunuz bu dosyayı da artık silebilirsiniz çünkü aracın gerekli dosyaları artık sisteme kuruldu.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cd Downloads/

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ rm -r wget-1.21.4*                                                                                                                                      

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ wget --version
GNU Wget 1.21.4 built on linux-gnu.
```

En nihayetinde derleme işlemini tamamlamış olduk. 

Elbette ben bağımlılık sorunları ile boğuşmak istemediğim için çok fazla ek bağımlılığı olmayan `wget` aracının kurulumunu ele aldım. Sizler de geliştiricilerin sunduğu kurulum rehberlerinin ya da daha önce öğrendiğiniz paket yükleme araçlarının ve internetin yardımıyla bağımlılık sorunlarını çözerek istediğiniz aracı kaynak koddan derleyerek kurabilirsiniz. Önemli olan geliştiricilerin sunduğu adımları dikkatlice takip etmenizdir.

Zaten depolarda bulunmayan özel sürümler veya bağımsız harici araçlara ihtiyaç duymadığınız sürece, kaynak koddan derlemeye neredeyse hiç ihtiyaç duymayacaksınız. Kaynak koddan derleme işlemini genellikle Wi-Fi kartları gibi harici sürücülerin kurulumu noktasında kullanıyoruz. 

Genel olarak kaynak koddan derleme işlemini de öğrendiğimize göre bu bölümü de sonlandırabiliriz. 
