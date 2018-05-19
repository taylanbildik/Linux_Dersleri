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

Şimdi de düzenleme yapmak adına konsola `crontab -e` komutunu verelim. Burada yer alan `-e` parametresi "**edit**" kelimesini yani "**düzenleme**" ifadesini temsil ediyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/3.png" width="875">

Konsol bize düzenleme yaparken hangi aracı kullanmak istediğimizi soruyor. Ben **nano** aracını seçiyorum yani konsola **2** rakamını giriyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/4.png" width="875">

Çıktıda bize bir örnek kullanım gösterilmiş biz bu kullanımı ele alarak servisin kullanım şeklini görelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/5.png" width="875">

Yukarıdaki şema yeterince açıklayıcı olmadıysa endişelenmenize gerek yok. Örnekler üzerinden yapacağımız anlatım ile **cron** servisimizin kullanımını rahat şekilde anlamış olacağınıza inanıyorum.

Zamanlanmış görevleri yerine getiren servis **cron** ve bu servisin yerine getirdiği işlere de **cron job** deniliyor. Bu tanımın çok da önemi yok ancak bunu böyle bilseniz daha iyi olur. Bizler de kendi zamanlanmış görevlerimizi (cron jobs) atamak istersek `crontab -e` komutu ile açtığımız dosyanın son satırına yapmak istediğimiz işi ve tam tarih düzenini girmemiz gerekiyor. Bu görevleri nasıl oluşturacağımızı konunun devamında örnekler üzerinden öğreniyor olacağız.

# *Örnekler*

Kullanımın anlaşılması amacıyla örnekleri olabildiğince basit tuttum.

Sizlere vereceğim örnekler ne kadar gereksiz gelse de örneği konuyu anlamak adına kullandığımızı unutmayın ve asıl anlatılmak istenen noktaya odaklanın lütfen.

O anın tarihi detaylarını bir dosyaya kaydetmek istiyorum diyelim.
Tarihi detayları <kbd>zamanlar.txt</kbd> isimli klasöre kaydetmek için 
``` * * * * * echo `date` >> ~/Desktop/zamanlar.txt ``` komutunu kullanacağım.

Bütün yıl boyunca her dakikanın çıktılarını kaydetmesini istersem aşağıdaki şekilde bir kullanım işimizi görür.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/6.png" width="875">
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/7.png" width="875">

Yıldız işareti (<kbd>*</kbd>) olan kısımlar hepsini kapsamaktadır yani haftanın bütün günleri, ayın bütün günleri ve saatin bütün dakikaları.. gibi.

Komutun düzenli hali ```* * * * * echo `date` >> ~/Desktop/zamanlar.txt ``` şeklindedir.

Bir süre geçtikten sonra masaüstünde(Desktop dizininde) yer alan <kbd>zamanlar.txt</kbd> dosyasını `cat zamanlar.txt` komutu ile kontrol ediyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/8.png" width="875">

Görev istediğimiz şekilde yani her dakikada yazılacak şekilde otomatik olarak gerçekleşmiş oldu.

Şimdi spesifik bir zaman belirleyerek görevin yerine getirilme durumunu ele alalım.

Her gün 10:25 da otomatik olarak <kbd>test.txt</kbd> isimli belgeye "test yazısı" yazdırmak için kalıbı **crontab** dosyasına aşağıdaki şekilde yazmalıyız.(Ayrıca başta hangi ifadenin neyin karşılığı olduğunu belirttiğim için tekrar tekrar üzerlerine yazmıyorum. Eğer şaşırırsanız yukarıdaki kısımları tekrar gözden geçirebilirsiniz.)

```bash
25 10 * * * echo "test yazısı" >> ~/Desktop/test.txt
```
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/9.png" width="875">


`ls -l` komutu ile de dosyamızın üretildiği tarihi sorguladık ve çıktıdan da anladığımız üzere verdiğimiz görev zamanında yerine getirilmiş.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/10.png" width="875">


### Eğer belirli bir saat-tarih arasında belirli kere tekrar eden görev atamak istersek kullanım şekilleri aşağıdaki örneklerdeki gibi olacaktır.

Belirli aralıklar ile olacaksa aralıkları **-**(**kısa çizgi**) işareti ile ayırarak belirtmemiz gerekiyor. Yani örneğin;

Her saatin ilk 5 ile 20 dakikası arasında komutum çalışsın istersem:

```bash
5-20 * * * * komut
```

Her gün saat 3 ile 5 arasında her dakika komutum çalışsın istersem:

```bash
* 3-5 * * * komut
```

Her ayın 5 ile 15. günleri arasında saat 16 ile 22 arasındaki her saatin ilk 20 dakikası komutum çalışsın istersem.

```bash
0-20 16-22 5-15 * * komut
```

Haziran ayında ilk 20 gününün her cuma günü saat 12 ile 15 arasındaki 35 ile 55 dakikaları arasında komutum çalışsın istersem:

```bash
35-55 12-15 1-20 6 5 komut 
```
_______
Belirli gün ve tarihlerde olacaksa o tarihleri **,**(**virgül**) işareti ile ayırarak tek tek belirtmemiz gerekiyor. Yani örneğin;

Her saatin 5 10 15 ve 20. dakikalarında komutum çalışsın istersem:

```bash
5,10,15,20 * * * * komut
```

Her gün saat 3 5 ve 7 de komutum çalışsın istesem:

```bash
0 3,5,7 * * * komut
```

Her ayın 20 22 24 ve 26. günleri 2 4 6 ve 8 saatlerinin 5. ve 10. dakikalarında komutum çalışsın istersem:

```bash
5,10 2,4,6,8 20,22,24,26 * * komut
```
_______

Belirli süre içinde belirli kez çalışmasını istersek **/**(**taksim**) işareti ile kaç kez olacağını belirtebiliyoruz. Yani örneğin;

5 dakikada bir çalışmasını istersem:

```bash
*/5 * * * * komut
```
    
10 saatte bir komutumun çalışmasını istersem:

```bash
* */10 * * * komut
```    
    
Elbette örnekleri çoğaltmak mümkün ancak daha fazlası gereksiz olacaktır. Ayrıca atadığınız zamanlanmış görevlerin doğruluğunu kontrol etmek isterseniz [bu adresten](https://crontab.guru) verdiğiniz zaman aralığının karşılığını görebilir ve hata yapmaktan kaçınabilirsiniz. 

Yani bu konu sizlerin de biraz kurcaladıktan sonra anlayacağı kolay bir konudur.

Eğer belirlenen zamanlanmış görevleri listelemek istersek `crontab -l` komutunu kullanabiliriz. Buradaki `-l` parametresi "**list**" kelimesini yani "**listeleme**" işlevini temsil ediyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/11.png" width="875">

Şayet oluşturduğumuz tüm zamanlanmış görevleri silmek istersek `crontab -r` komutunu kullanmalıyız. Buradaki `-r` parametresi "**remove**" kelimesini yani "**silme**" işlevini temsil ediyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/12.png" width="875">
