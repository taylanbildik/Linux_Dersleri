Yardım Almak
===========

Bu kısımda bir nevi öğrenmeyi öğreneceğiz. Bunu da Linux sistemlerinin sahip olduğu çok geniş çaplı yardım sistemini kullanarak başaracağız. Linux sistemlerinde yer alan bu geniş çaplı yardım mekanizmasının bulunmasının birçok nedeni var. Ancak genel olarak, çok fazla komutun çok fazla argüman alması veya her bir programın kendine has kurulum ve kullanım komutlarının olmasından kaynaklanıyor. Linux'un kendi sahip olduğu yardım sayfalarının dışında da birçok yardım alma konuları mevcut. Zaten zamanla göreceksiniz ki Linux'a kurmak için edindiğimiz hemen her araç veya program kurulum dosyalarının beraberinde kurulum ve kullanımla ilgili açıklamayı içeren belge(ler) ile geliyor.

Bu bağlamda Linux sistemlerinin temel doküman-bilgi kaynaklarını 3 türe ayırabiliriz.

Bunlar; **bilgi sayfaları(info)**, **kılavuz sayfaları(manuel)** ve **uygulamalar ile gelen <kbd>/usr/share/doc</kbd> konumunda bulunan dokümanlar**dır. Bizler de zaman zaman unuttuğumuz için veya bilmediğimizden dolayı bu yardım sayfalarına ve dokümanlarına danışacağız. Bu girizgahtan sonra artık yavaş yavaş yardım alma komutlarımıza geçelim.

help Komutu
------------------
Hiç ingilizce bilmiyorum diyen birinin bile "**help**" ifadesinin "**yardım**" anlamında olduğunu bildiğini düşünüyorum. Yani bu sebepten <code>help</code> komutu akılda kalması en kolay komutlardandır. Komutun kullanımına geçecek olursak örneğin daha önce kullandığımız yetki verme işini gören <code>chmod</code> komutu ile ilgili yardım(bilgi) almak isteyelim. Bunun için komut satırına <code>chmod --help</code> şeklinde komutumuzu yazıyoruz. Ve aşağıda görüldüğü gibi gerekli bilgileri içeren yardım sayfası bizi karşılıyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/1.png)

Bu kullanımın dışında <code>help</code> komutunun birde <code>help komut</code> şeklinde kullanımı var ancak bu kullanımda her zaman komut hakkında yardım bilgisi bulunmayabiliyor o yüzden ilk öğrendiğimiz yol önceliğiniz olsun. Örneğin <code>help chmod</code> yazdığımızda komut satırı yardım bilgisi bulunmadığını belirtti.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/2.png)

Peki neden ikinci kullanım yöntemi var diyecek olursanız. Bazı istisnai komutlarda `komut --help` şeklinde yazıldığında komutun kullanım şekli nedeniyle çıktı alınamıyor. Buna bir örnek verelim ancak örnekte kullancağım komutu ileride ayrıntılı ele alacağım şimdilik sadece konumuzla ilgili olan kısımına odaklanın lütfen.

Örneğin; `echo` komutu kendisinden sonra yazılan ifadeyi ekrana basıyor. Yani ben `echo Merhaba` yazarsam konsol ekranı da çıktı olarak "Merhaba" şeklinde bir ifade basıyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/3.png)

Eğer ben `help` komutu ile `echo` komutu hakkında yardım bilgisine ulaşmak istersem; komutumu `echo --help` şeklinde kullandığımda ekrana yardım bilgisi değil yalnızca "--help" ifadesi basılıyor. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/4.png)

İşte bu gibi durumlarda `help` komutunu ikinci kullanım şekliyle kullanmaktan başka çare kalmıyor. Eğer komutumu `help echo` şeklinde yazarsam çıktılara `echo` komutunun yardım bilgileri olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/5.png)

Yani sonuç olarak istisnai komutların haricinde `help` komutu `komut --help` şeklinde kullanılıyorken, bazı özel durum oluşturan komutlar mecburen `help komut` yapısıyla kullanılmak durumunda kalıyor. Bu istisnaları kesinlikle bilmek zorunda değilsiniz. Sadece `help` komutu ile yardım bilgisine ulaşmak istediğinizde ilk olarak `komut --help` yapısını kullanın eğer yardım bilgisine bir şekilde ulaşamazsanız bu sefer komutunuzu `help komut` şeklinde kullanın.

man(Manuel Sayfası) Komutu
-----------------------------------------
man(manuel) sayfaları temel yardım alma dosyalarıdır. Ve kılavuz sayfaları olarak da bilinir.

