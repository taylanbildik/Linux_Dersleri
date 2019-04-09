
  
Dosya İşlemleri
=
Konumuz itibari ile dosyalarla epeyce haşır neşir olacağız. Yapacağımız işlemleri kısaca tanımlamak gerekirse; dosya kopyalama, taşıma, değiştirme, görüntüleme, düzenleme gibi işlemelerle dosyalar üzerinde hakimiyet kuracağız.

touch
-

<code>touch</code> komutu bize kolaylıkla metin dosyası oluşturma imkanı tanıyor. İşte bu yüzden dosya işlemleri konumuza <code>touch</code> komutu ile başlamak gayet doğru bir karar olacaktır.

Kendimize <code>touch</code> komutunu kullanarak boş bir dosya oluşturmak için komut satırına <code>touch dosya_ismi</code> şeklinde yazmamız gerekiyor. Burada fark ettiyseniz herhangi bir uzantı girmeme gerek kalmadı. Çünkü Linux sisteminde uzantı belirtme zorunluluğu bulunmuyor. Bu durumu gözlemlemek için konsola <code>touch yeni</code> komutunu vererek "**yeni**" adından bir dosya oluşturalım. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/1.png)

Görüldüğü üzere dosyamız bulunduğumuz ana dizinde oluşmuş oldu. Bunu teyit etmek için de çıktıda görüldüğü gibi daha önce öğrenmiş olduğumuz listeleme görevinde olan <code>ls</code> komutunu kullandık.

Peki bir tane değil de birden fazla dosya oluşturmak istersek ? İşte bunun için de komutumuzu <code>touch yeni1 yeni2 yeni3</code> şeklinde yazmamız yeterli.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/2.png)

Çıktıda görüldüğü gibi aynı andan 3 dosya oluşturmayı başardık.

Aslında <code>touch</code> komutunun çok farklı kullanım yöntemleri de mevcut ancak ben son olarak dosyaların tarih etiketlerini nasıl değiştirebiliriz bunu göstermek istiyorum.

Dosyamızın tarih etiketini düzenlemek için **touch** komutunun <code>t</code> parametresini kullanacağız. Kullanımı ise <code>touch -t YYYYAAGGSSDD.SS dosya_adı</code> şeklindedir.
Öncelikle dosyamızın mevcut tarih etiketine bakalım.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/3.png)

Şimdi dosyamızın tarih etiketini daha önceki bir tarihe çevirelim.
Ben burada örnek olması açısından tarih olarak **2015.01.01** ve saat **22:15:32**  zamanlamasını kullanıyorum. Nasıl kullanıldığını daha net anlamak için örneği inceleyebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/4.png)

Gördüğünüz gibi dosyamın tarih etiketi değişmiş oldu. Bu değişme işlemini ileri veya geri tüm tarihler için kullanabilirsiniz.



cat
-

<code>cat</code> komutu temelde dosya içeriğini terminal ekranından okumamıza olanak sağlayan komuttur. Ancak bu komut bizlere temel işlevinin dışında da dosyalar ile ilgili pek çok işlem yapma imkanı sağlıyor. Sırasıyla bunların bazılarına göz atacağız. Ama ilk olarak temel işlevi olan terminal üzerinden dosya okuma işlevini görelim.

Bunun için konsola açmak istediğimiz dosyanın konumundayken <code>cat açılacak_dosya</code> şeklinde komut vermemiz gerek.
Ben masaüstü konumunda yer alan "***test.txt***" isimli dosyanın içeriğini okumak üzere konsola <code>cat test.txt</code> komutunu veriyorum.(Dosyayı grafik arayüzü aracılığı ile de açarak durumu kıyaslamanızı istedim.)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/5.png)
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/6.png)

Şimdi ise tıpkı <code>touch</code> komutunda çoklu dosyalar ile ilgili işlem yaptığımız gibi <code>cat</code> komutu ile de çoklu dosya okuma işlemini gerçekleştirelim. Çoklu dosya okuma işlemi için komut satırına <code> cat dosya1 dosya2 dosya3</code> şeklinde okumak istediğimiz dosyaların adlarını yazıyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/7.png)

Dosya içeriğine yazı eklemek istersek <code>cat > dosya_adı</code> şeklinde komut verdiğimizde, komut satırı imleci bir alt satıra geçerek bizden yazmak istediğimiz bilgiyi bekler. Yazma işlemimiz bittikten sonra kaydederek kapatmak için <kbd> Ctrl + D</kbd> tuş kombinasyonunu kullanırız. Ayrıca komutta girdiğimiz isimde bir dosya yoksa o isimde bir dosya oluşur ve girilen veriler içerisine işlenir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/8.gif)

Ancak var olan bir dosyanın adıyla bu komutu kullandıysanız ve dosya içerisinde yazı bulunuyorsa bu işlemin ardından dosyada bulunan eski veriler silinerek yalnızca girilen yeni veriler dosyaya işlenip kayıt oluyor. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/9.gif)

