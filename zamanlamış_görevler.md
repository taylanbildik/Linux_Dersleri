Zamanlanmış Görevler
=

Sistemde yapılması gereken rutin işlerin zamanı geldiğinde otomatik olarak yapılması işine zamanlanmış görevler deniyor. Bu rutin işlere örnek söylemek gerekirse; benim her pazartesi sistemi yedeklemem gerekiyor diyelim, bunu her pazartesi elle yapmak yerine bu işi zamanlanmış görevlere ekleyerek otomatiğe bağlayabilirim.

cron
-
Rutin tekrarları sağlayan zamanlanmış görevleri yerine getirmemizi sağlayan servisimizin adı `cron`'dur.

Anlatıma `cron` servisinin çalışma durumunu kontrol ederek başlayalım. Bunun için konsola `service cron status` komutunu verelim.

![enter image description here](https://i.hizliresim.com/vjgoRp.png)


Cron servisimizin çalıştığını teyit etmiş olduk. Cron servisinin yapılandırma dosyası <kbd>/etc/crontab</kbd> konumunda yer alıyor göz atmak için konsola `cat /etc/crontab` komutunu verebiliriz.

![enter image description here](https://i.hizliresim.com/6JZ62E.png)

Şimdi de düzenleme yapmak adına konsola `crontab -e` komutunu verelim. Burada yer alan `-e` parametresi "edit" kelimesini yani "düzenleme" ifadesini temsil ediyor.

![enter image description here](https://i.hizliresim.com/y0PnM9.png)

Konsol bize düzenleme yaparken hangi aracı kullanmak istediğimizi soruyor. Ben nano aracını seçiyorum yani konsola 2 rakamını giriyorum.

![enter image description here](https://i.hizliresim.com/W7VrnP.png)

Çıktıda bize bir örnek kullanım gösterilmiş biz bu kullanımı ele alarak servisin kullanım şeklini görelim.

![enter image description here](https://i.hizliresim.com/3E9RD5.png)

Yukarıdaki şema yeterince açıklayıcı olmadıysa endişelenmenize gerek yok. Örnekler üzerinden yapacağımız anlatım ile **cron** servisimizin kullanımını rahat şekilde anlamış olacağınıza inanıyorum.

Zamanlanmış görevleri yerine getiren servis **cron** ve bu servisin yerine getirdiği işlere de **cron job** deniliyor. Bu tanımın çok da önemi yok ancak bunu böyle bilseniz daha iyi olur. Bizler de kendi zamanlanmış görevlerimizi (cron jobs) atamak istersek `crontab -e` komutu ile açtığımız dosyanın son satırına yapmak istediğimiz işi ve tam tarih düzenini girmemiz gerekiyor. Bu görevleri nasıl oluşturacağımızı konunun devamında örnekler üzerinden öğreniyor olacağız.

**#Örnekler**

Kullanımın anlaşılması amacıyla örnekleri olabildiğince basit tuttum.

O anın tarihi detaylarını <kbd>zamanlar.txt</kbd> isimli klasöre kaydetmek için `echo date zamanlar.txt` komutunu kullanacağım.

Bütün yıl boyunca her dakikanın çıktılarını kaydetmesini istersem aşağıdaki şekilde bir kullanım işimizi görür.

![enter image description here](https://i.hizliresim.com/Z9L1kz.png)
<img src="https://i.hizliresim.com/RnJ6YZ.png" width="875">

Yıldız işareti (<kbd>*</kbd>) olan kısımlar hepsini kapsamaktadır yani haftanın bütün günleri, ayın bütün günleri ve saatin bütün dakikaları.. gibi.

Komutun düzenli hali `* * * * * echo date >> ~/Desktop/zamanlar.txt` şeklindedir.

Bir süre geçtikten sonra masaüstünde(Desktop dizininde) yer alan <kbd>zamanlar.txt</kbd> dosyasını `cat zamanlar.txt` komutu ile kontrol ediyorum.

![enter image description here](https://i.hizliresim.com/p6RYgJ.png)

Görev istediğimiz şekilde yani her dakikada yazılacak şekilde otomatik olarak gerçekleşmiş oldu.

Şimdi spesifik bir zaman belirleyerek görevin yerine getirilme durumunu ele alalım.

Her gün 10:25 da otomatik olarak <kbd>test.txt</kbd> isimli belgeye "test yazısı" yazdırmak için kalıbı **crontab** dosyasına aşağıdaki şekilde yazmalıyız.(Ayrıca başta hangi ifadenin neyin karşılığı olduğunu belirttiğim için tekrar tekrar üzerlerine yazmıyorum. Eğer şaşırırsanız yukarıdaki kısımları tekrar gözden geçirebilirsiniz.)

    15 14 * * * echo "test yazısı" >> ~/Desktop/test.txt

![](https://i.hizliresim.com/azoB57.png)


`ls -l` komutu ile de dosyamızın üretildiği tarihi sorguladık ve çıktıdan da anladığımız üzere verdiğimiz görev zamanında yerine getirilmiş.

![enter image description here](https://i.hizliresim.com/Ygv5BA.png)


Eğer belirli bir saat-tarih arasında belirli kere tekrar eden görev atamak istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

Örneğin 5 dk bir çalışmasını istediğiniz komutu aşağıdaki şekilde **crontab** dosyasına ekleyebilirsiniz.

    */5 * * * * komut

Her saatin ilk 5 dk 2 kere çalışmasını istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

    0-5/2 * * * * komut

Örneğin **cron job** yani verdiğimiz görev komutu günün ilk 5 saatinde 10 defa çalışmasını istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

    * 0-5/10 * * * komut

Örneğin cuma günleri 12:30 ve 17 arasında 5 kez çalışsın istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

    30,0 12-17/5 * * 5 komut

Elbette örnekleri çoğaltmak mümkün ancak daha fazlası gereksiz olacaktır. Yani bu konu sizlerin de biraz kurcaladıktan sonra anlayacağı kolay bir konudur.

Eğer belirlenen zamanlanmış görevleri listelemek istersek `crontab -l` komutunu kullanabiliriz. Buradaki `-l` parametresi list kelimesini yani listeleme işlevini temsil ediyor.

![enter image description here](https://i.hizliresim.com/4aLRl0.png)

Şayet oluşturduğumuz tüm zamanlanmış görevleri silmek istersek `crontab -r` komutunu kullanmalıyız. Buradaki `-r` parametresi "remove" kelimesini yani "silme" işlevini temsil ediyor.

![enter image description here](https://i.hizliresim.com/oOAz7o.png)
