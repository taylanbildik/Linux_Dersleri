# Linux Üzerinde Kısayollar

Bu bölümde, sistem üzerinde gerekli hakimiyeti sağlamada bizlere kolaylıklar sunan bazı kısayollardan bahsedeceğiz. Kısayolları şimdi öğrenmemizin sebebi, ileride sistemi yönetirken bize hız katıp işimizi kolaylaştıracak olmaları. Hem şimdi öğrenirsek eğitim boyunca sürekli pratik yapma imkanı bulmuş olacağız. Daha önce de sıklıkla tekrar ettiğim gibi amacımız bilgi ezberlemek değil, öğrendiğimiz bilgileri uygulayarak yetkinlik haline getirmek. Yani buradaki tüm kısayolları tek seferde ezberlemek gibi bir gayretiniz olmasın. Zaten hepsini bilmek veya her zaman kullanmak zorunda falan da değilsiniz. Zamanla sık ihtiyaç duyduğunuz kısayolları kendi kendinize öğrenmiş olacaksınız. Çünkü onlara ihtiyaç duyuyor olacaksınız.

Kısayollar genellikle pek önemsenmese de alıştıktan sonra verimliliğinizi arttıracağı için tıpkı eğitimin geri kalanındaki bölümler gibi bu bölüme de azami özeni göstermenizi rica ediyorum. 

Sistemimizi komut satırı üzerinden yönetirken terminal araçlarının ve kabukların sahip olduğu kısayolları kullanabiliyoruz. Ayrıca bunlar dışında eğer grafiksel arayüzü kullanıyorsak elbette grafiksel arayüze ait çeşitli kısayollara da sahip oluyoruz. Ancak ben komut satırı kullanımına odaklanmak istediğim için grafiksel arayüzdeki kısayolların üzerinde durmak istemiyorum. Çünkü kullandığınız dağıtıma ve grafiksel arayüz ortamına göre kullanılan kısayollar değişiklik gösteriyor. Örneğin pek çok dağıtımda <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>t</kbd> tuşlaması yeni bir konsol yani terminal penceresinin açılmasını sağlıyor. Fakat sizin kullandığınız dağıtımda bu kısayol tanımlı olmayabilir. Grafiksel arayüz ile sisteminizi yönetirken hangi tür kısayollara sahip olduğunuzu ve gerektiğinde kendiniz için özel kısayolları nasıl tanımlayabileceğinizi kullanmakta olduğunuz sistemin ayarlarını kurcalayarak kolayca keşfedebilirsiniz. Biz yalnızca bash üzerindeki kısayolları ele alıyor olacağız.

# Bash Kabuk Kısayolları

Söz konusu bash kabuğu üzerindeki kısayollar olduğunda, dört tür kısayoldan bahsedebiliriz: 

- İmleç Kısayolları
- Düzenleme Kısayolları
- Geçmiş Kısayolları
- İşlem Kısayolları

Bash kabuğundaki tüm kısayollar esasen metin bazlı düzenleme için yani aslında kabuğa komut girerken bizim işimizi kolaylaştırmak için var. Metin düzenleme haricinde örneğin girilen bir komut neticesinde gerçekleştirilen işin geri alınması mümkün değil. Örneğin bir klasörü kalıcı olarak sildiğinizde bunu geri alacak bir kısayol tuşu bulunmuyor. Buradaki kısayollar bizim kolayca komut yazabilmemiz için var. Zaten kısayollardan haberdar oldukça bu durumu çok daha net bir biçimde kendiniz de göreceksiniz. Şimdi sırasıyla bu kısayolları tanıyalım.

# İmleç Kısayolları

İmleç kısayollarından bahsetmeden önce imlecin kabaca bir tanımını yapacak olursak: komut girerken genellikle yanıp sönerek bizi bekleyen bu işarete imleç diyoruz. 

![1.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/1.webp)