Bizler eğer önceki veriler silinmesin ve üzerine yeni veri ekleyebilelim istersek, komutumuzu <code>cat >> yeni3.txt</code> şeklinde kullanarak; yeni gireceğimiz verileri girdikten sonra <kbd>Ctrl + D</kbd> tuş kombinasyonu ile dosyamızı yeni eklenmiş verileriyle birlikte kaydedip kapatabiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/10.gif)

Gördüğünüz gibi yeni eklediğimiz veri dosyamızın içine işlenmiş oldu üstelik eski veriler de yok olmadan.

Ayrıca yeri gelmişken kullanmış olduğumuz <kbd>></kbd> yönlendirme operatörü ile ilgili bir örnek daha yapalım ki kullanım alanının biraz daha farkına varmış olalım. Örneğin <code>ls -ls</code> çıktısının içeriğini "***liste***" adında bir dosya oluşturarak içerisine aktaralım. Bunun için <code> ls -ls > liste</code> komutunu kullanabiliriz. Şayet yeni dosya oluşturmak istemiyorsak ve gireceğimiz veriler var olan dosyaya yazılsın istiyorsak o zaman <kbd>></kbd> operatörü yerine <kbd>>></kbd> operatörünü kullanırsak yeni veriler dosyaya eklenmiş olur.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/11.png)
Komutta açıklanacak bir durum yok zaten hepsi bildiğimiz komutlar. Burada asıl önemli olan <kbd>></kbd>  operatörünün kullanımıydı. Eğer anladıysak ne âlâ.. devam edelim.

<code>cat</code> komutunun işlevlerine devam ediyoruz; şimdi ise sırada, bir dosyada yer alan verileri başka bir dosyaya kopyalamak var. Bunun için komutumuzu <code>cat veri_alınan_dosya > veri_alan_dosya</code> şeklinde kullanıyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/12.png)

Komutumuzun kullanım şekilleri elbette bunlar ile sınırlı değil.
Belki defalarca söyledim ancak bu komut için de söylemem gerek; daha fazla detay için lütfen **man kılavuz sayfasına** göz atın.

tac
-

İsminden de anlamış olacaksınız ki <code>tac</code> komutu önce gördüğümüz <code>cat</code> komutunun tersi şekilde çıktı veriyor. Bu durumu daha iyi anlamak için karşılaştırmalı olarak verilen çıktıyı inceleyiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/13.png)

rev
-

Hazır terslikten bahsetmişken <code>rev</code> komutundan da söz etmemek olmaz. Bu komut dizeleri sondan başa doğru çevirerek ters şekilde ekrana basıyor. Bu durum en iyi örnek ile açıklanır. Hatta <code>cat</code> komutu ile de karşılaştırırsak sonuç daha net oraya çıkacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/14.png)


Çıktılarda görüldüğü gibi dosya içeriğinde yer alan ifadeler <code>rev</code> komutu sayesinde ters şekilde ekrana basılmış oldu.

"*Şimdi ben bu komutu nerede kullanacağım? neden öğrendim?*" demeyin. Bu konuya daha önce de değinmiştim, şimdi tekrar söylüyorum; burada öğrendiğimiz her komutu her zaman doğrudan kullanmayabilirsiniz, ancak yeri geldiğinde böyle bir komutun varlığından haberdar olarak gerektiğinde dokümantasyona bakmak suretiyle komutun kullanımına en kısa sürede ulaşabilirsiniz. Yani artık bu komutun varlığından haberdarsınız, eğer hatırlamak için bakmanız gerekirse burada olacak..

echo
-

Bu komutumuzu daha önce defaatle kullanmak durumunda kalmıştık hatırlarsanız. Kullandıkça da işlevinden bahsetmiştik ancak şimdi komutumuzu ele alarak biraz daha yakından bakmaya başlıyoruz.

Temel işlevi terminal ekranına istenilen bilgileri çıktı olarak göndermektir. Komutumuzu kullanırsak daha net anlaşılacaktır. Örneğin komut satırına "**Merhabalar**" yazdırmak isteyelim, bunun için komut satırına <code>echo Merhabalar</code> şeklinde komutumuzu girmemiz yeterli.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/15.png)

"**Merhabalar**" çıktımızı almış olduk. <code>echo</code> komutu sadece ekrana basma işlevine sahip değil. Örneğin bir dosya oluşturup içerisine istediğimiz ifadeyi yazabiliriz. Bunun için komut satırına <code>echo "yazılacak_ifade"> dosya_adı</code> şeklinde komutu giriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/16.png)

Sırasıyla yaptığım işlemleri açıklayayım.

İlk önce <code>cd Desktop</code> komutu ile masaüstü konumuna geldim.

