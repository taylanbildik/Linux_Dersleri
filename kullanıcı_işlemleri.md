Kullanıcı İşlemleri
=
Linux'ta birçok kullanıcı olduğunu ve bunlar içinde en yetkilinin root kullanıcısı olduğunu önceki derslerimizde tecrübe etmiştik. Ancak sistemde root kullanıcısı olmadan da root kullanıcısının yetkilerine sahip olmamız mümkün. Bu imkanı bize linux grup sistemi veriyor.

Grup Yönetimi
-

Aynı grupta yer alan kullanıcılar bizim tanımlamamızla aynı haklara sahip olabiliyorlar.

Biraz daha ayrıntılı vermek gerekirse Linux ve UNIX sistemlerindeki kullanıcılar bir veya daha fazla gruba aşağıdaki nedenlerle atanır:

- Dosyaları veya diğer kaynakları az sayıda kullanıcıyla paylaşmak için yani sınırlama mekanizması gibi düşünülebilir.
- Kullanıcı yönetim ve denetim kolaylığı sağlar.
- Grup üyeliği büyük Linux sistem kurulumu yerine kullanılan mükemmel bir çözümdür.
- Grup üyeliği, bu gruba izin verilen dosyalara, dizinlere veya cihazlara özel erişim sağlar. Bu madde baştaki madde ile benzer amaca hizmet ederek tamamen kontrolü elde tutmayı sağlamak için kullanılır.

Mevcut grupları görüntülemek istersek `less /etc/group` `more /etc/group` `cat /etc/group` komutlarından herhangi birini kullanabiliriz. Çıktıları aşağıdaki şekilde olacaktır.(Çıktıyı uzun olması nedeni ile kısa şekilde verdim.)