<code>man</code> komutunu kullanmak için komut satırına, hakkında bilgi edinip yardım almak istediğimiz komutu <code>man komut</code> şeklinde  giriyoruz. Örneğin ben <code>chmod</code> hakkındaki bilgilere ulaşmak istiyorsam konsola <code>man chmod</code> şeklinde yazarak gerekli bilgilere ulaşabilirim. Komutun çıktısında göreceğiniz gibi uzunca bir açıklama sizleri bekliyor. Açılan bu kılavuz sayfasında yön tuşlarını ve <kbd>space</kbd> tuşunu kullanarak gezinebilirsiniz. Ayrıca <code> man</code> sayfasının kısayollarını ve kullanımını görmek isterseniz <code> man</code>  sayfası açıkken <kbd>h</kbd> tuşuna basarsanız sizi <code> man</code> klavuzunun yardım sayfası karşılar, orada kullanımı ile ilgili detaylı bilgi yardımı mevcuttur. Kılavuz sayfasını kapatmak isterseniz ise sadece <kbd>q</kbd>  tuşuna basmanız yeterli.

Şimdi biraz da man sayfasının iç yapısına değinecek olursak:

- **NAME:** Komutun ismi ve açıklama kısmı.
- **SYNOPSIS:** Komutun kullanım açıklaması(nasıl kullanılacağı).
- **DESCRIPTION:** Komutun yaptığı iş(fonksiyonu) hakkında açıklama.
- **EXAMPLES:** Komutun kullanımı ile ilgili örnekler ve açıklamalar.
- **SEE ALSO:** Diğer ilgili başlıklar.

<code>man</code> kılavuzunun komutlarla ilgili tuttuğu bilgi sayfaları <kbd>/usr/share/man</kbd> konumu altında tutulur. 
Yani konsol ekranına basılan yardım(klavuz) bilgileri bu konum içerisinde yer alan dosyalardan alınarak basılır. `man` klavuz sayflarının kaynağı burasıdır ve bu dosyalar belirli bir düzene göre sıralanmıştır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/6.png)

İlgili dizin içerisindeyken bakalım örneğin; <code>man</code> sayfasının yapılanması nasıl oluyor yani <kbd>/usr/share/man</kbd> konumunda yer alan dil dosyaları dışındaki diğer dosyalar olan <kbd>man1,man2,man3,man4,man5,man6,man7,man8</kbd> dosyaları ne ifade ediyor kısaca ona değinelim.

- **man1:** genel kullanıcı programlarını ifade eder.
- **man2:** sistem programlarını ifade eder.
- **man3:** kütüphane fonksiyonlarını(C programlama ile ilgili) ifade eder.
- **man4:** özel dosyaları ifade eder.
- **man5:** dosya biçimlerini ifade eder.
- **man6:** ekran koruyucuları ve oyunları ifade eder.
- **man7:** diğer katagorilere girmeyen çeşitli komutları ifade eder.
- **man8:**  sistem yönetimini ve bakımını ifade eder.


whatis Komutu
---------------------
Hazır yeri gelmişken yukarıda gördüğümüz <code>man</code> sayfası yapılanmasıyla ilgili olarak <code>whatis</code> komutundan da söz edelim. Bu komut sayesinde hangi komutun hangi <code>man</code> sayfasında olduğunu öğrenebiliyoruz. Daha iyi anlamak için örnekler yapalım. Komutun kullanımı <code>whatis komut</code> şeklindedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/7.png)

<code>whatis</code> komutuna, <code>chmod</code> komutunun <code>man</code> sayfasındaki açıklamalarının yukarıdaki açıkladığımız (man1,man2..3..4..5..6..7..8) dosyalarından hangi dosyada olduğunu sorduk. Konsol yanıt olarak hem 1 hemde 2 de bulunduğunu bizlere bildirdi. Siz bunu istediğiniz komut için sorgulayabilirsiniz hatta <code>whatis</code> komutu için bile sorgulayabiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/8.png)

Bu çıktıların doğruluğu `man` sayfalarının tutulduğu <kbd>/usr/share/man</kbd> dizinine gidilerek kontrol edilebilir. Örneğin ben <kbd>/usr/share/man/man1</kbd> konumuna gittiğimde <code>whatis</code> komutunun yardım sayfalarının burada olduğunu görebiliyorum. Sizler de çıktıları bu şekilde teyit edebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/9.png)

