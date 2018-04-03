Zamanlanmış Görevler
=

Sistemde yapılması gereken rutin işlerin zamanı geldiğinde otomatik olarak yapılması işine zamanlanmış görevler deniyor. Bu rutin işlere örnek söylemek gerekirse; benim her pazartesi sistemi yedeklemem gerekiyor diyelim, bunu her pazartesi elle yapmak yerine bu işi zamanlanmış görevlere ekleyerek otomatiğe bağlayabilirim. İşte zamanlanmış görevler bu ve bunun gibi durumlarda sıkça kullanılıyor.

cron
-
Rutin tekrarları sağlayan zamanlanmış görevleri yerine getirmemizi sağlayan servisimizin adı `cron`'dur.

Anlatıma `cron` servisinin çalışma durumunu kontrol ederek başlayalım. Bunun için konsola `service cron status` komutunu verelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/1.png" width="875">


Cron servisimizin çalıştığını teyit etmiş olduk. Cron servisinin yapılandırma dosyası <kbd>/etc/crontab</kbd> konumunda yer alıyor göz atmak için konsola `cat /etc/crontab` komutunu verebiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/2.png" width="875">

Şimdi de düzenleme yapmak adına konsola `crontab -e` komutunu verelim. Burada yer alan `-e` parametresi "edit" kelimesini yani "düzenleme" ifadesini temsil ediyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/3.png" width="875">

Konsol bize düzenleme yaparken hangi aracı kullanmak istediğimizi soruyor. Ben nano aracını seçiyorum yani konsola 2 rakamını giriyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/4.png" width="875">

Çıktıda bize bir örnek kullanım gösterilmiş biz bu kullanımı ele alarak servisin kullanım şeklini görelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/5.png" width="875">

Yukarıdaki şema yeterince açıklayıcı olmadıysa endişelenmenize gerek yok. Örnekler üzerinden yapacağımız anlatım ile **cron** servisimizin kullanımını rahat şekilde anlamış olacağınıza inanıyorum.

Zamanlanmış görevleri yerine getiren servis **cron** ve bu servisin yerine getirdiği işlere de **cron job** deniliyor. Bu tanımın çok da önemi yok ancak bunu böyle bilseniz daha iyi olur. Bizler de kendi zamanlanmış görevlerimizi (cron jobs) atamak istersek `crontab -e` komutu ile açtığımız dosyanın son satırına yapmak istediğimiz işi ve tam tarih düzenini girmemiz gerekiyor. Bu görevleri nasıl oluşturacağımızı konunun devamında örnekler üzerinden öğreniyor olacağız.

# *Örnekler*

Kullanımın anlaşılması amacıyla örnekleri olabildiğince basit tuttum.

Sizlere vereceğim örnekler ne kadar gereksiz gelse de örneği konuyu anlamak adına kullandığımızı unutmayın ve asıl anlatılmak istenen noktaya odaklanın lütfen.

O anın tarihi detaylarını bir dosyaya kaydetmek istiyorum diyelim.
Tarihi detayları <kbd>zamanlar.txt</kbd> isimli klasöre kaydetmek için `echo date zamanlar.txt` komutunu kullanacağım.

Bütün yıl boyunca her dakikanın çıktılarını kaydetmesini istersem aşağıdaki şekilde bir kullanım işimizi görür.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/6.png" width="875">
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/7.png" width="875">

Yıldız işareti (<kbd>*</kbd>) olan kısımlar hepsini kapsamaktadır yani haftanın bütün günleri, ayın bütün günleri ve saatin bütün dakikaları.. gibi.

Komutun düzenli hali ```bash * * * * * echo date >> ~/Desktop/zamanlar.txt ``` şeklindedir.

Bir süre geçtikten sonra masaüstünde(Desktop dizininde) yer alan <kbd>zamanlar.txt</kbd> dosyasını `cat zamanlar.txt` komutu ile kontrol ediyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/8.png" width="875">

Görev istediğimiz şekilde yani her dakikada yazılacak şekilde otomatik olarak gerçekleşmiş oldu.

Şimdi spesifik bir zaman belirleyerek görevin yerine getirilme durumunu ele alalım.

Her gün 10:25 da otomatik olarak <kbd>test.txt</kbd> isimli belgeye "test yazısı" yazdırmak için kalıbı **crontab** dosyasına aşağıdaki şekilde yazmalıyız.(Ayrıca başta hangi ifadenin neyin karşılığı olduğunu belirttiğim için tekrar tekrar üzerlerine yazmıyorum. Eğer şaşırırsanız yukarıdaki kısımları tekrar gözden geçirebilirsiniz.)

```bash
10 25 * * * echo "test yazısı" >> ~/Desktop/test.txt
```
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/9.png" width="875">


`ls -l` komutu ile de dosyamızın üretildiği tarihi sorguladık ve çıktıdan da anladığımız üzere verdiğimiz görev zamanında yerine getirilmiş.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/10.png" width="875">


Eğer belirli bir saat-tarih arasında belirli kere tekrar eden görev atamak istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

Örneğin 5 dk bir çalışmasını istediğiniz komutu aşağıdaki şekilde **crontab** dosyasına ekleyebilirsiniz.

```bash
*/5 * * * * komut
```
    
Her saatin ilk 5 dk 2 kere çalışmasını istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

```bash
0-5/2 * * * * komut
```
    
Örneğin **cron job** yani verdiğimiz görev komutu günün ilk 5 saatinde 10 defa çalışmasını istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

```bash
* 0-5/10 * * * komut
```
    
Örneğin cuma günleri 12:30 ve 17 arasında 5 kez çalışsın istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

```bash
30,0 12-17/5 * * 5 komut
```
    
Elbette örnekleri çoğaltmak mümkün ancak daha fazlası gereksiz olacaktır. Yani bu konu sizlerin de biraz kurcaladıktan sonra anlayacağı kolay bir konudur.

Eğer belirlenen zamanlanmış görevleri listelemek istersek `crontab -l` komutunu kullanabiliriz. Buradaki `-l` parametresi list kelimesini yani listeleme işlevini temsil ediyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/11.png" width="875">

Şayet oluşturduğumuz tüm zamanlanmış görevleri silmek istersek `crontab -r` komutunu kullanmalıyız. Buradaki `-r` parametresi "remove" kelimesini yani "silme" işlevini temsil ediyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/12.png" width="875">
