
Kısayollar
-------------


Bu bölümde, sistem üzerinde gerekli hakimiyeti sağlamada bizlere kolaylıklar sunan bazı kısayollar hakkında önemli bilgileri öğrenip uygulayacağız. Kısayolları şimdi öğrenmemizin sebebi, ileride komutları uygularken bizlere kolaylıklar sağlayarak bize hız katacak olmalarıdır. Hem şimdi öğrenirsek eğitim boyunca da sürekli pratik yapma imkanı bulmuş olacağız. 
**Benim tecrübeme göre eğitim asla ezber üzerine kurulamaz. Öğrenme denilen olgu uygulama yani sürekli olarak yapılan pratik ile gerçekleşir.** Bu bölümde öğreneceğiniz bilgiler belki başlangıç için fazlaca gözükebilir. Ancak her kısayolu ve her bilgiyi direk ve sürekli olarak kullanmasak bile burada olduğunu bilmeli, ve gerektiğinde dönüp tekrar bakabilmeliyiz. O yüzden buradaki bilgiler gözünüze fazla gözükürse endişe etmenize gerek yok. Zaten kısayol bilgileri temel Linux kullanımı için hayati bilgi olarak sayılmazlar, ancak zamanla göreceksiniz ki işlerimizi kolaylaştırarak Linux sistemini verimli şekilde kullanmamızı sağlıyor olacaklar. Neyse bu kadar açıklama yeter, gelin kısayollar konumuza terminal için kısayol atama işlemleri ile başlayalım.

### Terminal Kısayolları

Genelde başka bir işletim sisteminden geçiş yapan arkadaşlar konsoldan bir komutu kopyalamak üzere, alıştıkları gibi <kbd>Ctrl + C</kbd>, kopyalanan komutu yapıştırmak için ise <kbd>Ctrl + V</kbd> tuş kombinasyonunu denerler. Ancak komut satırında görürler ki kopyalamak için bastıkları <kbd>Ctrl + C</kbd> tuş kombinasyonu <kbd>^C</kbd>, yapıştırmak için bastıkları <kbd>Ctrl + V </kbd> tuş kombinasyonu ise <kbd>^V</kbd> şeklinde konsola çıktı basmış. Tabi yanlış basmış olma ihtimaline karşı aynı işlemi genellikle tekrar deneyen arkadaşlar olur ancak yine aynı çıktıları alınca, anlaşılır ki o işler öyle olmuyormuş :) İşin şakası bir yana insanın zamanla edindiği alışkanlıklarını değiştirmesi zor olabiliyor. O yüzden Terminalde <kbd>Ctrl + Shift + C </kbd> ve <kbd>Ctrl + Shift + V </kbd> olan kopyala-yapıştır kısayolunu daha önceden alışmış olduğumuz gibi değiştirmek bizim en doğal hakkımız. Bunun için eğer isterseniz yalnızca kopyala-yapıştır kısayolunu değiştirebilir ya da diğer mevcut tüm kısayolları istediğiniz ve alıştığınız şekilde düzenleyebilirsiniz. Düzenlemek için, yeni Kali Linux versiyonlarında Terminal'in üst kısmında yer alan sekmelerden sırasıyla ***Düzenle > Tercihler > Kısayollar*** sekmelerini takip ederek açılan pencerede yer alan kısayolları dilediğiniz şekilde değiştirebilirsiniz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/30.gif" width="875">

Eğer eski bir versiyon kullanıyorsanız yukarıda sıraladığım adımlarla Terminal kısayollarına ulaşamamış olabilirsiniz. Ancak Terminal'in üst kısmında yer alan sekmelere kendiniz göz atarak "**kısayollar**" penceresine ulaşabilirsiniz. Sonuçta sürekli yenilikler olduğu için her versiyona özel bu tarz şeyleri yazmak gereksiz olacaktır. Kendiniz de biraz kurcalama ile çok rahat keşfedebilirsiniz.

Terminalin kısayollar penceresine ulaştığımıza göre artık istediğimiz şekilde değişiklik yapabiliriz. Buradaki kısayol seçeneklerine göz atın hangisi size uymuyorsa dilediğiniz şekilde düzenleyin. Ayrıca bilmediğiniz kısayollar varsa onlara da göz atmayı ihmal etmeyin.

### Sistem Kısayolları