İmlecin temel işlevi satırda nerede bulunduğumuzu göstermek. Bu sayede komut girerken satırın hangi noktasında kaldığımızı takip edip imlecin bunduğu konumdan komutlarımızı girmeye devam edebiliyoruz. İmleç neredeyse, bizim girdiğimiz yeni komutlar da imleçten sonra konsola aktarılıyor. Dolayısıyla özellikle uzun olan komutları kullanırken, imleci kısayollar ile esnek şekilde hızlıca hareket ettirebilmek gerçekten bize çok hız kazandırıyor. Normalde sizlerin de bildiği gibi sol sağ yön tuşları ile tüm karakterler arasında tek tek geçiş yapabiliyoruz fakat bu komutun da uzunluğuna bağlı olarak epey vakit alabiliyor. Örneğin "bu uzun uzun yazılmış bir deneme komutudur" ifadesini yazıp satırın başından sonuna ve sonundan başına sağ sol yön tuşları ile geçiş yapmayı deneyebiliriz.

![2.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/2.gif)

Bakın tek tek geçiş yapıldığı için satırın başı ile sonu arasında geçiş yapmak biraz vakit alıyor. İşte tam da bu noktada bizim dertlerimize derman olabilecek imleç kısayollarından faydalanabiliriz aslında. Hadi gelin buradaki uzun komut örneğimiz üzerinden imleç kısayollarını uygulamalı şekilde test edelim.

## Satır Başı ve Sonu

<kbd>Ctrl</kbd> + <kbd>a</kbd>

Bu kısayolu satırın herhangi bir noktasındayken **satırın en başına atlamak** için kullanabilirsiniz.

![3.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/3.gif)

<kbd>Ctrl</kbd> + <kbd>e</kbd>

Bu kısayolu herhangi bir noktasındayken **satırın en sonuna atlamak** için kullanabilirsiniz.

![4.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/4.gif)

Bu kısayolu satırın sonu olduğu için “**e**nd” yani “son” ifadesinin kısalmasından gelen “**e**” karakteri aracılığıyla kolayca hatırlayabilirsiniz.  Neticede <kbd>Ctrl</kbd> + <kbd>a</kbd> ve <kbd>Ctrl</kbd> + <kbd>e</kbd> kısayollarıyla satır başı ile sonu arasında hızlıca geçişler yapabilirsiniz. 

![5.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/5.gif)

## Karakterler Arası Geçiş

Satır başı ile sonu arasında geçiş yapmak dışında, tek tek karakter üzerinde de ileri geri şekilde hareket edebilirsiniz. Normalde standart şekilde klavyemizdeki sağ sol yön tuşlarını kullanarak tek tek karakterler arasında geçiş yapabiliyoruz. Ancak yön tuşları özellikler 10 parmak klavye kullanımında parmaklarımıza uzak kaldığı için bu işlem için de özel kısayollar bulunuyor. 

Bir karakter ileri gitmek için <kbd>Ctrl</kbd> +<kbd>f</kbd> 

Bir karakter geri gitmek için de <kbd>Ctrl</kbd> + <kbd>b</kbd>  

![6.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/6.gif)

<kbd>Ctrl</kbd> +<kbd>f</kbd>  kısayolundaki <kbd>f</kbd> tuşlaması “**f**orward” yani “ileri” kelimesinin kısaltmasından geliyorken, geri gitmemizi sağlayan <kbd>b</kbd> tuşlaması da “**b**ackward” yani “geriye” ifadesinin kısaltmasını temsil ediyor. Zaten kısayolları da bu şekilde çok daha kolay aklınızda tutabilirsiniz. 

Muhtemelen alıştığınız için sağ sol yön tuşlarını kullanmak daha kolay gibi geliyor ancak bu gerçekte böyle değil. Eğer biraz pratik yaparsanız 10 parmak klavye düzeninde elinizi kaydırmadan kolayca karakterler arasında geçiş yapabildiğiniz kendiniz de göreceksiniz. Zaten bu kısayolların kullanım amacı da tam olarak bu. 

## Kelimeler Arası Geçiş

<kbd>Alt</kbd> + <kbd>f</kbd>
Bir kelime ileri atlamak için kullanabilirsiniz.

![7.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/7.gif)

<kbd>Alt</kbd> + <kbd>b</kbd>

Bir kelime geri atlamak için kullanabilirsiniz.

![8.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/8.gif)

