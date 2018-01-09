Dosya İşlemleri
=
Konumuz itibari ile dosyalarla epeyce haşır neşir olacağız. Yapacağımız işlemleri kısaca tanımlamak gerekirse; dosya kopyalama, taşıma, değiştirme, görüntüleme, düzenleme, vb. gibi işlemelerle dosyalar üzerinde hakimiyet kuracağız.

touch
-
<code>touch</code> komutu bize kolaylıkla metin dosyası oluşturma imkanı tanıyor. İşte bu yüzden dosya işlemleri konumuza <code>touch</code> komutu ile başlamak gayet doğru bir karar olacaktır.

Kendimize <code>touch</code> komutunu kullanarak boş bir dosya oluşturmak için komut satırına <code>touch dosya_ismi </code> şeklinde yazmamız gerekiyor. Burada fark ettiyseniz herhangi bir uzantı girmeme gerek kalmadı. Çünkü Linux sisteminde uzantı belirtme zorunluluğu bulunmuyor. Bu durumu gözlemlemek için konsola <code> touch yeni </code> komutunu vererek "yeni" adından bir dosya oluşturalım. 

![enter image description here](https://i.hizliresim.com/6JYmDk.png)

Görüldüğü üzere dosyamız bulunduğumuz ana dizinde oluşmuş oldu. Bunu teyit etmek için de çıktıda görüldüğü gibi daha önce öğrenmiş olduğumuz <code>ls </code> komutunu kullandık.

Peki bir tane değil de birden fazla dosya oluşturmak istersek. İşte bunun için de komutumuzu <code>touch yeni1 yeni2 yeni3</code> şeklinde yazmamız yeterli.

![enter image description here](https://i.hizliresim.com/W7WbXE.png)

Çıktıda görüldüğü gibi aynı andan 3 dosya oluşturmayı başardık.

Aslında <code>touch</code> komutunun çok farklı kullanım yöntemleri de mevcut ancak ben son olarak ileri bir tarihte otomatik olarak dosya oluşturmayı göstererek bu komutun konu anlatımını burada sonlandıracağım.

İleri bir tarihe tıpkı alarm kurarcasına planlanmış bir şekilde dosya oluşturmak mümkün. Bunun için <code>t</code> parametresini kullanacağız. Kullanımı ise <code>touch -t YYYYAAGGSSDD.SS dosya_adı</code> şeklindedir. Ben burada örnek olması açısından tarih olarak 2018.01.09 ve saat 16:35:30  zamanlamasını kullanıyorum. Nasıl kullanıldığını daha net anlamak için örneği inceleyebilirsiniz.

![enter image description here](https://i.hizliresim.com/3E2AOj.png)

Neticede "yeni_belge" isimli dosya benim belirtmiş olduğum ileri bir tarihte kendiliğinden oluşmuş oldu.

cat
-
<code>cat </code> komutu temelde dosya içeriğini terminal ekranından okumamıza olanak sağlayan bir aracı çağıran komuttur. Ancak bu komut bizlere temel işlevinin dışında da dosyalar ile ilgili pek çok işlem yapma imkanı sağlıyor. Sırasıyla bunların bazılarına göz atacağız. Ama ilk olarak temel işlevi olan terminal üzerinden dosya okuma işlevini görelim.

Bunun için konsola açmak istediğimiz dosyanın konumundayken <code>cat açılacak_dosya</code> şeklinde komut vermemiz gerek.
Ben masaüstü konumunda yer alan" test.txt" isimli dosyanın içeriğini okumak üzere konsola <code>cat test.txt</code> komutunu veriyorum.(Dosyayı grafik arayüzü aracılığı ile de açarak durumu kıyaslamanızı istedim.)

![enter image description here](https://i.hizliresim.com/RnEQgo.png)

Şimdi ise tıpkı <code>touch</code> komutunda çoklu dosyalar ile ilgili işlem yaptığımız gibi <code>cat</code> komutu ile de çoklu dosya okuma işlemini gerçekleştirelim. Çoklu dosya okuma işlemi için komut satırına <code> cat dosya1 dosya2 dosya3</code> şeklinde okumak istediğimiz dosyaların adlarını yazıyoruz.

![enter image description here](https://i.hizliresim.com/kOZEMv.png)

Dosya içeriğine yazı eklemek istersek <code>cat > dosya_adı</code> şeklinde komut verdiğimizde, komut satırı imleci bir alt satıra geçerek bizden yazmak istediğimiz bilgiyi bekler. Yazma işlemimiz bittikten sonra kaydederek kapatmak için <kbd> Ctrl + D</kbd> tuş kombinasyonunu kullanırız. Ayrıca komutta girdiğimiz isimde bir dosya yoksa o isimde bir dosya oluşur ve girilen veriler içerisine işlenir.

![enter image description here](https://i.hizliresim.com/vjYZyO.gif)

Ancak  var olan bir dosyanın adıyla bu komutu kullandıysanız, eğer dosya içerisinde mevcut yazı bulunuyorsa bu işlemin ardından eski veriler silinerek yalnızca girilen yeni veri dosyaya işlenip kayıt oluyor. 

![enter image description here](https://i.hizliresim.com/nOYEy1.gif)

Bizler eğer önceki veriler silinmesin ve üzerine yeni veri ekleyebilelim istersek komutumuzu <code> cat >> yeni3.txt </code> şeklinde kullanarak ve yeni gireceğimiz verileri girdikten sonra<kbd> Ctrl + D</kbd> tuş kombinasyonu ile dosyamızı yeni eklenmiş verileriyle birlikte kaydedip kapatabiliriz.

![enter image description here](https://i.hizliresim.com/1JjN71.gif)

Gördüğünüz gibi yeni eklediğimiz veri dosyamızın içine işlenmiş oldu üstelik eski veriler de yok olmadan.

Ayrıca yeri gelmişken kullanmış olduğumuz <kbd>></kbd> yönlendirme operatörü ile ilgili bir örnek daha yapalım ki kullanım alanının biraz daha farkına varmış olalım. Örneğin <code>ls -ls</code> çıktısının içeriğini "liste" adında bir dosya oluşturarak içerisine aktaralım. Bunun için <code> ls -ls > liste</code> komutunu kullanabiliriz. Şayet yeni dosya oluşturmak istemiyorsak ve var olan dosyaya yazılsın istiyorsak o zaman <kbd>></kbd> operatörü yerine <kbd>>></kbd> operatörünü kullanırsak yeni veriler dosyaya eklenmiş olur.

![enter image description here](https://i.hizliresim.com/NZYkLk.png)

Komutta açıklanacak bir durum yok zaten hepsi bildiğimiz komutlar. Zaten burada asıl önemli olan <kbd>></kbd>  operatörünün kullanımıydı. Eğer anladıysak ne âlâ.. devam edelim.

<code>cat</code> komutunun işlevlerine devam ediyoruz şimdi ise bir dosyada yer alan verileri başka bir dosyaya kopyalamak var. Bunun için komutumuzu <code>cat veri_alınan_dosya > veri_alan_dosya </code> şeklinde kullanıyoruz.

![enter image description here](https://i.hizliresim.com/Yg34dD.png)

Komutumuzun kullanım şekilleri elbette bunlar ile sınırlı değil.
Belki defalarca söyledim ancak bu komut için de söylemem gerek ki daha fazla detay için lütfen man kılavuz sayfasına göz atın.

tac
-
İsminden de anlamış olacaksınız ki <code>tac</code> komutu önce gördüğümüz <code>cat</code> komutunun tersi şekilde çıktı veriyor. Bu durumu daha iyi anlamak için karşılaştırmalı olarak verilen çıktıyı inceleyiniz.

![enter image description here](https://i.hizliresim.com/8Ym86d.png)

rev
-
Hazır terslikten bahsetmişken <code>rev</code> komutundan da söz etmemek olmaz. Bu komut dizeleri sondan başa doğru çevirerek ters şekilde ekrana basıyor. Bu durum en iyi örnek ile açıklanır. Hatta <code>cat</code> komutu ile de karşılaştırırsak sonuç daha net oraya çıkacaktır.

![enter image description here](https://i.hizliresim.com/D7o3Oy.png)


Çıktılarda görüldüğü gibi dosya içeriğinde yer alan ifadeler <code>rev</code>komutu sayesinde ters şekilde ekrana basılmış oldu.

Şimdi ben bu komutu nerede kullanacağım neden öğrendim demeyin. Bu konuya daha önce de değinmiştim, şimdi tekrar söylüyorum; burada öğrendiğimiz her komutu her zaman doğrudan  kullanmayabilirsiniz ancak yeri geldiğinde böyle bir komutun varlığından haberdar olarak gerektiğinde dokümantasyona bakmak suretiyle komutun kullanımına en kısa sürede ulaşabilirsiniz. Yani bu komutun varlığından haberdarsınız eğer gerekirse burada olacak..

echo
-

Bu komutumuzu daha önce defaatle kullanmak durumunda kalmıştık hatırlarsanız. Kullandıkça da işlevinden bahsetmiştik ancak şimdi komutumuzu ele alarak biraz daha yakından bakmaya başlıyoruz.

Temel işlevi terminal ekranına istenilen bilgileri çıktı olarak göndermektir. Komutumuzu kullanırsak daha net anlaşılacaktır. Örneğin komut satırına "Merhabalar" yazdırmak isteyelim bunun için komut satırına <code>echo Merhabalar </code> şeklinde komutumuzu girmemiz yeterli.

![enter image description here](https://i.hizliresim.com/5DpYzj.png)

"Merhabalar" çıktımızı almış olduk. <code>echo</code> komutu sadece ekrana basma işlevine sahip değil. Örneğin bir dosya oluşturup içerisine istediğimiz ifadeyi yazabiliriz. Bunun için komut satırına <code>echo "yazılacak_ifade"> dosya_adı</code> şeklinde komutu giriyoruz.

![enter image description here](https://i.hizliresim.com/A1Z3Pp.png)

Sırasıyla yaptığım işlemleri açıklayayım.

İlk önce <code>cd Desktop</code> komutu ile masaüstü konumuna geldim.

Daha sonra <code>echo "Deneme Metni" > deneme</code> komutunu vererek masaüstü konumuna <kbd>deneme</kbd> isimli bir dosya oluşturarak içerisine "Deneme Metni" ifadesini yazmış oldum.

<code>ls</code> komutu ile de bulunduğum konumdaki dosyaları listeleyerek içerisinde oluşturduğum "deneme" adlı dosyanın bulunup bulunmadığını teyit ettim.

<code>cat deneme</code> ile de <code>cat</code>komutunun en temel kullanım işlevi olan içeriği ekran basma işlevini kullanarak oluşturduğum dosyanın içeriğine baktım.

Sonuç itibari ile her şey sorunsuz ilerledi ve finalde yeni oluşturmuş olduğum <kbd>deneme</kbd> isimli dosyanın içerisine "Deneme Metni" ifadesini yazmış oldum.

Ancak şöyle bir hatırlatmada bulunayım; eğer var olan bir dosyanın içeriğine yeni içerikler eklemek isterseniz daha önce de kullandığımız şekilde <kbd> >> </kbd> parametresini kullanın. Aksi halde dosya içeriğindeki her şey silinir ve yalnızca sizin son yazdığınız ifade kalır.

Var olan dosya içeriğine yeni bir ifade eklemek için komutu <code>echo "Yeni ifade" >> dosya_adı</code> şeklinde girmemiz gerek.

![enter image description here](https://i.hizliresim.com/0EbyA9.png)

Şimdi <code>echo</code> komutunun <code>ls</code> komutu görevi gördüğü bir kullanıma değineceğiz.

Örneğin bulunduğumuz dizinde yer alan dosyaları görmek istersek komut satırına <code>echo *</code> şeklinde yazmamız halinde çıktı bizlere bulunduğumuz konumda yer alan dosyaları verir. Bu komut kullanımını <code>ls</code> komutu ile karşılaştırdığımızda daha net anlaşılacaktır.

![enter image description here](https://i.hizliresim.com/4aY0O4.png)

<kbd>* </kbd> joker karakteridir ve herhangi dosya dizin isimlerinin yerini tutar. Yani <code>echo</code> komutuna <kbd>* </kbd> karakteri eklediğimizde mevcut dizinde yer alan tüm dosya dizinler  <kbd>* </kbd> parametresi ile kapsanacağı için ne var ne yok listeleniyor. Bu duruma örnek olması açısından bulunduğumuz dizinde yer alan dosyalarda örneğin "list" adı ile başlayanları çıktı olarak almak istersek komut satırına <code>echo liste*</code> şeklinde komut vermemiz yeterlidir. (Joker karakter/wildcard konusundan bu karakterler açıklanmıştır.)

![enter image description here](https://i.hizliresim.com/JQd3Bo.png)

Son olarak <code>echo</code> komutunun kullanım şekillerinden olan, bir komutun çıktılarının <code>echo</code> komutu ile ekrana basılması var. Ancak doğrudan <code>echo komut</code> şeklinde yazılan komutlar istenmeyen bir sonuç çıkaracaktır. Verdiğimiz komutun çıktılarını alma işlemini gerçekleştirebilmek için <code>echo</code> komutunun bu iş için kullanım özelliklerinden olan iki farklı seçenek bulunuyor. Bunlardan biri ters tırnak <kbd>'</kbd> işaretini diğeri ise <code>$(komut)</code> parametre bütünüdür. Bunları sırayla görelim.

İlk olarak ters tırnak işaretli olan kullanımı ele alalım.

Ters tırnak işaretini oluşturmak için Türkçe klavyede <kbd> AltGr + ,</kbd> tuş kombinasyonunu kullanabiliriz. Komutun kullanımını için ise istediğimiz komutu tırnak içerisinde <code>echo</code> komutunun yanında kullanmak üzere <code>echo `komut`</code> şeklinde yazıyoruz.

Hemen bu kullanım ile ilgili bir örnek yapalım ve <code>ls</code> komutunun çıkıtlarını <code>echo</code> komutu yardımı ile basalım.

![enter image description here](https://i.hizliresim.com/OoJEOQ.png)

Ve ikinci yol olan `$(komut)` parametre bütünü; yine <code>ls</code> komutu için örneklendirilecek olursa, kullanımı `echo $(ls) ` şeklinde komut parantez içine gelecek şekilde olmalıdır.

![enter image description here](https://i.hizliresim.com/z0Qnq6.png)

Sonuç itibari ile ilk <code>echo ls</code> komutunun çıktısı olan "ls" ifadesi bizim almak istediğimiz çıktıyı bizlere vermedi. Yani bu kullanım bizim yapmak istediğimiz iş olan komutun çıktılarının ekrana bastırılması için doğru bir kullanım değildi. Doğru kullanım şekli ise ikinci ve üçüncü komut olan <code>echo `ls`</code>, `echo $(ls)` şeklindedir. Bu komutların çıktısı istediğimiz şekilde, yani `ls` komutunun çıktısını(bulunduğumuz dizinde yer alan dosyaların bilgisi) ekrana basacak şekilde bizlere verdi. Sözü edilen durumu aşağıdaki çıktıyı inceleyerek bir bütün halinde kavrayabilirsiniz.

![enter image description here](https://i.hizliresim.com/G9b3X6.png)


more
-
Şimdiye kadar öyle yada böyle terminal üzerinden dosya okuma işlemi yapmamıza yardımcı olan komutlar gördük. Bu komutumuzda aynı şekilde metin dosyalarını terminal üzerinden okumamıza olanak sağlayan bir komuttur.

Örneğin daha önce de içeriğini okuyup değişiklik yapmış olduğumuz dosya olan <kbd>profile</kbd> dosyasının içeriğini <code>more</code> komutu yardımı ile okuyalım.

Bunun için <kbd>/etc/profile</kbd> konumunda bulunan dosyamı <code>more</code> komutu ile açmak üzere konsola <code>more /etc/profile</code> şeklinde komutu girerek <kbd>profile</kbd> dosya içeriğini okumaya teşebbüs ediyorum.
Komutumuzun ardından terminal ekranında karşımıza <kbd>profile</kbd> dosyasının içeriği aşağıdaki gibi geldi.

![enter image description here](https://i.hizliresim.com/8YmP6A.png)

Çıktıda görüldüğü gibi dosyanın içeriği ancak terminal ekranına sığacak şekilde görüntüleniyor. Hatta alt kısımda --More--(77%) şeklinde yazan yazı bizlere içeriğin devamı olduğunu belirtiyor. Eğer devamını okumak istersek <kbd>enter</kbd> tuşuna basarak adım adım alt satırlara bakabiliriz. Ayrıca <kbd>space</kbd> tuşu ile de sayfa sayfa atlayarak içeriğe göz atabiliriz. Eğer atladığınız sayfadan bir önceki sayfaya geri dönmek istersek <kbd>b</kbd> tuşunu, şayet dosya içeriğini görüntüleyen bu ekranı kapatmak istersek ise <kbd>q</kbd> tuşunu kullanmamız yeterli.

less
-
Bu komutumuz da üst kısımda açıkladığımız more komutu ile aynı işlevdedir. Ayrıntısını merak ederseniz man sayfasına göz atmanız yeterli olacaktır.

Ben yine de <code>less</code> komutu ile profile dosyasının içeriğinin okunduğu şeklini aşağıya bırakıyorum. Eğer <code>more</more> komutunda bir problem yaşamadıysanız bu komut kullanımında da kesinlikle yaşamazsınız.

![enter image description here](https://i.hizliresim.com/D7oBOZ.png)


head-tail
-

Aslında komutların isimleri yani head(kafa/baş) ve tail(kuyruk) bizlere komut hakkında az çok bilgi veriyor. Şöyleki bir dosyanın sadece baş kısmında ilk 10 satırı görüntülemek istersek <code>head</code> şayet son 10 satırı görüntülemek istersek ise <code>tail</code> komutunu kullanırız. Ayrıca bu komutlar özel parametre alarak istenildiği sayıda baştan veya sondan olmak üzere istenilen satırların görüntülenmesine olanak sağlar. Daha iyi anlamak adına hemen kullanımlarına geçelim.

Dosya içeriğinin ilk 10 satırını görüntülemek için <code>head dosya_adı</code> şeklinde komutumuzu kullanıyoruz.

![enter image description here](https://i.hizliresim.com/RnE1gZ.png)

Şimdi burada 10 satır içerik yok gibi gelebilir ancak dosya içerisindeki boş satırlar da bu 10 satıra dahil olduğundan çıktıyı boş satırlar ile saydığınızda tam olarak 10 satırın görüntülendiğini göreceksiniz.

Dosya içeriğinin son 10 satırını görüntülemek için <code>tail dosya_adı </code> şeklinde komutumuzu kullanıyoruz.

![enter image description here](https://i.hizliresim.com/p6vX5J.png)

Şimdi istediğimiz sayıda baştan veya sondan dizinleri görüntüleyelim. Ben örnek olması açısından baştan 6 sondan 2 satırı görüntülemek üzere komutumu veriyorum. Komutun kullanımı <code>head -n 6 </code> ve <code>tail -n 2</code> şeklinde.

Baştan 6 satırın çıktıları.

![enter image description here](https://i.hizliresim.com/kOZGMy.png)

Sondan 2 satırın çıktıları.

![enter image description here](https://i.hizliresim.com/NZYlLQ.png)


nl
-
Bu komutun işlevi satırları numaralandırarak çıktı vermektir. Hemen görelim.

![enter image description here](https://i.hizliresim.com/EPQrOv.png)

Çıktıda da görüldüğü üzere dosya içeriğinde yer alan ifadeler satır satır numaralandırılarak ekrana basılmış oldu.

Ayrıca eğer listelenen içerik uzunsa bir önceki öğrendiğimiz <code>head-tail </code> komutları yardımı ile bu alanı düzenli şekilde sınırlandırabiliriz.

sort
-
Dosya çıktılarının alfabetik olarak düzenlenmesini sağlar. Örnek üzerinden devam edelim. Ben <kbd>isimler.txt</kbd> adında bir dosya oluşturdum ve içerisine karışık olarak isimler ekledim.
Ve bu isimleri alfabetik sıraya dizmek için <code>sort isimler.txt</code> komutunu kullandım.

![enter image description here](https://i.hizliresim.com/azPdn7.png)

Eğer ters alfabetik şekilde yani z den a ya doğru sıralamak istersek <code>-r</code> parametresi kullanılır.

![enter image description here](https://i.hizliresim.com/Yg3qdA.png)


paste
-

Örneğin iki dosyanın içeriğini aynı anda yan yana olacak şekilde komut satırında listelemek istersek bu notkada bu işi yapmamızı <code>paste </code> komutu sağlıyor. Kullanımı <code>paste dosya1 dosya2 </code> şeklindedir.

Ben <kbd>yaşlar.txt</kbd> ve <kbd>isimler.txt</kbd> adlı dosyaları aynı anda yana yana görüntülemek adına komut satırına <code>paste isimler.txt yaşlar.txt </code> komutunu verdim.

![enter image description here](https://i.hizliresim.com/m2q4XY.png)


tee
-
Yazmak istediğimiz ifadeleri hem komut satırına yansıtıp hem de bu ifadelerim bir dosya içerisine kayıt olmasını isterseniz kullanacağınız komut <code>tee</code> komutu olacaktır.

Örnek üzerinden devam edelim.

<code>tee metin</code> komutu ile "metin" isminde bir dosya açıyorum ve içerisine birtakım ifadeler ekliyorum daha sonra ekleme işlemim bittiğinde dosyayı kaydederek kapatmak üzere <kbd>Ctrl + D</kbd> tuş kombinasyonunu uyguluyorum. En son oluşturmuş olduğum dosya içeriğine bakmak üzere <code>cat</code> komutunu kullanıyorum.

![enter image description here](https://i.hizliresim.com/Z92Mpz.png)

Çıktıda da görüldüğü üzere terminal ekranında yazdığımız her bir satır tekrar ederek konsola basıldı ve sonuçta oluşturmuş olduğumuz "metin" isimli dosyanın içeriği de yazmış olduğumuz ifadeler ile dolmuş oldu.

cmp
-
Bu komut sayesinde dosyalar arasından karşılaştırma yapmamız mümkün.

Örneğin ben <kbd>isimler.txt </kbd> dosyasını kopyaladım ve 5. satırındaki ismi değiştirdim. Ve bu iki dosyayı <code>cmp</code> komutu ile kıyasladım.

![enter image description here](https://i.hizliresim.com/oOn0pq.png)

İki dosyanın da içeriğini <code>cat</code> komutu ile yazdırdık görüldüğü üzere iki dosya arasındaki fark, bir dosyada mehmet ismi yerine enes isminin yer almasıdır. <code>cmp</code> komutunun çıktısında da bu durum farklı olan satır ve bayt bilgisi verilerek ifade edeliyor.


grep
-
Bu komut en çok kullanılan terminal komutları içerisinde bulunuyor. Bu komutumuzu bizler de oldukça sık kullanıyor olacağız. Dosya ya da komut çıktısında bir ifade aramak için yani bir nevi filtreleme işlemi için grep komutunu kullanabiliriz. Komutumuzun kullanım şekillerini örnekler ile açıklamaya devame edelim.

Eğer bir dosya içerisindeki herhangi bir kelimeyi sorgulamak istersek komutumuzu grep "aranacak_ifade" dosya_adı şeklinde komut satırına giriyoruz.