Şimdi ise sistem üzerindeki kısayollara göz atalım. Ben sürekli Terminali kullandığımız için Terminali açmak üzere bir kısayol oluşturmak istiyorum. Bunun için adım adım yapmamız gerekenlere bakalım. Başlamadan önce, kullandığınız sürüme göre sistem arayüzü değişiklik gösterebileceğinden, yönerge tam olarak sizi yönlendiremeyebilir. Ancak bunlar biraz kurcalayarak kendi kendinize bulamayacağınız şeyler değil. Ben yine de kullandığım sürüm üzerinden sizlere adımları aktarıyorum:

Öncelikle sistem ayarlarını(**Ayarlar**) açalım. 

Sol tarafta yer alan ayarlar menüsünden "**Aygıtlar**" sekmesine tıklayalım. 

Aygıtlar sekmesinde yer alan "**Klavye**" ayarını seçelim. Sağ tarafta "***Klavye Kısayolları***" şeklinde bir pencere açılacaktır.

Buradan en alta inerek altta yer alan " **+** " işaretine tıklayalım.

Karşımıza küçük bir "***Özel Kısayol***" penceresi açılacaktır.

Burada yer alan **İsim** kısmına herhangi bir ad verebilirsiniz ben daha sonra değiştirmek istediğimde hatırlamada kolaylık olsun diye "**Terminal**" adını verdim.

Komut kısmına terminalin açılması için gerekli olan komutu girmeliyiz ben terminali açmak istediğimden terminali açma komutu olan `gnome-terminal` komutunu yazdım.

Daha sonra bir alt kutucuğa istediğimiz kısayol tuş kombinasyonunu giriyoruz.

Ben <kbd>Ctrl + Shift + T</kbd> şeklinde ayarladım. Elbette siz kısayol tuş kombinasyonunu dilediğiniz gibi ayarlayabilirsiniz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/31.gif" width="875">

Son olarak "**Ekle**" butonuna tıklayarak kısayolumu atamış oluyorum. Artık ne zaman atadığım kısayol tuş kombinasyonunu  (<kbd>Ctrl+Shift+T</kbd>) uygularsam yeni bir Terminal ekranı açılıyor olacak. Ben burada yeni bir Terminal açma üzerinden örnek verdim, ancak burada atayacağınız kısayol herhangi başka işlev için de olabilir, o sizlere kalmış. Ayrıca; bu kısayollar menüsünde yer alan kısayollara da göz atıp, eğer isterseniz dilediğiniz şekilde değiştirebilirsiniz.

### Bash Shell Kısayolları

Bash Shell programının ne işe yaradığını daha önceki kısımlarda açıklamıştık. Şimdi ise komut yazarken işimizi kolaylaştıracak olan bazı Bash Shell kısayollarını göreceğiz. Burada verilenleri direk olarak kullanmanız beklenmediğini daha önceki kısımlarda söylemiştim. Kısayolların oturması için çokça pratik gerek. Pratik yaptıkça zaten zamanla istemeden de olsa öğrenmiş ve farkında olmadan kullanıyor olacağız emin olun.

## İmleç Hareketleri:

<div class="table-responsive"><table class="table table-bordered table-striped"><thead><tr><th>Kısayol</th><th>Kısayol Açıklaması</th></tr></thead><tbody><tr><td><kbd>Ctrl + A</kbd></td><td>imleç satır başına gider.</td></tr><tr><td><kbd>Ctrl + E</kbd></td><td>imleç satır sonuna gider.</td></tr><tr><td><kbd>Ctrl + P</kbd></td><td>önce çalıştırılmış komut gösterilir.</td></tr><tr><td><kbd>Ctrl + N</kbd></td><td>sonra çalıştırılmış komut gösterilir.</td></tr><tr><td><kbd>Alt + B</kbd></td><td>sola doğru(geri) bir kelime kadar imleç kayar.</td></tr><tr><td><kbd>Alt + F</kbd></td><td>sağa doğru(ileri) bir kelime kadar imleç kayar.</td></tr><tr><td><kbd>Ctrl + F</kbd></td><td>imleç bir karakter ileri gider.</td></tr><tr><td><kbd>Ctrl + B</kbd></td><td>imleç bir karakter geri gider.</td></tr><tr><td><kbd>Ctrl + XX</kbd></td><td>geçerli imleç konumundan, imleç satır başına geçer.</td></tr></tbody></table></div>

* * *

## Düzenleme