Kelimler arasında atlamak için <kbd>Alt</kbd> tuşuna bastıktan sonra İngilizce “**f**orward” yani “ileri” ifadesini temsilen <kbd>f</kbd> tuşuna bastığımızda bir kelime ileri, “**b**ackward” yani “geriye” ifadesine temsilen de <kbd>b</kbd> tuşuna bastığımızda ise bir kelime geriye atlarız. 

Yani özetle dikkat ettiyseniz kelimeler arasında gezmek için <kbd>Alt</kbd> kısayolunu kullanırken, karakter arasında gezmek için de <kbd>Ctrl</kbd> tuşlamasını kullanıyoruz. Bunun dışında ileri ve geri hareket için kullandığımız ikincil kısayol tuşu aynı zaten. 

İmlecimizi kontrol etmeyle ilgili bence temelde bilinmesi gereken kısayollar bu kadar. 

# Düzenleme Kısayolları

Yazdığımız ifadeleri düzenlemek için kullanabildiğimiz çeşitli kısayollar mevcut.

## Kelimeleri Düzenleme

<kbd>Alt</kbd> + <kbd>Backspace</kbd>

İmleçten önceki kelimeleri silmek için kullanabilirsiniz. 

![9.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/9.gif)

<kbd>Alt</kbd> + <kbd>d</kbd>

İmleçten sonraki kelimeleri silmek için kullanabilirsiniz. 

![10.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/10.gif)

<kbd>Ctrl</kbd> + <kbd>_</kbd>

Silinen karakter veya kelime öbeklerini geri getirmek için kullanabilirsiniz.

![11.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/11.gif)

Neticede gördüğünüz gibi bu kısayol sayesinde sonda başa doğru yazıp sildiklerime dönebiliyorum. Eğer bir önceki yazdığınız ve sildiğini ifadelere dönmek isterseniz bu kısayol epey işlevsel olabiliyor.

<kbd>Alt</kbd> + <kbd>t</kbd>

Kelimelerin yerini değiştirmek için kullanabilirsiniz

![12.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/12.gif)

## Kes Yapıştır

Kes: <kbd>Ctrl</kbd> + <kbd>w</kbd>

Yapıştır: <kbd>Ctrl</kbd> + <kbd>y</kbd>

İmleçten önceki kelimeleri kesip yapıştırmak için kullanabilirsiniz.

![13.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/13.gif)

<kbd>Ctrl</kbd> + <kbd>u</kbd>

İmlecin gerisinde kalan tüm satırı kesmek için kullanabilirsiniz.

![14.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/14.gif)

Kes-yapıştır kısayolları özellikle tty gibi yalnızca komut satırı arayüzde çalışırken işlerimizi inanılmaz kolaylaştırıyor. Neticede salt komut satırı arayüzünde mouse kullanarak kopyalayıp ya da kesip yapıştırabileceğimiz bir arayüze sahip olmuyoruz.

<kbd>Ctrl</kbd> + <kbd>l</kbd>

Komut satırını temizlemek için kullanabilirsiniz.

![15.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/15.gif)

Neticede gördüğünüz gibi bash kabuğu kendi içerisinde bizim işimizi kolaylaştıracak pek çok temel kısayola sahip. Aslında bash kabuğunun sahip olduğu tüm kısayollar bahsettiklerimden ibaret değil fakat diğerleri sık kullanılmadıkları için tek tek hepsini ele almak istemedim. Bence sık ihtiyaç duyacaklarımızı bilmemiz yeterli. Yine de elbette eğer merak ediyorsanız kısa bir internet araştırması ile bash kabuğunun tüm kısayollarını öğrenebilirsiniz. Kısayolları incelediğinizde zaten hepsinin sık kullanılmayacağı konusunda bana da hak vereceğinizi düşünüyorum.

Biraz pratik yaptıktan sonra benim bahsettiğim temel kısayolların özellikle on parmak klavye kullanımında bu kısayolların size ne kadar kolaylık sağladığını bizzat kendiniz deneyimleyeceksiniz. Zaten pek çok klavye kısayolunda da olduğu gibi kabuk kısayollarının temel amacı size klavye kullanımında kolaylıklar sağlamak. Eğer kısayolların çok da gerekli olmadığı veya hatırlanması zor olduğu konusunda ön yargılarınız varsa lütfen sadece biraz pratik yaparak ön yargılarınızdan kurtulun.