Daha sonra <code>echo "Deneme Metni" > deneme</code> komutunu vererek masaüstü konumuna <kbd>deneme</kbd> isimli bir dosya oluşturarak içerisine "***Deneme Metni***" ifadesini yazmış oldum.

<code>ls</code> komutu ile de bulunduğum konumdaki dosyaları listeleyerek içerisinde oluşturduğum "**deneme**" adlı dosyanın bulunup bulunmadığını teyit ettim.

<code>cat deneme</code> ile de <code>cat</code>komutunun en temel kullanım işlevi olan içeriği ekran basma işlevini kullanarak oluşturduğum dosyanın içeriğine baktım.

Sonuç itibari ile her şey sorunsuz ilerledi ve finalde yeni oluşturmuş olduğum <kbd>deneme</kbd> isimli dosyanın içerisine "***Deneme Metni***" ifadesini yazdırmış oldum.

Ancak şöyle bir hatırlatmada bulunayım; eğer var olan bir dosyanın içeriğine yeni içerikler eklemek isterseniz daha önce de kullandığımız şekilde <kbd> >> </kbd> parametresini kullanın. **Aksi halde dosya içeriğindeki her şey silinir ve yalnızca sizin son yazdığınız ifade kalır.**

Var olan dosya içeriğine yeni bir ifade eklemek için komutu <code>echo "Yeni ifade" >> dosya_adı</code> şeklinde girmemiz gerek.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/17.png)

Şimdi <code>echo</code> komutunun <code>ls</code> komutu görevi gördüğü bir kullanıma değineceğiz.

Örneğin bulunduğumuz dizinde yer alan dosyaları görmek istersek komut satırına <code>echo *</code> şeklinde yazmamız halinde çıktı bizlere bulunduğumuz konumda yer alan dosyaları verir. Bu komut kullanımını <code>ls</code> komutu ile karşılaştırdığımızda daha net anlaşılacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/18.png)

<kbd> * </kbd> (**yıldız işareti**) joker karakteridir ve herhangi dosya dizin isimlerinin yerini tutar. Yani <code>echo</code> komutuna <kbd> * </kbd> karakteri eklediğimizde mevcut dizinde yer alan tüm dosya dizinler  <kbd>* </kbd> parametresi ile kapsanacağı için ne var ne yok listeleniyor. Bu duruma örnek olması açısından bulunduğumuz dizinde yer alan dosyalarda örneğin "**list**" adı ile başlayanları çıktı olarak almak istersek komut satırına <code>echo liste*</code> şeklinde komut vermemiz yeterlidir. (İleride ele alacağımız ***Joker karakter/wildcard*** konusundan bu karakterler açıklanmıştır.)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/19.png)

Son olarak <code>echo</code> komutunun kullanım şekillerinden olan, bir komutun çıktılarının <code>echo</code> komutu ile ekrana basılması var. Ancak doğrudan <code>echo komut</code> şeklinde yazılan komutlar istenmeyen bir sonuç çıkaracaktır. Verdiğimiz komutun çıktılarını alma işlemini gerçekleştirebilmek için <code>echo</code> komutunun bu iş için kullanım özelliklerinden olan iki farklı seçenek bulunuyor. Bunlardan biri **ters tırnak** <kbd>'</kbd> işaretini diğeri ise <code>$(komut)</code> parametre bütünüdür. Bunları sırayla görelim.

İlk olarak **ters tırnak** işaretli olan kullanımı ele alalım.

Ters tırnak işaretini oluşturmak için Türkçe klavyede <kbd>AltGr + ,</kbd> (**AltGr ile birlikte virgül tuşuna basmak gerek**)tuş kombinasyonunu kullanabiliriz. Komutun kullanımını için ise istediğimiz komutu tırnak içerisinde <code>echo</code> komutunun yanında kullanmak üzere  `echo 'komut'` şeklinde yazıyoruz.

Hemen bu kullanım ile ilgili bir örnek yapalım ve <code>ls</code> komutunun çıktılarını <code>echo</code> komutu yardımı ile basalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/20.png)

Ve ikinci yol olan `$(komut)` parametre bütünü; yine <code>ls</code> komutu için örneklendirilecek olursa, kullanımı `echo $(ls) ` şeklinde komut parantez içine gelecek şekilde olmalıdır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/21.png)

Sonuç itibari ile ilk <code>echo ls</code> komutunun çıktısı olan "**ls**" ifadesi bizim almak istediğimiz çıktıyı bizlere vermedi. Yani bu kullanım bizim yapmak istediğimiz iş olan, komutun çıktılarının ekrana bastırılması için doğru bir kullanım değildi. Doğru kullanım şekli ise ikinci ve üçüncü komut olan <code>echo 'ls'</code>, `echo $(ls)` şeklindedir. Bu komutların çıktısı istediğimiz şekilde, yani `ls` komutunun çıktısını(bulunduğumuz dizinde yer alan dosyaların bilgisi) ekrana basacak şekilde bizlere verdi. Sözü edilen durumu aşağıdaki çıktıyı inceleyerek bir bütün halinde kavrayabilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/22.png)


