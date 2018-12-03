
  
Süreçler(process)
=

Süreç(process) denilen kavram genel olarak; bir program çalıştığında programın belleğe yüklenme işlemine deniyor. Bizler de bu bölümde süreçler hakkında bilgi almak, işlem yapmak ve gerektiğinde müdahalede bulunmak gibi işlemleri yapabilmek adına ilgili komutları öğreneceğiz.

ps
-

Bu komutumuz çalışan süreçleri görüntülememizi sağlıyor.

Komut tek başına `ps` şeklinde kullanıldığında mevcut konsol üzerinden çalıştırılmış süreçleri verir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/1.png)

Genellikle sistemdeki tüm işlemleri görmek için `ps -aux` komut bütünü kullanıyor. 
Komut `aux` parametreleri ile `ps -aux` şeklinde kullanıldığında sistemde ve terminallerde çalışan tüm süreçleri ve süreç sahiplerini gösteriyor.(Çıktı çok uzun olacağından aradaki çıktıları atlayarak kısa çıktıları aşağıdaki şekilde verdim.)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/2.png)


Ancak gerektiği zaman doğru çıktıları almak adına `ps` komutunun parametrelerine bakalım.

**e :** Sistemde çalışan her süreç.(Çıktı çok uzun olacağından aradaki çıktıları atlayarak kısa çıktıları aşağıdaki şekilde verdim.)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/3.png)


**u :** Kullanıcı adına göre süreç bilgileri verir.

Parametrenin komut ile kullanımı `ps -u kullanıcı` şeklindedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/4.png)


**p :** Süreç numarasına(PID) göre süreç bilgisi verir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/5.png)


Eğer aradığımız özel bir süreç varsa daha önce görmüş olduğumuz `grep` komutu yardımı ile o süreç hakkında doğrudan bilgi alabiliriz.
Şöyle ki eğer ben "**bash**" süreci hakkında bilgi almak istiyorsam konsola `ps -aux | grep "bash"` yazmam yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/6.png)

Çıktıda görüldüğü gibi yalnızca ulaşmak istediğim "**bash**" süreci hakkında çıktı almış oldum.

pstree
-
Süreçleri hiyerarşik bir biçimde görüntülemek istersek `pstree` komutumuzu da kullanabiliriz. Bu komut Windows işletim sisteminde de `tree` olarak kullanılabiliyor. Neyden bahsettiğimizi anlamak için hemen konsola `pstree` komutumuzu verelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/7.png)

Komutumuz isminde(`pstree`) de yer aldığı gibi, süreçleri tıpkı bir ağaç gibi dallanıp budaklanarak hiyerarşik şekilde karşımıza getiriyor.


top
-
Bu komut da tıpkı `ps` komutunda olduğu gibi süreçler hakkında bilgi verir ancak bu işlemi `ps` komutundan farklı olarak 3 saniyede bir yenilenecek şekilde anlık değişimleri verecek şekilde yapar. Temel kullanımı `top` şeklindedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/8.png)

Eğer varsayılan olarak kullanılan 3 saniyede bir güncelleme tekrarında bir değişiklik yapmak istersek, komutumuzu `d` parametresiyle birlikte yani `top -d saniye` şeklinde yazarak istediğimiz saniye aralığında süreç bilgilerinin çıktılarının güncellenmesini sağlayabiliriz. 
Ben örnek olması açısından bu yenileme hızını 1 saniye olarak ayarlamak için komutumu `top -d 1` şeklinde yazıyorum.
Ve ayrıca bu ekranı kapatmak istesek ise sadece <kbd>q</kbd> tuşuna basmamız yeterli.
Gif resminde de görüldüğü gibi `top -d 1` komutu ile her saniye yenilenen süreçler bilgi tablosu <kbd>q</kbd> tuşuna basmamızla sonlanmış oldu.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/9.gif)


pgrep
-

Çalışan süreçlerin belirli kriterlere göre sıralanmasını sağlayan komuttur. 

Süreç işlemlerinde çalışan süreç üzerinde değişiklik yapabilmemiz için ilk önce değişiklik yapacağımız süreci bulmamız gerekiyor. İşte `pgrep` komutu da bizlere lazım olan **çalışan süreç numaralarını(pid)** veriyor. Süreç numarası sistemde süreçlerin haberleşmesini sağlayan numaradır ve tüm süreçler için benzersiz olacak şekilde atanır. Buraya takılmadan devam edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/10.png)

Örnek vererek komutumuzun kullanımını görmüş olalım.

Örnek göstermek adına *armitage* aracını çalıştırıyorum. Çalışmakta olan *armitage* aracının süreci üzerinden örneğimizi yapalım.
Çalıştırmış olduğumuz *amitage* aracının süreç numaralarını(**procces id(pid)**) sorgulamak üzere `pgrep armitage` komutumuzu giriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/11.png)

Ve çıktı da görüldüğü gibi `pgrep armitage` komutu sayesinde *armitage* aracının **süreç numaralarını(pid)** görmüş olduk.

Şimdi de `pgrep` komutunun birkaç işlevsel parametresini görelim.

**l :** Süreçlerin numaraları ile beraber süreç isimlerini de görmek için kullanılır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/12.png)

**lu :** Belirtilen kullanıcıdaki, süreçlerin numaraları ile beraber süreç isimlerini de görmek için kullanılır. Burada `u` parametresi hedef kullanıcı belirtmemizi sağlar `l` parametresini zaten bir önceki kısımda açıklamıştık.  

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/13.png)

İleride bu bilgiler bize lazım olacak şimdi süreçleri sonlandırma komutları ile devam edelim.


kill-killall
-