## Otomatik Tamamlama

Bash kabuğunda etkileşimli kabuk kullanımını kolaylaştırmak için "otomatik tamamlama" özelliği bulunuyor. Bu özellik sayesinde komutların ve dosya klasör isimlerinin <kbd>tab</kbd> tuşuna basıldığında otomatik olarak kabuk tarafından tamamlanması mümkün oluyor.

Örneğin `pwd` komutunu yazarken yalnızca **pw** yazıp iki kez <kbd>tab</kbd> tuşuna basarsak “pw” ile başlayan kullanılabilir komutların bir listesini alırız. 

![16.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/16.gif)

Eğer konsola girdiğim ifade başka hiç bir komutla eşleşmiyorsa otomatik olarak komutun geri kalanı kabuk tarafından tamamlanır. Örneğin benim sistemimde “**ec**” ile başlayan başka bir komut veya dosya ismi olmadığı için sadece **ec** şeklinde yazıp <kbd>tab</kbd> tuşuna bastığımda otomatik olarak `echo` komutuna tamamlanıyor. 

![17.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/17.gif)

Biliyorum `echo` komutu için bu özellik pek etkileyici gelmemiş olabilir ancak uzun veya yazması zahmetli komutları kullanırken <kbd>tab</kbd> otomatik tamamlama kısayolu inanılmaz kolaylık sağlıyor. Ayrıca kullanabileceğiniz mevcut komut seçeneklerini de listelediği için komutları hatırlamada oldukça işlevsel bir kısayol. Üstelik bu otomatik tamamlama, yalnızca komut isimleri için de geçerli değil. Kabuğun tamamlayabileceği tüm verileri <kbd>tab</kbd> ile otomatik tamamlatabiliyoruz. Örneğin ben bir dosyayı okumak için `cat` komutunu kullandığımda dosyanın adını hatırlamıyorsam, mevcut konumda kullanabileceğim dosyası listelemek için iki kez <kbd>tab</kbd> tuşuna basmam yeterli. Ayrıca dosya isminin birazını girip tekrar <kbd>tab</kbd> tuşuna bastığımda dosya ismi de otomatik olarak tamamlanacaktır.

![18.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/18.gif)

Bakın bu şekilde uzun uzun dosya veya klasör isimlerini de yazmaya gerek kalmadan kullanabileceğimiz seçenekler hakkında sürekli bilgi de edinerek etkili şekilde komut girebiliyoruz. Özetle <kbd>tab</kbd> tuşu kabuğun tamamlayabileceği her türlü veriye kolayca tek bir tuş ile ulaşabilmemizi sağlıyor. 

# Geçmiş Kısayolları

Kabuğa girdiğimiz komutlar daha sonra tekrar kullanılabilmesi veya denetlenebilmesi için geçmiş listesine kaydediliyor. Bu liste sayesinde geçmişte girdiğimiz komutları sırasıyla görüp gerektiğine bu komutları tekrar geçmiş listesinden çağırıp kullanabileceğimiz çeşitli kısayollar var. Ancak bu kısayollardan bahsetmeden önce burada bahsi geçen “geçmiş” kavramını ve geçmiş listesini iyi biçimde anlamamız gerekir. Bu sebeple öncelikle geçmiş yani **history** kavramından bahsedelim.

## Komut Geçmişini Listelemek | History

Kabuğa girmiş olduğumuz komutlar daha sonra tekrar ulaşabilmemiz için "history" yani "geçmiş" adı altında liste şeklinde depolanıyor.  `history` komutu da bizlere geçmiş listesini görüntüleyip düzenleyebilme olanağı tanıyor. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ history
  995  rmdir -vp x/
 ..
 1985  sudo nano /etc/bash.bashrc
 1986  source /etc/bash.bashrc
 1987  echo $PATH
 1988  cat > test.sh
 1989  chmod +x test.sh
 1990  mv test.sh ~/Desktop/yeni-klasor/
 1991  test.sh
 1992  mv ~/Desktop/yeni-klasor/ ~/Desktop/yeni-dizin
 1993  test.sh
 1994  history