more
-

Şimdiye kadar öyle ya da böyle terminal üzerinden dosya okuma işlemi yapmamıza yardımcı olan komutlar gördük. Bu komutumuz da aynı şekilde metin dosyalarını terminal üzerinden okumamıza olanak sağlayan bir komuttur.

Örneğin daha önce de içeriğini okuyup değişiklik yapmış olduğumuz dosya olan <kbd>profile</kbd> dosyasının içeriğini <code>more</code> komutu yardımı ile okuyalım.

Bunun için <kbd>/etc/profile</kbd> konumunda bulunan dosyamı <code>more</code> komutu ile açmak üzere konsola <code>more /etc/profile</code> şeklinde konsola yazarak <kbd>profile</kbd> dosya içeriğini okumaya teşebbüs ediyorum.
Komutumuzun ardından terminal ekranında karşımıza <kbd>profile</kbd> dosyasının içeriği aşağıdaki gibi geldi.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/23.png)

Çıktıda görüldüğü gibi dosyanın içeriği ancak terminal ekranına sığacak şekilde görüntüleniyor. Hatta alt kısımda **--More--(77%)** şeklinde yazan yazı bizlere içeriğin devamı olduğunu belirtiyor. Eğer devamını okumak istersek <kbd>enter</kbd> tuşuna basarak adım adım alt satırlara bakabiliriz. Ayrıca <kbd>space</kbd> tuşu ile de sayfa sayfa atlayarak içeriğe göz atabiliriz. Eğer atladığınız sayfadan bir önceki sayfaya geri dönmek istersek <kbd>b</kbd>(**back/geri**) tuşunu, şayet dosya içeriğini görüntüleyen bu ekranı kapatmak istersek ise <kbd>q</kbd>(**quit/çıkış**) tuşunu kullanmamız yeterli.

less
-

Bu komutumuz da üst kısımda açıkladığımız `more` komutu ile aynı işlevdedir. Ayrıntısını merak ederseniz man sayfasına göz atmanız yeterli olacaktır.

Ben yine de <code>less</code> komutu ile **profile** dosyasının içeriğinin okunduğu şeklini aşağıya bırakıyorum. Eğer <code>more</code> komutunda bir problem yaşamadıysanız bu komut kullanımında da kesinlikle yaşamazsınız.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/24.png)


head-tail
-

Aslında komutların isimleri yani **head(kafa/baş)** ve **tail(kuyruk)** bizlere komut hakkında az çok bilgi veriyor. Şöyle ki bir dosyanın sadece baş kısmında ilk 10 satırı görüntülemek istersek <code>head</code> şayet son 10 satırı görüntülemek istersek ise <code>tail</code> komutunu kullanırız. Ayrıca bu komutlar özel parametre alarak istenildiği sayıda baştan veya sondan olmak üzere istenilen satırların görüntülenmesine olanak sağlar. Daha iyi anlamak adına hemen kullanımlarına geçelim.

Dosya içeriğinin ilk 10 satırını görüntülemek için <code>head dosya_adı</code> şeklinde komutumuzu kullanıyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/25.png)

Şimdi burada 10 satır içerik yok gibi gelebilir ancak dosya içerisindeki boş satırlar da bu 10 satıra dahil olduğundan çıktıyı boş satırlar ile saydığınızda tam olarak 10 satırın görüntülendiğini göreceksiniz.

Dosya içeriğinin son 10 satırını görüntülemek için <code>tail dosya_adı</code> şeklinde komutumuzu kullanıyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/26.png)
Şimdi istediğimiz sayıda baştan veya sondan dizinleri görüntüleyelim. Ben örnek olması açısından **baştan 6 sondan 2** satırı görüntülemek üzere komutumu veriyorum. Komutun kullanımı <code>head -n 6</code> ve <code>tail -n 2</code> şeklinde.

**Baştan 6 satırın çıktıları.**

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/27.png)

**Sondan 2 satırın çıktıları.**

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/28.png)

nl
-

Bu komutun işlevi satırları numaralandırarak çıktı vermektir. Hemen görelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/29.png)

Çıktıda da görüldüğü üzere dosya içeriğinde yer alan ifadeler satır satır numaralandırılarak ekrana basılmış oldu.

Ayrıca eğer listelenen içerik uzunsa bir önceki öğrendiğimiz <code>head-tail</code> komutları yardımı ile bu alanı düzenli şekilde sınırlandırabiliriz.

sort
-

Dosya çıktılarının alfabetik olarak düzenlenmesini sağlar. Örnek üzerinden devam edelim. Ben <kbd>isimler.txt</kbd> adında bir dosya oluşturdum ve içerisine karışık olarak isimler ekledim.
Ve bu isimleri alfabetik sıraya dizmek için <code>sort isimler.txt</code> komutunu kullandım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/30.png)