<div class="table-responsive"><table class="table table-bordered table-striped"><thead><tr><th width="21%">Kısayol </th><th width="79%">Kısayol Açıklaması</th></tr></thead><tbody><tr><td><kbd>Ctrl + L</kbd></td><td>ekran temizlenir ve imleç en üst satıra çıkar yani `clear` komutu ile aynı işlemi yapar.</td></tr><tr><td><kbd>Alt + D</kbd></td><td>imleçten sonraki kelimeyi siler.</td></tr><tr><td><kbd>Ctrl + U</kbd></td><td>imlecin solundaki her şeyi siler.</td></tr><tr><td><kbd>Ctrl + K</kbd></td><td>imlecin sağındaki her şeyi siler.</td></tr><tr><td><kbd>Ctrl + Y</kbd></td><td>kesilmiş olan son metni ekrana yapıştırır.</td></tr><tr><td><kbd>Esc + T</kbd></td><td>imleçten önceki iki kelime yer değiştir.</td></tr><tr><td><kbd>Ctrl + H</kbd></td><td>sola doğru tek tek karakterleri siler.(yani Backspace gibi davranır)</td></tr><tr><td><kbd>Alt + U</kbd></td><td>imlecin başladığı yerden sözcüğün sonuna kadar bütün karakterleri büyük harf yapar.</td></tr><tr><td><kbd>Alt + L</kbd></td><td>imlecin başladığı yerden sözcüğün sonuna kadar bütün karakterleri küçük harf yapar.</td></tr><tr><td><kbd>Alt + C</kbd></td><td>imlecin üstünde bulunduğu karakteri büyük harf yapar.</td></tr><tr><td><kbd>Ctrl + C</kbd></td><td>komutu durdurur/keser.</td></tr><tr><td><kbd>Ctrl + R</kbd></td><td>daha önce kullanılmış olan komutlar arasında arama yapma ve o komutu tekrardan kullanma imkanı sağlar.</td></tr><tr><td><kbd>Ctrl + Z </kbd></td><td>çalışan süreci arka plana atarak duraklatır.</td></tr><tr><td><kbd>Ctrl + D</kbd></td><td>Terminali sonlandırır.</td></tr><tr><td><kbd>Tab</kbd></td><td>Otomatik tamamlamayı sağlar. Konsol üzerinden bir kısmını yazmış olduğunuz, dosya, dizin ve komut türevi her türlü ifadeyi otomatik tamamlar. Ayrıca iki kez üst üste basıldığında da yazmış olduğunuz ifade ile başlayan tüm içeriği listeler.</td></tr></tbody></table></div>

* * *



Burada belirttiklerim dışında pek çok kısayol mevcut ancak ben hepsine değinmedim. Kaynak olarak kullandığım [bu adresten](https://ss64.com/bash/syntax-keyboard.html) veya internette yer alan ücretsiz bir çok kaynaktan çok rahat şekilde yeni kısayol bilgilerine ulaşabilirsiniz.

### Aynı Anda Birden Fazla Komut Kullanımı

Hazır konu kısayollardan ve pratiklikten açılmışken aynı anda birden fazla komut kullanımını da anlatmadan geçmek olmaz. Bunun için üç farklı yol izleyebiliriz. 
Birincisi yan yana olacak şekilde <kbd>&&</kbd> operatörünü kullanmaktır, hemen bu yolu deneyelim. Ancak henüz tam olarak komutları öğrenmediğimiz için önceden kullandığımız komutlardan yararlanalım. Bunun için **PATH** ve **TERM** ortam değişkenlerini kullanarak aynı anda çıktı almak üzere <code> echo $PATH && echo $TERM</code> komutunu konsola yazalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/32.png)

Çıktıda görüldüğü gibi **PATH** ve **TERM** ortam değişkenlerinin değerleri, yazdığımız iki komutun arasına koymuş olduğumuz <kbd>&&</kbd> operatörü sayesinde aynı anda basılmış oldu. 
Gelin şimdi de diğer bir yol olan noktalı virgül " <kbd>;</kbd> " kullanarak aynı işlemi tekrar edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/33.png)

Ve sonuç bizleri şaşırtmayarak yine birleşik komut içerisinde yazdığımız ortam değişkenlerinin değerlerini aynı anda ekrana bastırdı. 
Son olarak  <kbd> || </kbd> operatörünü ele alalım. Bu operatör diğerlerinden farklı olarak, kullandığımızda eğer verilen komutlardan birincisi başarısız olursa diğerini basar. Bu operatörü de kısaca şu örnek ile inceleyelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/34.png)

Burada 1. komut başarısız olduğu için 2. komut ekrana basılmış oldu. Yani bir nevi önlem amaçlı bir kullanımdır. Biz konsola bu kullanım ile diyoruz ki; ***"Eğer verdiğim ilk komut başarısız olursa ikinci komutu çalıştır."*** Yani bu durumda eğer ilk komut başarısız olursa, hemen devreye ikinci komut girecektir, ancak ilk komut başarılı olursa ikinci komut çalışmayacaktır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/35.png" width="875">