┌──(taylan@linuxdersleri)-[~]
└─$
```

Bakın geçmişte girmiş olduğum komutlar sıra numaralarıyla birlikte konsola bastırıldı. Bu liste biz bu komutları tekrar kullanmak istediğimizde kolayca ulaşabilmemiz için tutuluyor. 

Eğer listenin tamamını değil de sondan belirli bir satırını görmek istersek `history` komutundan sonra sondan kaç satır görmek istediğimizi belirtebiliriz. Örneğin en son girilmiş olan 5 komutu görmek için `history 5` komutunu girebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ history 5                                                    
 1991  test.sh
 1992  mv ~/Desktop/yeni-klasor/ ~/Desktop/yeni-dizin
 1993  test.sh
 1994  history
 1995  history 5

┌──(taylan@linuxdersleri)-[~]
└─$
```

Bakın yalnızca en son girilen 5 komut karşımıza getirildi. Geçmiş listesi kullanıcılara özel olarak tutuluyor. Yani benim burada aldığım çıktılar taylan kullanıcısının girmiş olduğu komutların listesi.

Geçmiş listesi her bir kullanıcının kendi ev dizininde ***.bash_history*** isimli dosyada tutuluyor. Ben kendi kullanıcım olarak taylan kullanıcının dosyasına bakmak için `cat /home/taylan/.bash_histroy` komutunu giriyorum. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ cat /home/taylan/.bash_history
rmdir -vp x/
...
sudo nano /etc/bash.bashrc
source /etc/bash.bashrc
echo $PATH
cat > test.sh
chmod +x test.sh
mv test.sh ~/Desktop/yeni-klasor/
test.sh
mv ~/Desktop/yeni-klasor/ ~/Desktop/yeni-dizin
test.sh
history

┌──(taylan@linuxdersleri)-[~]
└─$
```

Ben çıktı uzun olduğu için yine kısaltarak verdim ancak gördüğünüz gibi geçmişte girdiğim tüm komutların bu dosyada tutulduğunu bizzat teyit etmiş olduk. Şimdi geçmişteki bu komutları nasıl tekrar kolayca çağırıp kullanabileceğimizden bahsederek devam edebiliriz.

## Geçmişteki Komutları Çağırmak

Geçmişte girmiş olduğumuz komutlara ulaşmanın en kolay yöntemi de klavyemizdeki yukarı aşağı yön tuşlarını kullanmak. Denemek için sırasıyla `echo ilk`, `echo orta` ve `echo son` şeklinde komutlarımızı girelim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ echo ilk
ilk

┌──(taylan@linuxdersleri)-[~]
└─$ echo orta
orta

┌──(taylan@linuxdersleri)-[~]
└─$ echo son
son

┌──(taylan@linuxdersleri)-[~]
└─$
```

Şimdi geçmişteki kısayolları çağırmak için yukarı aşağı yön tuşlarını kullanmayı deneyebiliriz. 

![19.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/19.gif)

Gördüğünüz gibi en son girmiş olduğumuz komutları geri getirmek için yukarı aşağı yön tuşları oldukça işlevsel. Fakat biz en son girdiğimiz komut yerine çok daha önce girmiş olduğumuz komutları da çağırmak isteyebiliriz. Liste uzun olacağı için yön tuşları ile gezinip doğru komutu bulmak hiç de kolay olmayacak. Bunun yerine doğrudan kullanmak istediğimiz komutu, geçmiş listesindeki sıra numarasını ünlem işaretinden sonra yani `!SIRA-NO` şeklinde girip çağırabiliriz.

Öncelikle geçmiş listesine tekrar bakmak için `history` komutu ile listeyi tekrar bastıralım. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ history
  995  rmdir -vp x/
 ..
 1985  sudo nano /etc/bash.bashrc
 1986  source /etc/bash.bashrc
 1987  echo $PATH
 1988  cat > test.sh
 1989  chmod +x test.sh
 1990  mv test.sh ~/Desktop/yeni-klasor/
 1991  test.sh
 1992  mv ~/Desktop/yeni-klasor/ ~/Desktop/yeni-dizin
 1993  test.sh
 1994  history