Eğer ters alfabetik şekilde yani **z den a ya doğru** sıralamak istersek <code>-r</code> parametresi kullanılır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/31.png)


paste
-

Örneğin iki dosyanın içeriğini aynı anda yan yana olacak şekilde komut satırında listelemek istersek, bu işi yapmamızı <code>paste </code> komutu sağlıyor. Kullanımı <code>paste dosya1 dosya2</code> şeklindedir.

Ben <kbd>yaşlar.txt</kbd> ve <kbd>isimler.txt</kbd> adlı dosyaları aynı anda yana yana görüntülemek adına komut satırına <code>paste isimler.txt yaşlar.txt</code> komutunu verdim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/32.png)


tee
-

Yazmak istediğimiz ifadeleri hem komut satırına yansıtıp hem de bu ifadelerin bir dosya içerisine kayıt olmasını isterseniz kullanacağınız komut <code>tee</code> komutu olacaktır.

Örnek üzerinden devam edelim.

<code>tee metin</code> komutu ile "**metin**" isminde bir dosya açıyorum ve içerisine birtakım ifadeler ekliyorum daha sonra ekleme işlemim bittiğinde dosyayı kaydederek kapatmak üzere <kbd>Ctrl + D</kbd> tuş kombinasyonunu uyguluyorum. En son oluşturmuş olduğum dosya içeriğine bakmak üzere <code>cat</code> komutunu kullanıyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/33.png)

Çıktıda da görüldüğü üzere terminal ekranında yazdığımız her bir satır tekrar ederek konsola basıldı ve sonuçta oluşturmuş olduğumuz "**metin**" isimli dosyanın içeriği de yazmış olduğumuz ifadeler ile dolmuş oldu.

cmp
-

Bu komut sayesinde dosyalar arasından karşılaştırma yapmamız mümkün.

Örneğin ben <kbd>isimler.txt </kbd> dosyasını kopyaladım ve 5. satırındaki ismi değiştirdim. Ve bu iki dosyayı <code>cmp</code> komutu ile kıyasladım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/34.png)

İki dosyanın da içeriğini <code>cat</code> komutu ile yazdırdık görüldüğü üzere iki dosya arasındaki fark, bir dosyada *mehmet* ismi yerine *enes* isminin yer almasıdır. <code>cmp</code> komutunun çıktısında da bu durum farklı olan satır ve bayt bilgisi verilerek ifade edeliyor.


grep
-

Bu komut en çok kullanılan terminal komutları içerisinde bulunuyor. Bu komutumuzu bizler de oldukça sık kullanıyor olacağız. Dosya ya da komut çıktısında bir ifade aramak için yani bir nevi filtreleme işlemi için <code>grep</code> komutunu kullanabiliriz. Komutun kullanım şekillerini örnekler ile açıklamaya devam edelim.

Eğer bir dosya içerisindeki herhangi bir kelimeyi sorgulamak istersek komutumuzu `grep "aranacak_ifade" dosya_adı` şeklinde komut satırına giriyoruz. Ben basit bir örnek olması açısından <kbd>isimler.txt</kbd> dosyası içerisinde "hasan" ismi var mı diye kontrol etmek üzere konsola `grep "hasan" isimler.txt` komutunu veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/35.png)

Arama işleminde, Linux sistemi gereği **büyük küçük harf duyarlılığına sahip olduğundan**(Hatırlarsanız daha önce bu durumu test etmiştik.) "**hasan**" şeklinde arama yaptığımızda diğer büyük küçük haldeki anahtar kelimeler çıktıda basılmayacaktır. Eğer bu küçük büyük harf duyarlılığı dışında arama yapmak istersek `-i` parametresini kullanabiliriz.  Bu durumu gözlemlemek için büyük küçük harflerden oluşan kelimelerin olduğu bir dosya üzerinde `grep` komutunu kullanalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/36.png)

Eğer arama işlemini tek dosya yerine bulunduğumuz dizin içerisindeki tüm dosyaları kapsayacak şekilde gerçekleştirmek istersek wildcard yani genel kapsama işlevinde olan joker `*` karakteri yardımıyla bu işlemi gerçekleştirebiliriz.

Hemen örneklere geçelim. **hasan** ismini masaüstü konumundayken aratıyorum. Bunun için `grep "hasan" *` komutunu konsola verdim. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/37.png)

Gördüğünüz gibi çıktı bize içerisinde "**hasan**" ifadesi geçen tüm dosyaları verdi. 

Çıktıda aradığımız ifadenin hangi dosyada yer aldığını bulmuş olduk. Ayrıca yukarıdaki komutu `grep -r "hasan" *` şeklinde de yazabilirdik. Genellikle de bu 2. komut kullanılıyor ancak hangi şekilde kullanacağınızı seçmek size kalmış dilediğiniz kullanabilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/38.png)