Komutlarımız isimlerinden de anlaşılabileceği gibi süreçleri sonlandırma(öldürme) işleminde kullanılıyorlar. 
**Kullanım şekilleri;**

**`kill süreç_numarası(pid)`** : Süreçleri pid(süreç numarası) ile sonlandırmak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/14.png)

**`kill -9 süreç_numarası(pid)`** : Kapanmaya karşı direnen süreçleri pid(süreç numarası) ile sonlandırmak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/15.png)

**`killall süreç_ismi`** : Süreçleri isimleri ile sonlandırmak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/16.png)

**`killall -9 süreç_ismi`** : Kapanmaya karşı direnen süreçleri isimleri ile sonlandırmak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/17.png)


**`killall -i süreç_ismi`** : Süreçleri isimlerini kullanarak ve onay alarak sonlandırmak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/18.png)


xkill
-

Bu komutumuz yanıt vermeyen bir programı grafiksel arayüzden kapatmamızı sağlayan ilginç bir komuttur.

Diyelim ki *leafpad* aracımızı açtık ve her ne sebeple olursa olsun yanıt vermeyi kesti, bu noktada eğer l*eafpad* aracını anında kapatmak istersek konsola `xkill` yazıyoruz ve fare imleci çarpı işaretine dönüşüyor. Bu çarpı işareti ile tıkladığımız araç otomatik olarak kapanıyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/19.gif)

Anlatım havada kalmış olabilir o yüzden `xkill` komutunun kullanımını kesinlikle sizler de hemen deneyin akılda kalması kolay bir komut zaten.


fg-bg-jobs
-

Son olarak gayet kullanışlı komutlar olan `fg` ve `bg` komutlarına değinerek süreçler konumuzu bitirelim. Konsoldan komut verildiğinde, verdiğimiz komut doğrultusunda gerçekleşen işlem süreci bitmeden, konsoldan tekrar başka bir komut vermemiz mümkün olmuyor. Bu gibi durumlarda eğer yeni bir komut girişi yapmak istersek, süreci arka plana alıp yeni komutumuzu ancak öyle çalıştırabiliriz. 
İşte bu komutlarımız da konsoldan çalıştırdığımız süreçleri arka plana ve arkaplandaki süreçleri önplana taşıma gibi işleve sahiptirler. Ayrıca `jobs` komutu da bu süreçlerin durumunu takip etmemizi sağlar. Bu durum örnekler ile daha iyi anlaşılacaktır.

Kullanımın rahat şekilde anlaşılması için adım adım gidelim.

Konsoldan *leafpad* uygulamasını açalım. Bunun için konsola `leafpad` yazmamız yeterli.

Yazdıktan sonra ekrana *leafpad* uygulaması geldi.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/20.png)

Programı çalıştırdığımız konsol şu anda *leafpad* uygulamasını çalıştırmakla meşgul. Yani bu demek oluyor ki eğer biz bu konsol üzerinden yeni bir komut girmek istersek bu mümkün olmayacak. İşte bu yüzden halihazırda çalışan *leafpad* uygulamasının çalışmasını durdurup arka plana atmalıyız ki yeni komutlar girdiğimizde konsol *leafpad* uygulaması ile meşgul olmasın.

Konsolda çalışan *leafpad* uygulamamızı arka plana atmak yani duraklatmak için <kbd>Ctrl + Z </kbd> tuş kombinasyonunu kullanıyoruz. Bu işlemin ardından konsol bize aşağıdaki gibi bir çıktı basarak *leafpad* uygulamasının durduğunu haber veriyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/21.png)

Konsolun bize *leafpad* programının durduğunu haber verdiğini söylemiştik. Ayırca bu gibi durumlarda sürecin durumunu sorgulama yapmak için `jobs` komutunu da kullanabiliyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/22.png)

Artık *leafpad* programımızın durdurulduğundan kesin eminiz. Hatta *leafpad* uygulamasına grafiksel arayüzden bir şeyler yazmaya çalıştığımızda uygulama durdurulduğu için hiç bir tepki vermiyor. Yani konsolumuz artık *leafpad* uygulamasının sürecini işlemiyor. Bunu teyit etmek için önceden konsola komut veremediğimizi ele alırsak denemek için konsola `ls` komutumuzu giriyoruz. 
Adımların her birini genel olarak .gif olarak verdiğim resimde görebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/23.gif)

`ls` komutunun çıktısını alabildik bu da demek oluyor ki konsol ekranımız önceden olduğu gibi *leafpad* uygulaması ile meşgul değil, böylelikle yeni komutlar alabiliyor. 


*Leafpad* programı durduruldu ancak biz hem *leafpad* programını kullanmak hem de aynı konsol ekranından yeni komutlar girebilmek istiyoruz. İşte bu noktada durdurulan *leafpad* süreçlerinin arka plana alınarak çalıştırılmasına devam edilmesi gerekiyor. Bu işlevi de `bg` komutu sağlıyor. Komut satırımıza `bg` komutumuzu girdiğimizde artık *leafpad* programı süreçleri **arka planda** çalışır duruma geçiyor ve biz hem konsol ekranından yeni komutlar girebiliyoruz hem de *leafpad* uygulamamızı kullanabiliyoruz. *Leafpad* uygulamasının çalışır olduğunu `jobs` komutu ile de aşağıdaki şekilde teyit edebiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/24.gif)

Eğer arka plana attığımız program sürecini tekrar eskisi gibi konsol üzerinden(**ön planda**) çalışır hale getirmek istersek `fg` komutumuzu kullanabiliriz. Bu komutumuzu kullandığımızda konsol artık yeni komut almayacak ve tekrar sadece *leafpad* uygulaması ile meşgul olacak.

Yukarıda verilen .gif ile bu durumlar ele alınmıştır.
