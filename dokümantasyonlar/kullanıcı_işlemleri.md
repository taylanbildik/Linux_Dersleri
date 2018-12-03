
Kullanıcı İşlemleri
=
Linux'ta birçok kullanıcı hesabının olabildiğini ve bunlar içinde en yetkilinin root kullanıcısı olduğunu önceki derslerimizde tecrübe etmiştik. Ancak sistemde root kullanıcısı olmadan da root kullanıcısının yetkilerine sahip olmamız mümkün. Bu imkanı bize **Linux Grup Yönetimi** veriyor.

Grup Yönetimi
-

Aynı grupta yer alan kullanıcılar bizim tanımlamamızla aynı haklara sahip olabiliyorlar.

Biraz daha ayrıntılı vermek gerekirse **Linux** ve **UNIX** sistemlerindeki kullanıcılar bir veya daha fazla gruba aşağıdaki nedenlerle atanır:

- Dosyaları veya diğer kaynakları Grup yönetimi sayesinde ilgili kullanıcılarla paylaşarak, sistemde erişim sınırlamalarıyla güvenlik sağlaması.
- Kullanıcı yönetim ve denetiminde  kolaylık sağlıyor olması.
- Grup üyeliği, bu gruba izin verilen dosyalara, dizinlere veya cihazlara özel erişim sağlar. Bu madde baştaki madde ile benzer amaca hizmet ederek tamamen kontrolü elde tutmayı sağlamak için kullanılır.

Yani genel olarak **Grup sistemini** bir çeşit **kontrol mekanizması** gibi düşünebilirsiniz.

Bu kısa bilgilendirmeden sonra gelin grup yönetimi ile ilgili işlemlere geçelim.

Bir grup oluşturulduğunda bu grubun bilgisi <kbd>/etc</kbd> dizini içerisinde yer alan <kbd>group</kbd> isimli dosyada tutuluyor.
Yani mevcut grupları görüntülemek istersek <kbd>/etc</kbd> dizini içerisinde yer alan <kbd>group</kbd> dosyasına bakmamız gerekir.
Bunun için `less /etc/group` , `more /etc/group` , `cat /etc/group` komutlarından herhangi birini kullanabiliriz. Çıktıları aşağıdaki şekilde olacaktır.(Çıktıyı uzun olması nedeni ile aşağıdaki çıktının görselini keserek verdim.)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/0.png)

Hemen bu çıktıda yer alan kısımlara bir açıklık getirelim. Bunun için bir grubu bölüm bölüm numaralandırarak açıklayalım. Ben bu durum için örnek bir grup belirtiyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/1.png)

Belirtilen numaralı kısımların açıklamaları:

**1. Grup_ismi :** Gruba verilen isimdir.

**2. Parola :** Parola alanını belirtiyor. Genelde parola kullanılmaz ancak kimi durumlarda kullanıldığı oluyor, bizim çıktımızda da **x** ile belirtilen alan parola kısmının boş olduğunu belirtiyor. Bu parola belirleme işlemi çok sık kullanılmasa da, ayrıcalıklı gruplarda uygulamak için yararlıdır.

**3. Grup Kimliği (GID) :** Atanan grup kimliğini(grup numarasını) belirtiyor.

**4. Grup Listesi :** Grubun üyesi olan kullanıcıların kullanıcı adlarının bir listesidir. Kullanıcı adları, virgülle ayrılmış şekilde belirtiliyor.

Bu alanların neleri ifade ettiğini öğrendiğimize göre, gelin hangi kullanıcının hangi gruba dahil olduğunu nasıl öğrenebiliriz onu görelim.

Kullanıcı Gruplarını Sorgulamak
-

Kullanıcıların ait olduğu grupları görmek istersek komut satırına `id kullanıcı_adı` şeklinde komut vermemiz yeterli olacaktır.
Ben "**burak**" kullanıcı hesabı için sorgulama yapmak üzere konsola `id burak` şeklinde komutumu veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/2.png)

Gördüğünüz gibi "**burak**" kullanıcı hesabı için burada; **uid**(**u**ser **id** /kullanıcı numarası), **gid**(group id/grup numarası) ve dahil olduğu **gruplar** listelenmiş oldu. 