### Kısayol Koruması

Buraya gelene kadar birçok kısayoldan ve bu kısayolların avantajlarından bahsettik ancak kısayollar bazen istemediğimiz sonuçlar doğurabiliyor. Biz de böyle durumlarla karşılaşmamak adına şimdiden ufak önlemler alsak iyi olur. Önceki kısımlarda <kbd>Ctrl+D</kbd> kısayolunun mevcut konsolu kapattığını öğrenmiştik. Bu çok kullanışlı bir kısayol olsa da bazen yanlışlıkla kullanıldığında konsolun ansızın kapanmasına neden olabiliyor. Yani konsolun anlık kapanmasına karşı bir kontrol mekanizması oluşturmamız sonradan üzülmemek için şart. Bu kontrol sağlama imkanını bize **ignoreeof** verir. **ignoreeof** tanımını kullanmanın 2 farklı yolu vardır. Bunlardan birisi sadece **mevcut Terminal için geçerli** diğeri ise **sürekli ve oturumdaki tüm Terminallerde geçerli** olan kullanımlardır. 
**Sürekli ve tüm Terminal ekranlarında geçerli olsun istiyorsak:** 
Gerekli ayarlamaları yapmak üzere komut satırımıza <code> nano -w ~/.bashrc</code> komutunu veriyoruz ve <kbd> .bashrc</kbd> dosyasının en alt satırına <code>export IGNOREEOF=2</code> yazıp <kbd>Ctrl + X </kbd> tuş kombinasyonunu kullanarak **dosyanın ismini değiştirmeden kaydederek** çıkıyoruz.(Bütün kullanıcılarda bu korumayı sağlamak için değişikliği <kbd>bash.bashrc</kbd> dosyasında yapmamız gerektiğini daha önceki kısımlardan biliyorsunuz.)

Böylece koruma sistemi kuruldu ve artık test etmeye hazır. Komut satırındayken iki kez <kbd>Ctrl + D </kbd> tuş kombinasyonunu uygularsak konsol bize iki defa uyarıda bulunacaktır ve çıkmak için ancak 3. defa bastığımızda ya da komut satırına <code>exit</code> yazdığımızda konsol kapanacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/36.gif)

Burada biz <code>IGNOREEOF=2</code> şeklinde belirttik ve bu tanımlama bizi **2 kez** <kbd>Ctrl + D </kbd> kapatma kombinasyonundan korudu. Ancak sizler bu bana yetmez ya da 2 kez fazla olur diyorsanız tanımı istediğiniz değerlerde ayarlayabilirsiniz. Örneğin <code>IGNOREEOF=4</code> olabilir ya da <code>IGNOREEOF=1</code> olabilir, bu değer tamamen size kalmış. Ayrıca bu kapanmaya karşı koruma özelliğini kapatmak isterseniz eklemiş olduğunuz ifadeyi dosyadan silerek dosyayı kaydetmeniz yeterli olacaktır.

**Şimdi de yalnızca mevcut Terminal için geçici koruma nasıl sağlarız ona değinelim:** 
Koruma katmanı ne kadar hayat kurtarıcı olsa da sürekli olması bazen rahatsız edici olabilir. İşte bu noktada sadece önemli ve gerekli gördüğümüz zaman bu özelliği açıp kapatma seçeneğine sahibiz. Bunu da iki farklı yolla yapabiliriz.

İlk yol, komut satırına <code>ignoreeof=2</code> şeklinde komut vermek. Bu komut sayesinde mevcut Terminal ekranı ancak 3.kez <kbd>Ctrl + D</kbd> tuş kombinasyonu uygulandığında kapanacaktır. Buradaki sayıyı dilediğiniz gibi değiştirebileceğinizi biliyorsunuz. Eğer bu özelliği devre dışı bırakmak istersek komut satırına <code>ignoreeof=0</code> yazmamız yeterli.

İkinci yöntem ise komut satırına <code>set -o ignoreeof</code> yazmak. Bu komut ile de mevcut komut satırımız ancak 11.kez <kbd>Ctrl + D </kbd>yapmamız sonucunda kapanacaktır. Bunun haricinde bir de <code>exit</code> komutunu verirsek konsol ekranı anında sonlanır. Bu özelliği devre dışı bırakmak isterseniz de, komut satırına <code> set +o ignoreeof</code> yazmanız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/37.gif)
