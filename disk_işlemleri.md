Disk İşlemleri
=

Disk ile ilgili yapabileceğimiz bölümleme, formatlama, yedekleme ve diğer işlemleri gerçekleştirebileceğimiz çeşitli komutlar var. Bu bölümde bu komutları ve işlevsel yanlarını ele alacağız. Konumuza ilk olarak daha önce de kullanmış olduğumuz `fdisk` komutu ile başlayalım.
> **Komutlara geçmeden önce disk üzerinde yapacağımız işlemlerde son derece dikkatli olmamız gerektiğini aklınızdan çıkarmayın lütfen.**

> **Yapacağımız yanlışlar dosyalarımızın kalıcı olarak silinmesine ve daha farklı sorunlara yol açabilir.**

gparted
-
Grafiksel basit bir arayüze sahip olmasından dolayı kullanımı en kolay disk aracı denilebilir. Grafiksel arayüze sahip olduğu için açıklamasını burada vermem, resim kullanmayacağım için verimsiz olur. Ancak internetteki Türkçe-İngilizce kaynaklarda kullanımı hakkında bolca bilgiye ulaşabilirsiniz. Açmak için konsola `gparted` yazmanız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/nOA9Oa.png)



fdisk
-
İsminden de anlaşılacağı üzere komutumuz çeşitli disk işlemleri yapılmak üzere kullanılıyor.

Komutun aldığı temel parametreleri ele alarak konumuza devam edelim.

İlk olarak sistemimizde bulunan disk bölümlerini listeleyelim. Bunun için l parametresini kullanıyoruz.

**fdisk -l :** disk bölümlerini listeler.