İkinci kullanım şeklinde ilkinden farklı olarak "***grep: yeni_dizin: Bir dizin***" gibi bir çıktı almadık.

Wildcardlardan söz etmişken dosya içerisinde arama işleminin başka bir kullanım şekline de değinelim isterim. Eğer aranacak kelime belirli bir isim ile başlayan dosyalar içerisinde aranacaksa bunu wildcard(joker) yardımıyla özellikle belirtebiliriz.

Kullanımı `grep "aranacak_ifade" dosya_adı_başlangıcı*` şeklindedir. Ben ilk önce masaüstünde yer alan dosyaları listeledim daha sonra "**hasan**" ifadesini aramaya koyuldum. İlk önce "**metin**" ismi ile başlayan belgelerde `grep "hasan" metin*` komutunu kullanarak aradım. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/39.png)

Ancak çıktıda da görüleceği gibi "**hasan**" ifadesi "**metin**" ismi ile başlayan belgeler içerisinde yer almıyormuş ki komut çıktısı bize hiç bir sonuç vermedi. 

Bende "**hasan**" ismini bu sefer "**isimler**" adıyla başlayan belgeler içerisinde aramak için `grep "hasan" isimler*` komutunu kullandım. Bunun neticesinde komut satırı bize "**hasan**" isminin geçtiği belgelerin yerini vermiş oldu. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/40.png)

Buradaki asıl kullanım amacı; komutu, belirli isimlere sahip olan dosyalar içerisinden anahtar kelimeyi aramak üzerine sınırlandırmak.

Bunların dışında arama sonucunun görüntülenmesini de sınırlandırabiliriz;
Örnek olması açısından "**filozof**" isimli dosyadan "**jo**" ile başlayan isimleri listeliyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/41.png)

Arama sonucu sonrasında kaç satır gözükeceğini `-A` parametresi sayesinde `grep -A görüntülenecek_satır_sayısı "aranacak_ifade" dosya_adı` şeklinde komut girerek sağlarız.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/42.png)

Sonucun üzerindeki kaç satırın gözükeceğini `-B` parametresi sayesinde `grep -B görüntülenecek_satır_sayısı "aranacak_ifade" dosya_adı` şeklinde komut girerek sağlarız.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/43.png)

Baştan ve sondan kaç satır görüntüleneceğini ise `-C` parametresi sayesinde `grep -C görüntülenecek_satır_sayısı "aranacak_ifade" dosya_adı` şeklinde komut girerek sağlarız.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/44.png)

Şimdi ise sıklıkla kullanılan **pipe** ile `grep` kullanımına bakalım. 
Pipe nedir diyecek olursanız kabaca iki işlemi(process) birbirine bağlayan `|` görünümündeki yardımcı argüman diyebiliriz. Zaten daha önce de iki işlemin birbirine bağlanması gereken durumlarla karşılaşmış ve pipe kullanmıştık.

`grep` ile kullanımına geçecek olursak örneğin masaüstünde yer alan dosyalardan yalnızca "**metin**" isimli olanları listelemek isteyelim. Bunun için ilk olarak masüstünde yer alan dosyalarımızı listelemek üzere komut satırına `ls` daha sonra ise `ls` komutundan gelecek olan çıktıları pipe yardımı ile `grep` komutuna bağlayarak listelenen bütün bu dosyalar içerisinden sadece "**metin**" adı geçenleri filtreleyebilelim..

Bu işlemi gerçekleştirmek için `ls | grep "metin"` komut bütününü kullanıyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/45.png)

`grep` komutunun kullanım şekli ve alanı elbette bu kadar ile sınırlı değil ancak sizler daha fazla bilgiye nasıl ulaşacağınızı biliyorsunuz.


find
-

`find` komutu da hemen hemen daha önce görmüş olduğumuz `locate` komutu ile aynı görevi görüyor. Örneğin, isminin birazını bildiğimiz ama dosya dizinini tam olarak hatırlamadığımız dosyaları bulmamıza yardımcı oluyor.

Komut kullanım kalıbı `find dosya_yolu -name aranacak_ifade` şeklindedir. Tam kullanım şekli için aşağıdaki örneği inceleyebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/46.png)

Çıktıda <kbd>etc</kbd> konumda yer alan içerisinde "**local**" ifadesi geçen dosyalar komutumuz sayesinde listelenmiş oldu. Ancak aradığımız şeyi bulmak adına değiştirilme tarihi, boyut, dosya-dizin gibi ayrıntıları belirterek çıktıları daha spesifik şekilde sınırlandırabiliriz. Bazı özel arama parametreleri açıklayalım hemen.

