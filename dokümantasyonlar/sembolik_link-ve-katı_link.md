
Sembolik Link Ve Katı Link
=

Linux sistemlerinde; **sembolik** ve **katı** olmak üzere iki çeşit bağlantı(link) türü vardır. Bunları sırası ile açıklayacak olursak;

**Sembolik link** ile oluşturulmuş bağlantılar; dosyaların kısayolu görevini görür ve görevi yalnızca ilgili dosyaya yönlendirme yapmaktır.

**Katı link** ile oluşturulmuş bağlantılar ise dosyanın kopyasıdır. Orijinal dosya silinse bile katı link içeriği korumaya devam eder.

Bağlantı türlerinin kullanımlarına geçmeden önce ufak bir bilgi daha öğrenmeliyiz o da **inode** kavramı.

inode(düğüm)
-
**Inode(düğüm)**, dosyanın sahibi, oluşturulma tarihi, boyutu, tipi, erişim hakları, en son erişim tarihi ve en son değişikliklerin yapıldığı tarih gibi birçok meta verileri içeren yapıdır. Yani biz herhangi bir dosya oluşturduğumuzda disk üzerinde **1 inode** yer kaplamaktadır. Bununla ilgili olarak **inode** tablosunu görmek için konsola `df -i` komutumuzu verelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/1.png)

Hemen çıktıları ele alarak açıklamamıza devam edelim.

Örneğin <kbd>/dev/sda1</kbd> disk alanını ele alırsak toplam **6348800 adet inode numarası** alabilir **yani sınırı bu kadar**.

Kullanılan **391980 inode** numarasından toplam kullanılabilir olanı çıkarırsak **(6348800-391980=5956820)** geriye kullanılabilir **5956820 inode** numarası kalmış oluyor.

Bunun anlamı **her bir dosya 1 inode yer kapladığı için**<kbd>/dev/sda1</kbd> dosya sisteminde **5956820 adet daha dosya oluşturulabilecek alan mevcut**.

Her bir **inode(düğüm)** numarasının benzersiz olduğunu söylemiştik. Bu durumu teyit etmek için bulunduğumuz konumdaki dosyaların **inode** numaralarını görebilmek adına komut satırımıza `ls -li` komutumuzu veriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/2.png)

Çıktıda yer alan soldaki numaralar, ilgili dosyanın **inode** numarasını temsil ediyor.

Konumuza sembolik link oluşturma ile devam edelim.

Sembolik Link
-

Sembolik link oluşturmak için `ln -s` komutu kullanılır. Komutun kullanım örneği ile devam edelim.

Örnek bir dosya oluşturarak, sembolik link komutu yardımı ile dosyamıza kısayol oluşturalım.

<kbd>Music</kbd>  dosya konumundayken `touch` komutu yardımı ile "**klasik**" isimli bir dosya oluşturduk.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/3.png)

Oluşturduğumuz "**klasik**" isimli dosyanın kısayolunu, komutumuzu `ln -s dosya_adı kısayol_adı` şeklinde kullanarak oluşturduk.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/4.png)

Son olarak `ls -i` komutunu vererek orijinal dosyanın ve sembolik link yardımı ile oluşturulan kısayol dosyasının **inode** değerlerini karşılaştırdık. Çıktıda da görüldüğü üzere değerler farklı olarak karşımıza çıkmış oldu.

Ayrıca dosyaları `file` isimli bir komut yardımı ile inceleyerek de bilgi alabiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/5.png)

**Sembolik link** komutu ile oluşturduğumuz dosyanın **kısayol** olduğunu çıktıda görebiliyoruz. Ancak son olarak kısayol dosyamızın çalışma durumunu da test edelim.

Bunun için ilk başta dosyamızın içeriğini okuyalım daha sonra orijinal dosyamıza yazı ekleyelim ve kısayoldaki değişimleri gözlemleyelim.

 Orijinal dosyamın içerisine "***Dosya İçeriğinin İlk Sayfası***" şeklinde bir yazı ekledim. Biz orijinal dosyada yer alan bu yazıyı silip yeni bir ifade yazdıktan sonra kısayoldaki değişimi gözlemleyeceğiz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/6.png)

Eğer orijinal dosyayı silersek kısayol dosyası da açılmayacak ve bizlere hata mesajı bildirilecektir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/7.png)

Görüldüğü gibi kısayol dosyası orijinal kaynağı silindiği için okunamadı.

Ayrıca ilk `ls -li` çıktısında kısayol dosyasının sol tarafında yer alan <kbd>lrwxrwxrwx</kbd> ifadesindeki `l` harfi, dosyanın kısayol olduğunu ve `->` işareti ise hangi dosyanın kısayolu olduğunu işaret ediyor.


Katı Link
-
Sıra geldi katı link bağlantısının kullanımına. Katı link bağlantısı için `ln` komutu kullanılıyor. Örnek üzerinden ilerleyelim.

Örnek olması açısından <kbd>Music</kbd> klasörü altında "**caz**" adında bir dosya oluşturuyorum. Daha sonra oluşturduğum "**caz**" isimli klasörün katı linkini `ln caz caz_kati` komutu ile oluşturuyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/8.png)

Çıktıda dikkat edilmesi gereken nokta orijinal "**caz**" dosyası ile katı bağlantı "**caz**" dosyasının inode değerlerinin aynı olmasıdır. Bu da demek oluyor ki; **her iki dosya da her yönüyle birbirlerinin aynı** durumda.

Ayrıca orijinal ya da katı link ile oluşturulmuş dosyaların birinde yapacağımız değişiklik tıpkı sembolik linkte olduğu gibi diğer dosyada da geçerli olacaktır. Yani bu orijinal dosya ile katı link dosyası halihazırda bağlantılı dosyalar.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/9.png)

Hemen daha önce yaptığımız gibi `file` komutu ile orijinal dosya ve link ile oluşturulmuş dosyalarımızı karşılaştıralım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/10.png)

Komutun sonucunda her ikisininde ayrı ayrı dosyalar olduğunu görmüş olduk. Bu da demek oluyor ki biz eğer orijinal dosyayı silersek sembolik linkte olduğu gibi katı link ile oluşturulmuş dosya kullanılmaz hale gelmeyecektir. Bunu da hemen test edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/11.png)

Gördüğünüz gibi orijinal dosyayı silmeme rağmen katı link ile oluşturmuş olduğum dosya hala okunabilir durumda.
