
Disk İşlemleri
=

Disk ile ilgili yapabileceğimiz bölümleme, formatlama, bölüm oluşturma, tarama, düzeltme ve benzeri diğer işlemleri gerçekleştirebileceğimiz çeşitli komutlar var. Bu bölümde bu komutları ve işlevsel yanlarını ele alacağız. 
Konumuza ilk olarak daha önce de kullanmış olduğumuz `fdisk` komutu ile başlayalım.


> **Komutlara geçmeden önce disk üzerinde yapacağımız işlemlerde son derece dikkatli olmamız gerektiğini aklınızdan çıkarmayın lütfen.**
> **Yapacağımız yanlışlar dosyalarımızın kalıcı olarak silinmesine ve daha farklı sorunlara yol açabilir.**

> **Eğer mümkünse özellikle bu konuda sanal makine üzerinden çalışmanız ve buradaki komutları denemeden önce sanal makine üzerinden sistem yedeğini(snapshot-clone) almanızı tavsiye ederim.**

**Ayrıca bir hatırlatma daha;** Disk üzerinde işlem yapabilmeniz için o diskin biz işlem yapıyorken sistem tarafından kullanılmıyor olması gerekiyor. Çünkü biz işlem yapmaya çalışıyorken disk sistem tarafından kullanıldığı için doğal olarak bizim disk üzerinde işlem yapmamız mümkün olmuyor. Bunun için eğer yapacağımız disk işlemleri Linux işletim sistemimizin kurulu olduğu disk alanı içinse, diskte kurulu olan sistemi kullanmadan işlemleri diskten bağımsız şekilde yapmamız gerekiyor. Bunu da kurulum aşamasında göstermiş olduğum Linux işletim sisteminin USB üzerinden live olarak çalıştırılması ile gerçekleştirebiliriz.

Yani bu kısımda öğreneceğimiz bilgileri Linux işletim sisteminin kurulu olduğu disk alanında uygulamak için, sistemi başlatmadan Linux Live seçeneği ile çalışın.

fdisk
-
İsminden de anlaşılacağı üzere komutumuz çeşitli disk işlemleri yapılmak üzere kullanılıyor.

Komutun aldığı temel parametreleri ele alarak konumuza devam edelim.

İlk olarak sistemimizde bulunan disk bölümlerini listeleyelim. Bunun için `l` parametresini kullanıyoruz.

**fdisk -l :** disk bölümlerini listeler.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/1.png)
Gördüğünüz gibi disk bölümleri listelenmiş oldu.

Komutumuzu `fdisk /dev/sda` şeklinde parametresiz olarak vermemiz durumunda konsol bizden komut bekler. Burada ki <kbd>/dev/sda</kbd> genel disk alanını temsil ediyor. Biz de disk üzerinden işlem yapacağımız için komutumuzu bu şekilde girdik.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/2.png)

Hazır komutumuzu parametresiz kullanmışken bizden komut bekleyen konsola girebileceğimiz parametreleri ele alalım.

**m :** yardım menüsünü açar. Burada `fdisk` komutu ile kullanabileceğimiz parametreler listelenir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/3.png)

Çıktıda görüldüğü üzere `fdisk` komutu disk konusunda çok fazla işleve sahip. Ancak biz sadece birkaç temel işlevini göreceğiz.

**p :** disk bölümleme tablosunu gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/4.png)

Çıktımız tıpkı komutu `fdisk -l` şeklinde kullandığımızdaki gibi oldu.

**l :** disk bölümlerini listeler.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/5.png)

**d :** bölüm silmek için kullanılır.

Ben `p` parametresi ile listelediğim disk bölüm tablosundan 3. bölümü yani <kbd>/dev/sda3</kbd> bölümünü silmek üzere `d` parametresini vererek **Partition number** kısmını 3 olarak belirttim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/6.png)

Çıktıda da görüldüğü gibi seçili alan silinmiş oldu. Artık diskte alan açıldığına göre yeni bir disk bölümü oluşturabiliriz.

**n :** yeni disk bölümü oluşturur.

`n` parametremiz ile diskte yeni bir alan oluşturabiliriz. `n` parametresini girince bize bölümleme tipinin **öncelikli**(**primary**) mi yoksa **genişletilmiş**(**extended**) mi olması gerektiğini soruyor. Aralarındaki farklar nedir diyecek olursanız:

**Primary Partition** denilen kısım; işletim sistemlerini kurduğumuz sabit disk bölümüdür. Bir sabit diskte maksimum 4 tane primary partition olabiliyor ve bunlardan bir tanesinin mutlaka aktif partition olması gerekiyor ki işletim sisteminiz boot işlemi sırasında çalıştırılabilsin.

**Extended Partition** ise aktif primary partition çıkarıldığında geriye kalan tüm sabit disk alanımızdır, bu alanın içine pasif primary partitionlar da dahildir.