- **type f :** Yalnızca dosyalar.
- **type d :** Yalnızca dizinler.
- **size +500k :** 500 KB'tan büyük olan dosyalar.
- **size -500k :** 500 KB'tan küçük olan dosyalar.
- **ctime 10 :** Tam olarak 10 gün önce değişikliğe uğramış dosya/dizinler.
- **ctime -10 :** 10 günden daha kısa bir süre önce değişikliğe uğramış dosya/dizinler.
- **ctime +10 :** 10 günden daha uzun bir süre önce değişikliğe uğramış dosya/dizinler.
- **perm 755 :** Yalnızca erişim izni 755 olan dosya/dizinler.
Örnek olması açısından yukarıdaki arama parametrelerinin ilk ikisinin çıktılarını aşağıya ekliyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/47.png)


xargs
-
`xargs` komutunun görevi kabaca kendisinden önce verilen girdi verilerini kendisinden sonrakine tek tek aktarmaktır. Biliyorum böyle denilince hiçbir şey anlaşılmıyor. O yüzden `xargs` komutunu `find` komutuyla birlikte kullanarak örnek üzerinden komutumuzu ve kullanım mantığını açıklamış olalım.

Örneğin <kbd>.jpg</kbd> uzantılı bir resim dosyasını araştırıp daha sonra bulduğumuz bu dosyayı silelim. Ben duvar kağıdı için daha önce internetten bir <kbd>.jpg</kbd> uzantılı bir resim indirmiştim. Bu resim hem **indirilenler(downloads)** hem de **resimler** konumunda yer alıyor, söylediğim gibi aslında dosyanın konumunu biliyorum ancak komutun kullanımını denemek üzere dosyanın konumunu bilmiyormuşçasına bir test edelim. Testimizde <kbd>root</kbd> dizinindeki <kbd>.jpg</kbd> uzantılı dosyaları araştıralım ve silelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/48.png)

Çıktıda da görüldüğü gibi <kbd>.jpg</kbd> uzantılı resim dosyalarını tek tek bulup silmeden önce, çıktıda belirtilen konumlarda bulunuyorlardı. Ancak arama ve tek tek otomatik olarak silme işlemini gerçekleştirmemiz ile birlikte dosyalar silindi. Silinme durumunu da tekrar arama işlevindeki `find` komutunu vererek teyit etmiş olduk.

Komutumuzun işleyişi tam olarak şöyle oldu;

`find /root -name *.jpg` komutu ile <kbd>root</kbd> dizini altındaki tüm <kbd>.jpg</kbd> uzantılı dosyaları listeledik.

Bu listelenen dosya konum ve varlık bilgilerini `xargs` komutuna `pipe( | )` argümanı sayesinde aktardık.

`xargs` komutu ise eline geçen bu bilgiler sayesinde dosyanın konumunu saptayarak tek tek silme işlemini gerçekleştirebildi.

`xargs` komutu `exec` isimli başka bir komuta benzer şekilde çalışmaktadır. Merak edip öğrenmek isteyen arkadaşlar ayrıca `exec` komutuna bakabilirler.

Dosya Kopyalama-Taşıma-Silme İşlemleri
-
Bu kısımda dosyaları kopyalama taşıma ve silme gibi işlemleri ele alacağız. Zaten kullanacağımız komutlar kısa oldukları için kullanımı ve akılda kalması çok kolay. İlk olarak dosya kopyalama işlemi ile anlatıma başlayalım.

### cp

`cp` komutu kopyalama işlevindedir. Kullanımı `cp kaynak hedef` şeklindedir. Örnek üzerinden açıklayalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/49.png)


Komutumuzu açıklayacak olursak;

**Desktop** dizinindeyken `ls` komutu ile bulunduğumuz dizindeki dosyaları listeliyoruz. Ve çıktıda da görüldüğü üzere masaüstünde "**filazof**" isimli bir belge bulunuyor.

`cd yeni_dizin` komutuyla  <kbd> yeni_dizin </kbd> konumuna gidiyoruz.

`ls` komutu ile buradaki dosyaları listeliyoruz. Bu dizinde ise yalnızca "**yeni**" isimli bir klasör mevcut.("**filazof**" isimli dosyanın bu konumda bulunmadığını teyit etmiş olduk.)

`cd ..` komutu ile bir önceki dizine dönüyoruz.
"filazof" dosyasını <kbd>yeni_dizin</kbd> konumuna taşımak üzere `cp filazof yeni_dizin` şeklinde komutumuzu kullanıyoruz.

Daha sonrasında ise `cd yeni_dizin` komutu ile yeni_dizin konumuna gidip `ls` komutu yazarak "**filazof**" isimli dosyamızın kopyalandığını teyit etmiş oluyoruz.

Eğer bir dosyayı A dizininden B dizinine taşırsak ve B dizini içerisinde A dizininden taşıdığımız belge ile aynı isimde dosya varsa, taşıdığımız dosya mevcut konumda bulunan aynı isimdeki eski dosyanın üzerine yazılacaktır. Bu da B konumunda var olan eski dosyanın önceki içeriğinin yok olması demek. Böyle talihsiz bir durum yaşamamak için `cp` komutunu kullanmadan önce `-i` parametresini de eklememizde fayda var. Bu parametre `cp` komutunun aynı isimli bir dosya ile karşılaşma durumunda bize onay sormasını sağlayacaktır.

