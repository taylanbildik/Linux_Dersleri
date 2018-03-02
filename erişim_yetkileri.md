Erişim Yetkileri
=

Linux sistemlerinin yapısı gereği güvenlik açısından dosya ve dizinlere ait birçok kısıtlama ve yetkilendirme ayarları vardır. Bu yetkilerin hepsine sahip olan tek kullanıcı ise root kullanıcısıdır. Bu yüzden sistemi kullanırken eğer root kullanıcısı isek önümüzde uyarıcı bizi kısıtlayıcı bir mekanizma olmayacağından kimi durumlarda yapacağımız değişiklikler sorunlara yol açabilir. Bu yüzden root kullanıcısıyken yapılan işlemlere dikkat etmek gerekir.(Hatta kimi dağıtımlarda root kullanıcı hesabı varsayılan olarak engellenmiştir, ancak istenildiği takdirde ve gereken ayarlar yapıldığında kullanılabilir olur.)

Bu girizgahtan sonra her kullanıcının kendine verilen yetkiler çerçevesince hareket edebildiğini öğrenmiş olduk. Kullanıcıların dosya veya dizinler ile ilgili yapabileceği üç eylem bulunmaktadır. Bunlar;

**okuma(r):** Klasör listesini ve dosya içeriğini görüntüleme.

**yazma(w):** Dosya veya klasör üzerinde değişiklik yapma.

**çalıştırma(x):** Hedef dosyayı çalıştırma veya klasör içerisine erişme.

Aslında bu eylemler sizlere yabancı gelmemeli. Zira daha önce `chmod` komutu yardımı ile gerekli dosyanın iznini değiştirmiş ve dosyamızı çalıştırmayı başarmıştık.

Şimdi mevcut dosyalarımızın ne tür izinleri barındırdığına göz atalım. Bunun için komut satırına ayrıntılı liste yazdırmak üzere `ls -l` komutumuzu veriyoruz.