Bu açıklama yeterli gelmemiş dolayısı ile anlamamış olabilirsiniz ancak kafa karışıklığına sebep olmamak için ayrıntıya girmiyorum. Merak eden arkadaşlar kısa bir araştırma sonucu istediklerinden de fazla bilgiye ulaşabilirler. Şimdi konumuza devam edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/7.png)

First sector alanını <kbd>enter</kbd> ile geçip, Last sector alanına  `+1G` olarak girdim ve 1GB boyutunda bir bölüm oluşturmuş olduk. Bunu teyit etmek için `p` parametresini kullandık.

Çıktıda <kbd>/dev/sda4</kbd> ayarladığımız gibi yani 1GB olarak gözüküyor.

**w :** değişiklikleri kaydedip çıkar.

Gerekli ayarlamaları ve işlemleri gerçekleştirdikten sonra `fdisk` aracını kaydederek kapatmak istersek `w` parametresini kullanmamız yeterli.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/8.png)

**q :** çıkış yapar

`q` parametresi direk olarak yapılan değişiklikleri kaydetmeden `fdisk` aracı konsolundan çıkış yapar.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/9.gif)


cfdisk
-
`fdisk` aracının görsel arayüze sahip versiyonudur. Açmak için `cfdisk` komutu yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/10.png)

Ayrıca benden bir tavsiye, `fdisk`'in kullanımı `cfdisk`'e oranla biraz zordur, dolayısıyla kolayca hata yapabilir ve istenmeyen durumlarla karşı karşıya kalabilirsiniz. Etkileşimli bir arayüzü olan `cfdisk`'in kullanımı daha kolay olduğundan hata yapma ihtimaliniz daha düşüktür.
Kullanımı oldukça kolay olduğundan detaylı anlatımda bulunmuyorum. Sadece disk işlemleri ile ilgili olduğu için bu kısımda değinmek istedim. Yani artık disk işlemlerinde böyle bir aracın varlığından haberdarsınız ve merak ettiğiniz takdirde çok kolay şekilde kendiniz keşfedebilirsiniz.(*Disk ile ilgili büyük sorunlara yol açmamak adına keşiflerinizi ana makine haricindeki sanal ortamlarda gerçekleştirmenizi şiddetle tavsiye ederim.*)

badblocks
-
`badblocks` kısaca, bir aygıtın bozuk bloklarını bulmak için tarama işlemi gerçekleştirme görevindedir.

Sırasıyla kullanım parametrelerine göz atalım:

**s :** taranan blokların numaralarını çıktı olarak vererek sürecin gelişimini gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/11.gif)

**v :** süreçle ilgili ayrıntılı bilgi verir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/12.gif)

**b :** bir blok boyutunu bayt cinsinden belirtebiliyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/13.png)

**c :** bir seferde sınanacak blok sayısı belirtilir ve bu sayı öntanımlı olarak tek seferde **16 blok** okuyacak şekildedir. Bu **sayının arttırılması bu işlemin verimini yani hatalı blokların bulunma ihtimalini artırır**, ancak arttırıldığı sayıya bağlı olarak bellek kullanımı da artacağı için bu sayının yüksek tutulması durumunda sistem "***tamponları ayırmada bellek yetersizliği***" hatasını verecek ve işlemi sonlandıracaktır. Tersi durumda yani bu **sayının çok düşük tutulması da hatalı blokların gizli kalmasına neden olarak yapılan işin verimini düşürecektir**. Yani dengeli kullanım çok önemlidir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/14.png)

**f :** dosya sisteminin zarar görüp sistemin çökebileceği durumlarda `badblocks` tarama yapmayı reddeder. Ancak siz çoğu durumda önerilmese de yinede tarama yapmaya zorlamak isterseniz `f` parametresini kullanabilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/15.png)

**p :** diskin kaç defa taranacağını belirtir öntanımlı olarak bu değer sıfırdır yani ekstra değer belirtilmezse disk yalnızca **1 kez** taranır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/16.png)


Bu parametreler dışında da başka parametreler mevcut. Konsola `man badblocks` yazarsanız diğer parametreler hakkında da kısaca bilgi sahibi olabilirsiniz.

Neticede `badblocks` komutu ve parametreleri yardımı ile hatalı blok tespiti yapabiliyoruz. Şimdi de bu hatalı blokları düzeltme kısmına gelelim.


fsck
-
Komutun işlevi diskteki hatalı blokları düzeltmeye çalışmaktır. Aslında bu işlem sistemimizi her açışımızda otomatik olarak gerçekleşir. Biz de şimdi örnek olması açısında USB belleği onarmayı deneyelim.

USB belleğimizin disk adını öğrenmek için sistemimizdeki diskleri `fdisk -l` komutu ile listeleyelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/17.png)