Anlatılanları daha iyi anlamak adına hemen bir örnek yapalım. Daha önceden <kbd>yeni_dizin</kbd> konumuna taşımış olduğumuz "**filazof**" dosyasını `-i` parametresini kullanarak tekrar `cp` komutu ile taşımaya çalışalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/50.png)

Çıktıda da görüldüğü gibi `-i` parametresini kullanarak yazdığımız kopyalama komutu bize "***cp: 'Desktop/merhaba''ın üzerine yazılsın mı? ***" şeklinde bir uyarıda bulundu ve bizden onay bekledi.

Elbette bu işlemleri çoklu dosya taşıma için de kullanabiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/51.png)

Hangi komutu neden kullandık zaten bir önceki örneğe benzer olduğu için tekrar açıklamıyorum. Çıktıları inceleyerek çok rahat şekilde anlayabilirsiniz.

Eğer o anda çalıştığımız dizine başka bir konumdan dosya kopyalamak istersek komutumuzu `cp kopyalanacak_dosya_konumu .` şeklinde kullanabiliriz. **Nokta( . )** bizim o anda bulunduğumuz çalışma konumunu ifade ediyor. Örneği incelediğinizde her şey daha net anlaşılacaktır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/52.png" width="875">

Görüldüğü üzere kopyalanacak olan dosyanın konumunu belirttik ancak bulunduğumuz konuma yani kopyalamak istediğimiz konumun direk adresini belirtmemize gerek kalmadı. Bunun yerine bulunduğumuz konumu temsil eden `.`(nokta) kullanmamız dosyanın kopyalanmasını sağladı.

Eğer bulunduğumuz konumdan bir üst konuma kopyalamak istersek komutu `cp dosya_adresi ..` şeklinde kullanmamız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/53.png)

Çıktıları karşılaştırarak dosyayı bir önceki dizine kopyalamayı (iki nokta) `..` ile kolaylıkla yapabildiğimizi görebilirsiniz.
(Eğer "deneme" isimli dosyayı kopyalarken kullandığımız komutta yer alan, dosyanın konumunu belirtme kısmı kafanızı karıştırdıysa belirteyim; çıktıda kopyalanan konumda yer alan <kbd>~</kbd> işareti **ana dizin adresini** yani **root** kullanıcısı için `/root` konumunu belirtiyor. "**deneme**" isimli dosya bu konumda olduğu için direk bu şekilde bir kullanımı tercih ettim. Bunun yerine `cp /root/deneme ..` komutunu da kullanabilirdim.)


### mv
Bu komut dosya taşıma ve uzantı değiştirme gibi işlevlere sahiptir. Dosya taşıma işlevi tıpkı `cp` komutunda olduğu gibidir. Yani komutun kullanımı `mv dosya_konumu taşınacak_konum` şeklindedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/54.png)

### rm

Dosya dizin silme işlevinde kullandığımız komuttur. Kullanımı `rm silinecek_dosya_dizin` şeklindedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/55.png)



Dosyalar tekil olarak silinebileceği gibi çoklu silme işlemi de gerçekleştirilebilir. Hatta daha önce gördüğümüz joker karakterleri de kullanırsak isim, uzantı gibi filtrelere göre sınırlandırarak toplu dosya silme işlemi gerçekleştirebiliriz. Örnek olması açısından masaüstünde yer alan 2 adet <kbd>.py</kbd> uzantılı dosyayı tek seferde `rm *.py` komutu ile siliyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/56.png)


Joker karakterlerin kullanım alanları oldukça geniştir. Sizler de ihtiyacınıza göre filtreleme yaparak bu işlemleri istediğiniz doğrultuda gerçekleştirebilirsiniz.(Bu konuyu detaylıca ileride [Joker Karakterler](https://github.com/taylanbildik/Linux_Dersleri/blob/master/joker_karakterler%28wildcards%29.md) kısmında ele alacağız.)

### shred

Bu komut sayesinde dosyalarımızı daha güvenli şekilde silebiliriz. `shred` komutu dosyanın içerisine rastgele bitler yazarak dosyanın okunmaz hale gelmesini sağlıyor. Parametresiz kullanımda dosyaya 3 kez rastgele bit eklerken `n` parametresini kullanarak bu eklenecek olan rastgele bit sayısını istediğimiz doğrultuda düzenleyebiliyoruz. Eğer yapılan işlemi komut satırından takip etmek istersek `v` parametresini de kullanabiliriz. Ayrıca `u` parametresini kullanmamız halinde dosya işlem sonrasında silinir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/57.png" width="875">

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/6-%20Dosya%20%C4%B0%C5%9Flemleri/58.png" width="875">