Burada yeri gelmişken çıktıda da görülen **uid**(user id/kullanıcı numarası) ve **gid**(group id/grup numarası) kavramlarına değinelim. Bu numara aralıkları kullanıcı hesabına göre değişiklik gösteriyor. Yani kullanıcı çeşidine göre numaraları üç temel gruba ayırabiliriz. O da şu şekilde ;

- **root kullanıcısı :** UID=0, GID=0
- **sistem kullanıcısı :** UID=1 - 499, GID=1 - 499
- **normal kullanıcı :** UID=500 < X, GID=500 < X (Buradaki X ifadeleri 500'den büyük tüm sayıları temsil etmektedir.)

Ayrıca `id` komutunun birçok parametresi vardır bazıları birazdan göreceğimiz grup oluşturma kısmındaki parametrelerden oluşuyor. Detaylı bilgi için man sayfasına bakabilirsiniz. Ben yine de örnek olması açısından birkaç parametresini gösteriyorum ve daha sonra grup oluşturma ile konumuza devam ediyoruz.

**g** : `id -g kullanıcı_adı` belirtilen kullanıcının **grup numarasını**(**gid**) verecektir.

**u** : `id -u kullanıcı_adı` belirtilen kullanıcının **kullanıcı numarasını**(**uid**) verecektir.

**G** : `ìd -G kullanıcı_adı` belirtilen kullanıcının **dahil olduğu tüm grupları**(**groups**) verecektir.


![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/3.png)

Yukarıdaki parametreler haricindekiler için man kılavuz sayfasına bakın lütfen.


Sıra geldi yeni grup oluşturmaya..
-

Yeni bir grup oluşturmak istersek `groupadd yeni_grup_adı` şeklinde komutumuzu kullanırız.

Ben örnek olması açısından "**yeni**" isimli bir grup oluşturmak için komut satırına `groupadd yeni` şeklinde komutumu veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/5.png)

Ve oluşturduğumuz grubu sorgulamak için grup bilgilerinin tutulduğu dosyaya bakmak üzere `cat /etc/group | grep grup_adı` komutunu ya da `tail -n 1 /etc/group` kullanabiliriz.


<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/6.png" width="875">


Ayrıca grup oluşturulurken kullanılabilecek bazı parametreler var. **Bunlar;**

**g :**  Grup id belirleme. İstediğiniz numarayı başka bir gruba ait numara ile aynı olmayacak şekilde verebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/7.png)

Eğer aynı grup id ile başka bir grup eklemek istersek konsol bize "***bu id ye sahip başka bir grubun halihazırda bulunduğu***" uyarısını verecektir. Dolayısı ile grup ekleme işlemi başarısız olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/8.png)

**f :** işlemi hatalar olsa bile zorlayarak tamamlar. Genelde bu kullanım sorunlar çıkardığı için pek tavsiye edilmez.

Parametreler bunlar ile sınırlı değil ancak sizler `man groupadd` ve `groupadd --help` komutları yardımı ile diğer parametreleri de keşfedebilirsiniz.

Ayrıca oluşturduğunuz grupları silmek isterseniz konsola `groupdel grup_adı` şeklinde komut yazmanız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/9.png)


Kullanıcı Yönetimi
-

Sistemimize yeni bir kullanıcı eklemek için kullanabileceğimiz iki farklı komut var. Bunlar `adduser` ve `useradd` komutlarıdır.

### adduser

Yeni kullanıcı eklemek için komutumuzu `adduser kullanıcı_adı` şeklinde veriyoruz. Böylelikle oluşturduğumuz kullanıcıya ait ev dizini `home/kullanıcı_adı` şeklinde otomatik olarak oluşmuş oluyor.
Ben örnek olaması açısından "**hasan**" isimli bir kullanıcı hesabı eklemek üzere konsola `adduser hasan` komutunu veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/10.png)

Çıktıları inceleyecek olursak ev dizini otomatik olarak oluşturulmuş ve "**hasan**" isimli kullanıcı "**hasan**" grubuna dahil edilmiş.
Yeni eklemiş olduğumuz "**hasan**" isimli kullanıcı hesabını teyit etmek için; Sistemde kullanıcı hesapları ile ilgili bilgilerin tutulduğu <kbd>etc</kbd> dizini içerisindeki <kbd>passwd</kbd> dosyaya bakalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/11.png)