┌──(taylan@linuxdersleri)-[~]
└─$
```

Ben örnek olması için **1987** sıra numarasında yer alan “`echo $PATH`” komutunu geçmişten çağırmak üzere `!1987` şeklinde komutumu giriyorum.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ !1987
echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/home/taylan/Desktop/yeni-dizin

┌──(taylan@linuxdersleri)-[~]
└─$
```

Bakın ilk olarak çağırılan komut komut burada belirtildi ve çalıştırıldı. Bu sayede tam olarak sıra numarası belirterek geçmişteki komutu kolayca çağırıp tekrar kullanabildik. 

Sıra numarası dışında dilersek en son girmiş olduğumuz komutu tekrar çalıştırmak için iki kez ünlem işaretini de kullanabiliriz.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ echo "bu bir deneme komutudur"                               
bu bir deneme komutudur

┌──(taylan@linuxdersleri)-[~]
└─$ !!                                                           
echo "bu bir deneme komutudur"
bu bir deneme komutudur

┌──(taylan@linuxdersleri)-[~]
└─$
```

Bakın iki kez kullandığım ünlem işareti en son komutu tekrar çağırıp çalıştırdı. Bu da oldukça kullanışlı bir kısayol. Ayrıca bu kısayollar dışında eğer geçmiş listesinde araştırma yapıp, aradığınız komutlar ile eşleşenleri geçmişten getirmek isterseniz <kbd>Ctrl</kbd> + <kbd>r</kbd> kısayolunu uygulayıp, geçmiş listesinde aradığınız komutun bir kısmını yazabilirsiniz. 

![20.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/20.webp)

Buraya gireceğimiz ifadeler küçük büyük harf duyarlılığı dahilinde geçmişte girdiğimiz komutlar içinden araştırılma yapılmasını sağlayacak. Örneğin ben `echo` komutunu araştırmak için “**ec**” şeklinde yazıyorum ve en son girmiş olduğu “**ec**” ile başlayan komut bulunduğu için <kbd>enter</kbd> ile komutu çalıştırıyorum.

![21.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/21.gif)

Eğer ilk eşleşen komut aradığımız komut değilse, aradığımız komuta dair daha fazla karakter girerek spesifik olarak ilgili komutu hedefleyebilirsiniz.

![22.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/22.gif)

<aside class="mavi"><strong>ℹ️ Not:</strong> Girilen kelimeye göre sunulan komut önerisinin daha hedef odaklı olduğunu belirmek için çıktıları renklendirdim.</aside>

Biz şimdiye kadar bulduğumuz komutu doğrudan çalıştırmak için <kbd>enter</kbd> ile komutu onayladık. Eğer bulduğunuz komutu doğrudan çalıştırmak yerine düzenlemek isterseniz enter tuşu yerine sağ veya sol yön tuşları ile komutu düzenlemeye geçebilirsiniz. 

![23.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/23.gif)

Eğer geçmiş listesinde arama işlemini iptal etmek isterseniz <kbd>Ctrl</kbd> + <kbd>g</kbd> kısayolu ile ya da <kbd>Ctrl</kbd> + <kbd>c</kbd> kısayolu ile arama fonksiyonunun kapatılmasını sağlayabilirsiniz. Ayrıca bunlar yerine `esc` tuşuna bastığınızda da arama kısayolu kapanacaktır zaten.

![24.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/24.gif)

Komut geçmişleri ile ilgili temelde bilmemiz gerekenler bunlar. Esasen geçmiş komutların kullanımı ile ilgili daha pek çok farklı kısayol ve konfigürasyon imkanına daha sahibiz ancak bunlar temel seviye için önemli olmayan detaylar. Burada bahsettiklerimizi kullanarak her türlü işinizi kısa yoldan çözümleyebilirsiniz. Biz şimdi bir diğer önemli konu olan “alias” ile devam edelim.

# Alias

Alias, Türkçe olarak "takma isim" anlamına geliyor. Bizler `alias` komutunu kullanarak kabuk üzerinde geçerli olacak takma isimler tanımlayabiliyoruz. Özellikle uzun ve sık kullanılan komutları tek bir kısa takma isimle tanımlayıp, bu takma isim üzerinden kolayca kullanabilmek gerçekten işlerimizi oldukça kolaylaştırabiliyor. Hemen uygulamalı şekilde kullanımını görelim. 

## Takma İsim Tanımlamak

Yeni bir takma isim tanımlamak için `alias` komutunun ardından tanımlayacağımız takma ismi yazıp eşittir işaretinin karşısına bu takma isimle ilişkili olacak komutumuzu tırnak içinde yazıyoruz.

```bash
alias bas="echo bunu epey uzun bir komut olarak varsayın"
```

Konsola `bas` yazdığımda buradaki `echo` komutu çalışıp konsola çıktıyı bastıracak. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ alias bas="echo bunu epey uzun bir komut olarak varsayın"    

┌──(taylan@linuxdersleri)-[~]
└─$ bas                                                          
bunu epey uzun bir komut olarak varsayın

┌──(taylan@linuxdersleri)-[~]
└─$ bas                                                          
bunu epey uzun bir komut olarak varsayın
```