![enter image description here](https://i.hizliresim.com/nOYzaM.png)

Şimdi listemizi inceleyerek bulunan izinleri ele alalım.

<kbd>drwxr-xr-x</kbd> ve <kbd>-rw-r--r-- </kbd>şeklinde gördüğümüz kısımlar dosya izinlerini ifade ediyor.

Bazı ifadelerin başında olan <kbd>d</kbd> harfi o ifadenin dizin olduğunu belirtiyor.

Geriye kalan kısımları ayrı ayrı açıklayacak olursak <kbd>-</kbd> işareti ile ayrılan kısımlar o izine sahip kullanıcı grubunu temsil ediyor. Daha iyi anlamak için <kbd>d</kbd> harfi hariç <kbd>-</kbd> işaretini ayırdığımız zaman geri kalan harfleri üç adet üçlü grup haline getirelim;

<kbd>rwxr-xr-x</kbd>=<kbd>rwx</kbd> <kbd> r-x </kbd> <kbd>r-x</kbd>

<kbd>rw-r--r--</kbd>=<kbd>rw-</kbd> <kbd>r--</kbd> <kbd> r--</kbd>

Sırayla birinci harf kümesi dosya sahibinin izinlerini, ikinci harf kümesi grup izinleri ve son küme de diğer kullanıcıların izinlerini belirtir. 

![enter image description here](https://i.hizliresim.com/2JvLR2.png)

Buna göre yukarıdaki dosyalarda bulunan izinleri açıklayacak olursak;

**r :** okuma yetkisi

**w :** yazma yetkisi

**x :** çalıştırma yetkisi

**rwx :** dosyanın sahibi olan kullanıcı okuyabilir, yazabilir, çalıştırabilir.

**r-x :** dosya sahibi grup ile aynı gruba kullanıcılar okuyabilir, çalıştırabilir fakat yazamaz.

**r-x :** diğer kullanıcılar okuyabilir, çalıştırabilir fakat yazamaz.


Yetkilerin Değişimi(chmod)
-

Erişim yetkisini değiştirme işlemini ancak en yetkili kişi olan root yapabilir. Bu değişim işlemini daha önceden de kullandığımız `chmod` komutu sayesinde gerçekleştirilir.

`chmod` komutunun parametrelerini tanıyarak örnek verme işlemine geçelim.

**u :** Dosya-dizinin sahibi

**g :** Dosya-dizinin sahibi ile aynı grupta bulunan kullanıcılar

**o :** Diğer kullanıcılar

**a :** Herkese açık.

**= :** Yetki eşitleme

**+ :** Yetki ekleme

**- :** Yetki çıkarma

Genel parametreleri gördüğümüze göre gelin birkaç örnek yapalım.

Örnek göstermek adına anlatımı, içerisindeki dosyaların hiç birinde yetkinin bulunmadığı bir klasör üzerinden gerçekleştireceğim.

İlk olarak klasörde yer alan dosyaların herhangi bir yetkiye sahip olmadıklarını teyit etmek için ayrıntılı çıktı almak üzere `ls -l` komutunu kullandık.

![enter image description here](https://i.hizliresim.com/BLoJ1M.png)


Daha sonra klasörde yer alan tüm dosyalara `*` joker karakteri ile ulaştık ve `chmod +w *` komutumuzu kullanarak herkese açık olacak şekilde yazma(w) yetkisi verdik.

![enter image description here](https://i.hizliresim.com/jyz0aL.png)

Aynı grupta bulunan kullanıclar için yine konumumuzda bulunan tüm dosyaları `*` sayesinde kapsayacak şekilde `g+rx *` komutumuzu verdik.

![enter image description here](https://i.hizliresim.com/oOnGa9.png)

Gruptaki kullanıcılara(g), okuma-yazma-çalıştırma yetkisi (rwx), kullanıcıya(u) yazma yetkisi(r), diğer kullanıcılara ise yalnızca çalıştırma yetkisi(x) verdik.

![enter image description here](https://i.hizliresim.com/lOBJ8r.png)

Ve en son yine bulunduğumuz konumdaki tüm dosyaların yetkilerini kaldırdık.

![enter image description here](https://i.hizliresim.com/Vr2oGv.png)

Bu kullanımların dışında yetkilendirme işlemleri daha önceden de rastladığımız ve fark etmeden de olsa kullanmış olduğumuz sayısal şekilde de ifade edilebiliyor.

Bu durumu yetkilerin sayısal karşılığını vererek anlatmaya devam edelim.

<table class="table"> <caption>Yetki kalıplarının sayısal karşılıkları.</caption> <thead> <tr> <th>#</th> <th>dosyanın sahibi</th> <th>sahibiyle aynı gruptakiler</th> <th>diğer kullanıcılar</th> </tr></thead> <tbody> <tr> <th scope="row">r</th> <td>4</td><td>4</td><td>4</td></tr><tr> <th scope="row">w</th> <td>2</td><td>2</td><td>2</td></tr><tr> <th scope="row">x</th> <td>1</td><td>1</td><td>1</td></tr></tbody> </table>

Yetkilerin sayısal değerlerini kullanarak bir örnek yapalım.

Örneğin biz sadece dosyanın sahibine bütün yetkileri vermek istiyoruz diyelim. Bunun için ilk başta yetki kalıplarının numara karşılıklarını toplamalıyız. Yani bütün yetkileri vereceğimiz için <kbd>r=4 </kbd>+<kbd> w=2</kbd> +<kbd> x=1</kbd>=<kbd>toplam sayı 7</kbd> etti. Bizler de sadece dosya sahibine bu yetkiyi vermek istediğimizden normalde vereceğimiz `chmod rwx- -----` komutumuzu diğer kullanıcılara yetki vermek istemediğimiz için o alanları 0 bırakarak komutu `chmod 700 dosya` şeklinde veriyoruz. Böylelikle sadece dosyanın sahibi tüm yetkilere sahip olmuş oluyor.

![enter image description here](https://i.hizliresim.com/gOjNlR.png)

Daha net anlaşılması adına bir örnek daha yapalım. Şimdi de; dosyanın sahibine tüm yetkileri, ortak gruptakilere yalnızca yazma yetkisini, diğer kullanıcılara da sadece okuma yetkisini verelim.

Dosya sahibi kullanıcıya verilecek tüm yetkiler için `r(4)+w(2)+x(1)=7` sayısını kullanacağız.

Dosya sahibi ile ortak gruptaki kullanıcılar için vereceğimiz yazma yetkisi için yazma(w) karakterinin sayısal karşılığı olan `2` sayısını kullanacağız.

Diğer kullanıcılar için vereceğimiz yalnız okuma yetkisi için ise okuma(r) karakterinin sayısal karşılığı olan `4` sayısını kullanacağız.

![enter image description here](https://i.hizliresim.com/9mv6X3.png)

Çıktıdan da anlaşılacağı üzere sayısal karşılıklar istediğimiz yetkilendirme işlemini gerçekleştirdi.

Son bir ayrıntı daha verelim. Eğer verdiğimiz izinlerin o dizinle beraber alt klasörlerinde de etkili olmasını istersek komutumuzu `-r` parametresi ile birlikte kullanmalıyız.

![enter image description here](https://i.hizliresim.com/qG9gqD.png)

Eğer örneklere ve açıklamalara rağmen yine de anlamadıysanız ister konuyu tekrar okuyup kendiniz de alıştırmalar yapın isterseniz de bu konuyu şimdilik geçin ihtiyacınız olduğunda burada olduğunu bilerek tekrar göz atın. Seçim sizlere kalmış.

chattr
-
Hepimizin başına mutlaka gelen ve çok can sıkıcı bir durum var. Bu durum yanlışlıkla silinen dosyalar. Her nasıl ve neden olursa olsun eğer önemli gördüğümüz dosyalar varsa bir şekilde silinmeden onları koruma altına almamız mümkün. Bizlere bu koruma imkanını veren komut `chattr` komutudur. Öyle ki herhangi bir yanlış durumda dosyanın kaybolmasına engel olmak adına root kullanıcısının bile değişiklik yapmasına imkan tanımıyor.

Komutun kullanımı `chattr +i dosya_adı` şeklindedir. Hemen bir örnek yapalım.

![enter image description here](https://i.hizliresim.com/Md9zYQ.png)

Bu tür dosyaları listelemek için `lsattr` komutu kullanılıyor. Bizde dosyaların durumunu daha sonradan karşılaştırabilmek adına ilk olarak konsola `lsattr` komutunu verdik.

<kbd>test.txt </kbd> isimli dosyamızı `chattr +i test.txt` komutu ile koruma altına aldık.

Daha sonra bunu teyit etmek için `lsattr` komutunu kullandık.

Komutumuzun çıktısında görüldüğü gibi dosyamızın sol tarafında izinler kısmında `-i` şeklinde bir ifade var. İşte bu ifade dosyamızın artık düzenlenemeyecek olduğunun işaretidir. Dosyayı silmeye çalışarak bu durumu teyit ettik.

Eğer bu işlemi geri almak ve dosyamızı üzerinde değişiklikler yapılabilir hale getirmek istersek `chattr -i test.txt` komutumuzu kullanmamız yeterli olacaktır. Örneği aşağıda inceleyebilirsiniz.

![enter image description here](https://i.hizliresim.com/QV1kX3.png)

Çıktıda da görüldüğü gibi hedef dosyamızın solundaki `-i` işareti yok olmuş. Dolayısıyla <kbd>test.txt</kbd> isimli dosyamızın artık eski halinde dönerek düzenlenebilir forma girmiş olduğunu gördük. Ve dosyamızı silerek bu durumu teyit ettik.