![enter image description here](https://i.hizliresim.com/6JY4DN.png)

Hemen bu çıktıda yer alan kısımlara bir açıklık getirelim. Bunun için çıktıda yer alan bir grubu bölüm bölüm numaralandırarak açıklayalım. Ben bu durum için örnek bir grup belirtiyorum.

![enter image description here](https://i.hizliresim.com/4aYdp0.png)

Belirtilen numaralı kısımların açıklamaları:

**1. Grup_ismi :** Gruba verilen isimdir.

**2. Parola :** Genelde parola kullanılmaz ancak kimi durumlarda kullanıldığı oluyor, bizim çıktımızda da x ile belirtilen alan parola kısmının boş olduğunu belirtiyor. Bu parola belirleme işlemi çok sık kullanılmasa da, ayrıcalıklı gruplarda uygulamak için yararlıdır.

**3. Grup Kimliği (GID) :** Atanan grup kimliğini(numarası) belirtiyor.

**4. Grup Listesi :** Grubun üyesi olan kullanıcıların kullanıcı adlarının bir listesidir. Kullanıcı adları, virgülle ayrılmış olmalıdır.

Kullanıcıların ait olduğu grupları görmek istersek komut satırına `id kullanıcı_adı` şeklinde komut vermemiz yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/JQd5Vq.png)

Burada yeri gelmişken daha önce değindiğimiz uid(user id) ve gid(group) kavramlarına değinelim. Bu numaralar kullanıcı çeşidine göre şu şekildedir;

- **root kullanıcısı :** UID=0, GID=0
- **sistem kullanıcısı :** UID=1-499, GID=1-499
- **normal kullanıcı :** UID=500<, GID<

Ayrıca `id` komutunun da birçok parametresi vardır bazıları şimdi göreceğiniz grup oluşturma kısmındaki parametrelerden oluşuyor. Detaylı bilgi için man sayfasına bakabilirsiniz. Ben yine de örnek olması açısından `g` parametresini gösteriyorum ve daha sonra grup oluşturma ile konumuza devam ediyoruz.

`id -g grup_adı` belirtilen grubun grup id(GİD)'sini verecektir.

![enter image description here](https://i.hizliresim.com/OoJWr0.png)

Yeni bir grup oluşturmak istersek `groupadd grup_adı` şeklinde komutumuzu kullanırız.

Ve oluşturduğumuz grubu sorgulamak için grub bilgilerinin tutulduğu dosyaya bakmak üzere `cat /etc/group | grep grup_adı` komutunu ya da `tail -n 1 /etc/group` kullanabiliriz.


![enter image description here](https://i.hizliresim.com/z0QWGB.png)


Ayrıca grup oluşturulurken kullanılabilecek bazı parametreler var. Bunlar;

**g :**  Grup id belirleme. İstediğiniz numarayı başka bir gruba ait numara ile aynı olamayacak şekilde verebilirsiniz.

![enter image description here](https://i.hizliresim.com/G9bqZy.png)

Eğer aynı grup id ile başka bir grup eklemek istersek konsol bize bu id ye sahip başka bir grubun halihazırda bulunduğu uyarısını verecektir. Dolayısı ile grup ekleme işlemi başarısız olacaktır.

![enter image description here](https://i.hizliresim.com/y02yG0.png)

**o :** id olmadan grup oluşturma

**r :** sistem grubu oluşturma.

**f :** işlemi hatalar olsa bile zorlayarak tamamlar. Genelde bu kullanım sorunlar çıkardığı için pek tavsiye edilmez.

Parametreler bunlar ile sınırlı değil ancak sizler `man groupadd` ve `groupadd --help` komutları yardımı ile diğer parametrelere ulaşabilirsiniz.

Ayrıca oluşturduğunuz grupları silmek isterseniz konsola `groupdel grup_adı` şeklinde komut yazmalısınız.

![enter image description here](https://i.hizliresim.com/W7WlXq.png)


Kullanıcı Yönetimi
-

Sistemimize yeni bir kullanıcı eklemek için kullanabileceğimiz iki farklı komut var. Bunlar `adduser` ve `useradd` komutlarıdır.

### adduser

Yeni kullanıcı eklemek için komutumuzu `adduser kullanıcı_adı` şeklinde veriyoruz. Böylelikle oluşturduğumuz kullanıcıya ait ev dizini `home/kullanıcı_adı` şeklinde otomatik olarak oluşmuş oluyor.

![enter image description here](https://i.hizliresim.com/p6v7A0.png)

Çıktıları inceleyecek olursak ev dizini otomatik olarak oluşturulmuş ve kullanıcı "taylan" grubuna dahil edilmiş. Bunu da tekrar ev dizini sorgusu için <kbd>home</kbd> dizinine bakarak ve `id taylan` komutunu kullanarak teyit edelim.

![enter image description here](https://i.hizliresim.com/kOZ2QW.png)

Çıktıda görüldüğü gibi <kbd>home</kbd> dizininde oluşturmuş olduğum "taylan" isminde kullanıcı dosyası bulunuyor.

![enter image description here](https://i.hizliresim.com/NZYyXO.png)

Yukarıdaki çıktıda oluşturulan "taylan" isimli kullanıcının grubu da "taylan" olarak gözükmekte.

### useradd

Kullanıcı oluşturmak için bahsettiğimiz 2. komut olan `useradd` komutu kullanımı `useradd -m kullanıcı_adı` şeklindedir. Burada komutumuz ile birlikte kullanmış olduğumuz `m` parametresi ile oluşturduğumuz kullanıcıya ait ev dizininin otomatik oluşmasını sağladık. Birde son olarak kullanıcıya ait bir parola belirlemek üzere `passwd kullanıcı_adı` şeklinde komutumuzu vererek parolamızı oluşturuyoruz.

Ayrıca bu `passwd kullanıcı_adı` komut kullanımı bütün hesaplar için şifre güncelleme işleminde de kullanılıyor. Eğer herhangi bir hesabınızın parolanızı güncellemek isterseniz `passwd` komutu aklınızda bulunsun.

![enter image description here](https://i.hizliresim.com/azP4vz.png)

Görüldüğü gibi "taylan_2" isimli kullanıcı hesabımız başarılı şekilde oluşturulmuş oldu. Şimdi <kbd>home</kbd> dizinini ve oluşturduğumuz kullanıcının grubunu kontrol edelim.

![enter image description here](https://i.hizliresim.com/Yg31y6.png)

Çıktı sonuçlarında bir problem olmadığına göre konumuza, kullanıcı silme işlemi ile devam edebiliriz.

### Kullanıcı Silmek

Eğer kullanıcıyı `adduser` komutu ile oluşturduysak, oluşturulan ev dizini ile birlikte kullanıcıyı silmek için `deluser --remove-home kullanıcı_adı` komutunu kullanmamız gerek.

![enter image description here](https://i.hizliresim.com/NZb63P.png)

Ancak kullanıcıyı `useradd` komutu ile oluşturduysak, oluşturulan ev dizini ile birlikte kullanıcıyı silmek için `userdel -r kullanıcı_adı` komutunu kullanmamız gerek.

![enter image description here](https://i.hizliresim.com/azBJjO.png)

Kullanıcı silme işlemlerini kontrol etmek adına home dizinini kontrol edelim.

![enter image description here](https://i.hizliresim.com/Yg52Mz.png)

Çıktıda "taylan" ya da "taylan_2" bulunmadığına göre kullanıcı silme işlemimiz başarılı şekilde tamamlanmış oldu.

### Kullanıcı Bilgileri Listelemek(chage)

Kullanıcı bilgileri listeme işleminde `chage` komutu `chage -l kullanıcı_adı` şeklinde kullanılıyor.

Hemen root kullanıcısı için bilgileri listeleyelim.

![enter image description here](https://i.hizliresim.com/kOY3Qm.png)

### Aktif-Pasif Hesap Ayarlama

Varolan bir kullanıcı hesabını kilitlemek için `usermod -L kullanıcı_adı` komutunu kullanırız. Buradaki kilitlemekten kasıt kullanıcı parolasını kilitlenir. Parolayı devre dışı bırakmak için, şifreli parolanın önüne '!' işareti koyulur. Ve kullanıcı hesabına giriş yapamaz. 

Pasif durumdaki hesabı aktif hale getirmek için ise `usermod -U kullanıcı_adı` komutu kullanılır. Aynı şekilde hesabın tekrar aktif hale getirilmesi de devre dışı bırakılmış bir kullanıcı parolasını  önündeki '!' işaretini kaldırılmasıyla olur.

Bu durumu .gif ile anlattım dikkatlice takip ederseniz gayet net anlaşılacaktır.

![enter image description here](https://i.hizliresim.com/9mp81Q.gif)

### Kimlik Değişimi

Örneğin ben "taylan" kullanıcısıyken, yapmak istediğim işlem ancak "root" kullanıcısının yetki alanında ise "root" hesabının parolasını biliyorsam "root" hesabının kimliğine bürünerek o işlemi gerçekleştirebilirim.

Geçiş işlemleri için `su`komutunu kullanıyoruz. Komutun kullanımı ile ilgili iki farklı durum var bunlar:

- **su kullanıcı_adı :** diğer kullanıcı kimliğine geçiş yapar.
- **su - kullanıcı_adı :** diğer kullanıcı kimliğine geçiş yapar ve direk olarak geçiş yapılan kullanıcının kabuğunda çalışmaya başlar.

Bu durum en iyi örnekler ile açıklanabilir. İlk önce root kullanıcısıyken "taylan" isimli kullanıcı hesabına giriş yapacağım daha sonra "taylan" isimli kullanıcıdan root hesabına giriş işlemini gerçekleştireceğim. Adımları sırasıyla takip edin lütfen.

Hemen mevcut kullanıcı oturumunu daha önce öğrenmiş olduğumuz `whoami` komutu ile sorgulayalım.

![enter image description here](https://i.hizliresim.com/NZb6XP.png)

root kullanıcı iken "kullanici" hesabına geçiş yapmak için `su kullanici` komutunu kullanıyoruz. Ve `whoami`komutu ile geçiş durumunu kontrol ediyoruz.

![enter image description here](https://i.hizliresim.com/Yg52yz.png)

Geçiş yaptığımız "kullanici" hesabından root hesabına dönmek için `exit` komutunu kullanmamız yeterli.

![enter image description here](https://i.hizliresim.com/8YE0OV.png)

Şimdi `su - kullanici` komutu kullanarak geçiş yapacağımız kullanıcı kabuğunda çalışalım.

![enter image description here](https://i.hizliresim.com/D7kV1z.png)

Fark etmiş olacaksınız ki başta geçiş yapabilmemiz için geçeceğimiz hesabın parolasını bilmemiz gerektiğini söylemiştim ancak "kullanici" hesabına yaptığımız geçişlerde parola sorulmadı. Bunun sebebi "kullanici" hesabının normal kullanıcı olması. Şimdi bu durumu birde "kullanici" hesabındayken "root" kullanıcısı için iki farklı kullanımda da deneyelim.

![enter image description here](https://i.hizliresim.com/m28jbV.png)

![enter image description here](https://i.hizliresim.com/jyYPOJ.png)

Gördüğünüz gibi yönetici hesabına erişmek için bizlerden parola bilgisi istendi. Bu durum da başta açıkladığımız şifre sorma olayını açıklıyor.