Bakın ben `bas` yazdıkça aynı komut çalışıyor. Görebildiğiniz gibi takma isim sayesinde uzun bir komutu kısacık bir takma isimle kolayca bastırabiliyorum. Biz henüz komutlardan bahsetmediğimiz için örnek olarak `echo` komutunu kullandım ancak takma isimler, kabuğa girebildiğimiz tüm komutlar için kullanılabiliyor. Bu şekilde sık kullandığınız komutlara takma isimler üzerinden kolayca ulaşabilirsiniz.

Takma isim kullanırken, tıpkı değişkenlerde olduğu gibi takma isimlerin de kabuğa özel olarak tanımlandıklarına unutmayın. Yani benim bu konsol üzerinden tanımladığım takma isime başka bir konsol üzerinden ulaşmam mümkün değil. Test etmek için yeni bir konsol açalım. Ve bu konsola `bas` yazıp takma ismi kontrol edelim. 

![25.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/25.webp)

Bakın `bas` komutu bulunmadı şeklinde bir hata aldık. Çünkü takma isimler de tıpkı değişkenlerde olduğu gibi yalnızca tanımlandıkları kabuklarda geçerli. Örneğin kendi kullanıcı hesabımdaki tüm etkileşimli kabuklarda bu takma isim geçerli olsun istersem, kendi ev dizinimdeki ***.bashrc*** dosyasına bu takma ismi eklemem gerekiyor. Benzer şekilde tüm kullanıcılarda geçerli olması için de ***/etc/bash.bashrc*** ya da ***/etc/.bashrc*** dosyalarından hangisi mevcutsa ona ekleyip, tanımladığım takma isimin tüm kullanıcılara tarafından ortak şekilde kullanılabilmesini sağlayabilirim. Zaten bu konfigürasyon dosyalarından ve etkilerinden daha önce bahsettik. Tek yapmanız gereken ihtiyacınıza uygun olan dosyaya bu takma ismi tanımlayıp dosyayı kaydetmektir. 

Ben örnek olarak kendi hesabımdaki tüm etkileşimli kabuklarda bu takma adı kullanabilmek için ev dizinimdeki ***.bashrc*** dosyasına takma isimi ekleyeceğim. Aşağıdaki gif resim üzerinden tüm işlemi takip edebilirsiniz. Zaten daha önce değişkenlerden bahsederken benzer adımları izlediğimiz için tekrar tüm adımları açıklamamıza gerek yok.

![26.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/kisayol/26.gif)

```bash
sudo nano ~/.bashrc
```

```bash
alias bas="ben bir takma isimim"
```

```bash
source ~/.bashrc
```

Bu şekilde kendi hesabımdaki tüm kabuklarda geçerli olacak “bas” isimli bir değişken tanımlamış oldum.

## Takma İsimleri Listelemek

Eğer mevcut kabuk üzerinde tanımlı olan takma isimleri görmek istersek `alias` komutunu kullanmamız yeterli. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ alias
alias bas='echo ben bir takma isimim'
alias diff='diff --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -l'
alias ls='ls --color=auto'