Çıktının alt kısımında yer alan <kbd>/dev/sdb1</kbd> USB belleğimizin diskteki adı. Şimdi belleğimizin adını öğrendiğimize göre onarma işlemini deneyebiliriz. Bunun için komut satırına `fsck -p /dev/sdb1` komutunu giriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/18.png)

Ve USB diskteki hatalı bloklar düzeltilerek işlemimiz başarılı bir şekilde gerçekleşmiş oldu.

df Komutu
-
`df` komutu bizlere disklerin; **dosya sistemini**, **boyutunu**, **doluluk oranını**, **bağlandığı yeri(mount)** gibi bilgileri kısa bir liste halinde verir. 

Eğer çıktılar daha okunaklı olsun yani bilgileri **MB**,**GB** cinsinden görelim istersek komutumuza ek olarak `h` parametresini de kullanırız. Komutumu `df -h` şeklinde yazıyorum. Ve gördüğünüz gibi çıktılar daha okunaklı yani **MB**,**GB** cinsinden bana sunulmuş oldu.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/19.png)

`df` komutu diskler hakkında genel bilgi edinmek için sık kullanılan bir komuttur. Ayrıca komutla birlikte kullanacağımız `m` parametresi çıktıları **MB** cinsinden verirken, `k` parametresi ile kullanımlarda çıktılar **KB** cinsinden olacaktır. Bunlar haricinde daha fazla detay almak için man sayfasına bakabilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/20.png)

gparted
-
Grafiksel basit bir arayüze sahip olmasından dolayı kullanımı en kolay disk aracı denilebilir. Grafiksel arayüze sahip olduğu için açıklamasını burada vermem resimler ile verimsiz ve yetersiz olur. Ancak hazırladığım eğitim kursunda anlatımı videolu şekilde gerçekleştirdim eğer isterseniz [kursumu satın alarak](https://www.udemy.com/kali-linux-ile-sifirdan-temel-linux-egitimi/?couponCode=GITHUB) hem bana destek olabilir, hem de bu kaynağın açıklamalı anlatımını edinmiş olursunuz. Kursumu satın almak istemezseniz de internetteki Türkçe-İngilizce kaynaklardan kullanımı hakkında bolca bilgiye ulaşabilirsiniz. Açmak için konsola `gparted` yazmanız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/21.png)

umount (Diski Ayırmak)
-

Diski ayırmak gibi bir başlık aklınızda diski bölümlemek gibi bir anlam ifade etmiş olabilir. Ancak buradaki ayırmadan kasıt diskin bağlantısının sistemden koparılması. Yani şöyle ki komutumuz daha önce muhtemelen kullanmış olduğunuz, diskin üzerine sağ tıklayarak "**Diski Çıkar**" işlemi ile aynı görevdedir. 

Aşağıdaki Linux ve Windows sistemlerinde grafiksel arayüz ile disk çıkarma işlemi kolay anımsamanız için görsel olarak verilmiştir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/21-1.png" width="875">

Hatta bu durumu hemen teyit etmek için USB diskimizi `umount` komutu ile sistemden ayıralım.

Bu işlem için öncelikle diskimiz hakkında genel bilgi sahibi olmak adına konsola `df -h` komutunu verelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/22.png)

USB diskimin adının <kbd>/dev/sdb1</kbd> ve diskin sisteme bağlandığı konumun da <kbd>/media/root/GPARTED-LIV</kbd> dizini olduğunu öğrenmiş oldum. Artık gerekli bilgileri öğrendiğimize göre diski sistemden çıkarmak için konsola `umount /dev/sdb1` şeklinde komut verebiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/23.png)

Diski çıkarma işlemi sonrasında bu işlemi teyit etmek için birde `df -h` komutunu kullandık. Sonuçta diskimiz sistemden bağını koparmış oldu.


mount (Diski Bağlamak)
-

Sistemden ayırdığımız diski tekrar bağlamak için `mount` komutunu kullanırız. Kullanım şekli `mount aygıt_adı bağlanacak_konum` şeklindedir.

Diski sisteme bağlamadan önce yapmamız gereken şey, diskin bağlanacağı konumu oluşturmaktır. Bunun için ben masaüstüne `mkdir USB` komutu ile <kbd>USB</kbd> adında bir klasör oluşturdum.

USB'nin bağlanabileceği hedef klasör oluştuğuna göre artık USB diskimizi buraya bağlayabiliriz. Bunun için konsola `mount /dev/sdb1 /Desktop/USB` komutunu veriyorum ve daha sonra diskin durumunu `df- h` komutu ile sorguluyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/24.png)

Görüldüğü gibi USB disk <kbd>Desktop/USB</kbd> konumuna bağlanmış bulunuyor.