Dosyanın en alt satırına baktığımızda yeni eklemiş olduğumuz "**hasan**" isimli kullanıcı hesabının eklenmiş olduğunu görüyoruz.
Son olarak da <kbd>home</kbd> dizinine "**hasan**" kullanıcı hesabı için dosya oluşturulmuş mu buna bakalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/12.png)

Çıktıda görüldüğü gibi <kbd>home</kbd> dizininde oluşturmuş olduğum "**hasan**" isminde kullanıcı dosyası bulunuyor.


### useradd

Kullanıcı oluşturmak için bahsettiğimiz 2. komut olan `useradd` komutu kullanımı; `useradd -m kullanıcı_adı` şeklindedir. Burada komutumuz ile birlikte kullanmış olduğumuz `m` parametresi ile, oluşturduğumuz kullanıcıya ait ev dizininin otomatik oluşmasını sağladık. Birde son olarak kullanıcıya ait bir parola belirlemek üzere `passwd kullanıcı_adı` şeklinde komutumuzu vererek parolamızı oluşturuyoruz.

Parola oluşturma işleminde kullandığımız `passwd kullanıcı_adı` şeklindeki komut bütün hesaplar için şifre güncelleme işleminde de kullanılıyor. Ve bir bilgi daha; bu parola bilgileri <kbd>/etc</kbd> dizini altındaki <kbd>shadow</kbd> isimli dosyada şifreli şekilde tutuluyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/4.png)


Ben örnek olması açısından "**ali**" isimli bir kullanıcı hesabı oluşturmak üzere komutumu `useradd -m ali` şeklinde verdikten sonra "**ali**" isimli kullanıcı hesabı için şifre belirlemek üzere `passwd ali` komutunu kullandım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/13.png)

Görüldüğü gibi "**ali**" isimli kullanıcı hesabımız başarılı şekilde oluşturulmuş oldu. Şimdi <kbd>home</kbd> dizinini ve <kbd>passwd</kbd> dosyasına bakarak bu durumu teyit edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/14.png)

Çıktı sonuçlarında bir problem olmadığına göre konumuza, kullanıcı silme işlemi ile devam edebiliriz.

### Kullanıcı Silmek

Oluşturulan kullanıcı hesabını ev dizini ile birlikte silmek için `deluser --remove-home kullanıcı_adı` komutunu kullanmamız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/15.png)


Kullanıcı silme işlemlerini kontrol etmek adına <kbd>home</kbd> dizinini kontrol edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/16.png)

Çıktıda "**hasan**" ya da "**ali**" bulunmadığına göre kullanıcı silme işlemimiz başarılı şekilde tamamlanmış oldu.


### Gruplara Kullanıcı Ekleme-Çıkarma İşlemi

Yeni grup ve yeni kullanıcı hesabı nasıl oluşturulur bunları gördük.
Şimdi sıra geldi gruba yeni kullanıcı ekleme ve gruptan kullanıcı çıkarma işlemlerine. 

**Gruba Kullanıcı Eklemek**
Var olan bir gruba yeni bir kullanıcı eklemek için `gpasswd` komutunun `a` parametresini kullanarak, komutumuzu `gpasswd -a kullanıcı_adı ekleneceği_grup_adı` şeklinde kullanmamız yeterlidir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/17.png)

**Gruptan Kullanıcı Çıkarmak**

Eğer gruba dahil olan bir kullanıcıyı gruptan çıkarmak istersek de `gpasswd` komutunun `d` parametresini kullanarak, komutu `gpasswd -d kullanıcı_adı çıkarılacağı_grup_adı` şeklinde kullanmamız gerekmektedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/18.png)


### Aktif-Pasif Hesap Ayarlama

Varolan bir kullanıcı hesabını kilitlemek için `usermod -L kullanıcı_adı` komutunu kullanırız. Buradaki kilitlemekten kasıt kullanıcının sisteme giriş yapmasını engellemek için parolasının kilitlenmesidir. Parolayı devre dışı bırakmak için, sistem otomatik olarak şifreli parolanın önüne '**!**' işareti koyar ve kullanıcı hesabına giriş yapamaz. 

Bu durumu denemek için öncelikle kullanıcı hesaplarının parolalarının şifreli bir şekilde tutulduğu dosya olan <kbd>shadow</kbd> dosyasına bakalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/20.png)

"**burak**" isimli kullanıcının parolasını yukarıdaki şekildedir. Daha sonra karşılaştırma yaparken tekrar ele alacağız.