┌──(taylan@linuxdersleri)-[~]
└─$
```

Bakın mevcut kabukta kullanılabilir olan takma isimler listelendi. Burada listelenmiş olan takma isimler sizlerin kullanmakta olduğu dağıtıma göre farklılık gösterebilir hatta belki varsayılan olarak hiç bir takma isim tanımlanmamış da olabilir. Ancak bu hiç önemli değil. Zira istediğiniz takma isimi kendiniz de nasıl tanımlayabileceğinizi zaten biliyorsunuz.

Ayrıca yeni takma isim tanımlamak yerine dilersek mevcut takma isimleri geçersiz kılma olanağımız da var aslında.

## Takma İsimleri Kaldırmak

Mevcut kabuktan bir takma isimi kaldırmak isterseniz `unalias` komutunun ardından kaldırmak istediğiniz takma isimi girmeniz yeterli. Örneğin ben tanımladığım `bas` takma isminin artık bu kabukta geçerli olmasını istemediğim için `unalias bas` şeklinde komutumu giriyorum. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ alias
alias bas='echo ben bir takma isimim'
alias diff='diff --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -l'
alias ls='ls --color=auto'

┌──(taylan@linuxdersleri)-[~]
└─$ unalias bas

┌──(taylan@linuxdersleri)-[~]
└─$ alias
alias diff='diff --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -l'
alias ls='ls --color=auto'

┌──(taylan@linuxdersleri)-[~]
└─$ bas                                                                       
Command 'bas' not found
```

Burada dikkat etmeniz gereken detay bizim bu işlemi yalnızca geçerli kabuk üzerinde gerçekleştirmiş olduğumuz. Başka bir konsol açarsam, takma isim orada geçerli olmaya devam edecek çünkü `unalias` komutu yalnızca mevcut kabuktaki takma ismi kaldırdı. Eğer kendi hesabımdaki tüm kabuklarda bu takma isimin kaldırılmasını istersem ~/.bashrc dosyasında tanımladığım takma ismi silebilir veya hemen onun ardından `unalias` komutu ile ilgili takma isimi geçersiz kılabilirim. 

Ben anlatım sırasında takma ismi yalnızca mevcut kullanıcı hesabında geçerli olacak şekilde tanımladım ancak siz tüm kullanıcıları etkileyecek şekilde de tanımlayabilirsiniz. Örneğin tüm kullanıcılar için takma isim tanımlamak istiyorsanız bunu ***/etc/bashrc*** ya da ***/etc/bash.bashrc*** dosyasına ekleyebilirsiniz. 

Başka bir senaryoda eğer tüm kullanıcılar için geçerli olacak bir takma isim tanımlayıp yalnızca tek bir kullanıcıyı bu takma isimlerden hariç tutmak istersek, ***/etc/bashrc*** ya da ***/etc/bash.bashrc*** dosyasına ilgili takma ismi tanımlayıp. yalnızca hariç tutmak istediğimiz kullanıcının ev dizinindeki ***.bashrc*** dosyasının içinde `unalias` komutu ile ilgili takma isimin o kullanıcı için geçersiz olmasını sağlayabiliriz. Bu sayede yalnızca o kullanıcının etkileşimli kabuklarında bu takma isim geçersiz olacaktır.

Zaten konfigürasyon dosyalarının hangisinin hangi amaçla kullanıldığını bildiğiniz için ihtiyaçlarına özgü çözümleri kendiniz de kolayca bulabilirsiniz. 

En nihayetinde kabuk üzerinde komut girerken işlerimizi kolaylaştıracak pek çok kısayoldan ve yapıdan bahsettik. Eğer anlatımları uygulamalı olarak takip ettiyseniz zaten sizler de bizzat öğrendiğimiz bilgilerin ne kadar faydalı olabileceğini deneyimlemişsinizdir. Size önerim bu kısayolların kullanımına alışmak için bol bol pratik yapmanız. Belirli bir süre sonra zaten alışacağınız için eğitim boyunca gerektiğinde bu kısayolları kullanarak tekrar da edebilirsiniz.

<aside class="mavi"><strong>ℹ️ Not:</strong> Anlatımın başında “<strong>işlem kısayolları</strong>” olduğundan da bahsettik fakat bu bölümde “işlem kısayollarını” ele almadık çünkü henüz <strong>işlem(process)</strong> kavramından bahsetmedik. İleride işlem yönetimi bölümüne geldiğimizde bu kısayollardan bahsediyor olacağız. Bu sayede işlem kısayolları bizim için çok daha anlamlı olacak.</aside> 



