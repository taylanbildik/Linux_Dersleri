
Süreçler(process)
=

Süreç(process) denilen kavram genel olarak bir program çalıştığında programın belleğe yüklenmesine denir. Bizler de bu bölümde süreçler hakkında bilgi almak, işlem yapmak ve gerektiğinde müdahalede bulunmak gibi işlemleri yapabilmek adına ilgili komutları öğreneceğiz.

ps
-

Bu komutumuz çalışan süreçleri görüntülememizi sağlıyor.

Komut tek başına `ps` şeklinde kullanıldığında o anda çalışmakta olan süreçleri veriyor.

![enter image description here](https://i.hizliresim.com/Z91NV0.png)

Gerektiği zaman doğru çıktıları almak adına `ps` komutunun parametrelerine bakalım.

Genel Liste

**a :** Tüm terminallerde çalışan süreçler.

**u :** Hedef kullanıcıya göre süreçleri listeler.

**x :** tty’lerde çalışanlar hariç tüm süreçleri verir.

**e :** Komutlar ve parametrelerini göstermektedir.

**f :** Tam çıkış şeklinde listeler.

**l :** Çıkış listesini uzunca verir.

**c :** Süreçlerin yalnız komut isimlerini verir.

**v :** Kullanılan hafızalara göre gösterir.

Şimdi bazı parametrelerimizi çıktıları ile birlikte inceleyelim.


<kbd>a</kbd> , <kbd>u</kbd> ve <kbd>x</kbd> parametrelerini genellikle kullanıldığı gibi yani bir bütün olarak `-aux`şeklinde ele alalım.

Komut `aux` parametreleri ile `ps -aux` şeklinde kullanıldığında sistemde ve terminallerde çalışan tüm süreçleri ve süreç sahiplerini gösterir.

Çıktı çok uzun olacağından  aradaki çıktıları atlayarak kısa çıktıları aşağıdaki şekilde verdim.

![enter image description here](https://i.hizliresim.com/rOdLRB.png)

**e :** Sistemde çalışan her süreç.(every)

Çıktı çok uzun olacağından  aradaki çıktıları atlayarak kısa çıktıları aşağıdaki şekilde verdim.

![enter image description here](https://i.hizliresim.com/vjozLO.png)

**f :** Tam çıkış biçimi.(full)

![enter image description here](https://i.hizliresim.com/oOzQZo.png)

**l :** Uzun çıkış biçimi.(long)

![enter image description here](https://i.hizliresim.com/lOzYyl.png)

**u :** Kullanıcı ile ilgili süreçler.

Parametrenin komut ile kullanımı `ps -u kullanıcı` şeklindedir.

Çıktı çok uzun olacağından  aradaki çıktıları atlayarak kısa çıktıları aşağıdaki şekilde verdim.

![enter image description here](https://i.hizliresim.com/1JnPk1.png)

**c :** Süreçlerin komut ismini verir.

![enter image description here](https://i.hizliresim.com/VrypLq.png)

**v :** Süreçleri kullandıkları bellek ile birlikte gösterir.

![enter image description here](https://i.hizliresim.com/LboP4J.png)

Eğer aradığımız özel bir süreç varsa daha önce görmüş olduğumuz `grep` komutu yardımı ile o süreç hakkında doğrudan bilgi alabiliriz.

Şöyleki eğer ben "bash" süreci hakkında bilgi almak istiyorsam konsola `ps -aux | grep "bash"` yazmam yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/nOGPg1.png)

Çıktıda görüldüğü gibi yalnızca ulaşmak istediğim bash süreci hakkında çıktı almış oldum.

pstree
-
Süreçleri hiyerarşik bir biçimde görüntülemek istersek `pstree` komutumuzu da kullanabiliriz. Bu komut Windows işletim sisteminde de `tree` olarak kullanılabiliyor. Neyden bahsettiğimizi anlamak için hemen konsola `pstree` komutumuzu verelim.

![enter image description here](https://i.hizliresim.com/Z91130.png)

Fark etmiş olacaksınız ki yukarıdaki çıktıyı keserek verdim. Çünkü komut isminde(pstree) de yer aldığı gibi, süreçler tıpkı bir ağaç gibi dallanıp budaklanarak hiyerarşik şekilde listelenmiş oldu.


top
-
Bu komut da tıpkı `ps` komutunda olduğu gibi süreçler hakkında bilgi verir ancak bu işlemi `ps` komutundan farklı olarak 3 saniyede bir yenilenecek şekilde anlık değişimleri verecek şekilde yapar. Temel kullanımı `top` şeklindedir.

![enter image description here](https://i.hizliresim.com/oOzzVo.png)

Eğer varsayılan olarak kullanılan 3 saniyede bir güncelleme tekrarında bir değişiklik yapmak istersek komut `d` parametresiyle birlikte yani `top -d saniye` şeklinde yazarak istediğimiz saniye aralığında süreç bilgilerinin çıktılarının güncellenmesini sağlayabiliriz. Eğer bu ekranı kapatmak istesek ise sadece <kbd>q</kbd> tuşuna basmamız yeterli.

pgrep
-

Çalışan süreçlerin belirli kriterlere göre sıralanmasını sağlayan komuttur. Süreç işlemlerinde çalışan süreç üzerinde değişiklik yapabilmemiz için ilk önce değişiklik yapacağımız süreci bulmamız gerekiyor. `pgrep` komutu da çalışan süreç numaralarını(pid) bize veriyor. Süreç numarası sistemde süreçlerin haberleşmesini sağlayan numaradır. Buraya takılmadan devam edelim.

Örnek vererek komutumuzun kullanımını görmüş olalım.

Örnek göstermek adına armitage aracını çalıştırıyorum. Çalışmakta olan armitage aracının süreci üzerinden örneğimizi yapalım.

![enter image description here](https://i.hizliresim.com/VryyDq.png)

`pgrep armitage` komutu ile armitage aracının süreç numaralarını(pid) görmüş olduk.

Şimdi de `pgrep` komutunun birkaç işlevsel parametresini görelim.

**l :** Süreçlerin numaraları ile beraber süreç isimlerini de görmek için kullanılır.

![enter image description here](https://i.hizliresim.com/nOGGl1.png)

**lu :** Belirtilen kullanıcıdaki, süreçlerin numaraları ile beraber süreç isimlerini de görmek için kullanılır. Burada `u` parametresi hedef kullanıcı belirtmemizi sağlar `l` parametresini zaten bir önceki kısımda açıklamıştık.  

![enter image description here](https://i.hizliresim.com/vjooPO.png)

İleride bu bilgiler bize lazım olacak şimdi süreçleri sonlandırma komutları ile devam edelim.


kill-killall
-

Komutlarımız isimlerinden de anlaşılabileceği gibi süreçleri sonlandırma(öldürme) işleminde kulllanılıyorlar. Kullanım şekilleri;

**`kill süreç_numarası(pid)`** : Süreçleri pid(süreç numarası) ile sonlandırmak.

![enter image description here](https://i.hizliresim.com/1JnnE1.png)

**`kill -9 süreç_numarası(pid)`** : Kapanmaya karşı direnen süreçleri pid(süreç numarası) ile sonlandırmak.

![enter image description here](https://i.hizliresim.com/LbooDJ.png)

**`killall süreç_ismi`** : Süreçleri isimleri ile sonlandırmak.

![enter image description here](https://i.hizliresim.com/rOdd5B.png)

**`killall -9 süreç_ismi`** : Kapanmaya karşı direnen süreçleri isimleri ile sonlandırmak.

![enter image description here](https://i.hizliresim.com/7688am.png)


**`killall -i süreç_ismi`** : Süreçleri isimlerini kullanarak ve onay alarak sonlandırmak.

![enter image description here](https://i.hizliresim.com/PlEE1v.png)

xkill
-

Bu komutumuz yanıt vermeyen bir programı grafiksel arayüzden kapatmamızı sağlayan ilginç bir komuttur.

Diyelim ki leafpad aracımızı açtık ve her ne nedenle olursa olsun yanıt vermeyi kesti bu noktada eğer leafpad aracını anında kapatmak istersek konsola `xkill` yazıyoruz ve fare imleci çarpı işaretine dönüşüyor. Bu çarpı işareti ile tıkladığımız araç otomatik olarak kapanıyor.

![enter image description here](https://i.hizliresim.com/qG22NW.gif)

Anlatım havada kalmış olabilir o yüzden xkill komutunun kullanımını kesinlikle sizler de hemen deneyin akılda kalması kolay bir komut zaten.

fg-bg-jobs
-

Son olarak gayet kullanışlı komutlar olan `fg` ve `bg` komutlarına değinerek süreçler konumuzu bitirelim. Konsoldan komut verildiğinde, verdiğimiz komut doğrultusunda gerçekleşen işlem süreci bitmeden konsoldan tekrar başka bir komut vermemiz mümkün olmuyor. Bu gibi durumlarda eğer yeni bir komut girişi yapmak istersek, süreci arkaplana alıp yeni komutumuzu ancak öyle çalıştırabiliriz. İşte bu komutlarımız da konsoldan çalıştırdığımız süreçleri arkaplana taşıma gibi işleve sahiptirler. Ayrıca `jobs` komutu da bu süreçlerin durumunu takip etmemizi sağlar. Bu durum örnekler ile daha iyi anlaşılacaktır.

Kullanımın rahat şekilde anlaşılması için adım adım gidelim.

Konsoldan leafpad uygulamasını açalım. Bunun için konsola leafpad yazmamız yeterli.

Yazdıktan sonra ekrana leafpad uygulaması geldi.

Programı çalıştırdığımız konsol şu anda leafpad uygulamasını çalıştırmakla meşgul. Yani bu demek oluyor ki eğer biz bu konsol üzerinden yeni bir komut girmek istersek bu mümün olmayacak. İşte bu yüzden halihazırda çalışan leafpad uygulamasının çalışmasını durdurup arkaplana atmalıyız ki yeni komutlar girdiğimizde konsol leafpad uygulaması ile meşgul olmasın.

Konsolda çalışan leafpad uygulamamızı arkaplana atmak yani duraklatmak için <kbd>Ctrl + Z </kbd> tuş kombinasyonunu kullanıyoruz. Bu işlemin ardından konsol bize aşağıdaki gibi bir çıktı basarak leafpad uygulamasının durduğunu haber veriyor.

Konsolun bize leafpad programının durduğunu haber verdiğini söylemiştik. Ayırca bu gibi durumlarda sürecin durumunu sorgulama yapmak için `jobs` komutunu da kullanabiliyoruz.

Artık leafpad programımızın durdurulduğundan kesin eminiz. Hatta leafpad uygulamasına grafiksel arayüzden bir şeyler yazmaya çalıştığımızda uygulama durdurulduğu için hiç bir tepki vermiyor. Yani konsolumuz artık leafpad uygulamasının sürecini işlemiyor. Bunu teyit etmek için önceden konsola komut veremediğimizi ele alırsak denemek için konsola `ls` komutumuzu giriyoruz. 
Adımların her birini genel olarak .gif olarak verdiğim resimde görebilirsiniz.

![enter image description here](https://i.hizliresim.com/PlEE2N.gif)

`ls` komutunun çıktısını alabildik bu da demek oluyor ki konsol ekranımız önceden olduğu gibi leafpad uygulaması ile meşgul değil. Böylelikle yeni komutlar alabiliyor. 


Leafpad programı durduruldu ancak biz hem leafpad programını kullanmak hem de aynı konsol ekranından yeni komutlar girebilmek istiyoruz. İşte bu noktada durdurulan leafpad süreçlerinin arkaplana alınarak çalıştırılmasına devam edilmesi gerekiyor. Bu işlevi de `bg` komutu sağlıyor. Komut satırımıza `bg` komutumuzu girdiğimizde artık leafpad programı süreçleri arkaplanda çalışır duruma geçiyor ve biz hem konsol ekranından yeni komutlar girebiliyoruz hem de leafpad uygulamamızı kullanabiliyoruz. Leafpad uygulamasının çalışır olduğunu `jobs` komutu ile de aşağıdaki şekilde teyit edebiliriz.

![enter image description here](https://i.hizliresim.com/7688WW.gif)

Eğer arkaplana attığımız program sürecini tekrar eskisi gibi çalışır hale getirmek istersek `fg` komutumuzu kullanabiliriz. Bu komutumuzu kullandığımızda konsol artık yeni komut almayacak ve tekrar sadece leafpad uygulaması ile meşgul olacak.

Yukarıda verilen .gif ile bu durumlar ele alınmıştır.