Konsol ekranına `usermod -L burak` yazarsam "**burak**" kullanıcısının hesabını kilitlemiş olurum. Bu kilitleme işlemini; kullanıcının hesaba girişte kullandığı parolanın önüne sistem tarafından otomatik olarak getirilen `!`(ünlem işareti) sayesinde gerçekleşmektedir.
Bu durumu teyit etmek için tekrar <kbd>shadow</kbd> dosyasına bakalım ve önceki hali ile sonraki halini kıyaslayarak görelim.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/19.png)
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/20.png)
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/21.png)

Gördüğünüz gibi hesabı kilitleme işleminde; hesaba girişte kullanılan parolanın önüne otomatik olarak gelen `!` (ünlem işareti) hesaba girmeyi engelleyerek hesabı kilitlemiş oluyor.

Pasif durumdaki hesabı aktif hale getirmek için ise `usermod -U kullanıcı_adı` komutu kullanılır. Aynı şekilde hesabın tekrar aktif hale getirilmesi de devre dışı bırakılmış olan kullanıcı parolasının  önündeki '**!**' işaretinin kaldırılmasıyla gerçekleşir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/22.png)

Eğer anlamadığınız bir nokta varsa bu durumu .gif ile anlattım, dikkatlice takip ederseniz gayet net anlaşılacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/23.gif)

### Kimlik Değişimi

Örneğin ben "**burak**" kullanıcısıyken, yapmak istediğim işlem ancak "**root**" kullanıcısının yetki alanındaysa ve ben "**root**" hesabının parolasını biliyorsam, "**root**" hesabının kimliğine bürünerek o işlemi gerçekleştirebilirim.

Geçiş işlemleri için `su` komutunu kullanıyoruz. Komutun kullanımı ile ilgili iki farklı durum var, bunlar:

- **su kullanıcı_adı :** diğer kullanıcı kimliğine geçiş yapar.
- **su - kullanıcı_adı :** diğer kullanıcı kimliğine geçiş yapar ve direk olarak geçiş yapılan kullanıcının kabuğunda çalışmaya başlar.

Bu durum en iyi örnekler ile açıklanabilir. İlk önce "**root**" kullanıcısıyken "**burak**" isimli kullanıcı hesabına giriş yapacağım daha sonra "**burak**" isimli kullanıcıdan "**root**" hesabına giriş işlemini gerçekleştireceğim. Adımları sırasıyla takip edin lütfen.

Hemen mevcut kullanıcı oturumunu daha önce öğrenmiş olduğumuz `whoami` komutu ile sorgulayalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/24.png)

"**root**" kullanıcısıyken "**burak**" hesabına geçiş yapmak için `su burak` komutunu kullanıyoruz. Ve `whoami` komutu ile geçiş durumunu kontrol ediyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/25.png)

Geçiş yaptığımız "**burak**" hesabından "**root**" hesabına dönmek için `exit` komutunu kullanmamız yeterli.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/26.png)

Şimdi `su - burak` komutu kullanarak geçiş yapacağımız kullanıcı kabuğunda çalışalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/27.png)

Görsellere dikkatlice bakacak olursanız; `su burak` komutunu kullanarak geçiş yaptığımızda `burak@taylan:/root$` olan konsol ismi `su - burak` komutunu kullandığımızda direk olarak geçiş yaptığımız hesabın kabuğunda çalışmaya başlayarak `burak@taylan:~$` şeklinde oldu. Yani `su - burak` komutu bize tıpkı o hesap oturumunu açmışız gibi tepki verdi.
Aşağıda çıktılara tekrar bakarsanız aradaki farkı daha net anlayabilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/28.png)

Fark etmiş olacaksınız ki başta geçiş yapabilmemiz için geçeceğimiz hesabın parolasını bilmemiz gerektiğini söylemiştim. Ancak "**burak**" hesabına yaptığımız geçişlerde parola sorulmadı. Bunun sebebi "**burak**" hesabının normal kullanıcı olmasıdır. Şimdi bu durumu birde "**burak**" hesabındayken "**root**" kullanıcısı için iki farklı kullanımda da deneyelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/29.png)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/30.png)

Gördüğünüz gibi yönetici hesabına erişmek için bizlerden parola bilgisi istendi. Bu durum da başta açıkladığımız yetkili hesaplara geçişlerde şifre sorma olayını açıklıyor.