![enter image description here](https://i.hizliresim.com/vjgAjD.png)

Komutumuzu `fdisk /dev/sda` şeklinde parametresiz olarak vermemiz durumunda konsol bizden komut bekler.

![enter image description here](https://i.hizliresim.com/1JYaJb.png)

Hazır komutumuzu parametresiz kullanmışken bizden komut bekleyen konsola girebileceğimiz parametreleri ele alalım.

**m :** yardım menüsünü açar. Burada `fdisk` komutu ile kullanabileceğimiz parametreler listelenir.

![enter image description here](https://i.hizliresim.com/Lbp8bz.png)

Çıktıda görüldüğü üzere `fdisk` komutu disk konusunda çok fazla işleve sahip. Ancak biz sadece birkaç temel işlevini göreceğiz.

**p :** disk bölümleme tablosunu gösterir.

![enter image description here](https://i.hizliresim.com/rOgXOz.png)

Çıktımız tıpkı komutu `fdisk -l` şeklinde kullandığımızdaki gibi oldu.

**l :** disk bölümlerini listeler.

![enter image description here](https://i.hizliresim.com/76oW6r.png)

**d :** bölüm silmek için kullanılır.

Ben `p` parametresi ile listelediğim disk bölüm tablosundan 3. bölümü yani <kbd>/dev/sda3</kbd> bölümünü silmek üzere `d` parametresini vererek Partition number kısmını 3 olarak belirttim.

![enter image description here](https://i.hizliresim.com/Pl52lb.png)

Çıktıda da görüldüğü gibi seçili alan silinmiş oldu. Artık diskte alan açıldığına göre yeni bir disk bölümü oluşturabiliriz.

**n :** yeni disk bölümü oluşturur.

`n`parametremiz ile diskte yeni bir alan oluşturabiliriz.`n` parametresini girince bize bölümleme tipinin öncelikli(primary) mi yoksa genişletişmiş(extended) mi olması gerektiğini soruyor.Aralarındaki farklar nedir diyecek olursanız.

**Primary Partition** denilen kısım işletim sistemlerini kurduğumuz sabit disk bölümüdür. Bir sabit diskte maksimum 4 tane primary partition olabiliyor ve bunlardan bir tanesinin mutlaka aktif partition olması gerekiyor ki işletim sisteminiz boot işlemi sırasında çalıştırılabilsin.

**Extended Partition** ise aktif primary partition çıkarıldığında geriye kalan tüm sabit disk alanınızdır, bunun içine pasif primary partitionlar da dahildir.

Bu açıklama yeterli gelmemiş dolayısı ile anlamamış olabilirsiniz ancak kafa karışıklığına sebep olmamak için ayrıntıya girmiyorum. Merak eden arkadaşlar kısa bir araştırma sonucu istediklerinden de fazla bilgiye ulaşabilirler. Şimdi konumuza devam edelim.

![enter image description here](https://i.hizliresim.com/gOkvOQ.png)

First sector alanını <kbd>enter</kbd> ile geçip, Last sector alanına  `+1G` olarak girdim ve 1GB boyutunda bir bölüm oluşturmuş olduk. Bunu teyit etmek için `p` parametresini kullandık.

Çıktıda <kbd>/dev/sda4</kbd> ayarladığımız gibi yani 1GB olarak gözüküyor.

**w :** değişiklikleri kaydedip çıkar.

Gerekli ayarlamaları ve işlemleri gerçekleştirdikten sonra `fdisk` aracını kaydederek kapatmak istersek `w` parametresini kullanmamız yeterli.

![enter image description here](https://i.hizliresim.com/Z9Lj90.png)

**q :** çıkış yapar

`q` parametresi direk olarak yapılan değişiklikleri kaydetmeden `fdisk` aracı konsolundan çıkış yapar.

![enter image description here](https://i.hizliresim.com/Vrl8rR.gif)

cfdisk
-
`fdisk` aracının görsel arayüze sahip versiyonudur. Açmak için `cfdisk` komutu yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/Z9LRB0.png)

Ayrıca benden bir tavsiye, `fdisk`'in kullanımı `cfdisk`'e oranla biraz zordur, dolayısıyla kolayca hata yapabilir ve istenmeyen durumlarla karşı karşıya kalabilirsiniz. Etkileşimli bir arayüzü olan `cfdisk`'in kullanımı daha kolay olduğundan hata yapmak daha zordur. Hele birde Linux'unuzu Türkçe kullanıyorsanız, `cfdisk`'in de Türkçe arayüze sahip olmasından dolayı çok rahat şekilde işlemlerinizi gerçekleştirebilirsiniz.
Kullanımı oldukça kolay olduğundan detaylı anlatımda bulunmuyorum. Çok kolay şekile kendiniz keşfedebilirsiniz.

badblocks
-
`badblocks` kısaca, bir aygıtın bozuk bloklarını bulmak için tarama işlemi gerçekleştirme görevindedir.

Sırasıyla kullanım parametrelerine göz atalım:

**b :** blok uzunluğu bayt cinsinden gösterir.(aşağıdaki kullanımda yer alan `s` ve `v` parametreleri ileride açıklanmıştır)

![enter image description here](https://i.hizliresim.com/YgvayE.png)

**c :** bir seferde sınanacak blok sayısı belirtilir ve bu sayı öntanımlı olarak tek seferde 16 blok okuyacak şekildedir. Bu sayının arttırılması bu işlemin verimini yani hatalı blokların bulunma ihtimalini artırır ancak arttırıldığı sayıya bağlı olarak bellek kullanımı da artacağı için bu sayının yüksek tutulması durumunda sistem "tamponları ayırmada bellek yetersizliği" hatasını verecek ve işlemi sonlandıracaktır. Tersi durumda yani bu sayının çok düşük tutulması da hatalı blokların gizli kalmasına neden olarak yapılan işin verimini düşürecektir. Yani dengeli kullanım çok önemlidir.

![enter image description here](https://i.hizliresim.com/8Yl3OW.png)

**f :** dosya sisteminin zarar görüp sistemin çökebileceği durumlarda `badblocks` tarama yapmayı reddeder. Ancak siz çoğu durumda önerilmese de yinede tarama yapmaya zorlamak isterseniz `f` parametresini kullanabilirsiniz.

![enter image description here](https://i.hizliresim.com/D7lr1m.png)

**p :** diskin kaç defa taranacağını belirtir öntanımlı olarak bu değer sıfırdır yani ekstra değer belirtilmezse disk yalnızca 1 kez taranır.

![enter image description here](https://i.hizliresim.com/m2GabZ.png)

**s :** taranan blokların numaralarını çıktı olarak vererek sürecin gelişimini gösterir.

![enter image description here](https://i.hizliresim.com/NZ5dXL.gif)

**v :** süreçle ilgili ayrıntılı bilgi verir.

![enter image description here](https://i.hizliresim.com/azoavg.gif)

Bu parametreler dışında da başka parametreler mecvut konsola `man badblocks` yazarsanız zaten diğer parametreler hakkında da kısaca bilgi sahibi olabilirsiniz.

Neticede `badblocks` komutu ve parametreleri yardımı ile hatalı blok tespiti yapabiliyoruz. Şimdi de bu hatalı blokları düzeltme kısmına gelelim.


fsck
-
Komutun işlevi diskteki hatalı blokları düzeltmeye çalışmaktır. Aslında bu işlem sistemimizi her açışımızda otomatik olarak gerçekleşir. Biz de şimdi örnek olması açısında USB belleği onarmayı deneyelim.

USB belleğimizin disk adını öğrenmek için sistemimizdeki diskleri `fdisk -l` komutu ile listeleyelim.

![enter image description here](https://i.hizliresim.com/oOAlWo.png)

Çıktının alt kısımında yer alan <kbd>/dev/sdb1</kbd> USB belleğimizin diskteki adı. Şimdi belleğimizin adını öğrendiğimize göre onarma işlemini deneyebiliriz. Bunun için komut satırına `fsck -p /dev/sdb1` komutunu giriyoruz.

![enter image description here](https://i.hizliresim.com/lOkRGl.png)

Ve USB diskteki hatalı bloklar düzeltilerek işlemimiz başarılı bir şekilde gerçekleşmiş oldu.

df Komutu
-
`df` komutu bizlere disklerin; dosya sistemini, boyutunu, doluluk oranını, bağlandığı yeri(mount) gibi bilgileri kısa bir liste halinde verir. Komut ile birlikte `h` parametresini kullanırsak hakkındaki geniş bilgi içeriği bizlere sunulur. Çıktılar aşağıdaki gibidir.

![enter image description here](https://i.hizliresim.com/VrlRnq.png)

Diskler hakkında genel bilgi edinmek için sık kullanılan bir komuttur. Ayrıca komutla birlikte kullanacağımız `m` parametresi çıktıları MB cinsinden verirken, `k` parametresi ile kullanımlarda çıktılar KB cinsinden olacaktır. Bunlar haricinde daha fazla detay almak için man sayfasına bakabilirsiniz.

![enter image description here](https://i.hizliresim.com/nOAo61.png)


umount (Diski Ayırmak)
-

Diski ayırmak gibi bir başlık aklınızda diski bölümlemek gibi bir anlam ifade etmiş olabilir. Ancak burdaki ayırmadan kasıt diskin bağlantısının sistemden koparılması. Yani şöyleki komutumuz daha önce muhtemelen kullanmış olduğunuz, diskin üzerine sağ tıklayarak "Diski Çıkar" işlemi ile aynı görevdedir. Hatta bu durumu hemen teyit etmek için USB diskimizi `umount` komutu ile sistemden ayıralım.

Bu işlem için öncelikle diskimiz hakkında genel bilgi sahibi olmak adına konsola `df -h` komutunu verelim.

![enter image description here](https://i.hizliresim.com/VrlRnq.png)

USB diskimin adının <kbd>/dev/sdb1</kbd> ve diskin sisteme bağlandığı konumun da <kbd>/media/root/GPARTED-LIV</kbd> dizini olduğunu öğrenmiş oldum. Artık gerekli bilgileri öğrendiğimize göre diski sistemden çıkarmak için konsola `umount /dev/sdb1` şeklinde komut verebiliriz.

![enter image description here](https://i.hizliresim.com/vjg72O.png)

Diski çıkarma işlemi sonrasında bu işlemi teyit etmek için birde `df -h` komutunu kullandık. Sonuçta diskimiz sistemden bağını koparmış oldu.


mount (Diski Bağlamak)
-

Sistemden ayırdığımız diski tekrar bağlamak için `mount` komutunu kullanırız. Kullanım şekli `mount -t dosya_sistemi aygıt_adı bağlanacak_konum` şeklindedir.

Diski sisteme bağlamadan önce yapmamız gereken şey diskin bağlanacağı konumu oluşturmaktır. Bunun için ben masaüstüne `mkdir USB` komutu ile <kbd>USB</kbd> adında bir klasör oluşturdum.

USB nin açılacağı hedef klasör oluştuğuna göre artık USB diskimizi buraya bağlayabiliriz. Bunun için konsola `mount /dev/sdb1 /Desktop/USB` komutunu veriyorum ve daha sonra diskin durumunu `df- h` komutu ile sorguluyorum.

![enter image description here](https://i.hizliresim.com/1JY0W1.png)

Görüldüğü gibi USB disk <kbd>Desktop/USB</kbd> konumuna bağlanmış bulunuyor.