<code>whatis</code> komutunun kullanımı bu kadar ile sınırlı değil ancak ben geri kalanını burada vermiyorum. Dileyen arkadaşlar <code>man</code> komutu yardımı ile gerekli bilgilere ulaşabilirler.

apropos Komutu
-----------------------

Yardım alma komutlarını noktalamadan önce; Sizlere <code>man</code> sayfasındayken <kbd>h</kbd> tuşuna basarsak <code>man</code> sayfasının kullanımı hakkında detaylı bilgiye ulaşabileceğimizi belirtmiştim. O sayfaya bakarsanız <code>man -k</code> şeklinde parametre alan komutun işlevinin, sorguladığımız komutun geçtiği uygulamaları listelemek olduğunu görebilirsiniz. Yani örnek vermek gerekirse komut satırına <code>man -k chmod</code> yazdığımızda çıktısı aşağıdaki şekilde olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/10.png)

Gördüğünüz gibi belirtmiş olduğumuz `chmod` komutunun geçtiği uygulamalar listelenmiş oldu. İşte <code>apropos</code> komutu da tam olarak bu işin aynını yapıyor. Örneğin Terminale <code>apropos chmod</code> komutunu girersek çıktısı aşağıdaki şekilde olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/11.png)

Çıktılar karşlaştırıldığında görülüyor ki aralarında bir fark yok.

Komutun kullanım amacını daha iyi anlamak için örneğin komutun ismini tam olarak hatırlamıyorsunz ancak işlevini hatırlıyorsunuz diyelim işte bu noktada `apropos` komutu sayesinde man klavuz sayfaları içinde anahtar kelime araştırması yaparak ilgili komuta ulaşabilirsiniz. Yani aslında biz apropos komutuyla sadece man kılavuz sayfalarında detaylı bir araştırma yapmış oluyoruz.

**Örneğin**

Bir komut vardı.. silme işlevindeydi.. neydi.. neydi diye düşündüğünüzde; konsola `apropos sil` şeklinde yazarsak, karşımıza man klavuz sayfalarında aradığımız anahtar kelimeye uygun gelen ifadeler listelenir. Komutumuzun işlevini silmek olduğunu bildiğimizden "sil" ifadesini `apropos` komutu ile sorgulayarak man sayfalarında "sil" ifadesinin geçtiği kısımları listelemiş olduk. Yani man sayfalarında yer alan açıklamalar sayesinde hatırlayamadığımız kısımları buradaki çıktılara bakarak hatırlayabiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/12.png" width="875" >

Bir örnek daha yapalım. Mesela ben komutun bir kısmını hatırlıyorum diyelim. İşte bu gibi bir durumda da yine `apropos` komutumu ya da `man -k` komutumu kullanarak tamamını hatırlayamadığım ilgili komutu bulabilirim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/13.png" width="875" >

Yani `apropos` ve `man -k` komutları man klavuz sayfaları içerisinde bizim sorguladığımız her türlü ifadeyi arayarak bulup getiriyor.
Ayrıca kılavuz(man/manuel) sayfa içeriklerinin büyük çoğunluğunun İngilizce olduğunu da ele alarak mümkün oldukça aramalarınızı İngilizce üzerinden yaparsanız sonuca ulaşmanız daha kolay olacaktır. 

Bu konudaki noktayı da man kılavuz sayfaları güncelleme işlemi ile yapalım. Nedir bu işlem diyecek olursanız. Aradığımız yardımı man sayfasında bulamıyorsak güncelleyerek tekrar sorgulayabiliriz. Ara ara güncellemek yeni bilgilere de ulaşmamıza olanak sağlar. Güncelleme için konsola <code>mandb</code> komutunu girmemiz yeterli olacaktır. Komut satırı, güncelleme işleminden sonra yapılan değişiklikleri de son satırda bizlere bildirir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/14.png)

Yardım alma komutlarını bilmek bir zorunluluk değil ihtiyaç meselesidir. Zaten zamanla bu komutlara ve kullanımlarına alışacaksınız. Açıklamaların İngilizce olmasını da dert etmeyin, ne yaparsak yapalım eninde sonunda bu işlerin yolu İngilizce'den geçiyor artık bu duruma alışmamız gerek. Bu noktada kendimizi biraz zorlamalı ve kesinlikle pes etmemeliyiz. Kendimizi biraz zorlayarak çaba harcayarak öğrenirsek, öğrenilenler kesinlikle daha da kalıcı oluyor. Sakın pes etmeyin çok iyi gidiyoruz...
