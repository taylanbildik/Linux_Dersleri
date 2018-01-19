Linux Nedir ?
=
Başlamadan.. Şunu bilin ki Linux tek başına işletim sistemi değil çekirdektir!

UNIX
-
Burada sizlere çok tarihi veya çok teknik olmayan bir üslupla, linux hakkında genel bilgi sahibi olamanızı sağlayacak şekilde Linux'un ortaya çıkış hikayesini anlatacağım. Zamanında Bell Laboratuvarı'nda geliştirilen UNIX adında bir işletim sistemi vardı. Bu sistem kendi bünyesinde bulundurduğu araçları sayesinde üniversite ve diğer ihtiyaç duyulan yerlerde kullanılıyordu. Buraya kadar her şey gayet güzel ancak Unix lisans ücreti istiyordu ve bu durum çoğu kullanıcının hoşuna gitmedi. Bunun sonucunda "para ödemek yerine bende kendi işletim sistemimi yazarım" diye düşünenler ortaya çıktı ve bu da UNIX'e mecbur olunmadığı eğer istenirse yeni bir sistemin yazılabileceği düşüncesini ortaya koydu ve bir akımı başlattı. Bunun sonucunda birçok işletim sistemi geliştirme girişimleri oldu ancak sonuçta geliştirilen sistemler stabil şekilde çalışmıyorlardı. Tabi bu durum sonsuza kadar böyle kalmayacaktı..

Linus Torvalds
-
Bir efsanenin doğuşu..

Buraları her ne kadar istemesem de kısaca geçmek durumundayım ama eğer "Linux kullanıyorum" demek istiyorsanız kesinlikle bu konuları araştırın ve ayrıca [Revolution OS](https://www.youtube.com/watch?v=cEhnQN1ZmDI) belgeselini de izlemeden geçmeyin derim.

İnsanların lisans ücretinden kaçmak için kendi işletim sistemini yazma akımı devam ediyorken bu durum [Linus Torvalds](https://www.wikiwand.com/tr/Linus_Torvalds)'ı da etkilemiş olacak ki Linus,[UNIX](https://www.wikiwand.com/tr/UNIX)'ten esinlenerek Helsinki Üniversitesindeyken kendi işletim sistemi çekirdeğini yazdı. UNIX'ten esinlendi ancak bunu hiçbir kod alıntısı yapmadan sıfırdan yazarak başardı. Ve bu geliştirdiği çekirdeğin insanlara(topluluklar vs..) ulaşmasını sağladı ve insanların verdiği dönütlerle düzenlemeler yaparak çekirdeğin daha da kullanışlı hale gelmesini sağladı. Ve bu geliştirdiği çekirdeğe(kernel) "[Linux](https://www.wikiwand.com/tr/Linux)" adını verdi. Ancak Linux bir çekirdekti ve içerisinde UNIX gibi araçları bulundurmuyordu.

Linux cephesinde bunlar yaşanırken [Richard Stallman](https://www.wikiwand.com/tr/Richard_Stallman) , [GNU genel kamu lisansı](https://www.wikiwand.com/tr/GNU_Genel_Kamu_Lisans%C4%B1)nı ortaya atar ve [özgür yazılım](https://tr.wikipedia.org/wiki/%C3%96zg%C3%BCr_yaz%C4%B1l%C4%B1m)ı savunur. Nedir bu genel kamu lisansı ve özgür yazılım diyecek olursanız lütfen okumaya devam edin.

GPL
-

GNU GPL (General Public kısayollar - Genel Kamu Lisansı) açık kaynağı destekleyici bir lisans türü olup, ilk defa açık kaynak kodlu yazılımların kapalı kaynak kodlu hale getirilerek satılmasından rahatsız olunmasıyla öneri olarak geliştirilmiştir.

GPL 4 temel özgürlük üzerine kurulmuştur bunlar:

- **Özgürlük 1:** Programı sınırsız kullanma özgürlüğü.
- **Özgürlük 2:** Programın nasıl çalıştığını inceleme ve amaçlara uygun değiştirme özgürlüğü.
- **Özgürlük 3:** Programın kopyalarını sınırsız dağıtma özgürlüğü.
- **Özgürlük 4:** Programın değiştirilmiş halini dağıtma özgürlüğü.
GPL Richard Stallman tarafından geliştirilmiş çok akıllıca detaylarla bağlayıcılığı bulunan lisans türüdür. Burda herkes kazançlıdır. [Kaynak kodları](https://www.wikiwand.com/tr/A%C3%A7%C4%B1k_kaynak) paylaşılmak zorunda olduğu için her şey şeffaf ve oldukça berraktır . Burada insani bir hizmet vardır. Yani savunulan şey daha fazla rant değil, insanların gönül rahatlığı ile sınır olmadan ihtiyaçlarını karşılamasıdır. Bu konu hakkında ayrıca avantajları ve dezavantajları sıralayabiliriz ancak konuyu çok genişletmemek ve sizlere araştırma kendi kendine bulup öğrenme alışkanlığı kazandırmak adına bu konuyu burada kesiyorum. Ben yazmaktan üşenmiyorum ancak benim burada yazıyı genişletmem sizin araştırıp kendin kendinize öğrenmenizden ve bu araştırma alışkanlığını kazanmanızdan daha yararınıza olmayacak lütfen buna inanın. Birde benim konu içinde veya dışında belirtmiş olduğum kaynaklarla sakın ola sınırlı kalmayın. Ben bir başlangıç noktası ve referans olması adına sizlerle bunları paylaşıyorum. Benden bu yüzden nefret edebilirsiniz ancak, araştırma ve kendi kendine öğrenme ateşi sizi sardığında hak vereceğinizi umuyorum. Sözümü o çok bilindik bir çin ata sözü ile noktalıyorum.

> **"Bir kişiye iyilik yapmak istiyorsan ona balık verme, balık tutmayı öğret." *Konfüçyüs***

GNU
-

GNU, açık kaynak hareketinin doğrultusunda geliştirilen, araçların içinde bulunduğu ücretsiz ve herkes için ulaşılabilir bir işletim sistemidir. Ancak GNU için her şey her daim güllük gülistanlık değildi. GNU içinde kendine ait güçlü araçlarını bulundurmasının yanı sıra kararlı bir çekirdeğe sahip değildi. Çekirdek için denemeler yapılmış ancak kararlı bir çekirdek oluşturulamamıştı.

Tam da bu noktada Linus Torvalds'ın geliştirip topluluğa sunduğu ve topluluk doğrultusunda geliştirdiği çekirdek yazılımı, GNU ile tencere kapak uyumu olacak şekilde bir araya geldi ve ortaya bir GNU/Linux efsanesi çıktı. İşte GNU/Linux devrimi kısaca bu şekilde oldu. Hem GNU'nun hem de Linux'un topluluğa bağlı dönütlerle geliştirilmesi doğrultusunda herkese açık, ücretsiz ve sınırsız geliştirilme potansiyeline sahip gerçek anlamda insana hizmet eden bir işletim sistemi ortaya çıkmış oldu.

Sonuç Olarak
-
Linux bir işletim sistemi değil çekirdektir(kernel) GNU/Linux bütünü bir işletim sistemidir. Ancak genellikle söylenmesi uzun veya zor geldiği için zamanla sadece Linux olarak geçmeye başlamıştır. Ben de yazımda GNU/Linux yerine Linux kullanıyor olacağım. Ancak emin olun çekirdekten(kernel) yani Linux'tan bahsettiğimde ve GNU/Linux(işletim sistemi)'tan bahsettiğimde hangisini kastettiğimi anlıyor olacaksınız.


----------


Gerekli Ortamın Kurulması
=

Linux kurmak veya kurmadan kullanmak için çok fazla metod bulunuyor. Ben sadece içlerinde bilmediğiniz bir alternatif metod olması ihtimaline karşı genel kullanımları aşağıda listeliyorum. Şimdi neden kurulum detaylarını anlatmıyorsun diyecek olursanız, burada izahı dokümantasyonu uzatacak ve resim kullanmadığım için çok da verimli olmayacaktır. Siz en iyisi hem bana destek olmak hemde de kurulumları videolu şekilde takip etmek için [buradan](https://www.udemy.com/) kursumu satın alarak devam edin. Ancak hemen önyargıya kapılıp sinirlenmeyin lütfen sizler bu kursu almadan da internet üzerinden araştırarak çok fazla kaynağa ulaşabilirsiniz. Fakat benim videolarımın artısı buraya bağlantılı ve açıklık getirici şekilde ilerliyor olması. Yani tamamen sizlerin isteğine bağlı bir durum.

Kurulum ve Kullanım Metodları
-
 
Sanal olarak kurulum (Vmware & Virtualbox)
İkincil işletim sistemi olarak kurmak (Dualboot)
Live versiyon olarak kullanmak.
Linux VPS aracılığı ile kullanmak.


----------

Komut Satırı
===================

Esaslı bir giriş yapabilmemiz için öğrenmemiz gereken ilk kavram Linux Komut Satırı diğer bir adıyla Linux Terminali (konsol) olacaktır. Ancak bundan önce Linux çekirdeğini (kernel) ele alamalıyız. Linux çekirdeği yani kernel Linux'un kalbi kabul edilir. En önemli ana görevinin tanımı kısaca yazılımla donanımın haberleşmesini sağlamaktır. Ayrıca Linux'un yani çekirdeğin ingilizce karşılığı "kernel"dir ben de gerektiğinde bu isim ile kullanacağım. Yabancı terimleri kullanma nedenim eninde sonunda bu terimlere alışmamız gerektiği ve bu durumun ne kadar erken olursa bizim için o kadar iyi olacağıdır.
Kernel (çekirdek)'i biraz daha açıklayacak olursak:


Kernel
-------------

Biz ister grafiksel arayüzü kullanalım istersek de yalnız komut satırını kullanacak olalım; örneğin bir dosyayı bir yerden başka bir yere sürükleyerek taşırsak ya da komut satırından komutlar yardımı ile bu işi gerçekleştirsek de yapılan işlem aslında arka tarafta komutların yorumlanarak çalıştırılması ile gerçekleşmektedir. Bu işlemleri gerçekleştirmekle görevli bazı yapılar vardır. Çekirdek(kernel) de kullanıcıdan gelen girdilerle birlikte sistemin işleyebilmesi (process) için donanıma iş yaptırmakla görevlidir. Ancak direk olarak kullanıcıdan alınan komutlar Kernel'e geçmez. Bundan önce komut satırı dediğimiz bir kabuk(shell) programını temel alarak çalışan bir yapı, kullanıcı ile çekirdek arasında aracı bir katman görevi görür.

Shell (kabuk) programını açıklayacak olursak:

Shell
-------------
Mantığını oturtmanız ve kavramların daha kolay yerleşmesi açısından bir fıstık düşünün. Bu fıstığın dış katmanı Kabuk (Shell) iç kısmı ise Çekirdek (Kernel)'olacaktır. Bu benzetme sayesinde isimlerin de nereden geldiği az çok açıklığa kavuşmuş oldu. Shell'in görevi bir üst kısımda belirttiğimiz gibi kullanıcı ile kernel arasında aracı bir katman olarak kullanıcıdan gelen girdileri kernele uygun şekilde iletmektir. Sistemde yapmak istediklerimiz ve yapabileceklerimiz Shell'in esnek ve kullanışlı yapısına yani yeteneklerine bağlı olarak değişmektedir. Bu bağlamda Shell'in sisteme hükmetmekteki anahtarlardan olduğunu söyleyebiliriz. Shell hakkındaki biraz önceki açıklamalara("yeteneklerine bağlı olarak değişmektedir") bakarak birden fazla Shell programının olduğunu tahmin etmiş olabilirisiniz. Tebrik ederim çok doğru, Linux sistemlerinde BASH dışında (ksh,tcsh,zsh,fish...) gibi birçok Shell (kabuk) programı mevcuttur. Ancak yetenekleri dolayısıyla olsa gerek en çok tercih edilen kabuk programı BASH kabuk programıdır. İnanmıyorsanız bir test edelim sizin sisteminizde hangi kabuk programı kullanılıyor.

Bunun için konsolunuzu açın ve aşağıdaki komutu girin diyecektim ki... "Hayda.. daha konsol nedir açıklamadın ki !" diyeceksiniz haklısınız temeli oturtmak adına buralara kadar geldik ama direk konsol şudur demedik. Ancak zaten bu kısıma kadar Konsol'un ne olduğunu dolaylı olarak da olsa açıklamış olduk.

Konsol, kullanıcı ile Shell arasından yer alarak kullanıcının komut girmesini sağlayan grafiksel ve komut satırı arayüzüne sahip bir araçtır. Biz komutlarımızı bu araç aracılığı ile Shell'e ulaştırırız Shell ise kullanıcıdan gelen girdileri yorumlayarak Kernel'e aktarır.

Konsolu daha yakından incelemek adına bir konsol ekranı açalım. Yeni bir konsol ekranı açmak için kısayol tuşları olduğu gibi grafik arayüz aracılığı ile de açmak mümkün. Linux bize çok sayıda konsol açma imkanı tanır. Aynı anda 6 ayrı konsol açıp hepsinde ayrı işlem yapabiliriz. Bunu kanıtlamak istersek..(Anlatımlar Kali linux işletim sistemi üzerinden gerçekleştirilmektedir. Dolayısıyla anlatım sırasında anlatılanların uygulanması noktasına gelindiğinde sizlerden kali linux işletim sistemini halihazırda açık ve kullanıma hazır şekilde bekletiyor olmanız beklenmektir.) Grafiksel arayüzden komut satırına geçmek için <kbd>Crtl + Alt + (f1,f2,f3,f4,f5,f6)</kbd> tuş kombinasyonunu kullanabiliriz. Demiştim ya 6 farklı konsol açılabiliyor işte açtığınız konsolun numarası da <kbd>tty1,tty2,tty3,tty4,tty5,tty6</kbd> gibi "tty_konsol_numarası" şeklinde konsolda görülüyor. Örneğin ben <kbd>Ctrl + Alt + f3</kbd> tuş kombinasyonunu yaptığımda karşıma aşağıdakine benzer bir komut satırı geliyor ve benden login olmamı yani kullanıcı adımı ve sonrasında şifremi yazarak giriş yapmamı bekliyor.

![enter image description here](https://i.hizliresim.com/76mqWv.png)
 <p>Eğer bu komut satırından çıkıp tekrar kullanıcı arayüzüne yani grafiksel arayüze geçmek isterseniz <kbd>Ctrl + Alt + (f7,f8,f9,f10,f11,f12) </kbd> kombinasyonlarından herhangi birini kullanarak bunu başarabilirsiniz. Ancak kimi Kali Linux sürümlerinde durum böyle olamayabiliyor yani eğer <kbd>Ctrl + Alt + f7</kbd> ve sonrası tuş kombinasyonu grafik arayüze dönmenizi sağlamaz ise bu sefer <kbd>Ctrl+Alt+f1</kbd> veya <kbd>Ctrl + Alt + f2 </kbd> şeklinde dönmeye çalışın. Grafik arayüzden Terminal(konsol) ile çalışmak isterseniz masaüstünde bulunan Terminal simgesine tıklamanız yeterli olacaktır.(Genelde görev çubuğunda sabit şekilde yer alır.) Eğer masaüstünde yok bulamıyorum diyorsanız arama çubuğu ve benzeri yardımcılar aracılığı ile lütfen "konsol" veya "terminal" şeklinde aratarak kendiniz bulun. Ayrıca kısayollardan bahsetmiştim örneğin bazı dağıtımlarda <kbd>Ctrl + Alt + T</kbd> tuş kombinasyonu direk olarak terminal ekranını açıyor. Ancak bu kısayollar ayarlar aracılığı ile ve ayrıca da dağıtımdan dağıtıma farklılık gösterdiği için bu kısayolları sizin kendi kullandığınız dağıtıma göre araştırmanız gerek. Korkmayın inanılmaz kolay bir işlem, hem böylelikle yavaş yavaş Linux öğrenmenin aslında araştırmak ve kendi kendine öğrenmek olduğunu öğreniyoruz. Zaten ileride Kali Linux için <a href="#terminal_kısayolları">kısayollar</a> konularına ayrıca değineceğim.
      <p>Şimdilik konumuza dönecek olursak Shell'in ne olduğunu açıklamıştık ve en çok tercih edilen kabuk programının BASH kabuk programı olduğunu söylemiştik.Bunu teyit etmek için komut satırına <code>echo $SHELL</code> komutumuzu giriyoruz.
      <p>Girdiğimiz komutu açıklayacak olursak ' <kbd>echo</kbd> ' komut satırında ekrana yazdırma işlevini görür örneğin ben komut satırına <code>echo "Merhabalar"</code> yazarsam komut satırı ' Merhabalar ' çıktısını verecektir.' <kbd>$</kbd> ' işareti bir parametre ve tanımlanan değişkene normal bir kullanıcı olarak erişebilmeyi sağlıyor. Şimdilik bu komut bütünü hakkında bu kadar bilgi yeter. Eğer komutun açıklamasını anlamadıysanız sorun yok. Okumaya devam ettikçe parçalar yerine oturmaya başlayacak. Zaten ileride bu konuların her birine tek tek değineceğiz ve sizler de anlamış olacaksınız. Şimdi devam edecek olursak:</p>

![enter image description here](https://i.hizliresim.com/Pl302Q.png)

<p>Konsola girmiş olduğumuz komut yorumlandı ve neticesinde bize <kbd>/bin/bash</kbd> şeklinde bir çıktı verdi. Bu çıktı bize mevcut sistemde kullanılan ana kabuk programının BASH olduğunu bildirmiş oldu. Burada komut yorumlandı dedik ancak neye göre oldu bu iş ? İşte bu noktada devreye ortam değişkenleri(çevre değişkenleri) giriyor. Bu kısımları fazlaca incelediğimi düşünenler olabilir ancak emin olun öğrendiğiniz her şey birbiri ile bağlı ve bütünü anlamak için bilmek gerekli. İleride yeri geldikçe bunları daha net kavrayacağız zaten.</p><p>Anlatımları mümkün oldukça teknik dilden uzak sade anlaşılır ve sizlerin de sürekli etkileşimde olacağı şekilde aktarmaya çalışıyorum. Yani burada yazanları kuru kuruya ezberlemeyecek, ilerleyiş sırasında uygulamalar yaparak konuları anlamış olacağız.</p>
<p>Tamda bu noktada uygulama yaparak öğrenmenin önemini belirten Konfüçyüs'ün bir sözünü hatırlatmak istiyorum:</p>

> ### "Bana anlat unuturum, bana göster hatırlarım, beni dahil et, anlarım."  **Konfüçyüs**

<p>İlerleyişimize gelin ortam değişkenlerini tanıyarak devam edelim.</p>
<h2 id="ortam_değişkenleri"> Ortam Değişkenleri (Çevre Değişkenleri)</h2>
		  
<p>Ortam değişkenlerini anlamak için bir örnek üzerinden gidelim. Örneğin grafiksel arayüzde komut satırına <code>leafpad</code> yazdığımızda karşımıza leafpad(metin editörü) programı gelir. (Özellikle grafiksel arayüz diye belirttim çünkü leafpad uygulaması grafiksel arayüz ile çalışmaktadır yani tek başına komut satırının olduğu durumda çalışmayacaktır.)</p>

<p>Fark ettiyseniz bu komutu yazarken programın bulunduğu konumu belirtmeme gerek kalmadı. Yalnızca programın ismini Terminale girmemiz sonucu leafpad programı açılmış oldu. Bunun nedeni programın dosya dizinlerinin PATH(yol) ortam değişkeni üzerinde ekli olmasıdır. Sonuç olarak konsoldan girilen <code>leafpad</code> komutu bu yol üzerinde arandı ve yol üzerinde var olan leafpad uygulaması çalıştırıldı.</p>
<p>Daha iyi anlayabilmek adına bize PATH(yol) bilgisini veren komutumuzu kullanalım ve terminalin bize vereceği tepkiye göre açıklamaya devam edelim. Komut satırımıza <code>echo $PATH</code> komutunu verelim:</p>

![enter image description here](https://i.hizliresim.com/gOlqv2.png)

<p>Çıktının bize gösterdiği yani konsolun demek istediği şu:</p> 
<p>Konsoldan girilen komutu çalıştırabilmem için sırasıyla bu <kbd>/usr/local/sbin: /usr/local/bin: /usr/sbin: /usr/bin: /sbin: /bin</kbd> dizinlere bakmam gerek.Eğer verilen komutun çalıştırılabilir dosyası bu dizinlerin içerisinde ise çalıştırırım, yoksa çalıştıramam. </p>
<p>Çıktıda görüllen iki nokta üst üste (<kbd>:</kbd>) işareti ile ayrılmış dizinlere PATH(yol) ortam değişkeni deniyor. Ben yine de emin olamadım diyenler için gelin PATH yoluna ekli olmayan bir progamı kendimiz ekleyelim ve konsoldan verdiğiniz bir komutla direk olarak çalışmasını sağlayalım. Adım adım ilerleyelim.</p>

<p>Ben masaütünde "yeni_dizin" adında bir klasör oluşturdum daha sonra içerisine "yeni" diye başka bir klasör daha oluşturdum son olarak bu klasörün de içerisine "en_yeni" şeklinde bir klasör daha oluşturdum. Yani oluşturduğum dizinin tam adresi <kbd>yeni_dizin /yeni /en_yeni</kbd> şeklinde oluşmuş oldu.</p>
<p>Şimdi oluşturduğum dizinin en alt klasörünün(en_yeni) içine girerek leafpad programı aracılığı ile metin belgesi oluşturuyorum ve belgenin içine  <code>echo "Program Çalıştı"</code> yazarak oluşturmuş olduğum dosya dizininin en alt dosyaya yani "en_yeni" ismindeki klasöre dosyamı "komut.sh" ismiyle kaydediyorum. Dosya sonuna eklediğimiz <kbd>.sh</kbd> eki ile bir betik dosyası halini aldı. Betik dosyası genel tanımı ile konsol komutlarını içerisine kaydettikten sonra tek seferde bir bütün halinde komutları çalıştırabildiğimiz dosya türüdür. Zaten fark ettiyseniz dosyamızın içerisine daha önce de konsolda verdiğimiz komutlardan birini olan <code>echo</code> komutunu ekledik. Yani bu oluşturmuş olduğumuz betik dosyası Terminal üzerinden çalıştığında komut satırına "Program Çalıştı" şeklinde bir çıktı vericek. Betik dosyasının dizin içerisindeki tam konumu aşağıdaki şekildedir.</p>

![enter image description here](https://i.hizliresim.com/Z9NZjZ.png)

<p>Programımızın dizin adresi belli olduğuna göre artık bu dizini PATH ortam değişkenine ekleyip istediğimiz zaman, istediğimiz yerden programımızı(komut.sh) çalıştırabiliriz.

<h2 id="dizin_ekle"> PATH(yola)Dizin Ekleme</h2>
<p>PATH(yola) yeni dizin eklemek için öncelikle her defasında oturum başlatılırken okunan <kbd>profile</kbd> isimli dosyada değişiklik yapmalıyız ki eklediğimiz dizin her daim biz silene kadar geçerli olsun. <kbd>profile</kbd> dosyasında değişiklik yapmak için komut satırına dosyamızın bulunduğu tam konumu belirtmek üzere <code>nano -w /etc/profile</code> komutunu giriyoruz.</p>

![enter image description here](https://i.hizliresim.com/2J7rqj.png)

<p>Ve komut satırında karşımıza yukarıdaki gibi <kbd>profile</kbd> dosyasının içeriği geliyor. Şimdi yapmamız gereken programımızın ( komut.sh ) bulunduğu tam dizin konumunu bu dosyaya uygun şekilde eklemek.</p>

<p>Bunun için dosyanın en alt satıra inerek eklemek istediğim dosyanın tam dizin adresini aşağıdaki şeklinde dosyaya ekliyorum.</p>

     PATH="/root/Desktop/yeni_dizin/yeni/en_yeni":$PATH

![enter image description here](https://i.hizliresim.com/3E87n0.png)

<p>Yazma işlemi bittikten sonra dosyada yaptığımız değişiklikleri kaydedip dosyayı kapatmak için <kbd>Ctrl + X</kbd> tuş kombinasyonu uyguluyoruz. Bana, "Değiştirilen tampon kaydedilsin mi?  ("Hayır" demek değişiklikleri SİLECEK.) "  şeklinde bir uyarı veriyor. Dosyada yaptığım değişikliği kaydetmek için <kbd>e</kbd> tuşuna basarak devam ediyorum.

![enter image description here](https://i.hizliresim.com/z0R3L6.png)

Son olarak bana, "Yazılacak Dosya Adı: <kdb>/etc/profile</kdb>" diye belirtiyor, buradaki ismi değiştirmeden kaydediyoruz. Eğer ismi değiştirirsek sistem bu dosyayı okuyamacağı için problem çıkacaktır.</p>

![enter image description here](https://i.hizliresim.com/G9nBN6.png)

<p>Bu adımları geçtikten sonra istediğimiz dizin PATH(yol) ortam değişkenine eklenmiş oldu. Ancak işlemin geçerli olması için oturumun kapatılıp tekrar açılması gerekiyor çünkü <kbd>profile</kbd> dosyası oturum açılırken okunuyor.</p>
		
<p>Oturumu kapatıp tekrar giriş yaptım. Şimdi sırada eklediğimiz dizinin PATH yolunda ekli olup olmadığını kontrol etmek var bunun için konsola <code>echo $PATH</code> komutunu veriyoruz.</p>

![enter image description here](https://i.hizliresim.com/m2l304.png)
	
<p>Gördüğünüz gibi dizin yola(PATH) eklenmiş bulunuyor.</p>
<p>Artık dosyayı çalıştırmadan önce son bir ayar daha yapmamız gerek. Daha sonra "komut.sh" dosyamızı aynı leafpad programında olduğu gibi istediğimiz zaman komut satırından ismi ile çalıştırabiliyor olacağız. Son işlemimiz yetkilendirme işlemi. Bu neden gerekli diyecek olursanız işlemin gerekliliğini kendi gözlerinizle görmek için bu kısmı atlayarak dosyayı çalıştırmaya çalışın. Bunun için komut satırına <code>komut.sh</code> yazalım.</p>

![enter image description here](https://i.hizliresim.com/A12LjB.png)

<p>Gördüğünüz gibi konsol bize "Erişim engellendi" diye bildirdi ve dosyayı bulmasına rağmen çalıştırmadı. İşte bu durumu yaşamamak için "komut.sh" dosyamızın bulunduğu konuma giderek (<code>cd Desktop/yeni_dizin/yeni/en_yeni/</code>) <code>chmod +rwx komut.sh</code> komutunu vermemiz gerekiyor. Böylelikle dosyayı çalıştırma izni de elde etmiş olacağız. Yani artık konsola <code>komut.sh</code> yazdığımız anda bizim oluşturmuş olduğumuz "komut.sh" betik dosyası çalışarak "Program Çalıştı" yazısını konsola basacak.</p>

![enter image description here](https://i.hizliresim.com/JQLlrE.png)

<p>Sizler de bu yolla sıklıkla kullandığınız dosyaları kolay erişilebilir kılabilirsiniz. Burada vermiş olduğum komutları ayrıntılı şekilde ileride açıklayacağım siz şimdilik konunun temeline ve ne neden oluyor ona hakim olsanız yeter. Ancak kafalarda soru işareti ile devam etmemek adına ben yinede tek tek izah edeyim hangi komutu neden kullandık.</p>
		
<p><code>nano -w /etc/profile</code> bu komutta; <code>nano</code> komutu, konsol üzerinden dosya içeriğini okumamıza olanak sağlayan bir araç ve <code>nano</code> komutunun yanındaki <code>-w</code> karakteri ise dosyada değişiklik yapmamıza olanak sağlayan parametredir. Biz bu parametre sayesinde nano aracı ile belgeyi yazma(write) kipinde açmış oluyoruz. Geri kalan <code>/etc/profile</code> kısmı ise <kbd>profile</kbd> dosyasının bulunduğu konumu belirtiyor. Bu sayede nano aracı ile yazma kipinde <kbd>/etc/profile</kbd> konumundaki <kbd>profile</kbd> dosyasını komut satırı üzerinden görebiliyor ve değişiklik yapabiliyoruz.</p>

<p><code>PATH="/root/Desktop/yeni_dizin/yeni/</code> <code>en_yeni:$PATH"</code>ifadesi ise mevcut PATH(yola) yeni dizin eklememize olanak sağlayan bir bütündür. Burada açıklanacak özel bir durum yok kullanım şekli itibari ile PATH yoluna dizin ekleme işlemi için gereken ifade bütünüdür.</p>

<p><code>echo $PATH</code> komutunu daha önce de görmüştük buradki <code>echo</code> komutu PATH ortam değişkeninde bulunan dizinleri görmemizi sağlıyor.</p>
<p><code>chmod +rwx komut.sh</code> komutunda, <code>chmod</code> yetkilendirme ayarlamaları yapmamıza olanak sağlıyor.<code>+rwx</code> parametrelerinden " + "işareti ekleme," r "işareti okuma, " w "işareti yazma, " x "işareti ise çalıştırma yetkisi olmak üzere bizlere bir bütün olarak dosyayı çalıştırabilmemiz için gereken yetkilendirmeyi sağlıyor. Geri kalan <code>komut.sh</code> kısım ise zaten yetkilendirme vermek istediğimiz dosyanın adı.</p>	

			
<p>Şimdi bu kısımlar sizlere çok fazla detaya girilmiş belki de gereksiz yere eklenmiş gibi gelebilir ancak bu dokümanı bir bütün olarak kabul etmelisiniz. Dokümantasyon bir sefer okudum bitti değil ihtiyacınız oldukça tekrar tekrar bakasınız diye var. Yani buraları okuyup uygulayıp kavradıktan sonra böyle bir ihtiyacınız olduğunda bu konunun burada olduğunu bilin. Burada yer alan anlatımlar temeli oluşturma üzerine sıralı ve bağlantılı şekilde ilerliyor. Burada bunları ezberlemenize gerek yok zaten öğrenmenin temelinde de ezber yok. O yüzden rahat olun her şey kullandıkça gelişecek ancak dediğim gibi artık böyle birşeyin varlığından haberdarsınız yeri geldiğinde ihtiyacınız olan bilgiler burada olacak. </p>

<p>Ortam değişkenleri dedik ancak şu ana kadar sadece PATH değişkeninden bahsettik. Tabii ki sistemde sadece PATH değişkeni bulunmuyor bu değişken dışında da pek çok ortam değişkeni mevcut. Bunları görmek istersek komut satırına <code>set</code> , <code>env</code> yada <code>printenv</code> komutlarından birini ihtiyacımıza göre kullanabiliriz. Bu üç komut arasındaki farklar aşağıdaki şekildedir.</p>

**set :** Shell'e ait olan değişkenlerin adını ve değerlerini verir.

**printenv :** Sistemde bulunan bütün çevresel değişkenleri verir.

**env :** Sistemde bulunan bütün "export" edilmiş yani değiştirilmiş değişkenlerle beraber değişkenleri gösterir.

Ben aşağıda sadece <code>printenv</code> komutunun çıktısını veriyorum. Sizler diğer komutları da mutlaka uygulayarak aralarındaki farkları kendi gözlerinizle görün.

![enter image description here](https://i.hizliresim.com/azqLO7.png)

<p>Evet bize burada pek çok ortam değişkeni sıralandı. Ben her birini açıklamayacağım. Neden diye soracak olursanız mevcut dökümantasyonda temel anlatım içerisinde olduğumuz için sizlere mümkün olduğunca ilk adım için gerekli olanları vermeye çalışıyorum. Yani ben burada size konuyu açıklamak ve konuyu iyi şekilde kavramanız için gerekenleri aktarmaya çalışıyorum. Ancak buradan açıkladıklarım haricindekiler gereksiz gibi bir anlam çıkmasın lütfen. Zaten temeli yani asıl işlevlerini kavradıktan sonra yeri geldikçe diğer değişkenleri de biliyor ve kullanıyor olacaksınız. Ancak ben yinede şimdi diğer bir değişken olan HOME değişkenini de kısaca açıklayarak örneklendirmiş olacağım. Merak eden arkadaşlar şimdiden diğer ortam değişkenlerini de araştırıp kurcalayabilir.</p>
	  
HOME değişkenini örnekleyerek açıklayacak olursak:

Şöyle bir durum düşünün bir programcı, yazmış olduğu programının kurulduğu zaman masaüstüne bir kısayol oluşturmasını istiyor olsun. Ancak böyle bir şey yapabilmek için, kullanıcıların masaüstüne giden yolunun tespit edilebilmesi lazım. Ama şöyle bir problem var; Bildiğiniz gibi herkesin masaüstüne giden yol aynı değil. Bir bilgisayardaki masaüstü dizinini bulabilmek için, o bilgisayarı kullanan kişinin kullanıcı adını da biliyor olmanız lazım. Çünkü masaüstünün bulunduğu dizin kullanıcı adına bağlı olarak değişiklik gösterecektir.

Mesela bende <kbd>/home/taylan/Desktop</kbd> olan masaüstü dizini sizde<kbd> /home/burak/Desktop </kbd> şeklinde olabilir. Hatta işletim sisteminin dilinin Türkçe veya İngilizce (diğer tüm diller de dahil..) olmasına göre de masaüstünün yolu farklı olabilir. Yani demem o ki bu kadar basit bir işlem için bile tahmin edilemez bu yolun bilinmesi veya bulunması gerek. Ama masaüstüne kısayol oluşturma çok olağan bir durum bir imkansız değil. İşte tam bu noktada neden ortam değişkenlerinin var olduğunu biraz daha net kavrıyoruz. Ortam değişkenleri, kullandığımız işletim sisteminde belli değerlere daha sonra kolaylıkla ve kararlılıkla ulaşabilmemiz ve işleyebilmemiz için oluşturulan ifadelerdir. Bahsettiğimiz konuda örneğin masaüstüne herhangi bir yerden ulaşmak istersek, komut satırına ev dizini yolunu tutan değişken olan HOME değişkenini <code>cd $HOME </code> şeklide girmemiz gerekiyor. Bu sayede ev dizini içerisinde yer alan Desktop konumuna da ulaşabiliyor olacağız.

![enter image description here](https://i.hizliresim.com/6JR9g3.png)

Ayrıca burada ekstra bir bilgi olsun diye burada belirtmek isterim ki ev dizinine gitmek için iki farklı yol daha bulunmaktadır. Bunlardan ilki yalnızca <code>cd</code> komutunu kullanmak diğeri ise <code>cd ~</code> komutunu kullanmaktır. ( Burada yer alan <kbd>~</kbd> işareti Türkçe klavyede <kbd>Alt Gr + </kbd> tuş kombinaysonu ile oluşturuluyor. )

![enter image description here](https://i.hizliresim.com/W720BN.png)
![enter image description here](https://i.hizliresim.com/3E87rr.png)


Komutumuzu girdikten sonra ulaştığımız konumda hangi dosyaların olduğunu görmek için konsola <code>ls</code> komutunu verdik. Konsol bize Desktop(masaüstü) ve ev dizininde bulunan diğer dosyalarında çıktılarını verdi. Yani bu demek oluyor ki ev dizinine kullanıcı ismini bilmemize gerek olmadan kolayca ulaştık. Örnek durumda açıkladığımız program kısayolu oluşturma işlemi ana dizini tutan HOME ortam değişkeni sayesinde kolayca gerçekleştirilebilir oluyor.

Komutu biraz açıklayacak olursak <code>cd</code>  dizinler arası geçiş yapmamızı sağlayan bir komut <code>$</code>  (dolar işareti) tanımlanmış olan değişkene erişme işlemini yapan parametremiz, HOME ise ev dizinini tutan ortam değişkeni. Son olarak <code>ls</code>  komutu bulunduğumuz konumdaki dosyaları listeliyor. Burada bahsi geçen tüm komutları ileride ele alacağız şimdilik bu açıklama yeterli.

Temel ve sık kullanılan değişkellerden birkaçını da kısaca açıklayacak olursak:

**SHELL:** Çalışmakta olan kabuk programının adını ve yeri.

**PATH:** Konsola komut girildiğinde, komut için gereken ilgili dosyaların aranacağı dizinler diğer bir adıyla yol.

**HOME:** Kullanıncının ev dizinini içeren değişken.

**TERM:** Komut satırı uygulamalarının hangi terminalde çalışacağını belirtir. Birçok çeşidi vardır ancak xterm yaygın şekilde karşımıza çıkmaktadır.

Ortam değişkenlerinin değerlerini tek tek kontrol etmek istersek, konsola <code>echo $ORTAM_DEĞİŞKENİ</code> şeklinde komut vererek ilgili bilgilere ulaşabiliriz. Örneğin TERM değişkeninie bir bakalım.

![enter image description here](https://i.hizliresim.com/rOL2mB.png)

Gördüğünüz üzere konsol TERM değişkeninin değerini xterm olduğunu göstermiş oldu. Zaten daha önce yaygın olarak kullanıldığından söz ettiğimiz için bu çıktı bizi şaşırtmadı. Eğer bu çıktıyı teyit etmek istersek konsola <code>xterm </code> komutunu verdiğimizde xterm açılacak ve çıktı teyit edilmiş olacaktır.

![enter image description here](https://i.hizliresim.com/D7Xd8z.png)

İstersek diğer ortam değişkenlei için de aynı şekilde tek tek bilgi alabiliriz. Ancak ortam değişkenleri sabit ve sınırlı değildir. Sistemde var olanların haricinde bizde kendimiz ortam değişkenleri tanımlayabiliriz. Tanımlamaları üç farklı kategoriye ayırabiliriz;

- **konsola(terminal) özel :** yalnızca geçerli, açık olan terminaldeki uygulamalar için kullanılabilen
- **kullanıcı :** yalnızca tek kullanıcı için geçerli ve o kullanıcının her oturum açtığında kullanabildiği
- **sistem geneli :** sistemde öntanımlı olarak ayarlanmış sürekli kullanılabilir

Gelin şimdi teker teker kullanımlarına değinelim.

### Mevcut Konsola Özel

Sadece o an kullanmkata olduğumuz terminale(konsol) özel olan ve terminali kapattıktan sonra sıfırlanan ortam değişkenidir. Aşağıdaki örnek ile adım adım açıklayalım bu durumu:

Terminali açtım ve komut satırına "<code> asdf </code> " yazdım. Konsol yanıt olarak " <code>bash: asdf: komut yok</code> " yazısını ekrana bastı.

![enter image description here](https://i.hizliresim.com/z0RBA6.png)

Görüldüğü gibi konsol çıktısı Türkçe oldu ancak ben bu çıktıları İngilizceye çevirmek istiyorum diyelim. Bunun için konsola<code> export LANG=C </code>komutunu veriyorum. Ve sonrasında tekrar komut satırına <code>asdf</code> yazıp dilin değişip değişmediğini kontrol ediyorum.

![enter image description here](https://i.hizliresim.com/6JRX8P.png)

Çıktıda da görüldüğü gibi dil değişmiş ve yazdığımız <code>asdf</code> komutunun neticesinde konsol, ekrana "bash: asdf: command not found" yazısını basmış oldu. Sonuç olarak geçerli terminal için dil ingilizceye çevrilmiş oldu.

Bütün bu işlemler sadece bu komut penceresi için sınırlı. Yani açmış olduğumuz terminal ekranını(konsol/komut penceresi) kapatırsak yeni bir tane açtığımızda başlangıçta olduğu gibi konsol bize Türkçe yanıt verecektir. Yani bu şekilde yapılan tüm değişiklikler sadece yapıldığı konsol için geçerli. Bunu kendiniz de deneyerek görebilirsiniz.


### Kullanıcıya (Oturuma) Özel

Daha önce BASH kabuğundan bahsetmiştik ve mevcut sistemimizde bulunup bulunmadığını da kontrol etmiştik. Bash her oturum açtığımızda tüm ayarlarını ve davranışlarını " <kbd>.bashrc</kbd> " isimli gizli bir dosyadan okur. Ufak bir bilgi daha; başında <kbd>.</kbd> (nokta) olan dosyalar gizli dosya görevindedir. Konuya dönecek olursak bizim mevcut oturumumuzda ortam değişkenlerinde kalıcı değişiklik yapabilmemiz için yapmak istediğimiz değişiklikleri " <kbd>.bashrc</kbd> " isimli dosyaya eklememiz gerekiyor ki oturum açtığımızda sistem burada yaptığımız değişiklikleri her seferinde görebilsin.

Bulunduğumuz oturumda kalıcı değişiklik yapmak için birisi grafiksel diğeri ise sadece komut satırı arayüzü olmak üzere iki farklı yoldan nasıl değişiklik yaparız onu görelim. İsterseniz ilk olarak grafiksel arayüz ile başlayalım. Öncelikle <kbd>.bashrc</kbd> dosyasını açmalıyız. Dosyayı açmak için konsola <code>leafpad ~/.bashrc</code> komutunu veriyoruz.

Kodu kısaca açıklayacak olursak <code>leafpad</code>sistemde mevcut bulunan basit metin düzenleyicisinin adıdır, <code>~</code>(Alt Gr + ü kombinasyonu ile oluşturulan "tilde" karakteri) karakteri ev dizinini temsil ediyor <code>/.bashrc </code> ise düzenleme yapacağımız dosyanın adıdır. Bu kısa açıklama sonrası komutları tam olarak anlamamış olabilirsiniz. Ancak yakında her birine değineceğiz ve bu kısımlar da tam anlamıyla oturmuş olacak. Yani şimdilik bu kodlara çok takılmadan asıl anlatılmak istenilene odaklanın lütfen.

<code>leafpad ~/.bashrc </code> komutunu verdikten sonra karşınıza <kbd>.bashrc</kbd> dosyasının açılmış olması gerek. 

![enter image description here](https://i.hizliresim.com/6JRXPv.png)

Şimdi yapmak istediğimiz değişikliği dosyanın en alt satırına yani dosyanın sonuna eklemeliyiz. Bu eklemeyi <code>export DEĞİŞKEN_ADI=değeri </code> şeklinde yapıyoruz. Ben örnek olması açsından dil değişikliğini ele aldım. Bu sebepten dil değişimi(Türkçe olan dili ingilizceye çevirmek) için gerekli olan yazı dizisini <code>export LANG=C</code> şeklinde dosyanın sonuna ekledim ve dosyayı kaydederek kapattım.

Geldik diğer yöntem olan yalnızca konsol ekranını kullanarak değişiklik yapmaya. Bunun için konsola <code>nano -w ~/.bashrc</code> komutumuzu veriyoruz.

Komutumuzu girdikten sonra karşımıza konsol ekranı içerisinde <kbd>.bashrc</kbd> dosyasının içeriği geliyor. Klavyedeki yön tuşlarını kullanarak en alt satıra iniyoruz ve oraya yapmak istediğimiz değişkliği giriyoruz. Ben dilde değişiklik yapacağım için satırın sonuna <code>export LANG=C </code> şeklinde ekleme yaptım .

![enter image description here](https://i.hizliresim.com/A12kGr.png)

Ve <kbd>Ctrl + X</kbd> tuş kombinasyonunu uyguladım. Daha sonra konsol bana çıkmadan önce dosyada yaptığım değişikliği kaydetmek isteyip istemediğimi sordu bende "e" diyerek dosyanın adını herhangi bir değişime uğratmadan kaydettim ve işte bu kadar işlem tamamdır.

![enter image description here](https://i.hizliresim.com/8YndWd.png)
![enter image description here](https://i.hizliresim.com/D7XdWy.png)

Yalnızca komut satırından işlem yapmak sanki daha uzun ve zor gibi gelmiş olabilir ancak kesinlikle grafiksel olarak yapmaktan bir farkı yok sadece belki izahı biraz uzun sürmüş olabilir.

Artık böylelikle değişiklik yaptığımız bu kullanıcı oturumunu ne zaman açarsak, yaptığımız dil değişikliği geçerli olacak. Ancak değişikliği yaptığımız anda etki etmiyor. Bunun nedeni <kbd>.bashrc</kbd> dosyasının oturum açılırken okunmasıdır. Yani yaptığımız değişikliklerin geçerli olabilmesi için oturumun kapatılıp tekrar açılması gerekmektedir. Ya da konsoldan vereceğimiz <code>source ~/.bashrc</code> komutu da dosyanın tıpkı oturum yeniden açılıyormuşcasına <kbd> .bashrc</kbd> dosyasının tekrar okunup yapılan değişikliklerin geçerli olmasını sağlar. Ancak benim önerim oturumu kapatıp tekrar açmanız yönündedir.

### Sistem Genelinde

Eğer yaptığımız değişiklik bütün kullanıcı oturumlarında aynı şekilde geçerli olsun istiyorsak değişkenin sistemde her oturum açıldığında okunan bir dosyada bulunması gerekmektedir. İşte bizim de yapacağımız değişiklikler tüm kullanıcılar için geçerli olsun istiyorsak, yapacağımız değişikliği <kbd> bash.bashrc</kbd> dosyasına eklemeliyiz. Dosyamızın tam konumu <kbd>/etc/bash.bashrc </kbd> dizininde yer alıyor. Bu dosyada ilgili değişikliği nano aracı ile yapmak için konsola <code>nano -w /etc/bash.bashrc </code>komutunu veriyoruz.

![enter image description here](https://i.hizliresim.com/JQLlgY.png)

Örnek olması açısından dosyamızın en son satırına dil değişikliği işlevindeki "<code>export LANG=C </code>" ifadesini ekliyorum. Bu sayede terminal dili bütün sistemdeki kullanıcılar için ingilizce olacaktır.

İlgili ifadeyi <kbd>bash.bashrc</kbd> dosyamıza ekleyip dosyamızı kaydediyoruz .

![enter image description here](https://i.hizliresim.com/D7Xy4z.png)
![enter image description here](https://i.hizliresim.com/m2lJ1V.png)

Sıra geldi değişikliklerin sistem tarafından tanınmasına. Yapılan değişikliğin sistem bütününde geçerli olabilmesi için daha önce de bahsi geçen <code>source</code> komutunu <kbd>bash.bashrc</kbd> dosyası için <code>source /etc/bash.bashrc</code> şeklinde kullanıyoruz. Ve değişikliklerin geçerli olup olmadığını denemek için konsola olmayan geçersiz bir komut verelim, örneğin konsola <code>asdf</code> yazalım bakalım konsolun tepkisi hangi dilde olacak.

![enter image description here](https://i.hizliresim.com/4amGl4.png)

Çıktımız ingilizce olduğuna göre başarmışız demektir. Yaptığımız bu değişiklik bütün kullanıcılar için yani sistem geneli için geçerlidir. Bu durumu başka bir hesap oluşturarak kendiniz de gözlemleyebilirsiniz.

Ayrıca değişiklikleri geri almak isterseniz eklediğiniz ifadeyi ilgili dosyadan silin ve sistemi <code>source ilgili_dosya_adı</code> şeklindeki komut bütünü ile yeniden konfigüre edin, bütün değişimler düzelmiş olacaktır.

Kısayollar
-------------


Bu bölümde birlikte sistem üzerinde gerekli hakimiyeti sağlamak için bize kolaylıklar sağlayan bazı kısayolları ve bazı önemli bilgileri öğrenip uygulayacağız. Kısayolları şimdi öğrenmemizin sebebi ileride komutları uygularken bizlere kolaylıklar sağlayarak bize hız katacak olmalarıdır. Hem şimdi öğrenirsek eğitim boyunca da sürekli pratik yapma imkanı bulmuş oluruz. Benim tecrübeme göre eğitim asla ezber üzerine kurulamaz.(aman M.E.B duymasın*! ) Öğrenme denilen olgu uygulama yani sürekli olarak yapılan pratik ile gerçekleşir. Bu bölümde öğreneceğiniz bilgiler belki başlangıç için fazlaca gözükebilir. Ancak her kısayolu ve bilgiyi direk ve sürekli olarak kullanmasak bile burada olduğunu bilmeli ve gerektiğinde dönüp tekrar bakabilmeliyiz. O yüzden gözünüze fazla gözükürse endişe etmenize gerek yok. Zaten bunlar hayati olarak sayılmazlar ancak zamanla göreceksiniz ki işlerimizi kolaylaştırarak Linux sistemini verimli şekilde kullanmamızı sağlıyor olacaklar. Neyse bu kadar açıklama yeter gelin konumuza Terminal için kısayol atama işlemleri ile başlayalım.

### Terminal Kısayolları

Genelde başka bir işletim sisteminden geçiş yapan arkadaşlar konsoldan bir komutu kopyalamak üzere, alıştıkları gibi <kbd>Ctlr + C</kbd> ve kopyalanan komutu yapıştırmak için ise <kbd>Ctrl + V</kbd> tuş kombinasyonunu denerler. Ancak komut satırında görürler ki kopyalamak için bastıkları<kbd>Ctrl + V</kbd> tuş kombinasyonu <kbd>^C</kbd> yapıştırmak için bastıkları <kbd>Ctrl + V </kbd>tuş kombinasyonu ise <kbd>^V</kbd> şeklinde konsola çıktı basmış. Tabi yanlış basmış olma ihtimaline karşı aynı işlemi genellikle tekrar deneyen arkadaşlar olur ancak yine aynı çıktıları alınca anlaşılır ki o işler öyle olmuyormuş :) İşin şakası bir yana insanın zamanla edindiği alışkanlıklarını değiştirmesi zor olabiliyor. O yüzden Terminalde <kbd>Ctrl + Shift + C </kbd> ve <kbd>Ctrl + Shift + V </kbd> olan kopyala-yapıştır kısayolunu daha önceden alışmış olduğumuz gibi değiştirmek bizim en doğal hakkımız. Bunun için eğer isterseniz yalnızca kopyala-yapıştır kısayolunu değiştirebilir yada diğer mevcut tüm kısayolları istediğiniz ve alıştığınız şekilde düzenleyebilirsiniz. Düzenlemek için, yeni Kali Linux versiyonlarında Terminal'in üst kısmında yer alan sekmelerden sırasıyla Düzenle > Tercihler > Kısayollar sekmelerini takip ederek açılan pencerede yer alan kısayolları dilediğiniz şekilde değiştirebilirsiniz.

![enter image description here](https://i.hizliresim.com/nOPJq1.gif)

Eğer eski bir versiyon kullanıyorsanız dediğim adımlarla Terminal kısayollarına ulaşamamış olabilirisiniz. Ancak Terminal'in üst kısmında yer alan sekmelere göz atarak "kısayollar" penceresine ulaşabilirsiniz. Sonuçta sürekli yenilikler olduğu için her versiyona özel bu tarz şeyleri yazmak gereksiz olacaktır. Kendiniz de biraz kurcalama ile çok rahat keşfedebilirsiniz.

Terminalin kısayollar penceresine ulaştığımıza göre artık istediğimiz şekilde değişiklik yapabliriz. Buradaki kısayol seçeneklerine göz atın hangisi size uymuyorsa dilediğiniz şekilde düzenleyin. Ayrıca bilmediğiniz kısayollar varsa onlara da göz atmayı ihmal etmeyin.

### Sistem Kısayolları

Şimdi ise sistem üzerindeki kısayollara göz atalım. Ben sürekli Terminali kullandığımız için Terminali açmak üzere bir kısayol oluşturmak istiyorum. Bunun için adım adım yapmamız gerekenlere bakalım. Başlamadan önce, kullandığınız sürüme göre değişiklik göstereceğinden yönerge tam olarak sizi yönlendiremeyebilir. Ancak bunlar biraz kurcalayarak kendi kendinize bulamayacağınız şeyler değil. Ben yine de kullandığım sürüm üzerinden sizlere adımları aktarıyorum:

Öncelikle sistem ayarları(Ayarlar) menüsüne gidelim oradan klavyeyi seçelim karşımıza "klavye kısayolları" şeklinde bir pencere açılacaktır.

Buradan en alta inerek altta yer alan " + " işaretine tıklayalım.

Karşımıza küçük bir "Özel Kısayol" penceresi açılacaktır.

Burada yer alan İsim kısmına herhangi bir ad verebilirsiniz ben daha sonrasında değiştirmek istediğimde hatırlamada kolaylık olsun diye Terminal adını verdim.

Komut kısmına terminalin açılması için gerekli olan komutu girmeliyiz ben Terminali açmak istediğimden Terminali açma komutu olan gnome-terminal komutunu yazdım.

Daha sonra bir alt kutucuğa istediğimiz kısayol tuş kombinasyonunu giriyoruz.

Ben Ctrl + Shift + T şekilinde ayarladım. Elbette siz kısayol tuş kombinasyonunu dilediğiniz gibi ayarlayabilirsiniz.

![enter image description here](https://i.hizliresim.com/A121Qv.gif)

Son olarak "Ekle" butonuna tıklayarak kısayolumu atamış oluyorum. Artık ne zaman atadığım kısayol tuş kombinasyonunu(ctrl+shift+T) uygularsam yeni bir Terminal ekranı açılıyor olacak. Ben burada Terminal üzerinden örnek verdim ancak herhangi başka şeyler de olabilir o sizlere kalmış. Ayrıca bu kısayollar menüsünde yer alan kısayollara da göz atıp eğer isterseniz dilediğiniz şekilde değiştirebilirsiniz.

### Bash Shell Kısayolları

Bash Shell programının ne işe yaradığını daha önceki kısımlarda açıklamıştık. Şimdi ise komut yazarken işimizi kolaylaştıracak olan bazı Bash Shell kısayollarını göreceğiz. Burada verilenleri direk olarak kullanmanız beklenmediğini daha önceki kısımlarda söylemiştim. Kısayolların oturması için çokça pratik gerek. Pratik yaptıkça zaten zamanla istemeden de olsa öğrenmiş ve farkında olmadan kullanıyor olacağız emin olun.

## İmleç Hareketleri:

<div class="table-responsive"><table class="table table-bordered table-striped"><thead><tr><th>Kısayol</th><th>Kısayol Açıklaması</th></tr></thead><tbody><tr><td><kbd>Ctrl + A</kbd></td><td>imleç satır başına gider.</td></tr><tr><td><kbd>Ctrl + E</kbd></td><td>imleç satır sonuna gider.</td></tr><tr><td><kbd>Ctrl + P</kbd></td><td>önce çalıştırılmış komut gösterilir.</td></tr><tr><td><kbd>Ctrl + N</kbd></td><td>sonra çalıştırılmış komut gösterilir.</td></tr><tr><td><kbd>Alt + B</kbd></td><td>sola doğru(geri) bir kelime kadar imleç kayar.</td></tr><tr><td><kbd>Alt + F</kbd></td><td>sağa doğru(ileri) bir kelime kadar imleç kayar.</td></tr><tr><td><kbd>Ctrl + F</kbd></td><td>imleç bir karakter ileri gider.</td></tr><tr><td><kbd>Ctrl + B</kbd></td><td>imleç bir karakter geri gider.</td></tr><tr><td><kbd>Ctrl + XX</kbd></td><td>geçerli imleç konumundan, imleç satır başına geçer.</td></tr></tbody></table></div>

* * *

## Düzenleme

<div class="table-responsive"><table class="table table-bordered table-striped"><thead><tr><th width="21%">Kısayol </th><th width="79%">Kısayol Açıklaması</th></tr></thead><tbody><tr><td><kbd>Ctrl + L</kbd></td><td>ekran temizlenir ve imleç en üst satıra çıkar yani `clear` komutu ile aynı işlemi yapar.</td></tr><tr><td><kbd>Alt + D</kbd></td><td>imleçten sonraki kelimeyi siler.</td></tr><tr><td><kbd>Ctrl + U</kbd></td><td>imlecin solundaki her şeyi siler.</td></tr><tr><td><kbd>Ctrl + K</kbd></td><td>imlecin sağındaki her şeyi siler.</td></tr><tr><td><kbd>Ctrl + C</kbd></td><td>komutu keser.</td></tr><tr><td><kbd>Ctrl + Y</kbd></td><td>kesilmiş olan son metni ekrana yapıştırır.</td></tr><tr><td><kbd>Ctrl + W</kbd></td><td>imleçten önceki kelime panoya kopyalanır.</td></tr><tr><td><kbd>Ctrl + K</kbd></td><td>imleçten sonraki kelime panoya kopyalanır.</td></tr><tr><td><kbd>Ctrl + U</kbd></td><td>imleçten önceki kelime silinir.</td></tr><tr><td><kbd>Esc + T</kbd></td><td>imleçten önceki iki kelime yer değiştir.</td></tr><tr><td><kbd>Ctrl + H</kbd></td><td>sola doğru tek tek karakterleri siler.(Yani Backspace gibi davranır)</td></tr><tr><td><kbd>Alt + U</kbd></td><td>imleç in başladığı yerden sözcüğün sonuna kadar bütün karakterleri büyük harf yapar.</td></tr><tr><td><kbd>Alt + L</kbd></td><td>imleç in başladığı yerden sözcüğün sonuna kadar bütün karakterleri küçük harf yapar.</td></tr><tr><td><kbd>Alt + C</kbd></td><td>imleç in üstünde bulunduğu karakteri büyük harf yapar.</td></tr><tr><td><kbd>Ctrl + R</kbd></td><td>daha önce kullanılmış olan komutlar arasında arama yapma ve o komutu tekrardan kullanma imkanı sağlar.</td></tr><tr><td><kbd>Alt + R</kbd></td><td>değişiklikleri iptal eder ve satırı eski haline getirir.</td></tr><tr><td><kbd>Ctrl + _</kbd></td><td>değişiklikleri iptal eder.</td></tr></tbody></table></div>

* * *

<section>

## Özel Tuşlar

<div class="table-responsive"><table class="table table-bordered table-striped"><thead><tr><th width="21%">Kısayol </th><th width="79%">Kısayol Açıklaması</th></tr></thead><tbody><tr><td><kbd>Ctrl + I</kbd></td><td>Tab tuşu görevi görür.(Tab tuşu otamatik tamamlama sağlar, unutmanız veya hatırlamamanız halinde hayat kurtarıcı etkidedir eminim çok kullancaksınız ileride. Bu bağlamda çok kıymetli bir kısayoldur. Kısayol harici direk olarak <kbd>Tab</kbd> tuşuna basmanız da gayet kullanışlı.)</td></tr><tr><td><kbd>Ctrl + J</kbd></td><td>Yeni satır (Newline)</td></tr><tr><td><kbd>Ctrl + M</kbd></td><td>Giriş/Onay (<kbd>Enter</kbd>)</td></tr><tr><td><kbd>Ctrl + [</kbd></td><td> Escape(<kbd>Esc</kbd>) tuşu işlevi görür.</td></tr><tr><td><kbd>Ctrl + D</kbd></td><td>Terminali sonlandırır.</td></tr></tbody></table></div></section>

Burada belirttiklerim dışında pek çok kısayol mevcut ancak ben hepsine değinmedim. Kaynak olarak kullandığım [bu adresten][1] veya internette yer alan ücretsiz bir çok kaynaktan çok rahat şekilde yeni kısayol bilgilerine ulaşabilirsiniz.

Hazır konu kısayollardan ve pratiklikten açılmışken aynı anda birden fazla komut kullanımını da anlatmadan geçmek olmaz. Bunun için üç farklı yol izleyebiliriz. Birincisi yan yana olacak şekilde <kbd>&&</kbd> operatörünü kullanmak. Hemen bu yolu deneyelim. Ancak henüz tam olarak komutları öğrenmediğimiz için önceden kullandığımız komutlardan kullanalım. Bunun için PATH ve TERM ortam değişkenlerini kullanarak aynı anda çıktı almak üzere <code> echo $PATH && echo $TERM</code> komutunu konsola yazalım.

![enter image description here](https://i.hizliresim.com/qGqGYB.png)

Çıktıda görüldüğü gibi PATH ve TERM ortam değişkenlerinin değerleri yazdığımız birleşik komut sayesinde iki farklı komut aynı anda basıldı. Gelin şimdi de diğer bir yol olan noktalı virgül " <kbd>;</kbd> " kullanarak aynı işlemi tekrar edelim.

![enter image description here](https://i.hizliresim.com/3E8Ea5.png)

Ve sonuç bizleri şaşırtmayarak yine birleşik komut içerisinde yazdığımız ortam değişkenlerinin değerlerini aynı anda ekrana bastırdı. Ve son olarak <kbd> || </kbd> operatörü var. Bu operatör diğerlerinden farklı olarak kullandığımızda, eğer verilen komutlardan birincisi başarısız olursa diğerini basar. Bu operatörü de kısaca şu örnek ile inceleyelim.

![enter image description here](https://i.hizliresim.com/A1216r.png)

Burada 1. komut başarısız olduğu için 2. komut ekrana basılmış oldu. Yani bir nevi önlem amaçlı bir kullanımdır. Biz konsola bu kullanım ile diyoruz ki; "Eğer verdiğim ilk komut başarısız olursa ikinci komutu çalıştır." yani bu durumda eğer ilk komut başarızı olursa hemen devreye ikinci komut girecektir ancak ilk komut başarılı olursa ikinci komut çalışmayacaktır.

### Kısayol Koruması

Buraya gelene kadar bir çok kısayoldan ve bu kısayolların avantajlarından bahsettik ancak kısayollar bazen istemediğimiz sonuçlar doğurabiliyor. Biz de böyle durumlarla karşılaşmamak adına şimdiden ufak önlemler alsak iyi olur. Önceki kısımlarda <kbd>Ctrl+D</kbd> kısayolunun mevcut konsolu kapattığını öğrenmiştik. Bu çok kullanışlı bir kısayol olsa da bazen istemeden de olsa konsolun ansızın kapanmasına neden olabiliyor. Yani bir kontrol mekanizması oluşturmamız sonradan üzülmemek için şart. Bu kontrol sağlama imkanını bize ignoreeof verir. ignoreeof tanımını kullanmanın 2 farklı yolu vardır. Bunlardan birisi sadece mecvut Terminal için geçerli diğeri ise sürekli ve oturumdaki tüm terminallerde geçerli olmak üzere kullanılmasıdır. Sürekli ve tüm Terminal ekranlarında geçerli olsun istiyorsak. Gerekli ayarlamaları yapmak üzere komut satırımıza <code> nano -w ~/.bashrc</code> komutunu veriyoruz ve <kbd> .bashrc</kbd> dosyasının en alt satırına <code>export IGNOREEOF=2</code> yazıp <kbd>Ctrl + X </kbd> kombinasyonunu kullanarak dosyanın ismini değiştirmeden kaydederek çıkıyoruz.(Bütün kullanıcılarda bu korumayı sağlamak için değişikliği <kbd>bash.bashrc</kbd> dosyasında yapmamız gerektiğini biliyorsunuz.)

Böylece koruma sistemi kuruldu ve artık test etmeye hazır. Komut satırındayken iki kez <kbd>Ctrl + D </kbd> tuş kombinasyonunu uygularsak konsol bize iki defa uyarıda bulunacaktır ve çıkmak için ancak 3. defa bastığımızda ya da komut satırına <code>exit</code> yazdığımızda konsol kapanacaktır.

![enter image description here](https://i.hizliresim.com/G9n9B7.gif)

Burada biz <code>IGNOREEOF=2</code> şeklinde belirttik ve bu tanımlama bizi 2 kez <kbd>Ctrl + D </kbd> kapatma kombinasyonundan korudu. Ancak sizler bu bana yetmez ya da 2 kez fazla olur diyorsanız tanımı istediğiniz değerlerde ayarlayabilirsiniz. Örneğin <code> IGNOREEOF=4 </code> olabilir ya da <code>IGNOREEOF=1</code> olabilir, bu değer tamamen size kalmış. Ayrıca ufak bir hatırlatma, yaptığınız değişiklikler ancak Terminali kapatıp açtığınızda geçerli olur.

Şimdi de yalnızca mevcut Terminal için geçici koruma nasıl sağlarız ona değinelim. Koruma katmanı ne kadar hayat kurtarıcı olsa da sürekli olması bazen rahatsız edici olabilir. İşte bu noktada sadece önemli ve gerekli gördüğümüz zaman bu özelliği açıp kapatma seçeneğine sahibiz. Bunu da iki farklı yolla yapabiliriz.

İlk yol, komut satırına <code>ignoreeof=2</code> şeklinde komut vermek. Bu komut sayesinde mecvut Terminal ekranı ancak 3.kez <kbd>Ctrl + D</kbd> tuş kombinasyonu uygulandığında kapanacaktır. Buradaki sayıyı dilediğiniz gibi değiştirebileceğinizi biliyorsunuz. Eğer bu özelliği devre dışı bırakmak istersek komut satırına <code>ignoreeof=0</code> yazmamız yeterli.

İkinci yöntem ise komut satırına <code>set -o ignoreeof</code> yazmak. Bu komut ile de mevcut komut satırımız ancak 11.kez <kbd>Ctrl + D </kbd>yapmamız sonucunda kapanacaktır. Bunun haricinde birde <code>exit</code> komutunu verirsek konsol ekranı anında sonlanır. Bu özelliği devre dışı bırakmak isterseniz de komut satırına <code> set +o ignoreeof</code> yazmalısınız.

![enter image description here](https://i.hizliresim.com/EPlPD8.gif)

  [1]: https://ss64.com/bash/syntax-keyboard.html


----------



Yardım Almak
===========


Bu kısımda bir nevi öğrenmeyi öğrenicez. Bunu da Linux sistemlerinin sahip olduğu çok geniş çaplı yardım sistemi kullanarak başaracağız. Linux sistemlerinde yer alan bu geniş çaplı yardım mekanizmasının bulunmasının birçok nedeni var. Ancak genel olarak, çok fazla komutun çok fazla argüman alması veya her bir programın kendine has kurulum ve kullanım komutlarının olmasından kaynaklanıyor. Linux'un kendi sahip olduğu yardım sayfalarının dışında da birçok yardım alma konuları mevcut. Zaten zamanla göreceksiniz ki Linux ile ilgili hemen her araç ve programla ilgili gerekli yardım ve dokümanlar, programın ve aracın beraberinde geliyor olacak.

Bu bağlamda Linux sistemlerinin temel döküman-bilgi kaynaklarını 3 türe ayırabiliriz.

Bunlar; bilgi sayfaları(info), kılavuz sayfaları(manuel) ve uygulamalar ile gelen <kbd>/usr/share/doc</kbd> konumunda bulunan dökümanlardır. Bizler de zaman zaman unuttuğumuz için veya bilmediğimizden dolayı bu yardım sayfalarına ve dökümanlarına danışacağız. Bu girizgahtan sonra artık yavaş yavaş yardım alma komutlarımıza geçelim.

help Komutu
------------------
Hiç ingilizce bilmiyorum diyen birinin bile "help" ifadesinin "yardım" anlamında olduğunu bildiğini düşünüyorum. Yani bu sebepten <code>help </code> komutu akılda kalması en kolay komutlardandır. Komutun kullanımına geçecek olursak örneğin daha önce kullandığımız yetki verme işini gören <code>chmod</code> komutu ile ilgili yardım almak isteyelim. Bunun için komut satırına <code>chmod --help</code> şeklinde komutumuzu yazıyoruz. Ve aşağıda görüldüğü gibi gerekli bilgileri içeren yardım sayfası bizi karşılıyor.

![enter image description here](https://i.hizliresim.com/Vrp96Z.png)

Bu kullanımın dışında <code>help</code> komutunun birde <code>help</code> komut şeklinde kullanımı var ancak bu kullanımda her zaman komut hakkında yardım bilgisi bulunmayabiliyor o yüzden ilk öğrendiğimiz yol önceliğiniz olsun. Örneğin <code>help chmod</code> yazdığımızda komut satırı yardım bilgisi bulunmadığını belirtti.

![enter image description here](https://i.hizliresim.com/nOPQmV.png)

man(Manuel Sayfası) Komutu
-----------------------------------------
man(manuel) sayfaları temel yardım alma dosyalarıdır. Ve kılavuz sayfaları olarak da bilinir.

<code>man </code> komutunu kullanmak için komut satırına <code>man komut </code> şeklinde hakkında bilgi edinip yardım almak istediğimiz komutu giriyoruz. Örneğin ben <code>chmod </code> hakkındaki bilgilere ulaşmak istiyorsam konsola <code>man chmod </code> şeklinde yazarak gerekli bilgilere ulaşabilirim. Komutun çıktısında göreceğiniz gibi uzunca bir açıklama sizleri bekliyor. Açılan bu kılavuz sayfasında yön tuşlarını ve <kbd>space</kbd> tuşunu kullanarak gezinebilirsiniz. Ayrıca <code> man</code> sayfasının kısayollarını ve kullanımını görmek isterseniz <code> man</code>  sayfası açıkken <kbd>h</kbd> tuşuna basarsanız sizi <code> man</code> klavuzunun yardım sayfası karşılar, orada kullanımı ile ilgili detaylı bilgi yardımı mevcuttur. Kılavuz sayfasını kapatmak isterseniz ise sadece <kbd>q</kbd>  tuşuna basmanız yeterli.

Şimdi biraz da man sayfasının iç yapısına değinecek olursak:

- **NAME:** Komutun ismi ve açıklama kısmı.
- **SYNOPSIS:** Komutun kullanım açıklaması(nasıl kullanılacağı).
- **DESCRIPTION:** Komutun yaptığı iş(fonksiyonu) hakkında açıklama.
- **EXAMPLES:** Komutun kullanımı ile ilgili örnekler ve açıklamalar.
- **SEE ALSO:** Diğer ilgili başlıklar.

<code>man</code> kılavuzunun komutlarla ilgili tuttuğu bilgi sayfaları <kbd>/usr/share/man</kbd> konumu altında tutulur. Görmek için konsola <code>cd /usr/share/man && ls </code> komutunu girdiğimizde çıktılar aşağıdaki şekildedir.

![enter image description here](https://i.hizliresim.com/kOr90r.png)

Komutu açıklayacak olursak <code>cd</code> komutu <kbd> /usr/share/man </kbd> dizinine gitmemizi sağlıyor <kbd>&&</kbd> ise daha önce gördüğümüz gibi iki komutu aynı anda çalıştırma imkanı tanıyor. <code>ls </code> komutu ise ileride de göreceğimiz gibi klasörde bulunan bütün ögeleri listeliyor. Şimdilik bu açıklama yeterli olacaktır. Biraz da bu çıktıdaki sonuçlara bakalım örneğin <code>man </code> sayfasının yapılanması nasıl oluyor yani yukarıdaki komut çıktısında yer alan dil dosyaları dışındaki dosyalar yani <kbd>man1,man2,man3,man4,man5,man6,man7,man8</kbd> ne ifade ediyor kısaca ona değinelim.

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
Hazır yeri gelmişken yukarıda gördüğümüz <code>man</code> sayfası yapılanmasıyla ilgili olarak <code>whatis </code> komutundan da söz edelim. Bu komut sayesinde hangi komutun hangi <code>man</code> sayfasında olduğunu öğrenebiliyoruz. Daha iyi anlamak için örnekler yapalım. Komutun kullanımı <code>whatis </code> komut şeklindedir.

![enter image description here](https://i.hizliresim.com/JQLZyY.png)

<code>whatis </code> komutuna, <code>chmod</code> komutunun <code>man</code> sayfasındaki açıklamalarının yukarıdaki açıkladığımız (man1,man2..3..4..5..6..7..8..) dosyalarından hangi dosyada olduğunu sorduk. Konsol yanıt olarak hem 1 hemde 2 de bulunduğunu bizlere bildirdi. Siz bunu istediğiniz komut için sorgulayabilirsiniz hatta <code>whatis </code> komutu için bile sorgulayabiliriz.

![enter image description here](https://i.hizliresim.com/YgPQAZ.png)

Bu çıktıların doğruluğu man sayfalarının tutulduğu <kbd>/usr/share/man </kbd>dizinine gidilerek kontrol edilebilir. Örneğin ben <kbd>/usr/share/man/man1</kbd> konumuna gittiğimde <code>whatis</code> komutunun yardım sayfalarının burada olduğunu görebiliyorum. Sizler çıktıları de bu şekilde teyit edebilirsiniz.

![enter image description here](https://i.hizliresim.com/dOjLz7.png)

<code>whatis</code> komutunun kullanımı bu kadar ile sınırlı değil ancak ben geri kalanını burada vermiyorum. Dileyen arkadaşlar <code>man </code>komutu yardımı ile gerekli bilgilere ulaşabilirler.

apropos Komutu
-----------------------

Yardım alma komutlarını noktalamadan önce; Sizlere <code>man </code>sayfasındayken <kbd>h</kbd> tuşuna basarsak <code>man </code> sayfasının kullanımı hakkında detaylı bilgiye ulaşabileceğimizi belirtmiştim. O sayfaya bakarsanız <code>man -k</code> şeklinde parametre alan komutun işlevinin, sorguladığımız komutun geçtiği uygulamaları listelemek olduğunu görebilirsiniz. Yani örnek vermek gerekirse komut satırına <code>man -k chmod </code> yazdığımızda çıktısı aşağıdaki şekilde olacaktır.

![enter image description here](https://i.hizliresim.com/p6450a.png)

Gördüğünüz gibi belirtmiş olduğumuz chmod komutunun geçtiği uygulamalar listelenmiş oldu. İşte <code>apropos</code> komutu da tam olarak bu işin aynını yapıyor. Örneğin Terminale <code>apropos chmod</code> komutunu girersek çıktısı aşağıdaki şekilde olacaktır.

![enter image description here](https://i.hizliresim.com/G9nZ0Z.png)

Çıktılar karşlaştırıldığında görülüyor ki aralarında bir fark yok.

Bu konudaki noktayı da man kılavuz sayfaları güncelleme işlemi ile yapalım. Nedir bu işlem diyecek olursanız. Aradığımız yardımı man sayfasında bulamıyorsak güncelleyerek tekrar sorgulayabiliriz. Ara ara güncellemek yeni bilgilere de ulaşmamıza olanak sağlar. Güncelleme için konsola <code>mandb</code> komutunu girmemiz yeterli olacaktır. Komut satırı, güncelleme işleminden sonra yapılan değişiklikleri de son satırda bizlere bildirir.

Yardım alma komutlarını bilmek bir zorunluluk değil ihtiyaç meselesidir. Zaten zamanla bu komutlara ve kullanımlarına alışacaksınız. Açıklamaların İngilizce olmasını da dert etmeyin, ne yaparsak yapalım eninde sonunda bu işlerin yolu ingilizceden geçiyor artık bu duruma alışmamız gerek. Bu noktada kendimizi biraz zorlamalı ve kesinlikle pes etmemeliyiz. Kendimizi biraz zorlayarak çaba harcayarak öğrenirsek, öğrenilenler kesinlikle daha da kalıcı oluyor. Sakın pes etmeyin çok iyi gidiyoruz...


----------

Bilgi Almak
=

Bilgi alma komutları sistemimizde bulunan herhangi birşey hakkında(programlar,dosyalar vs..) bilgi almamızı sağlayan komutlara verilen genel isimdir. Bu komutlara gerekli durumlarda çok sık başvururuz. Şimdi bilgi alma komutlarının neler olduğunu ve kullanım şekillerine bakalım.

uname
-
Tek başına çekirdek adını verse de aldığı parametreler ile farklı bilgiler de sunabilir. Hangi parametrenin ne iş yaptığını <code>man uname </code> komutu ile öğrenebileceğinizi biliyorsunuz. Kısaca bilmemiz gereken; bu komut genel olarak sistemde kullanılan çekirdek hakkında bilgiler verir.

![enter image description here](https://i.hizliresim.com/EPlXDD.png)

hostname
-
Bilgisayarımızın adını diğer bir adıyla host adını verir. Eğer isterseniz bu adı değiştirebilirsiniz. Örnek veriyorum komut satırına <code>hostname burak </code> yazarsanız hostname yani bilgisayarınızın adı burak olarak değişmiş olacaktır.

![enter image description here](https://i.hizliresim.com/5D9Znq.png)

Ancak bu ayar kalıcı değildir. Oturumu kapatıp tekrar açtığınızda değiştirmiş olduğunuz adın tekrar eski haline döndüğünü görebilirsiniz. Kalıcı olmasını ayarlardan kolaylıkla sağlayabiliriz. Sürümden sürüme değişiklik göstersede sırasıyla; ayarlar>sistem>ayrıntılar>genel aygıt adı: kutusuna istediğiniz ismi yazabilirsiniz. Eğer dediğim yoldan ulaşamadıysanız ayarları biraz kurcalayarak bulabilirsiniz.

![enter image description here](https://i.hizliresim.com/azqVAz.gif)

Ayrıca tamamen komut satırından da kalıcı bir hostname değişikliği yapmak mümkün. Bunun için <kbd> /etc/hostname</kbd> konumunda yer alan <kbd>hostname</kbd> dosyasını açmamız gerek. Dosyamızı açmak için konsola <code> nano -w /etc/hostname</code> komutunu veriyoruz.
Komutumuzun ardından açılan dosyamızda ismimizin yerine istediğimiz ismi yazıyoruz. Ve <kbd>Ctrl + X</kbd> tuş kombinasyonu ile dosyamızdaki değişiklikleri kaydederek çıkıyoruz.

![enter image description here](https://i.hizliresim.com/6JRoL0.png)


Değişikliğin geçerli olması için oturumun kapatılıp tekrar açılması gerek daha sonra hostname yani bilgisayarınızın ismi değişmiş olacaktır.

lsb_release
-
Bu komut kullandığımız dağıtım hakkında farklı bilgiler sunan parametrelere sahiptir. Detaylı bilgi için man kılavuz sayfasını kontrol edebilirsiniz. Ben örnek olası açısından <code>lsb_release -a </code> komutunun çıktısını veriyorum.

![enter image description here](https://i.hizliresim.com/jyJ0LJ.png)

whoami
-
Sinemayı takip eden arkadaşların ilk aklına ne geldi biliyorum :) 
Bu komut kimlik sorgu işlevi görüyor. Komut satırımıza komutumuzu vererek sonucuna bakalım.

![enter image description here](https://i.hizliresim.com/76m9oW.png)

Komut çıktısı bize mevcut kullanıcının <code>root</code> kimliği ile çalıştığını göstermiş oldu.

Yine <code>whoami</code> komutuna benzer ancak çok ufak farkların olduğu birkaç komutu daha peş peşe komut satırına girerek çıkan sonuçlar üzerinden anlatıma devam edelim.

![enter image description here](https://i.hizliresim.com/gOldA3.png)

Sıra sıra bakalım:

**whoami:** mecvut kullanıcının hangi kimlikle çalıştığını gösteriyor.
**who:** sistemde hangi kullanıcının çalıştığını gösteriyor.
**w:** hangi kullanıcı hangi uygulamayı çalıştırıyor bunun bilgisini gösteriyor.
Bunun dışında bu komutlar da parametre alabiliyorlar. Hangi parametreleri aldıklarını nasıl öğrenebileceğinizi zaten biliyorsunuz. Ben yinede aşağıda birkaçının çıktısını bırakıyorum.

![enter image description here](https://i.hizliresim.com/Pl38P5.png)

uptime
-
<code>uptime</code> komutu sistemimizin ne kadar zamandır açık olduğu bilgisini verir.

![enter image description here](https://i.hizliresim.com/lOYJjJ.png)


date
-
İsminden de anlaşılacağı gibi bu komut bize sistemin o anki tarih ve saat bilgisini veriyor.

![enter image description here](https://i.hizliresim.com/y0dY4k.png)

which
-
Herhangi bir komutun tam yol bilgisini öğrenmek için kullanılır.

![enter image description here](https://i.hizliresim.com/D7XzBo.png)

whereis
-
Bu komutunda özel parametreleri vardır man sayfasından kontrol edin lütfen. Bunun dışında parametresiz hali <code>apropos</code> komutuna benzer şekilde bir çıktı verir. Ancak </code> komutundan farklı olarak ilgili komutun man sayfası konumunun tam dizin adresini belirtir.

![enter image description here](https://i.hizliresim.com/dOjQPp.png)

Ayrıca diğer parametrelerini de kesinlikle man sayfasından inceleyin.

locate
-
Bu komut ile aradığımız bir dosyanın nerede olduğunu öğrenebiliriz. Komutun çıktısı bize dosyanın bulunduğu dizin veya dizinleri veriyor. Örneğin daha önce PATH yoluna eklediğim <kbd>komut.sh</kbd> dosyasını <code>locate</code> komutu ile aratıyorum. Sonuç aşağıdaki şekilde:

![enter image description here](https://i.hizliresim.com/Z92Jja.png)

Bu komutun ne kadar kıymetli olduğunu işiniz düştükçe ve kullandıkça anlayacaksınız. Genelde bir dosyayı arama çubuğu yardımı ile aramak sonuç vermez ve bu arama işlemi oldukça hantal çalışır. Ancak örneğin ben dosya konumunu bilmediğim bir dosyaya ulaşmak istiyorum. İşte burada kahramanız <code>locate</code> komutu çıkageliyor ve bize saniyeler içerisinde sonucu veriyor. Komutumu denemek amacıyla kali linux içerisinde yer alan bir araç olan armitage aracını aratıyorum. Bunun için komut satırına <code>locate armitage</code> yazmalıyım.

![enter image description here](https://i.hizliresim.com/oOn9qm.png)


Çıktıda da görüldüğü gibi aradığımız ifadeyi içerin tüm dosyaların nerede olduğunu bir çırpıda buluverdik. Sanırım bu komut sayesinde yavaş yavaş da olsa komut satırının gücünü fark etmeye başlıyoruz.

dmidecode
-
Eğer daha önce de Linux deneyimi yaşadıysanız ve sorunlar ile karşılaştıysanız forumlarda sorduğunuzda muhtemelen insanlar sizden bu komutun çıktıları istemiş olabilirler. Bu komutun işlevi sistemin donanım ve Bios bilgilerini göstermektir. Bu komut sayesinde çok fazla bilgiye ulaşabiliriz. Ayrıca bu komutumuz da parametre alarak çalışmaktadır.

Çok fazla bilgiye ulaşabiliyoruz dedik, bu bilgilere DMI(Desktop Management Interface) yani Masaüstü Yönetim Arayüzü tabloları ile ulaşıyoruz. Ve bu tabloların belirli bir düzeni var. Bu sırayı ve hangi bilgileri alabileceğinizi direk olarak görmek isterseniz komut satırına <code>dmidecode</code> yazın. Sonuçlar kategorize şekilde karşınıza sunulacaktır.

Bahsi geçen tablo sıralı şekilde ve Numara-Türkçe karşılığı olacak şekilde aşağıdaki gibidir.

<div class="table-responsive"> <table class="table table-bordered table-striped"> <thead> <tr> <th width="10%">Numara </th> <th width="90%">Açıklama</th> </tr></thead> <tbody><tr> <td>0</td><td>Bios</td></tr><tr> <td>&nbsp;1</td><td>Sistem</td></tr><tr> <td>2</td><td>Baz kurulu</td></tr><tr> <td>3</td><td>Şasi</td></tr><tr> <td>4</td><td>İşlemci</td></tr><tr> <td>5</td><td>Bellek denetleyicisi </td></tr><tr> <td>6</td><td>Bellek modülü</td></tr><tr> <td>7</td><td>Önbellek</td></tr><tr> <td>8</td><td>Port bağlantısı</td></tr><tr> <td>9</td><td>Sistem yuvaları</td></tr><tr> <td>10</td><td>On Board Cihazları</td></tr><tr> <td>11</td><td>OEM Dizeleri</td></tr><tr> <td>12</td><td>Sistem Yapılandırma Seçenekleri</td></tr><tr> <td>13</td><td>BIOS Dili</td></tr><tr> <td>14</td><td>Grup Dernekler</td></tr><tr> <td>15</td><td>Sistem Event Log</td></tr><tr> <td>16</td><td>Fiziksel Bellek Array</td></tr><tr> <td>17</td><td>Bellek Cihazı</td></tr><tr> <td>18</td><td>32-bit bellek hatası</td></tr><tr> <td>19</td><td>Bellek Dizisi Haritalı Adres</td></tr><tr> <td>20</td><td>Bellek Cihazo Haritalı Adres</td></tr><tr> <td>21</td><td>Dahili İşaret Aygıtı</td></tr><tr> <td>22</td><td>Taşınabilir Pil</td></tr><tr> <td>23</td><td>Sistem Sıfırlama</td></tr><tr> <td>24</td><td>Dananım Güvenlik</td></tr><tr> <td>25</td><td>Sistem Güç Denetimleri</td></tr><tr> <td>26</td><td>Gerilim Probu</td></tr><tr> <td>27</td><td>Soğutma Cihazı</td></tr><tr> <td>28</td><td>Sıcaklık Probu</td></tr><tr> <td>29</td><td>Elektrik Akımı Probu</td></tr><tr> <td>30</td><td>Uzaktan Erişim</td></tr><tr> <td>31</td><td>Boot Bütünlüğü Hizmetleri</td></tr><tr> <td>32</td><td>Sistem Önyükleme</td></tr><tr> <td>33</td><td>64-bit Bellek Hatası</td></tr><tr> <td>34</td><td>Yönetim Cihazı</td></tr><tr> <td>35</td><td>Yönetimi Cihaz Bileşeni</td></tr><tr> <td>36</td><td>Yönetimi Cihaz Eşik Verileri</td></tr><tr> <td>37</td><td>Bellek Kanal</td></tr><tr> <td>38</td><td>IPMI Cihazı</td></tr><tr> <td>39</td><td>Güç Kaynağı</td></tr></tbody></table> </div>

Başta belirttiğim gibi <code>dmidecode</code> kendi içinde parametre alan bir komut olduğu için istediğimiz spesifik bilgiye doğrudan da ulaşmamız mümkün. Detaylı bilgi için man kılavuz sayfasına bakın lütfen. Ancak küçük bir örnek vermem gerekirse bios hakkında bilgi edinmek istediğimizde <code>dmidecode -t bios</code> şeklinde komut satırına girmemiz yeterli. 

![enter image description here](https://i.hizliresim.com/Vr268n.png)

Burada ayrıca <code>dmidecode -t bios</code> yerine sıralamada bulunan numarasını yani <code>dmidecode -t 0 </code>yazarak da aynı işlemi gerçekleştirebilirdik.

![enter image description here](https://i.hizliresim.com/nOY290.png)

fdisk-l
-
Başlıkta da yer aldığı gibi bu bölümde <code>fdisk </code> komutunun yalnıcza <code>l </code> parametresinin işlevini göreceğiz. Bu komutu burada vermemin sebebi sistem hakkında bilgi alırken diskin de sistem dahilinde olmasıdır. Zaten ileride tekrar ele alacağımızdan şimdilik bu kadarı da yeterli olacaktır. Bu komutu diskler üzerinde işlem gerçekleştirirken kullanıyoruz. Eğer komut satırımıza <code>fdisk -l </code> şeklinde komut verirsek karşımıza sistemimizdeki disk bölümleri gelir.

![enter image description here](https://i.hizliresim.com/vjYRAv.png)

df
-
Bu komut ile disk kullanımı hakkında ayrıntılı bilgiye ulaşabiliriz.

![enter image description here](https://i.hizliresim.com/1JjraA.png)

Bu komutumuz da parametre alabiliyor. Dileyen arkadaşlar konsolda <code>man df</code> şeklinde komut girerek gerekli bilgilere ulaşabilirler.

du
-
Bir dizinin içerdiği tüm dosyalar ile birlikte diskte kapladığı toplam alanı verir. Ayrıca boyutla ilgili düzgün bir çıktı almak istersek <code>h</code>  parametresini de kullanabiliriz.

![enter image description here](https://i.hizliresim.com/LbdE8j.png)

free
-
Bu komut ile kullanılan bellek miktarını KB cinsinden öğrenebiliriz. Ancak çıktımızın MB cinsinden olmasını istersek <code>-m</code> parametresini <code>free</code> komutumuza ekleyerek kullanmamız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/rOYRX7.png)

modinfo
-
Bu komut sayesinde Linux kernel modüllerinin bilgisi alınabilir. Bu modülleri ekran bastırmak isterseniz komut satırına <code>lsmod</code> yazarak mödülleri listeleyebilirsiniz.

![enter image description here](https://i.hizliresim.com/762PW5.png)

Örneğin modüller içinden battery modülü hakkında bilgi almak istersek komut satırına <code>modinfo battery</code> şeklinde yazmamız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/Z92JBV.png)

stat
-

Bu komut dosya veya dizin hakkındaki bilgileri almamıza olanak sağlar. Kullanımı <code>stat dizin</code> şeklindedir. Örneğin root dizinine bakalım. Bunun için komut satırımıza <code>stat /root</code> komutunu veriyoruz.

![enter image description here](https://i.hizliresim.com/8YmQvn.png)

vmstat
-
Bu komut sayesinde sistemimizin o anlık genel durumunu görebiliriz. Ancak komutu verdikten sonra sistem durumu listelenip sonlanacaktır. Eğer sistemin durumunu bir süre izlemek istersek <code>vmstat gecikme_hızı yenilenme_sayısı</code> şeklinde komut vermeliyiz. Ben her 2 saniyede bir yenilenmesini ve bunu 3 defa yapmasını istiyorum. Bunun için komut satırına <code>vmstat 2 3 </code> komutunu veriyorum.

![enter image description here](https://i.hizliresim.com/D7o9bo.png)

history
-

Bu kısıma gelene kadar konsola bir çok komut yazdık. Peki o yazılan komutların daha sonra kullanılmak üzere saklandığını biliyor muydunuz ?

Evet girilen her komut <kbd>.bash_history </kbd> dosyasında tutuluyor. Biz bu dosyanın içeriğini yani daha önceki yazdığımız kodları görmek istersek komut satırına <code> history </code> yazmalıyız. Çıktı çok uzun olacağından çıktının tamamını aşağıda vermedim.

![enter image description here](https://i.hizliresim.com/2Jv532.png)

Hazır liste uzun demişken eğer bu listenin limitini öğrenmek istersek komut satırına <code>echo $HISTSIZE</code> yazarak bu değeri tutan ortam değişkeninin ne kadar komutu <kbd>history</kbd> dosyasında tutulabileceğini görebiliriz.

![enter image description here](https://i.hizliresim.com/m2q5y8.png)

Bu çıktı bize komutların tutulduğu dosyada en son 1000 komuta kadar kayıt yapıldığını belirtiyor. Eğer tutulan komutların 1000 'den daha fazla olmasını isterseniz <code> .bashrc </code> dosyasında <code>HISTSIZE=1000 </code> yazan değeri istediğiniz doğrultuda düzenlemeniz lazım.

Komutun kullanımına geçmeden önce bu komutu sadece basit ve kısa komutların tekrar kullanılması olarak değerlendirmeyin. Örneğin sürekli kullandığınız çok uzun ve karmaşık bir komut düşünün. Bu komutun her defasında yazılması eziyet, bir yere kopyalanıp oradan tekrar tekrar kopyala-yapıştır şeklinde kullanılması ise hantallık olacaktır.

Komutun kullanımına gelecek olursak örnek üzerinden açıklayalım. Benim kayıt dosyamın bir kısmı aşağıdaki şekilde, ben burada yer alan 600. komutu yani <code> vmstat</code> komutunu kullanmak istiyorum. Bunun için komut satırına <code>!555</code>  yazmam yeterli olacaktır. Komutun kullanımı <code>!komut_numarası</code> şeklinde. Örnek için çıktıyı inceleyebilirsiniz.

![enter image description here](https://i.hizliresim.com/BLo4QM.png)

Daha önceden kullandığımız bir komutu aynı şekilde tekrar kullanmak için ise komut satırına <code>!komut </code> şeklinde komut girmeliyiz. Örnek vermek gerekirse daha önceki kısımlarda <code>stat</code> komutu ile <kbd>root</kbd> dizini hakkında bilgi edinmiştik. Ve bu bilgiye ulaşmak için <code>stat /root</code> komutunu kullanmıştık. Ben şimdi tekrar aynı komuta ulaşmak için komut satırına <code>!stat</code> yazıyorum ve çıktısı tıpkı <code>stat /root</code> yazdığımda olduğu gibi oluyor. Yani bu sayede komutun geri kalanını uzun uzun yazmak gibi bir dert kalmıyor.

![enter image description here](https://i.hizliresim.com/EPQpdz.png)

Eğer son kullandığımız komutu tekrar kullanmak istersek komut satırına <code>!!</code> yazmamız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/jyzjOL.png)

Bunlar dışında da çok farklı kullanım şekilleri de mevcut. Bu bilgilere <code>man</code> komutu yardımı ile nasıl ulaşacağınızı biliyorsunuz.

Ayrıca son yazılan komutlara ulaşmak için klavyede yer alan yön tuşlarından <kbd> ileri</kbd> ve <kbd>geri</kbd> tuşlarını kullanarak önceki ve sonraki komutlarınıza ulaşabilirsiniz. Genellikle yön tuşlarını kullanmak bize anlık işlemlerimizde hız katmaktadır. Sizler de bu pratiklikleri mutlaka yeri geldikçe sıklıkla kullanacaksınız.


----------





Dizinler Hakkında
=
Linux işletim sisteminde bütün programlar, aygıtlar, dosyalar ve genel olarak sistem, hiyerarşik bir düzen içersindedir. Yani komut satırını kullanacaksak her şeyi oluşturan bu hiyerarşik düzen içerisinde rahat şekilde geziyor olabilmemiz gerek. Bu bölümde bu hiyerarşide gezinme ve görüntüleme için gerekli komutlara değineceğiz.

pwd
-

Bu komut sayesinde o an bulunduğumuz dizinin adını öğrenebiliriz. Genellikle sistem yöneticilerinin sık kullandığı bir komuttur.

Örnek vermek gerekirse Linux'ta hiyerarşik bir düzen var dedik. Bu hiyerarşik düzen kök dizinine(root) bağlıdır her kullanıcı buna root da dahil kendi ev dizinine(home) sahiptir. Böylece neden root(kök) isminin kullanıldığını da anlamış oluyoruz. Konsol çalışmaya varsayılan olarak kendi ev dizininde başlar. Root kullanıcısının ev dizini <kbd>/root</kbd> dizinidir. Bunu teyit etmek istersek <code>pwd </code> komutunu kullanabiliriz.

![enter image description here](https://i.hizliresim.com/azPMZQ.png)

Root kullanıcısının dışında da sistemde başka kullanıcılar olabilir. Bu kullanıcıların ev dizini(home) ise <kbd>/home/kullanıcı_adı </kbd> şeklindedir.

Bu durumu test etmek için "kullanici" adında yeni bir kullanıcı oturumu oluşturdum ve oluşturduğum bu oturum içerisinde komut satırına <code>pwd </code> komutunu verdim. Çıktısı aşağıdaki şekilde oldu.

![enter image description here](https://i.hizliresim.com/Yg3WGZ.png)

cd (Change Directory)
-

Bu komut sayesinde dizinler arası geçiş yapabiliyoruz. Zaten daha önceki kısımlarda da bu komutu kullanmak durumunda kalmıştık hatırlarsanız.

Komutumuzu kullanırken gitmek istediğimiz dizinin adresini vermeliyiz. Ben önceki bölümlerde oluştuduğum dizinin en alt klasörüne gitmek istiyorum. Bunun için komut satırına <code>cd Desktop/yeni_dizin/yeni/en_yeni </code> şeklinde bir komut veriyorum.

![enter image description here](https://i.hizliresim.com/8Ym2y7.png)

Artık gitmek istediğim dizinin içerisindeyiz. Eğer bir önceki dizine (bir dizin geriye) dönmek istersek komut satırına <code>cd .. </code> yazmamız yeterli.

![enter image description here](https://i.hizliresim.com/D7o6vv.png)

Eğer direk olarak ana dizine dönmek istersek <code>cd</code> 
komutunu kullanmalıyız.

![enter image description here](https://i.hizliresim.com/m2q790.png)

Örneğin bir alt dizine geçip orada yer alan başka bir klasöre girmek istiyoruz diyelim. Bunun için komutumuzu <code>cd ../klasör_adı </code> şeklinde bir kullanabiliriz. Ben örnek olması açısından <kbd>/root/etc </kbd> dizini içerisindeyken bir geri dizine dönüp daha sonra Desktop konumuna gelmek için <code>cd ../Desktop</kbd> komutunu kullanıyorum. 

![enter image description here](https://i.hizliresim.com/EPQ61Z.png)

Ancak dikkat etmeniz gereken nokta komutu yazarken iki noktadan (..)hemen sonra boşluk bırakmadan gitmek istediğimiz dizini belirtiyoruz. Eğer boşluk bırakarak yazarsak aşağıdaki şekilde bir uyarı alırız.

![enter image description here](https://i.hizliresim.com/jyz17m.png)

Eğer sürekli iki dosya arasında gidip geliyorsak bir önceki dosyaya <code>cd - </code> komutu ile dönebiliriz.

![enter image description here](https://i.hizliresim.com/NZYgQX.gif)

Çıktıda da görüldüğü gibi <code>cd -</code> komutu ile iki konum arasında pratik şekilde gidip gelebiliyoruz.

ls
-

Listeleme ve görüntüleme işini yapan bu komutumuzu anlatmadan önce defalarca kullandık. Bu da gösteriyor ki <code>ls</code> komutu çok yaygın şekilde kullanılan komutlardan. Bu komuta sürekli işimiz düşecek. Bu komutun da pek çok parametresi mevcut ben hepsini olmasa da birkaçını ele alarak anlatıma devam ediyorum.

En temel kullanımı ile başlayacak olursak, <code>ls</code> komutu içinde bulunduğumuz dizinde yer alanları bizlere gösterir. Örneğimize ana dizindeyken <code>ls</code> komutunu vererek başlayalım.

![enter image description here](https://i.hizliresim.com/2JvN0A.png)

Görüldüğü üzere <code>ls</code> komutumuzu kullanmamız ardından bulunduğumuz ana konumda yer alan tüm dosyalar konsola basılmış oldu.

### ls-l


Eğer çıktımız ayrıntılı olsun istiyorsak komut satırına komutu parametresi ile beraber <code>ls -l</code> şeklinde yazmamız gerekiyor.

![enter image description here](https://i.hizliresim.com/BLo6Bp.png)

Çıktımızda dosya izinleri, dosya boyutu, oluşturulma tarihi gibi bilgiler sıralanmış oldu. Tabii ki <code>ls</code> komutu kullanımı bununla sınırlı değil, parametreler ile devam edelim .

### ls-a


Bizim yukarıdaki çıktımızda gizli dosyalar bulunmuyor. Eğer istersek gizli dosyaları da aynı şekilde listeleyebiliriz. Bunun için <code>ls</code> komutunun <code>a</code> parametresini kullanıyoruz. Çıktımızın düzenli ve listeli olması adına <code>a </code> parametresinin yanına bir de <code>l</code> parametresi kullanmak istiyorum. Bunun için komut satırına <code>ls -la</code> şeklinde veya <code>ls -al</code> şeklinde komutunu girmemiz gerekiyor. Ayrıca bu komutu <code>ls -a -l</code> şeklinde ayrı arı ayrı olarak da girebiliriz. Sonuçta bu komutun parametresi hem birleşik hemde ayrı ayrı şekilde yazılabilir. Kullanım tercihi size kalmış.

![enter image description here](https://i.hizliresim.com/oOn819.png)
![enter image description here](https://i.hizliresim.com/lOBrVr.png)
![enter image description here](https://i.hizliresim.com/Vr2Xbv.png)

### ls -A


<kbd>.</kbd> ve <kbd>..</kbd> dizinleri hariç gizli dosyalar da dahil bütün dosyaları görmek istersek <code>ls</code>komutumuzu <code>ls -A</code> şeklinde kullanabiliriz. Ayrıca çıktıları düzgün şekilde listelemek adına <code>l</code> parametresi de dahil edebileceğimizi biliyorsunuz.

![enter image description here](https://i.hizliresim.com/nOYmBM.png)

### ls -h


Listelenen dizinlerin boyutunu okunaklı(human readable) şekilde verir. Okunaklıdan kasıt dosya boyutunu KB, MB, GB türünden büyüklük olarak vermesidir. Karşılaştırmanız acısından bir normal şekilde birde daha okunaklı şekilde olanın çıktılarını aşağıda veriyorum. (Ayrıca komutumuza <code>-l</code> parametresini eklemiş olmamızın sebebi dizin ayrıntılarını dolayısıyla da dosya boyutunu görebilmektir.)

![enter image description here](https://i.hizliresim.com/Z92Q0V.png)

### ls -i


Düğüm numarasını verir. Düğüm(inode) numarası nedir diyecek olursanız bu konuya ileride değineceğiz şimdiilik bu parametrenin bu görevi gördüğünü bilsek yeter.

![enter image description here](https://i.hizliresim.com/jyz1oL.png)

### ls -r


Konsola basılan çıktıyı ters çevirerek basar. Karşılaştırmanız açısından normal liste sırası ve <code>-r</code> parametreli ters liste sırasını aşağıda veriyorum.

![enter image description here](https://i.hizliresim.com/BLo6kM.png)

### ls -S


Dosya büyüklüğüne göre sıralar. Dosyalar büyüklüklerine göre sıralanacağından komutun daha net anlaşılması için <kbd>/root/run<kbd> dizini altında işlem yaptım.

![enter image description here](https://i.hizliresim.com/vjY8q4.png)

### ls -t


Dosyanın değiştirilme tarihine göre sıralar.

![enter image description here](https://i.hizliresim.com/Lbdgr0.png)

Yukarıda bahsi geçen <code>ls</code> komutu, açıkladığım parametreleri dışında da oldukça fazla parametreye sahip. Bunları öğrenmek için man kılavuz sayfasını inceleyin lütfen.

Dizin Oluşturma Ve Silme
=

Dizin oluşturmak için <code>mkdir</code> , silmek için ise ileride tekrar dosya sistemlerinde değineceğimiz <code>rm</code> komutu kullanılıyor.

mkdir
-


Dosya oluşturmamıza olanak sağlayan komuttur. En temel kullanımı <code>mkdir dosya_adı</code> şeklindedir. Örneğin bulunduğumuz konuma dosyalar adında bir dizin oluşturalım. Bunun için komut satırına <code>mkdir dosyalar</code> yazmamız yeterli. Ayrıca dosyamızın oluşup oluşmadığını da <code>ls</code> komutu ile teyit ediyoruz.

![enter image description here](https://i.hizliresim.com/oOn8vX.png)

Eğer çoklu şekilde dosya oluşturmak istersek dosya isimlerini peş peşe yazarak bu işlemi gerçekleştirebiliriz. Komutun kullanımı <code>mkdir dizin1 dizin2 dizin3</code> şeklindedir.

![enter image description here](https://i.hizliresim.com/lOBrlQ.png)

Ayrıca dosyayı oluştururken izin ayarlarını da dilediğimiz şekilde ayarlayabiliriz. Bu imkanı bize <code>-m</code> parametresi sağlıyor. Kullanımı <code>mkdir -m izin_kodu dosya_adı </code> şeklindedir.

![enter image description here](https://i.hizliresim.com/3E2jr5.png)

Burada yer alan izin kavramı hakkında endişelenmeyin ileride "Erişim Yetkileri" kısmında ele alacağız. Kafası karışan arkadaşlar isterse şimdilik bu kısmı geçebilir yada "Erişim Yetkileri" konusuna göz atarak devam edebilir. 

rm
-

Komutumuzu ileride dosya işlemleri bölümünde tekrardan ele alacağız. Ancak şimdi <code>rm</code> yani silme komutunun dizinler üzerinde kullanımı öğrenmeliyiz.

Dizin dediğimiz şey iç içe sırlanmış dosya ve belgelerden oluşan bir yol. Yani bu yolu silmek istediğimizde içerisindeki her şeyi de silmeliyiz. Bu yüzden komutumuzu <code>-r</code> parametresi ile birlikte kullanarak dizinin içerisindeki dosyalar da dahil her şeyi silmesini söylemiş oluruz. Yani komutun dizin silme işlemi için kullanım <code>rm -r silinecek_dizin</code> şeklindedir.

![enter image description here](https://i.hizliresim.com/1JjD5B.png)

Ve dizinimiz içerisinde bulunanlar ile birlikte silinmiş oldu. Eğer komutumuzu parametresiz olarak yani <code>-r</code> olmadan <code>rm secure </code> şeklinde verseydik komut satırı bu işlemi dizinin içerisinde dosya ve belgelerin bulunması nedeniyle gerçekleştiremezdi.(Klasör içerisinde hiçbir şey bulunmasa dahi aynı uyarıyı verecektir.) Bu durumu denemek için daha önceden oluşturmuş olduğumuz <kbd>dosyalar</kbd> isimli klasörümüzü <code>-r</code> parametresi olmadan silmeye çalışalım.

![enter image description here](https://i.hizliresim.com/Vr2XdB.png)

Konsol bize "'dosyalar' silinemedi: Bu bir dizin" şeklinde uyarı verdi.

Eğer silmeden önce sorulsun yani bizi uyarsın istiyorsak komuta <code>-i</code> parametresi de eklemeliyiz.

![enter image description here](https://i.hizliresim.com/nOYmnN.png)

Gördüğünüz gibi konsol işlem yapmadan önce her işi bize sordu ve "y" yanıtını aldığı için silme işlemine devam etti. Bu sayede dizinleri kontrollü şekilde silmiş olduk.(Kullandığınız sistemin diline göre onaylama yanıtı değişmektedir. Örneğin kullandığınız dil Türkçe ise onay vermek için kullanılan yanıt "e" olacaktır.)

Ayrıca dizin silme işlemlerini <code>rm -ri dizin1 dizin2 dizin3</code> şeklinde kullanarak toplu şekilde de gerçekleştirebilirsiniz.

![enter image description here](https://i.hizliresim.com/Z92Q43.png)


----------


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

Ben yine de <code>less</code> komutu ile profile dosyasının içeriğinin okunduğu şeklini aşağıya bırakıyorum. Eğer <code>more</code> komutunda bir problem yaşamadıysanız bu komut kullanımında da kesinlikle yaşamazsınız.

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

Ayrıca eğer listelenen içerik uzunsa bir önceki öğrendiğimiz <code>head-tail</code> komutları yardımı ile bu alanı düzenli şekilde sınırlandırabiliriz.

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

Bu komut en çok kullanılan terminal komutları içerisinde bulunuyor. Bu komutumuzu bizler de oldukça sık kullanıyor olacağız. Dosya ya da komut çıktısında bir ifade aramak için yani bir nevi filtreleme işlemi için <code>grep</code> komutunu kullanabiliriz. Komutun kullanım şekillerini örnekler ile açıklamaya devam edelim.

Eğer bir dosya içerisindeki herhangi bir kelimeyi sorgulamak istersek komutumuzu `grep "aranacak_ifade" dosya_adı` şeklinde komut satırına giriyoruz. Ben basit bir örnek olması açısından <kbd>isimler.txt</kbd> dosyası içerisinde "hasan" ismi varmı diye kontrol etmek üzere konsola `grep "hasan" isimler.txt` komutunu veriyorum.

![enter image description here](https://i.hizliresim.com/6JYE40.png)

Arama işleminde linux sistemi gereği büyük küçük harf duyarlılığına sahip olduğundan "hasan" şeklinde arama yaptığımızda diğer büyük küçük haldeki anahtar kelimeler çıktıda basılmayacaktır. Eğer bu küçük büyük harf duyarlılığı dışında arama yapmak istersek `-i` parametresini kullanabiliriz.  Bu durumu gözlemlemek için büyük küçük harflerden oluşan kelimelerin olduğu bir dosya üzerinde `grep` komutunu kullanalım.

![enter image description here](https://i.hizliresim.com/W7Wylm.png)

Eğer arama işlemini tek dosya yerine bulunduğumuz dizin içerisindeki tüm dosyaları kapsayacak şekilde gerçekleştirmek istersek wildcard yani genel kapsama işlevinde olan joker `*` karakteri yardımıyla bu işlemi gerçekleştirebiliriz.

Hemen örneklere geçelim. Hasan ismini masaüstü konumundayken aratıyorum. Bunun için `grep "hasan" *` komutunu konsola verdim. 

![enter image description here](https://i.hizliresim.com/3E23X0.png)

Gördüğünüz gibi çıktı bize içerisinde "hasan" ifadesi geçen tüm dosyaları verdi. 

Çıktıda aradığımız ifadenin hangi dosyada yer aldığını bulmuş olduk. Ayrıca yukarıdaki komutu `grep -r "hasan" *` şeklinde de yazabilirdik. Genellikle de bu 2. komut kullanılıyor ancak hangi şekilde kullanacağınızı seçmek size kalıyor.

![enter image description here](https://i.hizliresim.com/RnE4a7.png)

İkinci kullanım şeklinde ilkinden farklı olarak "grep: yeni_dizin: Bir dizin" gibi bir çıktı almadık.

Wildcardlardan söz etmişken dosya içerisinde arama işleminin başka bir kullanım şekline de değinelim isterim. Eğer aranacak kelime belirli bir isim ile başlayan dosyalar içerisinde aranacaksa bunu wildcard(joker) yardımıyla özellikle belirtebiliriz.

Kullanımı `grep "aranacak_ifade" dosya_adı_başlangıcı*` şeklindedir. Ben ilk önce masaüstünde yer alan dosyaları listeledim daha sonra "hasan" ifadesini aramaya koyuldum. İlk önce "metin" ismi ile başlayan belgelerde `grep "hasan" metin*` komutunu kullanarak aradım. 

![enter image description here](https://i.hizliresim.com/JQdGpW.png)

Ancak çıktıda da görüleceği gibi "hasan" ifadesi "metin" ismi ile başlayan belgeler içerisinde yer almıyormuş ki komut çıktısı bize hiç bir sonuç vermedi. 

Bende "hasan" ismini bu sefer "isimler" adıyla başlayan belgeler içerisinde aramak için `grep "hasan" isimler*` komutunu kullandım. Bunun neticesinde komut satırı bize "hasan" isminin geçtiği belgelerin yerini vermiş oldu. 

![enter image description here](https://i.hizliresim.com/D7oA9l.png)

Buradaki asıl kullanım amacı; komutu, belirli isimlere sahip olan dosyalar içerisinden anahtar kelimeyi aramak üzerine sınırlandırmak.

Bunların dışında eğer arama sonucunun görüntülenmesini sınırlandırmak istersek;
Örnek olması açısından "filazof" isimli dosyadan "jo" ile başlayan isimleri listeliyorum.

![enter image description here](https://i.hizliresim.com/p6va7r.png)

Arama sonucu sonrasında kaç satır gözükeceğini `-A` parametresi sayesinden `grep -A 3 "aranacak_ifade" dosya_adı` şeklinde komut girerek sağlarız.

![enter image description here](https://i.hizliresim.com/D7oAVo.png)

Sonucun üzerindeki kaç satırın gözükeceğini `-B` parametresi sayesinden `grep -B 5 "aranacak_ifade" dosya_adı` şeklinde komut girerek sağlarız.

![enter image description here](https://i.hizliresim.com/EPQ0nz.png)

Baştan ve sondan kaç satır görüntüleneceğini ise `-C` parametresi sayesinden `grep -C 2 "aranacak_ifade" dosya_adı` şeklinde komut girerek sağlarız.

![enter image description here](https://i.hizliresim.com/kOZa2q.png)

Şimdi ise sıklıkla kullanılan pipe ile `grep` kullanımına bakalım. Pipe nedir diyecek olursanız kabaca iki işlemi(process) birbirine bağlayan `|` görünümündeki yardımcı argüman diyebiliriz. Zaten daha önce de iki işlemin birbirine bağlanması gereken durumlarla karşılaşmış ve pipe kullanmıştık.

`grep` ile kullanımına geçecek olursak örneğin masaüstünde yer alan dosyalardan yalnızca "metin" isimli olanları listelemek isteyelim. Bunun için ilk olarak masüstünde yer alan dosyalarımızı listelemek üzere komut satırına `ls` daha sonra ise `ls` komutundan gelecek olan çıktıları pipe yardımı ile `grep` komutuna bağlayarak listelenen bütün bu dosyalar içerisinden sadece "metin" adı geçenleri filtreleyebilelim..

Bu işlemi gerçekleştirmek için `ls | grep "metin"` komut bütününü kullanıyorum.

![enter image description here](https://i.hizliresim.com/D7oA4y.png)

`grep` komutunun kullanım şekli ve alanı elbette bu kadar ile sınırlı değil ancak sizler daha fazla bilgiye nasıl ulaşacağınızı biliyorsunuz.


find
-

`find` komutu da hemen hemen daha önce görmüş olduğumuz `locate` komutu ile aynı görevi görüyor. Örneğin, isminini birazını bildiğimiz ama dosya dizinini hatırlamadığımız dosyaları bulmamıza yardımcı oluyor.

Komut kullanım kalıbı `find dosya_yolu -name aranacak_ifade` şeklindedir. Tam kullanım şekli için aşağıdaki örneği inceleyebilirsiniz.

![enter image description here](https://i.hizliresim.com/oOnmrq.png)

Çıktıda <kbd>etc</kbd> konumda yer alan içerisinde "local" ifadesi geçen dosyalar komutumuz sayesinde listelenmiş oldu. Ancak aradığımız şeyi bulmak adına değiştirilme tarihi, boyut, dosya-dizin gibi ayrıntıları belirterek çıktıları daha spesifik şekilde sınırlandırabiliriz. Bazı özel arama parametreleri açıklayalım hemen.

- **type f :** Yalnızca dosyalar.
- **type d :** Yalnızca dizinler.
- **size +500k :** 500 Kbyt'dan büyük olan dosyalar.
- **size -500k :** 500 Kbyt'dan küçük olan dosyalar.
- **ctime 10 :** Tam olarak 10 gün önce değişikliğe uğramış dosya/dizinler.
- **ctime -10 :** 10 günden daha kısa bir süre önce değişikliğe uğramış  dosya/dizinler.
- **ctime +10 :** 10 günden daha uzun bir süre değişikliğe uğramış dosya/dizinler.
- **perm 755 :** Yalnızca erişim izni 755 olan dosya/dizinler.
Örnek olması açısından yukarıdaki arama parametrelerinin ilk ikisinin çıktılarını aşağıya ekliyorum.

![enter image description here](https://i.hizliresim.com/lOBDvp.png)


xargs
-
`xargs` komutu kabaca kendisinden önce verilen girdi verilerini kendisinden sonrakine tek tek aktarmaktır. Biliyorum böyle denilince hiçbir şey anlaşılmıyor. O yüzden `xargs` komutunu `find` komutuyla birlikte kullanarak örnek üzerinden komutumuzu ve kullanım mantığını açıklamış olalım.

Örneğin <kbd>.jpg</kbd> uzantılı bir resim dosyasını araştırıp daha sonra bulduğumuz bu dosyayı silelim. Ben duvar kağıdı için daha önce internetten bir <kbd>.jpg</kbd> uzantılı bir resim indirmiştim. Bu resim hem indirilenler(downloads) hem de resimler konumunda yer alıyor, biliyorum ancak komutun kullanımını denemek üzere dosyanın konumunu bilmiyormuşçasına bir test edelim. Testimizde <kbd>root</kbd> dizinindeki <kbd>.jpg</kbd> uzantılı dosyaları araştıralım ve silelim.

![enter image description here](https://i.hizliresim.com/m2qD12.png)

Çıktıda da görüldüğü gibi <kbd>.jpg</kbd> uzantılı resim dosyası silmeden önce çıktıda belirtilen konumlarda bulunuyordu. Ancak arama ve silme işlemini gerçekleştirmemiz ile birlikte dosya silindi. Bunu da tekrar arama işlevindeki `find` komutunu vererek teyit etmiş olduk

Komutumuzun işleyişi tam olarak şöyle oldu;

`find /root -name *.jpg` komutu ile <kbd>root></kbd> dizini altındaki tüm <kbd>.jpg</kbd> uzantılı dosyaları listeledik.

Bu listelenen dosya konum ve varlık bilgilerini `xargs` komutuna `pipe( | )` argümanı sayesinde aktardık.

`xargs` komutu ise eline geçen bu bilgiler sayesinde dosyanın konumunu saptayarak silme işlemini gerçekleştirebildi.

`xargs` komutu `exec` isimli başka bir komuta benzer şekilde çalışmaktadır. Merak edip öğrenmek isteyen arkadaşlar ayrıca `exec` komutuna bakabilirler.

Dosya Kopyalama-Taşıma-Silme İşlemleri
-
Bu kısımda dosyaları kopyalama taşıma ve silme gibi işlemleri ele alacağız. Zaten kullanacağımız komutlar kısa oldukları için kullanımı ve akılda kalması çok kolay. İlk olarak dosya kopyalama işlemi ile anlatıma başlayalım.

### cp

`cp` komutu kopyalama işlevindedir. Kullanımı `cp kaynak hedef` şeklindedir. Örnek üzerinden açıklayalım.

![enter image description here](https://i.hizliresim.com/EPQ05D.png)


Komutumuzu açıklayacak olursak;

Desktop dizinindeyken ls komutu ile bulunduğumuz dizindeki dosyaları listeliyoruz. Ve çıktıda da görüldüğü üzere masaüstünde filazof isimli bir belge bulunmuyor.

`cd yeni_dizin` komutuyla  <kbd> yeni_dizin </kbd> konumuna gidiyoruz.

`ls` komutu ile buradaki dosyaları listeliyoruz. Bu dizinde yalnızca "yeni" isimli bir klasör mevcut.

`cd ..` komutu ile bir önceki dizine dönüyoruz.

"filazof" dosyasını <kbd>yeni_dizin</kbd> konumuna taşımak üzere `cp filazof yeni_dizin` şeklinde komutumuzu kullanıyoruz.

Daha sonrasında ise `cd yeni_dizin` komutu ile yeni_dizin konumuna gidip `ls` komutu yazarak "filazof" isimli dosyamızın kopyalandığını teyit ettik.

Eğer bir dosyayı A dizininden B dizinine taşırsak ve B dizini içerisinde A dizininden taşıdığımız belge ile aynı isimde dosya varsa taşıdığımız dosya mevcut konumda bulunan aynı isimdeki eski dosyanın üzerine yazılacaktır. Bu da B konumunda var olan eski dosyanın önceki içeriğinin yok olması demek. Böyle talihsiz bir durum yaşamamak için `cp` komutunu kullanmadan önce `-i` parametresini de eklememizde fayda var. Bu parametre `cp` komutunun aynı isimli bir dosya ile karşılaşma durumunda bize onay sormasını sağlayacaktır.

Anlatılanları daha iyi anlamak adına hemen bir örnek yapalım. Daha önceden <kbd>yeni_dizin</kbd> konumuna taşımış olduğumuz "filazof" dosyasını `-i` parametresini kullanarak tekrar `cp` komutu ile taşımaya çalışalım.

![enter image description here](https://i.hizliresim.com/jyzDVg.png)

Çıktıda da görüldüğü gibi `-i` parametresini kullanarak yazdığımız kopyalama komutu bize "cp: 'Desktop/merhaba''ın üzerine yazılsın mı? " şeklinde bir uyarıda bulundu ve bizden onay bekledi.

Elbette bu işlemleri çoklu dosya taşıma için de kullanabiliriz.

![enter image description here](https://i.hizliresim.com/2Jvl8O.png)

Hangi komutu neden kullandık zaten bir önceki örneğe benzer olduğu için tekrar açıklamıyorum. Çıktıları inceleyerek çok rahat şekilde anlayabilirsiniz.

Eğer o anda çalıştığımız dizine başka bir konumdan dosya kopyalamak istersek komutumuzu `cp kopyalanacak_dosya_konumu .` şeklinde kullanabiliriz. Nokta( . ) bizim o anda bulunduğumuz çalışma konumunu ifade ediyor. Örneği incelediğinizde her şey daha net anlaşılacaktır.

![enter image description here](https://i.hizliresim.com/BLodDG.png)

Görüldüğü üzere kopyalanacak olan dosyanın konumunu belirttik ancak bulunduğumuz konuma yani kopyalamak istediğimiz konumun direk adresini belirtmemize gerek kalmadı. Bunun yerine bulunduğumuz konumu temsil eden `.`(nokta) kullanmamız dosyanın kopyalanmasını sağladı.

Eğer bulunduğumuz konumdan bir üst konuma kopyalamak istersek komutu `cp dosya_adresi ..` şeklinde kullanmamız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/Vr27vR.png)

Çıktıları karşılaştırarak dosyayı bir önceki dizine kopyalamayı (iki nokta) `..` ile kolaylıkla yapabildiğimizi görebilirsiniz.


### mv
Bu komut dosya taşıma ve uzantı değiştirme gibi işlevlere sahiptir. Dosya taşıma işlevi tıpkı `cp` komutunda olduğu gibidir. Yani komutun kullanımı `mv dosya_konumu taşınacak_konum` şeklindedir.

![enter image description here](https://i.hizliresim.com/Z92q7z.png)

### rm

Dosya dizin silme işlevinde kullandığımız komuttur. Kullanımı `rm silinecek_dosya_dizin` şeklindedir.

![enter image description here](https://i.hizliresim.com/vjYDnD.png)


Dosyalar tekil olarak silinebileceği gibi çoklu silme işlemi de gerçekleştirilebilir. Hatta daha önce gördüğümüz joker karakterleri de kullanırsak isim, uzantı gibi filtrelere göre sınırlandırarak toplu dosya silme işlemi gerçekleştirebiliriz. Örnek olması açısından masaüstünde yer alan 2 adat <kbd>.py</kbd> uzantılı dosyayı tek seferde `rm *.py` komutu ile siliyorum.

![enter image description here](https://i.hizliresim.com/1JjoMb.png)

Joker karakterlerin kullanım alanları oldukça geniştir. Sizler de ihtiyacınıza göre filtreleme yaparak bu işlemleri istediğiniz doğrultuda gerçekleştirebilirsiniz.

### shred

Bu komut sayesinde dosyalarımızı daha güvenli şekilde silebiliriz. `shred` komutu dosyanın içerisine rastgele bitler yazarak dosyanın okunmaz hale gelmesini sağlıyor. Parametresiz kullanımda dosyaya 3 kez rastgele bit eklerken `n` parametresini kullanarak bu eklenecek olan rastgele bit sayısını istediğimiz doğrultuda düzenleyebiliyoruz. Eğer yapılan işlemi komut satırından takip etmek istersek `v` parametresini de kullanabiliriz. Ayrıca `u` parametresini kullanmamız halinde dosya işlem sonrasında silinir.

![enter image description here](https://i.hizliresim.com/rOYDZz.png)

![enter image description here](https://i.hizliresim.com/Lbd61z.png)


----------

Dosya Arşiv İşlemleri
=
Bu bölümde dosya arşivleme, sıkıştırma-açma gibi işlemleri ele alıcaz. Zaten bu kavramlar sizlere yabancı gelmemeli zira daha önce hangi işletim sistemini kullanmış olursanız olun öyle ya da böyle karşınıza çıkmıştır. Genellikle yüksek boyutlu dosyaların sıkıştırılmasında veya veri kaybı olmadan güvenli transfer yapabilmek için ve bunlar gibi pek çok sebep dolayasıyla arşiv dosyaları ile sıklıkla karşılaşıyoruz, karşılaşmaya da devam edicez.

Konumuza arşiv dosyası oluşturarak başlayalım.

tar
-

`tar` komutunun açılımı (Tape ARchive) şeklindedir. Bu komut bir veya birden fazla dosyayı tek bir forma sokarak arşivlenmiş duruma getirir. Örnekler üzerinden anlatıma devam edelim.

Masaüstünde yer alan ismi "metin" ile başlayan her şeyi <kbd>metinler.tar</kbd> şeklinde arşivlemek isteyelim. Bunun için komut satırına `tar -cf metinler.tar metin*` yazmalıyız.

![enter image description here](https://i.hizliresim.com/9mvOa8.png)

Kullandığımız komut bütününü tek tek izah edelim;

`tar`(Tape ARchive) arşivleme işlevini yapan program.

`-c`(create archive) parametresi joker `*` yardımıyla dosya ismi ile başlayan her şeyi paketleyip <kbd>dosyalar.tar</kbd> isimli dosyaya yollar.

Kullandığımız `-f` parametresi de hangi dosyaya yazılacağını belirtir.

Dosyaları tekrar açmak için `tar -xf metinler.tar` komutunu kullanabiliriz. Veya açılan dosyaları konsol üzerinden takip etmek için `v` parametresi kullanarak aynı işlemi gerçekleştirebiliriz.

![enter image description here](https://i.hizliresim.com/qG9rdq.png)

Eğer arşivi başka bir klasöre çıkarmak istersek komutumuzu `tar -xf metinler.tar -C hedef_klasör` şeklinde kullanabiliriz.

![enter image description here](https://i.hizliresim.com/Md9rV9.png)

Görüldüğü gibi arşivin içerisindekiler öncekilerden farklı olarak direk çalıştığımız dizine değil, belirtmiş olduğumuz hedef klasöre çıkarılmış oldu.

Arşivi çıkarmadan içerisindekileri görmek istersek `tar -tf metinler.tar` komutunu kullanabiliriz.

![enter image description here](https://i.hizliresim.com/XP25MD.png)

Oluşturmuş olduğumuz arşive sonradan ekleme yapmak için `-r` parametresini kullanabiliriz.

Hemen <kbd>metinler.tar</kbd> arşivine aynı dosya konumunda  yer alan <kbd>yeni</kbd> isimli klasörü eklemeye çalışalım.

![enter image description here](https://i.hizliresim.com/bBQWVj.png)

Başta ve sondaki arşivin durumunu karşılaştırdığımızda <kbd>yeni</kbd> isimli klasörün arşive eklenmiş olduğunu gördük.

`tar` komutunun kullanım şekilleri elbetteki yukarıdaki anlatılanlar ile sınırlı değil. Ancak biz genel olarak sıklıkla karşılaşılan kullanım şekillerini ele almış olduk. Daha fazla bilgiye nasıl ulaşacağınızı biliyorsunuz.

gzip-gunzip-bzip2-bunzip2
-

Biz daha önceki kısımlarda `tar` komutu ile dosyaları sadece arşivlemiş ancak sıkıştırma işlemi yapmamıştık. Şimdi ise gerektiğinde dosyaları sıkıştırmayı ve bu dosyaları açmayı göreceğiz.

Sıkıştırma işleminde iki temel araç kullanılıyor. Bunlar `gzip` ve `bzip2` araçları. Sıkıştırılmış olan dosyaları açma işleminde ise `gzip` ile sıkıştırılan dosyalar için `gunzip`, `bzip2` ile sıkıştırılan dosyalar için ise `bunzip2` kullanılıyor.

Masaüstünde yer alan dosyalardan örnek yapalım hemen. Ben "metin" adıyla başlayan dosyaları `gzip` arşivine almak için daha önceden de defalarca kullanmış olduğumuz `*` joker karakterinin yardımıyla `gzip metin*` komutunu veriyorum. Daha sonra aynı işlemi "isim" adı ile başlayan belgeler için bu defa `bzip2` yardımıyla `bzip2 isim*` şeklinde arşivleyerek gerçekleştiriyorum.

![enter image description here](https://i.hizliresim.com/dO4Rvn.png)

Sıkıştırdığımız dosyayı tekrar dışarı çıkarmak istersek komutu `-d` parametresi ile birlikte kullanmamız gerekiyor.

![enter image description here](https://i.hizliresim.com/5DpBad.png)

Artık hem arşivleme hem de sıkıştırma işlemlerini gördükten sonra her ikisini de birlikte kullanma vakti geldi.

`gzip` ile `bzip2` arasında `tar` komutu yardımı ile arşivleme işlemi yaparken ufak bir fark var. Bu fark `gzip` ile arşivleme yaparken komutun `czvf` şeklinde parametre almasıyla, `bzip2` ile arşivleme işlemi yaparken aldığı parametrenin `cjvf` olmasıdır. Bunun dışında kullanım şekilleri aynıdır.

Örnekler ile açıklayalım.

Her iki şekilde de metin isimli belgeleri bir arşiv içine almaya çalışalım. Sırasıyla bunu ilk olarak `gzip` ile daha sonra ise `bzip2` ile yapalım. Dosya adı verirken kullanılan <kbd>tar.gz</kbd> ve <kbd>tar.bz2</kbd> uzantılarına dikkat edin aksi halde işlem hata verecektir.

![enter image description here](https://i.hizliresim.com/A1ZpDq.png)

Gördüğünüz gibi `gzip` kullanırken parametre olarak `czvf` verdik ve oluşturduğumuz dosyanın uzantısını da <kbd>tar.gz</kbd>  şeklinde yaptık. Aynı şekilde `bzip2` için ise `cjvf` parametrelerini kullandık ve dosya adımızın uzantısını <kbd>tar.bz2</kbd>  şeklinde oldu. Daha önce de söylediğim gibi bu ayrıntılara dikkat etmezseniz işlem kaçınılmaz olarak başarısız olacaktır.

Sıkıştırmış olduğumuz arşivleri tekrar açmak için ise `gzip` için `xzvf` parametresi `bzip2` için ise `xzjf` parametresini kullanacağız. 

![enter image description here](https://i.hizliresim.com/4aY5jq.png)

Arşivler açılmış oldu. Eğer arşivi belirli bir konuma çıkarmak istersek daha önce de öğrenmiş olduğumuz şekilde `-C` parametresi ile bu işlemi gerçekleştirebiliriz. Eğer `-C` parametresi kullanmazsak arşiv içindekiler doğrudan belirttiğimiz konuma açılır. `-C` parametresi hedef konuma arşivin ismi ile bir dosya oluşturur ve o dosya içerisine çıkarma işlemini yapar. 

Daha önceden öğrendiğimiz işlemleri de aynı şekilde sıkıştırılmış arşiv dosyalarında da yapabiliyoruz. O yüzden aynı şeyleri burada tekrardan vermemiz anlamsız olur.

İlk başlarda akılda kalması hatırlanması zor gelebilir ancak sizler de zamanla, kullana kullana bu komutlara alışacaksınız. Unuttuğunuz yerde zaten tekrar açıp bakabilirsiniz.

zcat-zgrep-bzcat-bzgrep
-
Daha önce dosya içeriklerini terminal üzerinden `cat` komutu yardımı ile okumayı ve `grep` komutu ile de arama yapmayı öğrenmiştik. Şimdiki göreceğimiz komutlar ise aynı işlemleri sıkıştırılmış dosyalar için yerine getiriyorlar. Zaten isimlerinden de bu işlevde oldukları anlaşılabiliyor.

`gzip` ile sıkıştırılmış arşiv dosya içeriklerini `zcat` ile okuruz. Aynı işlemi eğer `bzip2` ile sıkıştırılmış dosyalar varsa `bzcat` şeklinde gerçekleştirebiliriz.

![enter image description here](https://i.hizliresim.com/JQdvZn.png)

Sıra geldi sıkıştırılmış dosyalar içerisinde arama yapmaya. `gzip` ile sıkıştırılmış dosyalar için `zgrep` kullanılırken `bzip2` ile sıkıştırılmış dosyalar için `bzgrep` komutunu kullanıyoruz.

![enter image description here](https://i.hizliresim.com/JQdv8j.png)


unzip-unrar
-

Son olarak da <kbd>.zip</kbd> ve <kbd>.rar</kbd> uzantılı dosyaları nasıl oluşturabileceğimizi ve daha sonra nasıl açabileceğimizi görelim.

Anlatıma <kbd>.zip</kbd> dosyası oluşturarak başlayalım.

Bunun için komutumuzu konsola `zip dosya_adı.zip eklenecek_dosya` şeklinde giriyoruz.

![enter image description here](https://i.hizliresim.com/OoJP8P.png)

Eğer `zip` komutu ile sıkıştırdığımız dosyayı açmak istersek <kbd>.zip </kbd>dosyalarını açma işlevindeki `unzip` komutunu `unzip dosya_adı.zip` şeklinde kullanabiliriz.

![enter image description here](https://i.hizliresim.com/4aY5WJ.png)

Eğer <kbd>.rar</kbd> dosyasını açmak istiyorsak `unrar` komutumuzu `unrar x dosya_adı.rar` şeklinde konsola girerek bu işlemi gerçekleştirebiliriz. Burada yer alan `x` ifadesi dışarı aktarma işlevindedir. Ayrıca başka parametreler de mevcut ancak bu kısım için bu kadarı yeterli.


----------

Erişim Yetkileri
=

Linux sistemlerinin yapısı gereği güvenlik açısından dosya ve dizinlere ait birçok kısıtlama ve yetkilendirme ayarları vardır. Bu yetkilerin hepsine sahip olan tek kullanıcı ise root kullanıcısıdır. Bu yüzden sistemi kullanırken eğer root kullanıcısı isek önümüzde uyarıcı bizi kısıtlayıcı bir mekanizma olmayacağından kimi durumlarda yapacağımız değişiklikler olumsuz sorunlara yol açabilir. Bu yüzden root kullanıcısıyken yapılan işlemlere dikkat etmek gerekir.

Bu girizgahtan sonra her kullanıcının kendine verilen yetkiler çerçevesince hareket edebildiğini öğrenmiş olduk. Kullanıcıların dosya veya dizinler ile ilgili yapabileceği üç eylem bulunmaktadır. Bunlar;

**okuma(r):** Klasör listesini ve dosya içeriğini görüntüleme.

**yazma(w):** Dosya veya klasör üzerinde değişiklik yapma.

**çalıştırma(x):** Hedef dosyayı çalıştırma veya klasöre içerisine erişme.

Aslında bu eylemler sizlere yabancı gelmemeli. Zira daha önce `chmod` komutu yardımı ile gerekli dosyanın iznini değiştirmiş ve dosyamızı çalıştırmayı başarmıştık.

Şimdi mevcut dosyalarımızın ne tür izinleri barındırdığına göz atalım. Bunun için komut satırına ayrıntılı liste yazdırmak üzere `ls -l` komutumuzu veriyoruz.

![enter image description here](https://i.hizliresim.com/nOYzaM.png)

Şimdi listemizi inceleyerek bulunan izinleri ele alalım.

<kbd>drwxr-xr-x</kbd> ve <kbd>-rw-r--r-- </kbd>şeklinde gördüğümüz kısımlar dosya izinlerini ifade ediyor.

Bazı ifadelerin başında olan <kbd>d </kbd>harfi o ifadenin dizin olduğunu belirtiyor.

Geriye kalan kısımları ayrı ayrı açıklayacak olursak <kbd>-</kbd> işareti ile ayrılan kısımlar o izine sahip kullanıcı grubunu temsil ediyor. Daha iyi anlamak için <kbd>d</kbd> harfi hariç <kbd>-</kbd> işaretini ayırdığımız zaman geri kalan harfleri üç adet üçlü grup haline getirelim;

<kbd>rwxr-xr-x</kbd>=<kbd>rwx</kbd><kbd> r-x </kbd><kbd>r-x</kbd>

<kbd>rw-r--r--</kbd>=<kbd>rw-</kbd> <kbd>r--</kbd><kbd> r--</kbd>

Sırayla birinci harf kümesi dosya sahibinin izinlerini, ikinci harf kümesi grup izinleri ve son küme de diğer kullanıcıların izinlerini belirtir. 

![enter image description here](https://i.hizliresim.com/2JvLR2.png)

Buna göre yukarıdaki dosyalarda;

**r :** okuma yetkisi

**w :** yazma yetkisi

**x :** çalıştırma yetkisi

**rwx :** dosyanın sahibi olan kullanıcı okuyabilir, yazabilir, çalıştırabilir.

**r-x :** dosya sahibi grup ile aynı grup okuyabilir, çalıştırabilir fakat yazamaz.

**r-x :** diğer kullanıcılar okuyabilir, çalıştırabilir fakat yazamaz.


Yetkilerin Değişimi(chmod)
-

Erişim yetkisini değiştirme işlemini ancak en yetkili kişi olan root yapabilir. Bu değişim işlemini daha önceden de kullandığımız `chmod` komutu sayesinde gerçekleştirilir.

`chmod` komutunun parametrelerini tanıyarak örnek verme işlemine geçelim.

**u :** Dosya-dizinin sahibi

**g :** Dosya-dizinin sahibi ile aynı grupta bulunan kullanıcılar

**o :** Diğer kullanıcılar

**a :** Herkese açık.

**= :** Yetki eşitleme

**+ :** Yetki ekleme

**- :** Yetki çıkarma

Genel parametreleri gördüğümüze göre gelin birkaç örnek yapalım.

Örnek göstermek adına anlatımı, içerisindeki dosyaların hiç birinde yetkinin bulunmadığı bir klasör üzerinden gerçekleştireceğim.

İlk olarak klasörde yer alan dosyaların herhangi bir yetkiye sahip olmadıklarını teyit etmek için ayrıntılı çıktı almak üzere `ls -l` komutunu kullandık.

![enter image description here](https://i.hizliresim.com/BLoJ1M.png)


Daha sonra klasörde yer alan tüm dosyalara `*` joker karakteri ile ulaştık ve `chmod +w *` komutumuzu kullanarak herkese açık olacak şekilde yazma(w) yetkisi verdik.

![enter image description here](https://i.hizliresim.com/jyz0aL.png)

Aynı grupta bulunan kullanıclar için yine konumumuzda bulunan tüm dosyaları `*` sayesinde kapsayacak şekilde `g+rx *` komutumuzu verdik.

![enter image description here](https://i.hizliresim.com/oOnGa9.png)

Gruptaki kullanıcılara(g), okuma-yazma-çalıştırma yetkisi (rwx), kullanıcıya(u) yazma yetkisi(r), diğer kullanıcılara ise yalnızca çalıştırma yetkisi(x) verdik.

![enter image description here](https://i.hizliresim.com/lOBJ8r.png)

Ve en son yine bulunduğumuz konumdaki tüm dosyaların yetkilerini kaldırdık.

![enter image description here](https://i.hizliresim.com/Vr2oGv.png)

Bu kullanımların dışında yetkilendirme işlemleri daha önceden de rastladığımız ve fark etmeden de olsa kullanmış olduğumuz sayısal şekilde de ifade edilebiliyor.

Bu durumu yetkilerin sayısal karşılığını vererek anlatmaya devam edelim.

<table class="table"> <caption>Yetki kalıplarının sayısal karşılıkları.</caption> <thead> <tr> <th>#</th> <th>dosyanın sahibi</th> <th>sahibiyle aynı gruptakiler</th> <th>diğer kullanıcılar</th> </tr></thead> <tbody> <tr> <th scope="row">r</th> <td>4</td><td>4</td><td>4</td></tr><tr> <th scope="row">w</th> <td>2</td><td>2</td><td>2</td></tr><tr> <th scope="row">x</th> <td>1</td><td>1</td><td>1</td></tr></tbody> </table>

Yetkilerin sayısal değerlerini kullanarak bir örnek yapalım.

Örneğin biz sadece dosyanın sahibine bütün yetkileri vermek istiyoruz diyelim. Bunun için ilk başta yetki kalıplarının numara karşılıklarını toplamalıyız. Yani bütün yetkileri vereceğimiz için <kbd>r=4 </kbd>+<kbd> w=2</kbd> +<kbd> x=1</kbd>=<kbd>toplam sayı 7</kbd> etti. Bizler de sadece dosya sahibine bu yetkiyi vermek istediğimizden normalde vereceğimiz `chmod rwx- -----` komutumuzu diğer kullanıcılara yetki vermek istemediğimiz için o alanları 0 bırakarak komutu `chmod 700 dosya` şeklinde veriyoruz. Böylelikle sadece dosyanın sahibi tüm yetkilere sahip olmuş oluyor.

![enter image description here](https://i.hizliresim.com/gOjNlR.png)

Daha net anlaşılması adına bir örnek daha yapalım. Şimdi de; dosyanın sahibine tüm yetkileri, ortak gruptakilere yalnızca yazma yetkisini, diğer kullanıcılara da sadece okuma yetkisini verelim.

Dosya sahibi kullanıcıya verilecek tüm yetkiler için `r(4)+w(2)+x(1)=7` sayısını kullanacağız.

Dosya sahibi ile ortak gruptaki kullanıcılar için vereceğimiz yazma yetkisi için yazma(w) karakterinin sayısal karşılığı olan `2` sayısını kullanacağız.

Diğer kullanıcılar için vereceğimiz yalnız okuma yetkisi için ise okuma(r) karakterinin sayısal karşılığı olan `4` sayısını kullanacağız.

![enter image description here](https://i.hizliresim.com/9mv6X3.png)

Çıktıdan da anlaşılacağı üzere sayısal karşılıklar istediğimiz yetkilendirme işlemini gerçekleştirdi.

Son bir ayrıntı daha verelim. Eğer verdiğimiz izinlerin o dizinle beraber alt klasörlerinde de etkili olmasını istersek komutumuzu `-r` parametresi ile birlikte kullanmalıyız.

![enter image description here](https://i.hizliresim.com/qG9gqD.png)

Eğer örneklere ve açıklamalara rağmen yine de anlamadıysanız ister konuyu tekrar okuyup kendiniz de alıştırmalar yapın isterseniz de bu konuyu şimdilik geçin ihtiyacınız olduğunda burada olduğunu bilerek tekrar göz atın. Seçim sizlere kalmış.

chattr
-
Hepimizin başına mutlaka gelen ve çok can sıkıcı bir durum var. Bu durum yanlışlıkla silinen dosyalar. Her nasıl ve neden olursa olsun eğer önemli gördüğümüz dosyalar varsa bir şekilde silinmeden onları koruma altına almamız mümkün. Bizlere bu koruma imkanını veren komut `chattr` komutudur. Öyle ki herhangi bir yanlış durumda dosyanın kaybolmasına engel olmak adına root kullanıcısının bile değişiklik yapmasına imkan tanımıyor.

Komutun kullanımı `chattr +i dosya_adı` şeklindedir. Hemen bir örnek yapalım.

![enter image description here](https://i.hizliresim.com/Md9zYQ.png)

<kbd>test.txt </kbd> isimli dosyamızı `chattr +i test.txt` komutu ile koruma altına aldık.

Daha sonra bunu teyit etmek için `lsattr` komutunu kullandık.

Komutumuzun çıktısında görüldüğü gibi dosyamızın sol tarafında izinler kısmında `-i` şeklinde bir ifade var. İşte bu ifade dosyamızın artık düzenlenemeyecek olduğunun işaretidir. Dosyayı silmeye çalışarak bu durumu teyit ettik.

Eğer bu işlemi geri almak ve dosyamızı üzerinde değişiklikler yapılabilir hale getirmek istersek `chattr -i test.txt` komutumuzu kullanmamız yeterli olacaktır. Örneği aşağıda inceleyebilirsiniz.

![enter image description here](https://i.hizliresim.com/QV1kX3.png)

Çıktıda da görüldüğü gibi hedef dosyamızın solundaki `-i` işareti yok olmuş, dolayısı ile <kbd>test.txt</kbd> isimli dosyamızın artık eski halinde dönerek düzenlenebilir forma girmiş olduğunu gördük. Ve dosyamızı silerek bu durumu teyit ettik.


----------

Kullanıcı İşlemleri
=
Linux'ta birçok kullanıcı olduğunu ve bunlar içinde en yetkilinin root kullanıcısı olduğunu önceki derslerimizde tecrübe etmiştik. Ancak sistemde root kullanıcısı olmadan da root kullanıcısının yetkilerine sahip olmamız mümkün. Bu imkanı bize linux grup sistemi veriyor.

Grup Yönetimi
-

Aynı grupta yer alan kullanıcılar bizim tanımlamamızla aynı haklara sahip olabiliyorlar.

Biraz daha ayrıntılı vermek gerekirse Linux ve UNIX sistemlerindeki kullanıcılar bir veya daha fazla gruba aşağıdaki nedenlerle atanır:

- Dosyaları veya diğer kaynakları az sayıda kullanıcıyla paylaşmak için yani sınırlama mekanizması gibi düşünülebilir.
- Kullanıcı yönetim ve denetim kolaylığı sağlar.
- Grup üyeliği büyük Linux sistem kurulumu yerine kullanılan mükemmel bir çözümdür.
- Grup üyeliği, bu gruba izin verilen dosyalara, dizinlere veya cihazlara özel erişim sağlar. Bu madde baştaki madde ile benzer amaca hizmet ederek tamamen kontrolü elde tutmayı sağlamak için kullanılır.

Mevcut grupları görüntülemek istersek `less /etc/group` `more /etc/group` `cat /etc/group` komutlarından herhangi birini kullanabiliriz. Çıktıları aşağıdaki şekilde olacaktır.(Çıktıyı uzun olması nedeni ile kısa şekilde verdim.)

![enter image description here](https://i.hizliresim.com/6JY4DN.png)

Hemen bu çıktıda yer alan kısımlara bir açıklık getirelim. Bunun için çıktıda yer alan bir grubu bölüm bölüm numaralandırarak açıklayalım. Ben bu durum için örnek bir grup belirtiyorum.

![enter image description here](https://i.hizliresim.com/4aYdp0.png)

Belirtilen numaralı kısımların açıklamaları:

**1. Grup_ismi :** Gruba verilen isimdir.

**2. Parola :** Genelde parola kullanılmaz ancak kimi durumlarda kullanıldığı oluyor, bizim çıktımızda da x ile belirtilen alan parola kısmının boş olduğunu belirtiyor. Bu parola belirleme işlemi çok sık kullanılmasa da, ayrıcalıklı gruplarda uygulamak için yararlıdır.

**3. Grup Kimliği (GID) :** Atanan grup kimliğini(numarası) belirtiyor.

**4. Grup Listesi :** Grubun üyesi olan kullanıcıların kullanıcı adlarının bir listesidir. Kullanıcı adları, virgülle ayrılmış olmalıdır.

Kullanıcıların ait olduğu grupları görmek istersek komut satırına `id kullanıcı_adı` şeklinde komut vermemiz yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/JQd5Vq.png)

Burada yeri gelmişken daha önce değindiğimiz uid(user id) ve gid(group) kavramlarına değinelim. Bu numaralar kullanıcı çeşidine göre şu şekildedir;

- **root kullanıcısı :** UID=0, GID=0
- **sistem kullanıcısı :** UID=1-499, GID=1-499
- **normal kullanıcı :** UID=500<, GID<

Ayrıca `id` komutunun da birçok parametresi vardır bazıları şimdi göreceğiniz grup oluşturma kısmındaki parametrelerden oluşuyor. Detaylı bilgi için man sayfasına bakabilirsiniz. Ben yine de örnek olması açısından `g` parametresini gösteriyorum ve daha sonra grup oluşturma ile konumuza devam ediyoruz.

`id -g grup_adı` belirtilen grubun grup id(GİD)'sini verecektir.

![enter image description here](https://i.hizliresim.com/OoJWr0.png)

Yeni bir grup oluşturmak istersek `groupadd grup_adı` şeklinde komutumuzu kullanırız.

Ve oluşturduğumuz grubu sorgulamak için grub bilgilerinin tutulduğu dosyaya bakmak üzere `cat /etc/group | grep grup_adı` komutunu ya da `tail -n 1 /etc/group` kullanabiliriz.


![enter image description here](https://i.hizliresim.com/z0QWGB.png)


Ayrıca grup oluşturulurken kullanılabilecek bazı parametreler var. Bunlar;

**g :**  Grup id belirleme. İstediğiniz numarayı başka bir gruba ait numara ile aynı olamayacak şekilde verebilirsiniz.

![enter image description here](https://i.hizliresim.com/G9bqZy.png)

Eğer aynı grup id ile başka bir grup eklemek istersek konsol bize bu id ye sahip başka bir grubun halihazırda bulunduğu uyarısını verecektir. Dolayısı ile grup ekleme işlemi başarısız olacaktır.

![enter image description here](https://i.hizliresim.com/y02yG0.png)

**o :** id olmadan grup oluşturma

**r :** sistem grubu oluşturma.

**f :** işlemi hatalar olsa bile zorlayarak tamamlar. Genelde bu kullanım sorunlar çıkardığı için pek tavsiye edilmez.

Parametreler bunlar ile sınırlı değil ancak sizler `man groupadd` ve `groupadd --help` komutları yardımı ile diğer parametrelere ulaşabilirsiniz.

Ayrıca oluşturduğunuz grupları silmek isterseniz konsola `groupdel grup_adı` şeklinde komut yazmalısınız.

![enter image description here](https://i.hizliresim.com/W7WlXq.png)


Kullanıcı Yönetimi
-

Sistemimize yeni bir kullanıcı eklemek için kullanabileceğimiz iki farklı komut var. Bunlar `adduser` ve `useradd` komutlarıdır.

### adduser

Yeni kullanıcı eklemek için komutumuzu `adduser kullanıcı_adı` şeklinde veriyoruz. Böylelikle oluşturduğumuz kullanıcıya ait ev dizini `home/kullanıcı_adı` şeklinde otomatik olarak oluşmuş oluyor.

![enter image description here](https://i.hizliresim.com/p6v7A0.png)

Çıktıları inceleyecek olursak ev dizini otomatik olarak oluşturulmuş ve kullanıcı "taylan" grubuna dahil edilmiş. Bunu da tekrar ev dizini sorgusu için <kbd>home</kbd> dizinine bakarak ve `id taylan` komutunu kullanarak teyit edelim.

![enter image description here](https://i.hizliresim.com/kOZ2QW.png)

Çıktıda görüldüğü gibi <kbd>home</kbd> dizininde oluşturmuş olduğum "taylan" isminde kullanıcı dosyası bulunuyor.

![enter image description here](https://i.hizliresim.com/NZYyXO.png)

Yukarıdaki çıktıda oluşturulan "taylan" isimli kullanıcının grubu da "taylan" olarak gözükmekte.

### useradd

Kullanıcı oluşturmak için bahsettiğimiz 2. komut olan `useradd` komutu kullanımı `useradd -m kullanıcı_adı` şeklindedir. Burada komutumuz ile birlikte kullanmış olduğumuz `m` parametresi ile oluşturduğumuz kullanıcıya ait ev dizininin otomatik oluşmasını sağladık. Birde son olarak kullanıcıya ait bir parola belirlemek üzere `passwd kullanıcı_adı` şeklinde komutumuzu vererek parolamızı oluşturuyoruz.

Ayrıca bu `passwd kullanıcı_adı` komut kullanımı bütün hesaplar için şifre güncelleme işleminde de kullanılıyor. Eğer herhangi bir hesabınızın parolanızı güncellemek isterseniz `passwd` komutu aklınızda bulunsun.

![enter image description here](https://i.hizliresim.com/azP4vz.png)

Görüldüğü gibi "taylan_2" isimli kullanıcı hesabımız başarılı şekilde oluşturulmuş oldu. Şimdi <kbd>home</kbd> dizinini ve oluşturduğumuz kullanıcının grubunu kontrol edelim.

![enter image description here](https://i.hizliresim.com/Yg31y6.png)

Çıktı sonuçlarında bir problem olmadığına göre konumuza, kullanıcı silme işlemi ile devam edebiliriz.

### Kullanıcı Silmek

Eğer kullanıcıyı `adduser` komutu ile oluşturduysak, oluşturulan ev dizini ile birlikte kullanıcıyı silmek için `deluser --remove-home kullanıcı_adı` komutunu kullanmamız gerek.

![enter image description here](https://i.hizliresim.com/NZb63P.png)

Ancak kullanıcıyı `useradd` komutu ile oluşturduysak, oluşturulan ev dizini ile birlikte kullanıcıyı silmek için `userdel -r kullanıcı_adı` komutunu kullanmamız gerek.

![enter image description here](https://i.hizliresim.com/azBJjO.png)

Kullanıcı silme işlemlerini kontrol etmek adına home dizinini kontrol edelim.

![enter image description here](https://i.hizliresim.com/Yg52Mz.png)

Çıktıda "taylan" ya da "taylan_2" bulunmadığına göre kullanıcı silme işlemimiz başarılı şekilde tamamlanmış oldu.

### Kullanıcı Bilgileri Listelemek(chage)

Kullanıcı bilgileri listeme işleminde `chage` komutu `chage -l kullanıcı_adı` şeklinde kullanılıyor.

Hemen root kullanıcısı için bilgileri listeleyelim.

![enter image description here](https://i.hizliresim.com/kOY3Qm.png)

### Aktif-Pasif Hesap Ayarlama

Varolan bir kullanıcı hesabını kilitlemek için `usermod -L kullanıcı_adı` komutunu kullanırız. Buradaki kilitlemekten kasıt kullanıcı parolasını kilitlenir. Parolayı devre dışı bırakmak için, şifreli parolanın önüne '!' işareti koyulur. Ve kullanıcı hesabına giriş yapamaz. 

Pasif durumdaki hesabı aktif hale getirmek için ise `usermod -U kullanıcı_adı` komutu kullanılır. Aynı şekilde hesabın tekrar aktif hale getirilmesi de devre dışı bırakılmış bir kullanıcı parolasını  önündeki '!' işaretini kaldırılmasıyla olur.

Bu durumu .gif ile anlattım dikkatlice takip ederseniz gayet net anlaşılacaktır.

![enter image description here](https://i.hizliresim.com/9mp81Q.gif)

### Kimlik Değişimi

Örneğin ben "taylan" kullanıcısıyken, yapmak istediğim işlem ancak "root" kullanıcısının yetki alanında ise "root" hesabının parolasını biliyorsam "root" hesabının kimliğine bürünerek o işlemi gerçekleştirebilirim.

Geçiş işlemleri için `su`komutunu kullanıyoruz. Komutun kullanımı ile ilgili iki farklı durum var bunlar:

- **su kullanıcı_adı :** diğer kullanıcı kimliğine geçiş yapar.
- **su - kullanıcı_adı :** diğer kullanıcı kimliğine geçiş yapar ve direk olarak geçiş yapılan kullanıcının kabuğunda çalışmaya başlar.

Bu durum en iyi örnekler ile açıklanabilir. İlk önce root kullanıcısıyken "taylan" isimli kullanıcı hesabına giriş yapacağım daha sonra "taylan" isimli kullanıcıdan root hesabına giriş işlemini gerçekleştireceğim. Adımları sırasıyla takip edin lütfen.

Hemen mevcut kullanıcı oturumunu daha önce öğrenmiş olduğumuz `whoami` komutu ile sorgulayalım.

![enter image description here](https://i.hizliresim.com/NZb6XP.png)

root kullanıcı iken "kullanici" hesabına geçiş yapmak için `su kullanici` komutunu kullanıyoruz. Ve `whoami`komutu ile geçiş durumunu kontrol ediyoruz.

![enter image description here](https://i.hizliresim.com/Yg52yz.png)

Geçiş yaptığımız "kullanici" hesabından root hesabına dönmek için `exit` komutunu kullanmamız yeterli.

![enter image description here](https://i.hizliresim.com/8YE0OV.png)

Şimdi `su - kullanici` komutu kullanarak geçiş yapacağımız kullanıcı kabuğunda çalışalım.

![enter image description here](https://i.hizliresim.com/D7kV1z.png)

Fark etmiş olacaksınız ki başta geçiş yapabilmemiz için geçeceğimiz hesabın parolasını bilmemiz gerektiğini söylemiştim ancak "kullanici" hesabına yaptığımız geçişlerde parola sorulmadı. Bunun sebebi "kullanici" hesabının normal kullanıcı olması. Şimdi bu durumu birde "kullanici" hesabındayken "root" kullanıcısı için iki farklı kullanımda da deneyelim.

![enter image description here](https://i.hizliresim.com/m28jbV.png)

![enter image description here](https://i.hizliresim.com/jyYPOJ.png)

Gördüğünüz gibi yönetici hesabına erişmek için bizlerden parola bilgisi istendi. Bu durum da başta açıkladığımız şifre sorma olayını açıklıyor.


----------



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


----------

Disk İşlemleri
=

Disk ile ilgili yapabileceğimiz bölümleme, formatlama, yedekleme ve diğer işlemleri gerçekleştirebileceğimiz çeşitli komutlar var. Bu bölümde bu komutları ve işlevsel yanlarını ele alacağız. Konumuza ilk olarak daha önce de kullanmış olduğumuz `fdisk` komutu ile başlayalım.
> **Komutlara geçmeden önce disk üzerinde yapacağımız işlemlerde son derece dikkatli olmamız gerektiğini aklınızdan çıkarmayın lütfen.**

> **Yapacağımız yanlışlar dosyalarımızın kalıcı olarak silinmesine ve daha farklı sorunlara yol açabilir.**

gparted
-
Grafiksel basit bir arayüze sahip olmasından dolayı kullanımı en kolay disk aracı denilebilir. Grafiksel arayüze sahip olduğu için açıklamasını burada vermem, resim kullanmayacağım için verimsiz olur. Ancak internetteki Türkçe-İngilizce kaynaklarda kullanımı hakkında bolca bilgiye ulaşabilirsiniz. Açmak için konsola `gparted` yazmanız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/nOA9Oa.png)



fdisk
-
İsminden de anlaşılacağı üzere komutumuz çeşitli disk işlemleri yapılmak üzere kullanılıyor.

Komutun aldığı temel parametreleri ele alarak konumuza devam edelim.

İlk olarak sistemimizde bulunan disk bölümlerini listeleyelim. Bunun için l parametresini kullanıyoruz.

**fdisk -l :** disk bölümlerini listeler.

![enter image description here](https://i.hizliresim.com/vjgAjD.png)

Komutumuzu `fdisk /dev/sda` şeklinde parametresiz olarak vermemiz durumunda konsol bizden komut bekler.

![enter image description here](https://i.hizliresim.com/1JYaJb.png)

Hazır komutumuzu parametresiz kullanmışken bizden komut bekleyen konsola girebileceğimiz parametreleri ele alalım.

**m :** yardım menüsünü açar. Burada `fdisk` komutu ile kullanabileceğimiz parametreler listelenir.

![enter image description here](https://i.hizliresim.com/Lbp8bz.png)

Çıktıda görüldüğü üzere `fdisk` komutu disk konusunda çok fazla işleve sahip. Ancak biz sadece birkaç temel işlevini göreceğiz.

**p :** disk bölümleme tablosunu gösterir.

![enter image description here](https://i.hizliresim.com/rOgXOz.png)

Çıktımız tıpkı komutu `fdisk -l` şeklinde kullandığımızdaki gibi oldu.

**l :** disk bölümlerini listeler.

![enter image description here](https://i.hizliresim.com/76oW6r.png)

**d :** bölüm silmek için kullanılır.

Ben `p` parametresi ile listelediğim disk bölüm tablosundan 3. bölümü yani <kbd>/dev/sda3</kbd> bölümünü silmek üzere `d` parametresini vererek Partition number kısmını 3 olarak belirttim.

![enter image description here](https://i.hizliresim.com/Pl52lb.png)

Çıktıda da görüldüğü gibi seçili alan silinmiş oldu. Artık diskte alan açıldığına göre yeni bir disk bölümü oluşturabiliriz.

**n :** yeni disk bölümü oluşturur.

`n`parametremiz ile diskte yeni bir alan oluşturabiliriz.`n` parametresini girince bize bölümleme tipinin öncelikli(primary) mi yoksa genişletişmiş(extended) mi olması gerektiğini soruyor.Aralarındaki farklar nedir diyecek olursanız.

**Primary Partition** denilen kısım işletim sistemlerini kurduğumuz sabit disk bölümüdür. Bir sabit diskte maksimum 4 tane primary partition olabiliyor ve bunlardan bir tanesinin mutlaka aktif partition olması gerekiyor ki işletim sisteminiz boot işlemi sırasında çalıştırılabilsin.

**Extended Partition** ise aktif primary partition çıkarıldığında geriye kalan tüm sabit disk alanınızdır, bunun içine pasif primary partitionlar da dahildir.

Bu açıklama yeterli gelmemiş dolayısı ile anlamamış olabilirsiniz ancak kafa karışıklığına sebep olmamak için ayrıntıya girmiyorum. Merak eden arkadaşlar kısa bir araştırma sonucu istediklerinden de fazla bilgiye ulaşabilirler. Şimdi konumuza devam edelim.

![enter image description here](https://i.hizliresim.com/gOkvOQ.png)

First sector alanını <kbd>enter</kbd> ile geçip, Last sector alanına  `+1G` olarak girdim ve 1GB boyutunda bir bölüm oluşturmuş olduk. Bunu teyit etmek için `p` parametresini kullandık.

Çıktıda <kbd>/dev/sda4</kbd> ayarladığımız gibi yani 1GB olarak gözüküyor.

**w :** değişiklikleri kaydedip çıkar.

Gerekli ayarlamaları ve işlemleri gerçekleştirdikten sonra `fdisk` aracını kaydederek kapatmak istersek `w` parametresini kullanmamız yeterli.

![enter image description here](https://i.hizliresim.com/Z9Lj90.png)

**q :** çıkış yapar

`q` parametresi direk olarak yapılan değişiklikleri kaydetmeden `fdisk` aracı konsolundan çıkış yapar.

![enter image description here](https://i.hizliresim.com/Vrl8rR.gif)

cfdisk
-
`fdisk` aracının görsel arayüze sahip versiyonudur. Açmak için `cfdisk` komutu yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/Z9LRB0.png)

Ayrıca benden bir tavsiye, `fdisk`'in kullanımı `cfdisk`'e oranla biraz zordur, dolayısıyla kolayca hata yapabilir ve istenmeyen durumlarla karşı karşıya kalabilirsiniz. Etkileşimli bir arayüzü olan `cfdisk`'in kullanımı daha kolay olduğundan hata yapmak daha zordur. Hele birde Linux'unuzu Türkçe kullanıyorsanız, `cfdisk`'in de Türkçe arayüze sahip olmasından dolayı çok rahat şekilde işlemlerinizi gerçekleştirebilirsiniz.
Kullanımı oldukça kolay olduğundan detaylı anlatımda bulunmuyorum. Çok kolay şekile kendiniz keşfedebilirsiniz.

badblocks
-
`badblocks` kısaca, bir aygıtın bozuk bloklarını bulmak için tarama işlemi gerçekleştirme görevindedir.

Sırasıyla kullanım parametrelerine göz atalım:

**b :** blok uzunluğu bayt cinsinden gösterir.(aşağıdaki kullanımda yer alan `s` ve `v` parametreleri ileride açıklanmıştır)

![enter image description here](https://i.hizliresim.com/YgvayE.png)

**c :** bir seferde sınanacak blok sayısı belirtilir ve bu sayı öntanımlı olarak tek seferde 16 blok okuyacak şekildedir. Bu sayının arttırılması bu işlemin verimini yani hatalı blokların bulunma ihtimalini artırır ancak arttırıldığı sayıya bağlı olarak bellek kullanımı da artacağı için bu sayının yüksek tutulması durumunda sistem "tamponları ayırmada bellek yetersizliği" hatasını verecek ve işlemi sonlandıracaktır. Tersi durumda yani bu sayının çok düşük tutulması da hatalı blokların gizli kalmasına neden olarak yapılan işin verimini düşürecektir. Yani dengeli kullanım çok önemlidir.

![enter image description here](https://i.hizliresim.com/8Yl3OW.png)

**f :** dosya sisteminin zarar görüp sistemin çökebileceği durumlarda `badblocks` tarama yapmayı reddeder. Ancak siz çoğu durumda önerilmese de yinede tarama yapmaya zorlamak isterseniz `f` parametresini kullanabilirsiniz.

![enter image description here](https://i.hizliresim.com/D7lr1m.png)

**p :** diskin kaç defa taranacağını belirtir öntanımlı olarak bu değer sıfırdır yani ekstra değer belirtilmezse disk yalnızca 1 kez taranır.

![enter image description here](https://i.hizliresim.com/m2GabZ.png)

**s :** taranan blokların numaralarını çıktı olarak vererek sürecin gelişimini gösterir.

![enter image description here](https://i.hizliresim.com/NZ5dXL.gif)

**v :** süreçle ilgili ayrıntılı bilgi verir.

![enter image description here](https://i.hizliresim.com/azoavg.gif)

Bu parametreler dışında da başka parametreler mecvut konsola `man badblocks` yazarsanız zaten diğer parametreler hakkında da kısaca bilgi sahibi olabilirsiniz.

Neticede `badblocks` komutu ve parametreleri yardımı ile hatalı blok tespiti yapabiliyoruz. Şimdi de bu hatalı blokları düzeltme kısmına gelelim.


fsck
-
Komutun işlevi diskteki hatalı blokları düzeltmeye çalışmaktır. Aslında bu işlem sistemimizi her açışımızda otomatik olarak gerçekleşir. Biz de şimdi örnek olması açısında USB belleği onarmayı deneyelim.

USB belleğimizin disk adını öğrenmek için sistemimizdeki diskleri `fdisk -l` komutu ile listeleyelim.

![enter image description here](https://i.hizliresim.com/oOAlWo.png)

Çıktının alt kısımında yer alan <kbd>/dev/sdb1</kbd> USB belleğimizin diskteki adı. Şimdi belleğimizin adını öğrendiğimize göre onarma işlemini deneyebiliriz. Bunun için komut satırına `fsck -p /dev/sdb1` komutunu giriyoruz.

![enter image description here](https://i.hizliresim.com/lOkRGl.png)

Ve USB diskteki hatalı bloklar düzeltilerek işlemimiz başarılı bir şekilde gerçekleşmiş oldu.

df Komutu
-
`df` komutu bizlere disklerin; dosya sistemini, boyutunu, doluluk oranını, bağlandığı yeri(mount) gibi bilgileri kısa bir liste halinde verir. Komut ile birlikte `h` parametresini kullanırsak hakkındaki geniş bilgi içeriği bizlere sunulur. Çıktılar aşağıdaki gibidir.

![enter image description here](https://i.hizliresim.com/VrlRnq.png)

Diskler hakkında genel bilgi edinmek için sık kullanılan bir komuttur. Ayrıca komutla birlikte kullanacağımız `m` parametresi çıktıları MB cinsinden verirken, `k` parametresi ile kullanımlarda çıktılar KB cinsinden olacaktır. Bunlar haricinde daha fazla detay almak için man sayfasına bakabilirsiniz.

![enter image description here](https://i.hizliresim.com/nOAo61.png)


umount (Diski Ayırmak)
-

Diski ayırmak gibi bir başlık aklınızda diski bölümlemek gibi bir anlam ifade etmiş olabilir. Ancak burdaki ayırmadan kasıt diskin bağlantısının sistemden koparılması. Yani şöyleki komutumuz daha önce muhtemelen kullanmış olduğunuz, diskin üzerine sağ tıklayarak "Diski Çıkar" işlemi ile aynı görevdedir. Hatta bu durumu hemen teyit etmek için USB diskimizi `umount` komutu ile sistemden ayıralım.

Bu işlem için öncelikle diskimiz hakkında genel bilgi sahibi olmak adına konsola `df -h` komutunu verelim.

![enter image description here](https://i.hizliresim.com/VrlRnq.png)

USB diskimin adının <kbd>/dev/sdb1</kbd> ve diskin sisteme bağlandığı konumun da <kbd>/media/root/GPARTED-LIV</kbd> dizini olduğunu öğrenmiş oldum. Artık gerekli bilgileri öğrendiğimize göre diski sistemden çıkarmak için konsola `umount /dev/sdb1` şeklinde komut verebiliriz.

![enter image description here](https://i.hizliresim.com/vjg72O.png)

Diski çıkarma işlemi sonrasında bu işlemi teyit etmek için birde `df -h` komutunu kullandık. Sonuçta diskimiz sistemden bağını koparmış oldu.


mount (Diski Bağlamak)
-

Sistemden ayırdığımız diski tekrar bağlamak için `mount` komutunu kullanırız. Kullanım şekli `mount -t dosya_sistemi aygıt_adı bağlanacak_konum` şeklindedir.

Diski sisteme bağlamadan önce yapmamız gereken şey diskin bağlanacağı konumu oluşturmaktır. Bunun için ben masaüstüne `mkdir USB` komutu ile <kbd>USB</kbd> adında bir klasör oluşturdum.

USB nin açılacağı hedef klasör oluştuğuna göre artık USB diskimizi buraya bağlayabiliriz. Bunun için konsola `mount /dev/sdb1 /Desktop/USB` komutunu veriyorum ve daha sonra diskin durumunu `df- h` komutu ile sorguluyorum.

![enter image description here](https://i.hizliresim.com/1JY0W1.png)

Görüldüğü gibi USB disk <kbd>Desktop/USB</kbd> konumuna bağlanmış bulunuyor.


----------


Çalışma Seviyeleri(Runlevels)
=
Sistem açıldığında hangi çalışma seviyesindeyse o seviyeye göre belirlenmiş olan hizmetler başlatılır. İşte bu olaya da Runlevels(çalışma seviyeleri)deniyor. Linux sisteminde 7 farklı seviye bulunuyor.

Seviyeler ve ifade ettikleri aşağıdaki tabloda verilmiştir.

<table class="table table-bordered table-striped">  <thead> <tr> <th>Runlevel</th> <th>Çalışma Modu</th> <th>İşlevler</th> </tr></thead> <tbody> <tr> <th scope="row">0</th> <td>Halt</td><td>Kapatma işleminin başladığı seviye.</td></tr><tr> <th scope="row">1</th> <td>Tek Kullanılıcı</td><td>Ağ servisleri olmadan sistem bakımı için kullanılan seviye.</td></tr><tr> <th scope="row">2</th> <td>Ağ Desteği Olmadan Çok Kullanıcılı</td><td>Ağ desteği olmadan normal kullanım seviyesi.</td></tr><tr> <th scope="row">3</th> <td>Ağ Destekli Çok Kullanıcılı</td><td>Ağ destekli normal kullanım seviyesi.</td></tr><tr> <th scope="row">4</th> <td>Tanımsız</td><td>Kullanılmıyor ancak kullanıcı tarafından tanımlanabilir durumdaki seviye.</td></tr><tr> <th scope="row">5</th> <td>Grafiksel Kullanıcı Arayüzü</td><td>Grafiksel arayüzün çalıştığı seviye. Hemen her linux dağıtımında bu seviye varsayılan olarak başlatılır.</td></tr><tr> <th scope="row">6</th> <td>Yeniden Başlatma(Reboot)</td><td>Sistemin yeniden başlatıldığı seviye.</td></tr></tbody> </table>  
Yetki kalıplarının sayısal karşılıkları.

O anda hangi seviyede çalıştığımızı öğrenmek istersek komut satırına `runlevel` komutunu vermemiz yeterli.

![enter image description here](https://i.hizliresim.com/y0nmA7.png)

Çıktıda çalışma seviyem 5 olarak çıktı. Bunun sebebi de daha önce de sölediğimiz gibi linux sistemi varsayılan olarak 5 seviyede başlatıyor. Eğer çalışma seviyesi değiştirmek istersek bunu `init çalışma_seviyesi` şeklinde yapabiliriz.

Bu şekilde sistemi yeniden başlatana kadar seçtiğimiz çalışma seviyesinde devam edebiliriz. Ancak dediğim gibi sistemi yeniden başlattığınızda sistem varsayılan olarak 5. seviyede başlayacaktır.

Ayrıca yeri gelmişken sistemi kapatmak istersek bunu hiç bir hizmetin çalışmadığını 0. runlevel ile `init 0` komutunu vererek yapabiliriz.

Ayrıca kapatma işlemi için;

`shutdown -h now` beklemeden direk sistemi kapatacaktır.

`shutdown -h now+5` 5 dakika sonra sistemi kapatacaktır.

`halt` sisteminizi doğrudan kapatacaktır(halt kavramının 0.seviyede hiç bir servisin çalışmadığı durumu temsil ettiğini söylemiştik).

Eğer sistemi yeniden başlatmak istersek `init 6` veya `reboot` komutunu kullanabiliriz.

service
-
Şimdi ise sistemdeki servisleri açıp-kapatmayı ve bu servislerin durumunu sorgulamayı görelim. Komutumuzun işlevlerinin kullanım kalıpları aşağıdakiler gibidir.

Örnek kullanımları ssh servisi üzerinden gösterelim.

Servisimizin durumunu sorgulamak için komut satırımıza `service ssh status` yazıyoruz.

![enter image description here](https://i.hizliresim.com/6J6Ql3.png)

Komut satırı çıktı olarak bize ssh servisinin kapalı olduğunu bildirdi.

Şimdi servisimizi başlatmak üzere komut satırına `service ssh start` komutumuzu veriyoruz.

![enter image description here](https://i.hizliresim.com/W7r46N.png)

Servisimizi başlattıktan sonra durumu kontrol etmek için tekrar `service ssh status` komutumuzu verdik ve görüldüğü gibi ssh servisimiz artık çalışır durumda.

Şimdi ise çalışan servisimizi kapatmak için komut satırına `service ssh stop` komutumuzu veriyoruz.

![enter image description here](https://i.hizliresim.com/3ERN1r.png)

Çıktıda da görüldüğü gibi ssh servisimiz kapatılmış oldu. Bunu da `service ssh status` komutu ile teyit etmiş olduk.

Komutumuzun diğer bir kullanım şeklide de servisi yeniden başlatmak. Bunun için `service ssh restart` komutumuzu kullanıyoruz.

![enter image description here](https://i.hizliresim.com/Rn6Xba.png)

Servisimizin durumunu `service ssh status` komutu ile kontrol ettik ve servisimizin yeniden başladığını görmüş olduk.

Son olarak ise sistemde bulunan tüm servislerin sıralanmasını sağlayan `service --status-all` komutunu görelim.

![enter image description here](https://i.hizliresim.com/p6Yjjq.gif)

Çıktıdaki servislerin sol tarafında yer alan <kbd>[ - ] </kbd>işareti servisin çalışmadığını, <kbd>[ + ]</kbd> işareti servisin çalıştığını ve <kbd>[ ? ]</kbd> işareti ise servisin durumunun belirsiz olduğunu ifade ediyor.


----------



Sembolik Link Ve Katı Link
=

Linux sistemlerinde sembolik ve katı olmak üzere iki çeşit bağlantı türü vardır. Bunları sırası ile açıklayacak olursak;

Sembolik link ile oluşturulmuş bağlantılar dosyaların kısayolu görevini görür ve görevi yalnızca ilgili dosyaya yönlendirme yapmaktır.

Katı link ile oluşturulmuş bağlatılarda ise dosyanın kopyasıdır. Orijinal dosya silinse bile katı link içeriği korumaya devam eder.

Bağlantı türlerinin kullanımlarına geçmeden önce ufak bir bilgi daha öğrenmeliyiz o da inode kavramı.

inode(düğüm)
-
Inode(düğüm), dosyanın sahibi, oluşturulma tarihi, boyutu, tipi, erişim hakları, en son erişim tarihi ve en son değişikliklerin yapıldığı tarih gibi birçok meta verileri içeren yapıdır. Yani biz herhangi bir dosya oluşturduğumuzda disk üzerinde 1 inode yer kaplamaktadır. Bununla ilgili olarak inode tablosunu görmek için konsola `df -i` komutumuzu verelim.

![enter image description here](https://i.hizliresim.com/NZbDWa.png)

Hemen çıkıtları ele alarak açıklamamıza devam edelim.

Örneğin <kbd>/dev/sda1</kbd> disk alanını ele alırsak toplam 6348800 adet inode numarası alabilir yani sınırı bu kadar.

Kullanılan 391980 inode numarasından toplam kullanılabilir olanı çıkarırsak (6348800-391980=5956820) geriye kullanılabilir 5956820 inode numarası kalmış oluyor.

Bunun anlamı her bir dosya 1 inode yer kapladığı için <kbd>/dev/sda1</kbd> dosya sisteminde 5956820 adet daha dosya oluşturulabilecek alan mevcut.

Her bir inode(düğüm) numarasının benzersiz olduğunu söylemiştik. Bu durumu teyit etmek için bulunduğumuz konumdaki dosyaların inode numaralarını görebilmek adına komut satırımıza `ls -li` komutumuzu veriyoruz.

![enter image description here](https://i.hizliresim.com/azBY04.png)

Çıktıda yer alan soldaki numaralar ilgili dosyanın inode numarasını temsil ediyor.

Konumuza sembolik link oluşturma ile devam edelim.

Sembolik Link
-

Sembolik link oluşturmak için `ln -s` komutu kullanılır. Komutun kullanım örneği ile devam edelim.

Örnek bir dosya oluşturarak sembolik link komutu yardımı ile dosyamıza kısayol oluşturalım.

Music dosya konumundayken `touch` komutu yardımı ile <kbd>klasik<kbd> isimli bir dosya oluşturduk.

![enter image description here](https://i.hizliresim.com/Yg56W2.png)

Oluşturduğumuz klasik isimli dosyanın kısayolunu, komutumuzu `ln -s dosya_adı kısayol_adı` şeklinde kullanarak oluşturduk.

![enter image description here](https://i.hizliresim.com/Z913d3.png)

Son olarak `ls -i` komutunu vererek orijinal dosyanın ve sembolik link yardımı ile oluşturulan kısayol dosyasının inode değerlerini karşılaştırdık. Çıktıda da görüldüğü üzere değerler farklı olarak karşımıza çıkmış oldu.

Ayrıca dosyaları `file` isimli bir komut yardımı ile inceleyerek de bilgi alabiliriz.

![enter image description here](https://i.hizliresim.com/8YEz2n.png)

Sembolik link komutu ile oluşturduğumuz dosyanın kısayol olduğunu çıktıda görebiliyoruz. Ancak son olarak kısayol dosyamızın çalışma durumunu da test edelim.

Bunun için ilk başta dosyamızın içeriğini okuyalım daha sonra orijinal dosyamıza yazı ekleyelim ve kısayoldaki değişimleri gözlemleyelim.

 Orijinal dosyamın içerisine "Dosya İçeriğinin İlk Sayfası" şeklinde bir yazı ekledim. Biz orijinal dosyada yer alan bu yazıyı silip yeni bir ifade yazdıktan sonra kısayoldaki değişimi gözlemleyeceğiz.

![enter image description here](https://i.hizliresim.com/D7kD6o.png)

Eğer orijinal dosyayı silersek kısayol dosyası da açılmayacak ve bizlere hata mesajı bildirilecektir.

![enter image description here](https://i.hizliresim.com/m28o78.png)

Görüldüğü gibi kısayol dosyası orijinal kaynağı silindiği için okunamadı.

Ayrıca ilk `ls -li` çıktısında kısayol dosyasının sol tarafında yer alan <kbd>lrwxrwxrwx</kbd> ifadesindeki `l` harfi, dosyanın kısayol olduğunu ve `->` işareti ise hangi dosyanın kısayolu olduğunu işaret ediyor.


Katı Link
-
Sıra geldi katı link bağlatısının kullanımına. Katı link bağlantısı için `ln` komutu kullanılıyor. Örnek üzerinden ilerleyelim.

Örnek olması açısından <kbd>Music</kbd> klasörü altında <kbd>caz </kbd>adında bir dosya oluşturuyorum. Daha sonra oluşturduğum <kbd>caz </kbd> isimli klasörün katı linkini `ln caz caz_kati` komutu ile oluşturuyorum.

![enter image description here](https://i.hizliresim.com/lOzq3r.png)

Çıktıda dikkat edilmesi gereken nokta orijinal "caz" dosyası ile katı bağlantı "caz" dosyasının inode değerlerinin aynı olmasıdır. Bu da demek oluyor ki her iki dosya da her yönüyle birbirlerinin aynı durumda.

Ayrıca orijinal ya da katı link ile oluşturulmuş dosyaların birinde yapacağımız değişiklik tıpkı sembolik linkte olduğu gibi diğer dosyada da geçerli olacaktır. Yani bu orijinal dosya ile katı link dosyası halihazırda bağlantılı dosyalar.

![enter image description here](https://i.hizliresim.com/EPED6z.png)

Hemen daha önce yaptığımız gibi `file` komutu ile orijinal dosya ve link ile oluşturulmuş dosyalarımızı karşılaştıralım.

![enter image description here](https://i.hizliresim.com/2JQaN2.png)

Komutun sonucunda her ikisininde ayrı ayrı dosyalar olduğunu görmüş olduk. Bu da demek oluyor ki biz eğer orijinal dosyayı silersek sembolik linkte olduğu gibi link ile oluşturulmuş dosya kullanılmaz hale gelmeyecektir. Bunu da hemen test edelim.

![enter image description here](https://i.hizliresim.com/jyY61L.png)

Gördüğünüz gibi orijinal dosyayı silmeme rağmen katı link ile oluşturmuş olduğum dosya hala okunabilir durumda.


----------


Kurma-Kaldırma-Güncelleme İşlemleri
=

Linux kullanacaksak mutlaka bilmemiz gerekenler arasında sistemi güncelleme, program kurma ve kaldırma gibi işlemleri yerine getirmek var. Bu işlemleri nasıl yetine getirebileceğimizi bu konunun devamında öğrenicez. İlk olarak sistemi güncelleme işlemi yapalım.

Sistemi Güncelleme
-
Linux sistemleri kullanıcının ihtiyacı olduğunda programa kolayca ulaşabilmesini sağlayacak program paketlerini içinde bulunduran kendi paket depolarına(repository) sahiptirler. Farklı linux dağıtımları için bu paketler de farklılık gösterebiliyor. Bu yüzden farklı linux dağıtımlarının da kendi paketleri üzerinde işlem yapabilmek için farklı komutları vardır.

Dağıtımlar ve kullanılan paketlere göre komutları aşağıdaki tabloda verilmiştir.

<table class="table"> <thead> <tr> <th>Dağıtım</th> <th>Paketler</th> <th>Komutlar</th> </tr></thead> <tbody> <tr> <th scope="row">Debian</th> <td>.deb</td><td><code>apt</code> , <code>apt-cache</code> , <code>apt-get</code> , <code>dpkg</code></td></tr><tr> <th scope="row">Ubuntu</th> <td>.deb</td><td><code>apt</code> , <code>apt-cache</code> , <code>apt-get</code> , <code>dpkg</code></td></tr><tr> <th scope="row">CentOs</th> <td>.rpm</td><td><code>yum</code></td></tr><tr> <th scope="row">Fedora</th> <td>.rpm</td><td><code>dnf</code></td></tr><tr> <th scope="row">FreeBSD</th> <td>.txz</td><td><code>make</code> , <code>pkg</code></td></tr></tbody> </table>

Debian paketlerinin <kbd>.deb</kbd> uzantılı olduğunu yukarıdaki tabloda gördük. Kullandığımız dağıtım olan Kali'de debian tabanlı olduğu için anlatıma bu doğrultuda devam edeceğiz.

    apt-get update

Paket listesini(/etc/apt/sources.list) günceller.

    apt-get upgrade

Kurulu olan paketleri <kbd>/etc/apt/sources.list</kbd> dosyasındaki paket listesine bakarak en son versiyonlarına günceller.

    apt-get dist-upgrade

Gerekli gördüğü paketleri siler veya günceller.

    apt-get clean

Kurulu olan tüm paketleri siler.

    -y

<kbd>-y</kbd> parametresinin görevi çıkacak olan onay sorularına evet(yes) cevabını otomatik olarak vermektir. Bu sayede gerekli işlemler de otomatik olarak zaman kaybetmeden yapılmış olur.

Yani bir bütün olarak eğer sistemimizi güncellemek istersek ilk başta <kbd>/etc/apt/sources.list</kbd> konumunda yer alan <kbd>soruces.list</kbd> dosyasına kullanıdığımız versiyona uygun depoları eklemeliyiz.

Bunun için [buradaki kaynaktan](https://docs.kali.org/general-use/kali-linux-sources-list-repositories) kullandığınız versiyona uygun olan repository kopyalayarak <kbd>soruces.list</kbd> dosyasına eklememiz gerekiyor. Ben kali 2016.1 sonrası versiyonunu kullandığım için aşağıdaki repoları ekliyorum.

![enter image description here](https://i.hizliresim.com/2JQ02O.png)

Ancak dediğim gibi sizler kullandığınız versiyona uygun olan repoları seçmelisiniz.

Repoları `nano -w /etc/apt/sources.list` komutu ile açarak <kbd>soruces.list</kbd> dosyasına ekledim.

Sıra gelidi güncelleme işlemine, bunun için `apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y` komut bütününü kullanabiliriz.

Güncelleme işlemi boyunca kullandığımız `-y` parametresi sayesinde herhangi bir soru sorulmadan bütün işlemler otomatik olarak tamamlanacak ve güncelleme işlemi tamamlanacaktır.

Program Kurmak
-
Linux'ta program kurmak için birden fazla yöntem bulunuyor. Bunlardan bir tanesi kullandığımız dağıtıma uygun programı, **paket yönetim sistemi** ile kurmaktır. Diğer bir yol, programı **kaynak koddan derleyerek** kurmaktır. Diğer seçenek ise dağıtımın kullandığı **depolardan(repository)** otomatik kurulum yapmaktır.

Depodan Kurulum
-
Depoda bulunan programların kurulumlarını yaparken `apt-get install program_adı` komut bütünü kullanılıyor.

Örnek olması açısından filezilla isimli bir programın depodan kurulumunu yapmak için konsola `apt-get install filezilla` komutunu girdim.

![enter image description here](https://i.hizliresim.com/1JnAYb.gif)

Ve program kurulmuş oldu konsola `filezilla` yazarak da bu durumu teyit ettim.

Paket Yönetim Sistemi İle Kurulum
-
Bu işlem için kullandığımız dağıtıma uygun derleyiciyi kullanmalıyız. Daha önce Kali'nin <kbd>.deb</kbd> uzantılı paketleme sistemi olduğunu öğrenmiştik. Bu yüzden biz <kbd>.deb</kbd> uzantılı kurulum paketlerini açmak için `dpkg` komutunu kullanıyoruz. Sanırım kodun kısaltmasının nereden geldiğini bilirsek daha kolay akılda kalabilir. Kodun kısaltması "debian package(debian paketi)" kısaltmasından gelmektedir. Ayrıca `dpkg` komutunu kullanmada yardımcı bir paket yöneticisi programı(synaptic) kullanarak da kurulum işlemlerini yerine getirebiliriz. Konumuza ilk olarak `dpkg` komutu ve kullanımı ile devam edelim.

Şimdi komutun kullanımına geçelim.

Örnek olması açısından ben "master pdf" adında bir programın kurulumunu ele aldım. Bunun için öncelikle programın <kbd>.deb</kbd> uzantılı dosyasını sitesinden indirdim.

Şimdi programı kurmak için `dpkg -i paket_adı.deb` şeklinde komutumu giriyorum.

![enter image description here](https://i.hizliresim.com/XPYzvo.gif)

Ve progamım kurulmuş oldu.

Kurduğumuz programı kaldırmak istersek komutumuzu `dpkg -r program_adı` şeklinde yani `-r` parametresini ekleyerek kullanıyoruz.

![enter image description here](https://i.hizliresim.com/y0nOM0.gif)

Program otomatik olarak kaldırılmış oldu. Ancak <kbd>/etc</kbd> dizini altındaki konfigürasyon dosyaları silinmedi. Eğer bu dosyaları da kaldırmak istersek `-P` parametresini kullanabiliriz.

![enter image description here](https://i.hizliresim.com/Rn65YG.gif)

Bu sayede programa ait konfigürasyon dosyaları da tamamen kaldırılmış oldu.

Konfigürasyondan bahsetmişken aklınızda bulunsun eğer yüklediğimiz paketin konfigürasyon ayarlarını tekrar yapılandırmamız gerekirse `dpkg-reconfigure paket_adı` şeklinde komutumuzu kullanabiliriz.

Kurulu olan tüm paketler hakkında bilgi almak için `-l` parametresi kullanılabilir.(Çıktı uzun olduğundan kısa kesilmiştir.)

![enter image description here](https://i.hizliresim.com/5DROkM.png)

Çıktıda yer alan paketlerin sol tarafındaki ifadelerin anlamı:

**ii :** paket normal olarak sisteme yüklendi.

**rc :** paket yüklendikten sonra silindi ancak konfigürasyon dosyaları halen mevcut.

**pn :** paket konfigürasyon dosyaları ile birlikte sistemden kaldırıldı.

Kurulu paketin durumunu öğrenmek için `-s` parametresini kullanabiliriz. Ben örnek olması açısında leafpad programı hakkında bilgi almak için komut satırına `dpkg -s leafpad` komutunu giriyorum.


Kurulu paketin içeriğini öğrenmek istersek `-L` parametresini kullanırız.

![enter image description here](https://i.hizliresim.com/lOzg7l.png)

Eğer indirmiş olduğumuz <kbd>.deb</kbd> uzantılı dosyanın içeriğini henüz kurmadan görmek istersek `-c` parametresini kullanabiliriz.

![enter image description here](https://i.hizliresim.com/Z91yJA.png)

Sistemde kurulmuş ve kaldırılmış tüm paketleri görmek istersek `dpkg --get-selections` komutunu kullanabiliriz.

![enter image description here](https://i.hizliresim.com/1JnArD.png)

Bu paket listesini daha sonra kullanmak üzere bir dosya içerisine yedeklemek istersek komutumuzu `dpkg --get-selections >dosya_adı.txt` şeklinde kullanmamız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/4aRJ8Q.png)

Yedeklediğimiz bu program listeleri sayesinde başka bir sisteme aynı paketleri tek seferde yüklememiz mümkün. Bunun için komutlar aşağıdaki şekildedir.


    dpkg --set-selections > yedek_dosya_adı.txt
    
Daha sonra tanıma işlemi bittikten sonra eksik olanların yüklenmesi için konsola aşağıdaki komutu giriyoruz.

    apt-get deselect-upgrade
    
Ayrıca bu işlemin uzun süreceğini unutmayın.

Şimdi sıra geldi ikinci yol olan yardımcı paket yöneticisi programı aracılığı ile program kurma-kaldırma-güncelleme işlemlerin yapmaya. Bunun için ilk olarak paket yönetim programı olan **synaptic** programını kurmamız gerek. Komut satırına `apt-get install synaptic` yazarak yardımcı programı indiriyoruz.

![enter image description here](https://i.hizliresim.com/m2895V.gif)

Evet "<kbd>y</kbd>" diyerek kuruluma onay veriyoruz ve programımız kurulmuş oluyor. Programı açmak için komut satırına `synaptic` komutunu vermemiz yeterli. Bu program sayesinde program kurup kaldırabilir ve programlar için diğer gerekli işlemleri yerine getirebiliriz. Programın kullanımı oldukça kolay olduğundan keşfini sizlere bırakarak anlatıma devam ediyorum.


Kaynak Koddan Derleyerek Kurulum
-

Linux'a uyumlu sürümü bulunan açık kaynak kodlu yazılımların kaynak kod paketleri bu yazılımların internet sitelerinde, genellikle <kbd>tar.gz </kbd> biçiminde arşivlenmiş olarak indirilmeye sunulurlar. Bu arşivlenmiş olan kaynak kod paketi daha önce gördüğümüz <kbd>.deb</kbd> uzantılı paketlerin aksine ham şekilde yani derlenmemiş kuruluma hazır olmayan şekilde gelirler. Bu derleme işlemini bizim yaparak kurulumu gerçekleştirmemiz gerekir. Ancak her kurulum aynı olmayabilir. <kbd>tar.gz</kbd> veya <kbd>tar.bz2</kbd> benzeri uzantılı paketlerde genellikle programın nasıl kurulacağına dair "install", "readme", "configure" ve benzeri isimlerde yönergeler bulunur. Bu dosyalar okunarak yükleme işlemi gerçekleştirilmelidir. Ancak biz şimdi burada genel kurulum hakkında bilgi edinelim. Kaynak koddan derleyerek kurulum işleme genel olarak aşağıdaki şekildedir:

İndirdiğimiz program arşivini klasöre çıkartırız.

Programı derlemeden önce gerekli kütüphaneler ve bağımlılıkları kontrol ediyoruz.

Eksik çıkarsa bunları kurmamız gerekicek.

Make aşaması için derleme yapacak paketleri `apt-get install build-essential` komutu ile kuruyoruz.

`make` diyerek programımızı derlemiş oluyoruz.

Son olarak `make install` komutu ile programı sistemimize kuruyoruz.


----------


Joker Karakterler(wildcards)
=

Bu kavram sizlere kesinlikle yabancı değil daha önceki kısımlarda defaatle kullanmış ve joker(wildcard) karakterlerinin az da olsa işlevini görmüştük. Bu kısımda da bu konu hakkında bilgi sahibi olacağız.

joker (wildcard)
-
Linux kullanımında işimizi konsoldan yürüteceğimiz zaman bir komutun tek seferde birden fazla nesneyi etkilemesini yani kapsamasını isteyebiliriz. Örneğin bir dizindeki dosyaların tamamını silmek istiyoruz bu iş için aşağıdaki gibi tüm dosya adlarını komut satırına yazmak çok zahmetli ve gereksiz olacaktır.

![enter image description here](https://i.hizliresim.com/bBgYg8.png)

Yukarıdaki kullanımın yerine joker karakter(wildcard)desteğini kullanmak bizlere çok fazla avantaj sağlar. Ayrıca gördüğünüzde şaşırmayın, joker karakterler(wildcards) "globbing" olarak da adlandırılmakatadır.

Bahsi geçen joker karakterler ve kullanım alanları aşağıdaki gibidir;

*** :** Anlamı `*` olan yere herhangi bir şey gelebileceğidir.

Örneğin "dosya" ismiyle başlayan tüm belgeleri tek seferde silmek için komutu `rm  dosya*`şeklinde kullanabilirim.

![enter image description here](https://i.hizliresim.com/dOW0W4.png)

Ayrıca bu yıldız (asterix)<kbd>*</kbd> işaretinin farklı kullanım şekilleri de var. Farklı kullanımların açıklaması ile devam edelim.

Herhangi bir komutu, örneğin listeleme işlevinde olan `ls` komutunu `ls dosya*` şeklinde kullanırsak komut yıldız (asterix) `*` işaretinden önce yazmış olduğumuz "dosya" ismi ile başlayanları kapsar.

![enter image description here](https://i.hizliresim.com/5Do2oR.png)

Aynı şekilde yıldız (asterix) * işaretinden sonra bir ifade belirtirsek de komut o ifade ile bitenleri kapsayacak şekilde çalışır.

![enter image description here](https://i.hizliresim.com/A10g00.png)

**? :** Herhangi bir tek karakterle eşleşir

Karakterin kullanımına örnek olarak. Diyelim ki dizin içerisinde hem "index_page" hem de "index-page" şeklinde isimlere sahip dosyalarınız var. Yani başlangıç ve bitiş isimleri aynı ancak aradaki işaretler farklı. İşte böyle bir durumda hem<kbd> _ </kbd> işaretini hem de <kbd> - </kbd> işaretini karşılayacak olan soru işareti <kbd>?</kbd> joker karakterini kullanabiliriz.

![enter image description here](https://i.hizliresim.com/0E4L48.png)

Çıktılarda da görüldüğü gibi <kbd>?</kbd> karakteri dosya isimlerinin arasında yer alan <kbd>-</kbd> ve <kbd>_</kbd> işaretini de karşılayarak `ls -l index?page` şeklindeki komut ile çıktıya her ikisini de bastı.

**[] :** <kbd>?</kbd> karakterine benzer olmakla birlikte daha çok hedefe odaklı çalışır.

<kbd>[]</kbd> karakterinin kullanımı, iki köşeli parantez arasına ulaşmak istediğiniz hedefteki ayırıcı karakterli yazmak üzerinedir.

Örnek olaması açısında "dosya" isimli belgelerden sadece sonunda 2,3,4 olanları kapsayacak bir komut olması için konsola `ls -l [234]` komutunu verdim.

![enter image description here](https://i.hizliresim.com/4aZ8ZL.png)

Bir örnek daha verelim.

[Dd]osya[Aa]dı şeklinde bir belirtme; DosyaAdı, Dosyaadı, dosyaAdı, dosyaadı şeklindeki bütün isimleri kapsayacaktır. Bu sayede ilgili dosya için küçük büyük harf kombinasyonu yakalanmış olur.

Ayrıca kullanım şekillerine çok fazla örnek verilebilir ancak burada birkaç örnek daha vererek keşfi size bırakıyorum.

Burada belirtilen x y z temsili değerleri ifade etmektedir !

**[0-9] :** 0'dan 9'a kadar olan rakamları kapsar.

![enter image description here](https://i.hizliresim.com/JQ767Y.png)

**[x,y,z] :** belirtilen değerlerle eşleşenleri basar.

![enter image description here](https://i.hizliresim.com/Oo3B3Z.png)

**[x-z] :** x ile z değerleri arasındaki karakterlerle eşleşir.

![enter image description here](https://i.hizliresim.com/z02Y2Y.png)

**[xyz] :** belirtilen değerlerle eşleşenleri basar.

![enter image description here](https://i.hizliresim.com/G9p5p2.png)

**[!xyz] :** Belirtilen karakterlerin dışındakileri ile eşlenir.

![enter image description here](https://i.hizliresim.com/LbYE2o.png)

**[!x-z] :** Verilen x ile z değeri arasındakiler haricindeki karakterler ile eşlenir.

![enter image description here](https://i.hizliresim.com/rOmRjm.png)


----------


Ağ(Network) Komutları
=
Ağ ve komutları başlı başına bir kitap konusu o yüzden burada sıkça veya gerekli durumda işimize yarayacak belli başlı komutları ele alıcaz. Eğer detaylı bilgi edinmek istiyorsanız internet aracılığı ile network(ağ) hakkında bir çok güncel kaynağa ulaşabilirsiniz. Lafı daha fazla uzatmadan anlatıma `ifconfig` komutu ile başlayalım.

ifconfig
-

Sistemde bulunan ağ bağlantı ve IP yapılandırması ayarlarını inceleyip değiştirmemize olanak tanır.

Ağ bağlantı kartlarını listelemek için `ifconfig` komutu kullanılır.(Bu çıktıda ip, mac ve broadcats adresi gibi bilgiler yer alıyor.)

![enter image description here](https://i.hizliresim.com/6JZPVl.png)

Çıktıda yer alan eth0 ethernet kartımızı ifade ediyor. Başka ethernet kartları olması durumunda diğer kartlar da eth1 .. eth2 şeklinde belirtilir.

lo bilgisayarın kendisini yani localhost'u ifade ediyor.

wlan0 ise kablosuz ağ kartını ifade eder. Yine başka kartlar olması durumunda wlan1 .. wlan2 şeklide belirtilir.

Ayrıca bütün kart bilgilerini listelemek yerine teker teker de listelemek de mümkün bunun için komutumuzu `ifconfig kart_adı` şeklinde girmemiz yeterli.

Örneğin yalnızca kablosuz kart bilgilerini listelemek istersem `ifconfig wlan0` komutunu vermem yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/W7Vkv4.png)

Yukarıdaki çıktıda yer alan ayarlarda değişiklik yapmamız mümkün. Örneğin kablosuz ağ bağlantısının yerel ip adresini değiştirmek istersek komutumuzu `ifconfig wlan0 yeni_ip_adresi` şeklinde kullanabiliriz.

Ben kablosuz bağlantımın 192.168.1.9 olan adresi 192.168.1.10 olarak değiştirmek istiyorum bunun için `ifconfig wlan0 192.168.1.10` komutunu vermem yeterli.

Gelin bu durumu çıktıları karşılaştırarak test edelim.

![enter image description here](https://i.hizliresim.com/3E9LZ9.png)

Ve son duruma bakarak ip adresimizin istediğimiz şekilde değiştiğini görmüş olduk. Aynı şekilde ağ maskesini(netmask) ve broadcat adreslerini dilediğimiz gibi düzenleyebiliriz. Hatta bu işlemi hepsi birlikte olacak şekilde bile yapabiliriz. Bunun için komutumuzu `ifconfig wlan0 yeni_ip_adresi netmask yeni_ağ_maskesi broadcast yeni_broadcast_adresi`  şeklinde kullanmamız yeterli olacaktır.

Bu duruma bir örnek ile açıklayalım.
Değişiklik yapmak üzere konsola `ifconfig wlan0 192.168.1.15 netmask 255.255.255.255 broadcast 192.168.2.255` komutunu girerek bir önceki durumu ile karşılaştıralım.

![enter image description here](https://i.hizliresim.com/RnJkZY.png)

Çıktıları incelediğimizde istediğimiz doğrultuda değişikliklerin yapılmış olduğunu gördük.

`ifconfig` komutu kullanımı ile ilgili son olarak mevcut kartları açma ve kapatma işlemi görelim.

Örnek olarak kablosuz kartı ele alalım:

Kablosuz kartı kapatmak istersek `ifconfig wlan0 down` komutunu kullanırız.

Kapalı kablosuz kartı açmak istersek ise `ifconfig wlan0 up` komutunu kullanırız.

Ayrıca diğer kartlar için de aynı şekilde komutumuzu `ifconfig kart_adı down` ve `ifconfig kart_adı up` şeklinde kullanabiliriz.


ping
-
Hedef ile bizim sistemimiz arasında iletişimin sağlanıp sağlanmadığını kontrol etmeye yarar. Sonuç olarak hedef sunucunun çalışıp çalışmadığını veya aktarım hızının ne kadar hızlı olduğunu öğrenmemizi sağlar. Bir tür kontrol mekanizması da diyebiliriz. Komutun kullanımı `ping hedef_adresi` şeklindedir.

Örneğin biz www.google.com adresi ile aramızdaki iletişimin hızını sorgulayalım. Bunun için komut satırına `ping www.google.com` yazıyorum. Ancak burada önemli bir nokta var o da bu işlemin biz <kbd>Ctrl + C</kbd> tuş kombinasyonu ile durdurana kadar devam edecek olamasıdır. 

![enter image description here](https://i.hizliresim.com/p6Rz3o.png)

Eğer direk olarak sınırlama getirmek isterseniz komutu `ping -c 4 www.google.com` şeklinde kullanabilirsiniz. Bu sayede www.google.com adresine yalnızca 4 sorgu paketi gönderilir. Elbette buradaki sayı sizin belirlemeniz ile değişebilir.

![enter image description here](https://i.hizliresim.com/kOjBzJ.png)


route
-
Sistemimizde bulunan yönlendirmeleri görmek için kullanabiliriz. En temel kullanımı `route` şeklindedir.

![enter image description here](https://i.hizliresim.com/NZ5ABg.png)

Burada yer alan gateway(ağ geçidi adresi) yerel ağdan internet ağına geçerken kullanılan yönlendirme adresidir.



traceroute
-
Bir önceki kısımda `route` komutu ile gördüğümüz yerel ağda geçerli olan yönlendirme takibini, belirli bir hedef adrese yapabilmemize olanak sağlayan komut `traceroute` komutudur. Yani komutumuz belirli bir hedefe gönderilen paketin hangi host'lardan geçtiğini bizlere gösterir. Bir nevi izlediği yolu yani adımlarını takip etmemizi sağlar. Komutun kullanımı `traceroute hedef_adresi` şeklindedir. Bu sefer hedef adres olarak www.offensive-security.com adresini örnek verelim. Bunun için konsola `traceroute www.offensive-security.com` yazıyorum.

![enter image description here](https://i.hizliresim.com/azo3Q2.png)

Çıktı ile birlikte adresin yönlendirme rotasını görmüş olduk.

whois
-
Whois kavramını bilmeyenler için whois, genel olarak domain bilgilerini içeren bir mekanizmadır. Yani whois domain ne zaman kurulmuş, ne zamana kadar geçerli, kimin üzerine ve bunun gibi diğer tüm bilgileri tutar. Bizler de bu bilgileri konsol ekranından `whois hedef_adresi` şeklinde kullandığımız komut bütünü ile sorgulayabiliriz.

Whois sorgusuna örnek olarak yine offensive-security adresini hedef alalım.

![enter image description here](https://i.hizliresim.com/BLZPkV.png)


host
-
Hedef adres hakkında bilgi almanızı sağlar. Bu komutun alabildiği farklı parametreli bulunmaktadır ancak ben bu kısımda bunlara değinmeden yalnızca temel kullanımına örnek veriyorum. Kullanımı `host adres_adı` şeklindedir.

![enter image description here](https://i.hizliresim.com/YgvkLk.png)

Bu komut hakkında ufak bir araştırma ile çok fazla Türkçe de dahil olmak üzere kaynağa ulaşabilirsiniz.



dig
-

dig(domain information groper/domain bilgi çukuru) DNS kayıtlarına bakmak için kullamımı oldukça kolay olduğundan yaygın olarak kullanılmaktadır.

Bu komutumuz da parametreler alabilmektedir ancak ben burada sizlere yine temel işevinden bahsederek geriye kalan parametreli kullanımların araştırmasını sizlere bırakıyorum. DNS sorgulaması yapmak istediğimiz adresi konsoldan `dig hedef_adresi` şeklinde belirtiyoruz.

Örnek olması açısından ben tekrar offensive-security adresini hedef alıyorum.

![enter image description here](https://i.hizliresim.com/8YlZv1.png)


arp
-
IP-MAC Adresi eşleştirmelerinin tutulduğu tablolardır. Kullanımı `arp` şeklindedir.

![enter image description here](https://i.hizliresim.com/Md6pM9.png)


tcpdump
-
Sistemimizin yaptığı bağlantıları ve sistemimize yapılan bağlantıları anlık olarak görüntülememize olanak sağlar. Kullanımı `tcpdump` şeklindedir.

![enter image description here](https://i.hizliresim.com/QVRBdg.png)

Ayrıca adres çözümlemesi yapmadan direk olarak bağlantıları takip etmek istersek `tcpdump -n` komutunu kullanabiliriz.

![enter image description here](https://i.hizliresim.com/XPBkzD.png)


DNS Ayarları
-
Komut satırından DNS ayarlarımızı değiştirmek istersek DNS bilgilerinin tutulduğu <kbd>/etc/resolv.conf/</kbd> dosyasında değişiklik yapmamız gerekiyor. İşlemeleri adım adım açıklayarak ilerletiyorum.

İlk olarak DNS ayarlarının bulunduğu dosya içeriğine göz atıyorum. Çünkü daha sonra değişiklik yaptığımızda ilk hali ile kıyaslamamız gerekecek. Bu işlemi `cat` komutu yardımı ile gerçekleştireceğiz.

![enter image description here](https://i.hizliresim.com/bBlDoj.png)


Şimdi eski DNS(nameserver) yerine bizim eklemek istediğimiz adresleri `echo` komutu yardımı ile girelim.

![enter image description here](https://i.hizliresim.com/dOn3Vn.png)

Komutları kısaca açıklayacak olursak ilk olarak `echo "nameserver 8.8.8.8" > resolv.conf` komut bütününde `>` karakteri ile birlikte dosya içerisinde var olan ifadeleri sildik ve dosya içerisine `nameserver 8.8.8.8` ifadesini ekledik.

Daha sonra `echo "nameserver 8.8.4.4" >> resolv.conf` komut bütünü ile de daha önce eklediğimiz ifadeye ek olarak diğer bir DNS adresi olan 8.8.4.4 adresini `>>` karakteri yardımı ile ekledik.

Son olarak da eklediğimiz yeni DNS adreslerinin belgeye eklenme durumunu `cat /etc/resolv.conf` komutu ile teyit ettik.

Ayrıca yapılan ayarların kalıcı olmasını istiyorsak konsola `update-rc.d networking deffaults` komutunu girmemiz gerekiyor.


hosts Dosyası
-
Yerel bir alan adı sunucusu işlevindedir. Sistemde alan adı çözümlemesi yapılırken bu dosyaya bakılır. Dosyanın konumu <kbd>/etc/hosts</kbd> şeklindedir. Hemen dosya içeriğine `cat` komutu yardımı ile bir göz atalım.

![enter image description here](https://i.hizliresim.com/5D87Od.png)


----------


Vim Editörü
=

Vim Editörü Terminalden kullanılabilen ve komut alabilen yaygın kullanıma sahip bir editördür. Vim editörünün kullanımının yaygın olmasının nedeni çok hafif bir editör olmasından kaynaklanmaktadır. Uzaktan erişim durumunda bağlantı(ağ/network) üzerinde fazlaca yük bindirmeden kolayca efektif şekilde gerekli işlemeleri yerine getirir. Günümüzde daha yetenekli editörler de vardır ancak biraz eski alışkanlıklardan biraz da hafif şekilde çalışmasından dolayı hala tercih edilen bir editördür. Genelde öğrenmek isteyen kişilere ilk öğrenim aşamasında fazlaca karışık gelse de sonraları kullandıkça benimsenir. Bu durumu ileride sizler de gözlemleyeceksiniz. Ayrıca önceki adı `vi` olan editörün günümüzde gelişmiş versiyonu, `vim` ismini almış ve görsel arayüze sahip versiyonu ise `gvim` adıyla isimlendirilmiştir.

vi-vim-gvim
-

Editörü konsoldan açmak istersek `vim` komutu yeterli olacaktır. Ayrıca görsel arayüze sahip versiyonu olan `gvim` editörünü açmak için de `gvim` şeklinde komut kullanımı yeterli olacaktır. Ancak görsel arayüz genel olarak pek tercih edilmiyor. Kullanıcılar terminal üzerinden tek pencerede hızlı işlem yapmak adına ve biraz da geçmişten gelen alışkanlıklarından dolayı editörü terminal üzerinden kullanmayı tercih ediyorlar.

Konsola `vim` komutunu vererek editörümüzü açalım.

![enter image description here](https://i.hizliresim.com/kOAkdD.png)

Editörle çalışmak için <kbd>i</kbd> tuşuna basıyoruz ve editör sol alt köşede <kbd>--INSERT--</kbd> yazısı ile içerik almaya hazır olduğunu belirtiyor.

Örnek olması açısından editöre aşağıdaki şekilde birkaç dize yazı ekledim.

![enter image description here](https://i.hizliresim.com/nOk73V.png)


Gerekli ifadeleri girdikten sonra komut vermek istersek ESC tuşuna bastırktan sonra komutları : karakteri başta olacak şekilde vermemiz gerekiyor. Kullanabileceğimiz bazı komutlar aşağıdaki şekildedir.

**:q =** Eğer yapılan değişiklikler kayıt edilmişse Vim editörünü kapatır. Aksi durumda uyarı verecektir.

**:q! =** Editörü kaydetemeden kapatır.

**:w =** Yapılan değişiklikleri kaydeder.

**:wq =** Yapılan değişiklikleri kaydeder ve çıkar. Daha önce isim verilmemiş bir dosya ise **:wq dosya_ismi** şeklinde kullanılmalıdır.

Dosya oluşturmak üzere vi editöründe <kbd>ESC</kbd> tuşuna basıp `:wq vi_dosyasi` komutunu girelim.

Dosyamız oluştu, hemen bu durumu teyit etmek için `ls -l` komutunu kullanalım.

![enter image description here](https://i.hizliresim.com/p6jgpa.gif)

<kbd>vi_dosyasi </kbd> isimli dosyanın oluşturulduğunu teyit ettikten sonra tekrar `vim` editörü ile açmak için `vim vi_dosyasi` şeklinde komutumuzu kullanıyoruz.

Dosya oluşturup tekrar açtığımıza göre artık daha farklı komutlara ve diğer konsol komutlarını vim editörü aracılığı ile nasıl kullanacağımıza bakalım.

**:x =** Editörü kapatır ve değişiklikleri kaydeder.

**:r dosya_adı** = Hedef dosyayı okur ve içeriği mevcut dosyaya aktarır. Daha iyi anlaşılması için örneği inceleyin.

Adım adım açıklayalım:

İlk önce vim editörü ile <kbd>x_dosyasi</kbd> ve <kbd>y_dosyasi</kbd> isminde iki dosya oluşturuyorum ve bu dosyaların içerisine:

<kbd>x_dosyasi</kbd> için ; "Bu dosya x dosyasının içeriğini temsil ediyor".

<kbd>y_dosyasi</kbd> için ; "Bu dosya ise y dosyasının içeriğini temsil etmekte.."

İfadelerini ekliyorum daha sonra dosya içeriklerini `cat` komutu yardımı ile inceleyerek teyit ediyorum.

![enter image description here](https://i.hizliresim.com/vjmLoD.png)

Sıra geldi vim editörü ile oluşturulan bu dosyalardan birini diğerine eklemeye. Ben <kbd>x_dosyasi</kbd>'na <kbd>y_dosyasi</kbd> içeriğini eklemek üzere, <kbd>x_dosyasi</kbd>'nı `vim x_dosyasi` komutu ile açıyorum.

Vim editörü içerisinde açılan <kbd>x_dosyası</kbd>'ndayken `:r y_dosyasi` komutunu veriyorum.

![enter image description here](https://i.hizliresim.com/XPyvz3.gif)

Böylelikle <kbd>y_dosyasi</kbd> içerisinde yer alan ifadeler <kbd>x_dosyasi</kbd>içerisine eklenmiş oldu.

![enter image description here](https://i.hizliresim.com/6JQkQN.png)

Bu durumu hemen `cat` komutu yardımı ile teyit ettik zaten.


Konsol komutlarını vim editörü içerisinde kullanabileceğimizden bahsetmiştik. Bunu yapabilmemiz için komuttan önce iki nokta üst üste ve ünlem karakterlerini kullanmalıyız yani örnek kullanımı `:!komut` şeklindedir. Hemen bu durumu `ls` komutu için deneyelim.

![enter image description here](https://i.hizliresim.com/9mR4jN.gif)

Vim editörü içerisinde `:!ls` komutunu verdiğimizde sistem otomatik olarak vim editöründen çıkarak konsolda bize `ls` komutunun çıktılarını bastı. Eğer bu durumda tekrar vim editörüne dönmek istersek <kbd>enter</kbd> tuşuna basmamız yeterli olacaktır.

Şimdi biz neden konsol varken bu editörden komut vermekle uğraşalım diye düşünmüş olabilirsiniz sizlere bu durumu örnek ile açıklayalım.

Örnek olması açısından `ls` komutunun çıktılarını bir dosyaya kaydetmek isteyelim.

Bunu için vim editörü ile bir dosya oluşturuyorum.

`vim dizinler` komutu ile vim editörü içerisinde boş bir dosya açıyorum ve bu dosya içerisindeyken `:r !ls` komutunu veriyorum.

Komut sonucunda oluşturmuş olduğum <kbd>dizinler</kbd> dosyası içeriği aşağıdaki şekilde oluyor.

![enter image description here](https://i.hizliresim.com/3ENDk0.gif)

Kullandığımız komut bütününü açıklayacak olursak(aslında bunları zaten biliyorsunuz yine de açıklama gereksinimi duydum)`:r` komutu içerik aktarma işlevinde `!ls` komutu ise dizin altındaki dosya-klasörleri listelemekle görevli.

Dosyayı `:x` komutu ile kaydettik ve ayrıca teyit etmek için `cat dizinler` komutunu kullandık.


Vim editörü ile birden fazla dosya ile işlem yapmamız mümkün bunun için komutu `vim dosya_1 dosya_2 dosya3` şeklinde kullanabiliriz.

Komutumuzu verdikten sonra <kbd>dosya_1</kbd> vim editöründe açılacaktır. Gerekli değişiklikleri yaptıktan sonra eğer diğer dosyalara geçiş yapmak istersek çalıştığımız dosyayı kaydettikten sonra `:next` komutu ile <kbd>dosya_2</kbd>'ye geçiş sağlanacaktır. Aynı şekilde <kbd>dosya_3</kbd> dosyasına da geçmek mümkün olacaktır.

![enter image description here](https://i.hizliresim.com/vjmE9A.gif)

Eğer geçiş yaptığımız dosyadan bir öncekine dönmek istersek `:previous` komutunu kullanmamız yeterli olacaktır.

Ayrıca kaç dosyanın vim editöründe çalıştığını pencere ekranının üst bilgi kısmından öğrenebiliriz. Örneğin ben 3 dosya ile çalıştığım için üst kısımda bulunduğum dosya bilgisi ile beraber dosya_1 (~) (1 of 3) - VIM şeklinde bir üst bilgi yazısı bulunuyor.

Dosya içerinde bulunan ifadeleri değiştirmek istersek `:satır_sayısı s/eski_ifade/yeni_ifade/g` şeklinde bir komut bütünümüz bulunuyor. Bu gösterim ile anlamamış olabilirsiniz o yüzden hemen birkaç örnek ile konuyu açıklayalım.

<kbd>linux</kbd> isimli bir dosya oluşturuyorum ve içerisine aşağıdaki ifadeleri ekliyorum.

![enter image description here](https://i.hizliresim.com/RnXY7n.gif)

İlk önce burada yer alan 1. ve 2. satırdaki **linux** ifadelerini **LİNUX** ile değiştirmek üzere vim editörü içerisinde iken `:1,2s/linux/LİNUX/g` komutunu veriyorum. Daha sonra `:x` komutu ile dosyayı kaydederek vim editörünü kapatıyorum.
Ve dosya içeriğini `cat` komutu ile sorguladık.

![enter image description here](https://i.hizliresim.com/XPyvV0.gif)

Görüldüğü gibi 1. ve 2. satırdaki **linux** ifadeleri **LİNUX** şeklinde değişmiş oldu.

Eğer tüm satırlardaki **linux** ifadelerini **LİNUX** olarak değiştirmek istersek komutu başına yüzde işaretini ekleyerek `:%s/linux/LİNUX/g` şeklinde kullanmamız yeterli olacaktır.

Komutumuzu verdikten sonraki çıktı ile bu durumu teyit ettik.



Vim editörü çok güçlü bir araç ve gerçekten çok farklı kullanım şekilleri-özellikleri var. Yani bu editörün kendisini anlatmak zaten başlı başına koca bir kaynak oluşturmakla eşdeğer. Hatta bu durumu vim editörünün kendi [wiki kaynağından](http://vim.wikia.com/wiki/Vim_Tips_Wiki) da teyit edebilirsiniz.

Biz yine de birkaç kısa kullanım şeklini daha görelim.

Eğer direk olarak konsol üzerinden veri girişi yapmak istersek konsola `vim -` komutunu girmeliyiz.

Böylelikle konsol bize Vim: Reading from stdin... çıktısını verecek ve bizden veri girişi bekleyecektir.

Ben örnek olması açısından konsoldan birkaç ifade ekliyorum.

![enter image description here](https://i.hizliresim.com/kOAkqy.gif)

İfade giriş işlemim tamamlandığında <kbd>Ctrl + D</kbd> tuş kombinasyonu basarak, vim editörü ekranına yazdığım ifadeler ile birlikte dönmüş oluyorum.



Ayrıca oluşturduğumuz dosyaları şifreleyerek koruma imkanımız da var. Bu durumu bir örnek üzerinden anlatalım.

`vim vim_metni` komutu ile bir belge açıyorum ve içerisini bazı ifadeler ekleyerek belgeyi kaydediyorum.

Dosyamızın özelliklerini `file vim_metni` komutu ile öğrenip, dosyanın içeriğini ise `cat vim_metni` komutu ile okuyalım.

![enter image description here](https://i.hizliresim.com/RnXYaa.gif)

İstediğimiz bilgilere kolayca ulaşabildik. Bu durumu birde dosyamızı şifreleyerek test edelim. Bunun için konsola `vim -x vim_metni` şeklinde komut veriyoruz ve konsol bizden şifre belirlememizi istiyor.

Dosyamıza birkaç veri daha ekledikten sonra dosyamızı `:w` komutu ile kaydettik. Ve sonuç olarak vim editörü alt bilgi çubuğunda bize dosyanın şifrelendiğini aşağıdaki çıktıda yer alan "vim_metni" [crypted] şekilde ifade ederek belirtti.

![enter image description here](https://i.hizliresim.com/jyL2Pj.png)

Daha sonra dosyamızı tekrar `file` ve `cat` komutları ile sınadık.
Çıktı da görüldüğü üzere dosyamız artık şifrelenmiş durumda. Yani dosyayı tekrar okunaklı şekilde açabilmemiz için şifresini girmemiz gerekecek. Bu durumu hemen <kbd>vim_metni</kbd> isimli dosyamızı açmaya çalışarak test edelim. Bunun için konsola `vim vim_metni` komutunu giriyoruz. Ve konsol bize aşağıdaki çıktıyı veriyor.

![enter image description here](https://i.hizliresim.com/m2dzlP.png)

Konsol çıktısında da görüldüğü gibi bizden bir parola isteniyor. Eğer parolayı doğru girersek dosyamız açılacaktır.

Ancak sizlere önemli bir uyarı;

Bu dosya şifreleme olayı iyi hoş ancak çok çok önemli bir nokta var o da belirlediğiniz şifre. Eğer uzun, karmaşık yazarsanız bu şifreyi unutma riskiniz yüksek olacağından daha sonra bulmanız veya bir şekide kırmanız da bir o kadar zor olacaktır. Ayrıca kısa ve kolay şifreler de kolayca kırılabileceğinden pek güvenli bir yol sayılmaz. Yani anlayacağınız ne unutacağınız kadar uzun veya karmaşık ne de kolay kırlabilecek kadar kısa olsun. Şimdiden sizleri uyarıyorum sonradan bu durum yüzünden aman başınız ağrımasın.

Konumuza yavaş yavaş bitirmek üzere devam edecek olursak.

Örneğin vim editöründe kod yazıyordunuz ve kod 101. satırda hata verdi. Bu durumda 101. satırı aramak yerine editöre `:101` şeklinde hatalı kodun bulunduğu satır girerek ilgili satıra ulaşmış olabiliyoruz. Yani direk olarak atlamak istediğimiz satırı vim editörüne `:satır_numarası` şeklinde girerek bu işlemi gerçekleştirebiliriz.

![enter image description here](https://i.hizliresim.com/rOjVL1.gif)

Eğer yazdığınız ifadeler içerinden herhangi bir ifadeyi bulmak isterseniz `/aranacak_ifade` şeklinde yazarsanız ilgili ifadeye ulaşmış olursunuz. Ve aynı ifadenin başka yerlerde geçmesi durumunda bir sonraki ifadeye gitmek için `:/` komutu kullanılırken bir önceki aynı ifadeye dönmek için ise `:?` komutlarını kullanıyoruz.

![enter image description here](https://i.hizliresim.com/G9Ekbv.gif)

Eğer aradığımız ifadede büyük küçük harf duyarlılığı olmadan hedefteki aranan ifadenin aynısı olan bütün ifadeleri bulmak istersek `:set ic` komutunu verdikten sonra ifademizi `/ARNACAK_İFADE` şeklinde ya da `/aranacak_ifade` hatta `ArAnAcAk_İfAdE` şeklinde dahi belirtebiliriz. Sonuçta aynı karakter bütününü içeren ifadeler karşımıza gelecektir.


Vim editörü anlatımının burada sonuna geliyoruz. Ancak dediğim gibi zaten vim editörü başlı başına bir dokümantasyon konusu ki bu bilgileri burada izah etsek bile fazlaca gereksiz ayrıntıya değinmiş, sizlere boş yere yormuş olurduk. Vim editörü ancak baştan beri bahsi geçen kendi kendine öğrenme, deneme, alıştırma yapma ve özümseme ile öğrenilecek bir konudur. Kullanmanız şart değil kimisi çok sever kullanır kimisi ayrıntılarından nefret eder bırakır.

Neticede internette yer alan tüm zengin kaynaklar ile birlikte man kılavuz sayfasından, vim editörü içerisinde iken `:help` komutundan ve daha önce verdiğim vim editörü [wiki kaynağından](http://vim.wikia.com/wiki/Vim_Tips_Wiki) diğer tüm bilgilere ulaşabilirsiniz.(Benim önerim vim editörü içerisindeki `:help` komutu ile ulaşabileceğiniz dokümantasyonu takip etmenizdir.) Ve unutmayın bu araç ancak ve ancak kendi kendine kurcalayacak öğrenilebilir.


----------


Konsol Üzerinden Dosya İndirmek
=

İndirmek istediğimiz dosyanın direk indirme linkini biliyorsak bu dosyamızı herhangi bir ekstra program kullanmadan veya tarayıcıya ihtiyaç duymadan konsol üzerinden `wget` komutu yardımı ile indirmemiz mümkün. Gelin anlatıma `wget` komutunu ve kullanım şekillerini anlatarak devam edelim.

wget
-

Eğer daha önce linux ile ilgili yönergeler okumuş veya videolar izlediyseniz `wget` komutuna mutlaka denk gelmişsinizdir. Kullanımı oldukça kolaydır ve parametreler alarak çalışır. Birkaç kullanım şekline değinecek olursak:

**Tekil Dosya İndirmek :**

`wget` komutunun en temel kullanım şeklidir. Hedef link aracılığı ile tekil dosya indirme işlevinde kullanılır.

Kullanımı: `wget indirilecek_dosya_linki dosya_yolu`

Örnek olarak aircrack-ng aracını indirdim. Ve indirme işlemini `ls -l`
komutu ile teyit ettim.

![enter image description here](https://i.hizliresim.com/PlY6r8.gif)

Ve.. bulunduğum dizin içerisine istediğim dosya indirilmiş oldu. 

**Toplu Dosya İndirmek :**

Bir metin belgesinin içerisine kayıt ettiğimiz linklerde yer alan dosyaları tek seferde `-i` karakteri sayesinde indirmemiz mümkün. Hemen örnek üzerinden bu durumu görelim.

Örneğin ben T.C Resmi Gazetesi pdflerinden 5 tanesini aynı anda indirmek istiyorum diyelim. Bunun için bu pdflerin indirme linklerini bir metin belgesine kaydetmem gerekiyor. Ben bu işlemi `leafpad resmi_gazeteler` komutu ile "resmi_gazeteler" isimli bir dosya oluşturarak ve içerisine gerekli linkleri ekleyerek gerçekleştiriyorum.

![enter image description here](https://i.hizliresim.com/LbYgnV.png)

Artık sıra geldi toplu indirmelere. Bu işlem için konsola `wget -i resmi_gazeteler` komutumu giriyorum.

![enter image description here](https://i.hizliresim.com/MdPga9.gif)

PDF belgelerimiz toplu şekilde indirilmiş oldu şimdi de bu dosyaların varlığını teyit etmek için konsola `ls -l` komutunu verdim.


**Özel Konum Belirterek İndirmek :**
Eğer dosyanın konsolun üzerinde çalıştığı konuma değil de bizim istediğimiz özel bir konuma inmesini istersek bunun için `wget -P kaydedilecek_dizin_yolu dosya_linki` şeklinde komut vermemiz gerekiyor.

![enter image description here](https://i.hizliresim.com/jyv1yD.gif)

Dosyamızın istediğimiz konuma indirmek için tam yolunu belirtmemiz gerekiyordu bu nedenle buradaki `~/Desktop` kullanımı sizi şaşırtmasın <kbd>~</kbd> işareti ana dizini temsil ediyor.

Ve sonuç olarak indirdiğimiz konuma gelerek dosyanın varlığını teyit etmiş olduk.

**Özel Konum Ve İsim Belirterek İndirmek :**
İndirilecek dosyanın adını değiştirerek istediğimiz konuma indirmesini istersek `wget` komutumuzu `-O` parametresi ile birlikte `wget -O kaydedilecek_dizin_yolu/dosyanın_yeni_adı indirme_linki` şeklinde kullanıyoruz.

![enter image description here](https://i.hizliresim.com/XPDqED.gif)

Dosyamızı "aircrack" ismi ile indirip <kbd>/Desktop</kbd> dizinine kaydettik bu durumu da `ls -l` komutu ile teyit ettik.

Ayrıca indirlen dosyanın konumunu değiştirmeden yalnızca ismini değiştirmek isterseniz de herhangi bir konum belirtmeden yalnızca yeni dosya ismini belirtmeniz yeterli olacaktır. Örneğin `wget yeni_isim dosya_link` şeklinde bir kullanım indirilen dosyanın isminde değişiklik yapılarak indirilmesini sağlar.

**Kesintiye Uğrayan İndirmenin Devam Ettirilmesi :**
Bir şekilde dosyanın indirme süreci kesilirse yani dosya tam olarak indirilemez ise dosyanın geri kalanının daha sonra indirmesi mümkündür. Bunun için kesintiye uğrayan dosyayı tekrar indirmek istersek `wget` komutuna ek olarak `-c` parametresi eklenmelidir. Böylelikle `wget -c indirme_linki` şeklinde bir kullanım sonucunda eğer dosya tam olarak indirilemezse sonradan dosyayı tekrar baştan indirmek yerine kaldığı yerden devam ettirme şansımız olur. Bu durum özellikle de büyük dosyalar için gerçekten çok büyük kolaylık sağlıyor.
Adım adım yaptığım işlemleri inceleyelim.

İlk olarak içi tamamen boş olan <kbd>/Documents</kbd> dizinine `cd /Documents` komutu ile ulaştım. Bu dizinin içerisinin boş olduğunu `ls -l` komutu ile teyit ettim.

![enter image description here](https://i.hizliresim.com/rOm82P.png)

<kbd>/Documents</kbd> dizini içerisinde iken `wget` komutu ile dosyamı indirmeye başladım. Daha sonra indirme işlemini <kbd>Ctrl + Z</kbd> tuş kombinasyonu ile durdurdum. Durdurmamdaki amaç daha sonra devam ettirebilme özelliğini test etmekti.

![enter image description here](https://i.hizliresim.com/9m9qD8.gif)

İndirme işlemi durdurduktan sonra <kbd>/Documents</kbd> dizinini kontrol etmek için `ls -l` komutunu kullandım. Ve dosyamın 638681 bayt kadarının inmiş olduğunu gördüm.

![enter image description here](https://i.hizliresim.com/76VXNl.png)

Durdurmuş olduğum indirme işlemine devam etmek üzere `wget` komutu ile beraber `-c` parametresini de kullanarak dosya indirme işlemini kaldığı yerden devam ettirdim.

![enter image description here](https://i.hizliresim.com/qGm8Jq.gif)

Ve son olarak dosyamın başarılı ve tam bir şekilde indirildiğini ls -l komutu ile teyit ettim.

Çıktıları karşılaştıracak olursanız başta 638681 bayt'ta kalan indirme sonuç itibari ile 4379880 bayt yani dosyanın tamamı şeklinde indirilmiş oldu. Yani dosya indirme işlemi yarıda dahi kesilse en baştan indirmemize gerek kalmadan `wget` komutunun `-c` parametresi sayesinde kaldığı yerden indirme işlemini devam ettirebiliyoruz.

**İndirme Hızını Belirlemek :**
Eğer istersek indireceğimiz dosyanın ne kadarlık internet hızında ineceğini belirleyebiliriz. Bu limitleme işlemi için komutumuzu `wget --limit-rate=indirme_limitiK /indirme_linki` şeklinde kullanıyoruz.

Örnek olması açısından ben dosyayı indirirken 300KB/s hızında indirme limiti koyuyorum.

![enter image description here](https://i.hizliresim.com/QV4Ypg.gif)

Zaten üst kısımda yer alan çıktının sonucunda da bu hız sınırlamasının sonucu olarak ortalama indirme hızı (300 KB/s) olarak gözüküyor.

**Arkaplanda İndirmek :**
İndirmek istediğimiz dosyanın arkaplanda inmesini `-b` parametresi ile sağlarız. İndirme işleminin sonuçlarını öğrenmek istersek indirilen dosya ile aynı konumda yer alan <kbd>wget-log</kbd> dosyasını incelememiz yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/gO4VWN.gif)

Dosyamızı arkaplanada indiriyoruz ve çıktıda bize indirme detaylarının <kbd>wget-log</kbd> dosyasında olduğunu bildiriyor. Bu indirme kayıtlarına göz atmak istersek `cat wget-log` dosyasına bakabiliriz.


----------


Zamanlanmış Görevler
=

Sistemde yapılması gereken rutin işlerin zamanı geldiğinde otomatik olarak yapılması işine zamanlanmış görevler deniliyor. Örneğin benim her pazartesi sistemi yedeklemem gerekiyor diyelim, bunu her pazartesi elle yapmak yerine bu işi zamanlanmış görevlere ekleyerek otomatiğe bağlayabilirim.

cron
-
Rutin tekrarları sağlayan zamanlanmış görevleri yerine getirmemizi sağlayan servisimizin adı `cron`'dur.

Anlatıma `cron` servisinin çalışma durumunu kontrol ederek başlayalım. Bunun için konsola `service cron status` komutunu verelim.

![enter image description here](https://i.hizliresim.com/vjgoRp.png)


Cron servisimizin çalıştığını teyit etmiş olduk. Cron servisinin yapılandırma dosyası <kbd>/etc/crontab</kbd>konumunda yer alıyor göz atmak için konsola `cat /etc/crontab` komutunu verebiliriz.

![enter image description here](https://i.hizliresim.com/6JZ62E.png)

Şimdi de düzenleme yapmak adına konsola `crontab -e` komutunu verelim. Burada yer alan `-e` parametresi edit kelimesini yani düzenleme ifadesini temsil ediyor.

![enter image description here](https://i.hizliresim.com/y0PnM9.png)

Konsol bize düzenleme yaparken hangi aracı kullanmak istediğimizi soruyor. Ben nano aracını seçiyorum yani konsola 2 rakamını giriyorum.

![enter image description here](https://i.hizliresim.com/W7VrnP.png)

Çıktıda bize bir örnek kullanım gösterilmiş biz bu kullanımı ele alarak servisin kullanım şeklini görelim.

![enter image description here](https://i.hizliresim.com/3E9RD5.png)

Yukarıdaki şema yeterince açıklayıcı olmadıysa endişelenmenize gerek yok. Örnekler üzerinden yapacağımız anlatım ile cron servisimizin kullanımını rahat şekilde anlamış olacağınıza inanıyorum.

Zamanlanmış görevleri yerine getiren servis cron ve bu servisin yerine getirdiği işlere de cron job deniliyor. Bu tanımın çok da önemi yok ancak bunu böyle bilseniz daha iyi olur. Bizler de kendi zamanlanmış görevlerimizi (cron jobs) atamak istersek crontab -e komutu ile açtığımı dosyanın son satırına yapmak istediğimiz işi ve tam tarih düzenini girmemiz gerekiyor. Bu görevleri nasıl oluşturacağımızı konunun devamında örnekler üzerinden öğreniyor olacağız.

Örnekler

Kullanımın anlaşılması amacıyla örnekleri olabildiğince basit tuttum.

O anın tarihi detaylarını <kbd>zamanlar.txt</kbd> isimli klasöre kaydetmek için `echo date zamanlar.txt` komutunu kullanacağım.

Bütün yıl boyunca her dakikanın çıktılarını kaydetmesini istersem aşağıdaki şekilde bir kullanım işimizi görür.

![enter image description here](https://i.hizliresim.com/Z9L1kz.png)
![enter image description here](https://i.hizliresim.com/RnJ6YZ.png)

Yıldız işareti (<kbd>*</kbd>) olan kısımlar hepsini kapsamaktadır yani haftanın bütün günleri, ayın bütün günleri ve saatin bütün dakikaları.. gibi.

Komutun düzenli hali `* * * * * echo date >> ~/Desktop/zamanlar.txt` şeklindedir.

Bir süre geçtikten sonra masaüstünde(Desktop dizininde) yer alan <kbd>zamanlar.txt</kbd> dosyasını `cat zamanlar.txt` komutu ile kontrol ediyorum.

![enter image description here](https://i.hizliresim.com/p6RYgJ.png)

Görev istediğimiz şekilde yani her dakikada yazılacak şekilde otomatik olarak gerçekleşmiş oldu.

Şimdi spesifik bir zaman belirleyerek görevin yerine getirilme durumunu ele alalım.

Her gün 10:25 da otomatik olarak <kbd>test.txt</kbd> isimli belgeye "test yazısı" yazdırmak için kalıbı crontab dosyasına aşağıdaki şekilde yazmalıyız.(Ayrıca başta hangi ifadenin neyin karşılığı olduğunu belirttiğim için tekrar tekrar üzerlerine yazmıyorum. Eğer şaşırırsanız yukarıdaki kısımları tekrar gözden geçirebilirsiniz.)

    15 14 * * * echo "test yazısı" >> ~/Desktop/test.txt

![](https://i.hizliresim.com/azoB57.png)


`ls -l` komutu ile de dosyamızın üretildiği tarihi sorguladık ve çıktıdan da anladığımız üzere verdiğimiz görev zamanında yerine getirilmiş.

![enter image description here](https://i.hizliresim.com/Ygv5BA.png)


Eğer belirli bir saat-tarih arasında belirli kere tekrar eden görev atamak istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

Örneğin 5 dk bir çalışmasını istediğiniz komutu aşağıdaki şekilde crontab dosyasına ekleyebilirsiniz.

    */5 * * * * komut

Her saatin ilk 5 dk 2 kere çalışmasını istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

    0-5/2 * * * * komut

Örneğin cron job yani verdiğimiz görev komutu günün ilk 5 saatinde 10 defa çalışmasını istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

    * 0-5/10 * * * komut

Örneğin cuma günleri 12:30 ve 17 arasında 5 kez çalışsın istersek kullanım şekli aşağıdaki örnekteki gibi olacaktır.

    30,0 12-17/5 * * 5 komut

Elbette örnekleri çoğaltmak mümkün ancak daha fazlası gereksiz olacaktır. Yani bu konu sizlerin de biraz kurcaladıktan sonra anlayacağı kolay bir konudur.

Eğer belirlenen zamanlanmış görevleri listelemek istersek `crontab -l` komutunu kullanabiliriz. Buradaki `-l` parametresi list kelimesini yani listeleme işlevini temsil ediyor.

![enter image description here](https://i.hizliresim.com/4aLRl0.png)

Şayet oluşturduğumuz tüm zamanlanmış görevleri silmek istersek `crontab -r` komutunu kullanmalıyız. Buradaki `-r` parametresi remove kelimesini yani silme işlevini temsil ediyor.

![enter image description here](https://i.hizliresim.com/oOAz7o.png)


----------


Log Kayıtları
-
Sistemde olan sorunlar, işlemler, değişiklikler ve neredeyse her şey kayıt altına alınarak saklanır. Bu kayıt altına alınan bilgilere log deniyor. Neden log tutulmak zorunda diye soracak olursanız kısaca sistemin olumsuz bir durumla karşılaşması halinde sorunun yaşanma nedeninin belirlenmesi, sistem güvenliğini sağlamada, gerektiğinde veri kurtarmada ve adli bilişim gibi alanlarda başvurmamız gereken yegane kaynaklardır. Yani sistem bütünü için çok önemli yer tutmaktadır.

Log Dosyaları
-
Linux sisteminde log dosyalarının çok büyük kısmı <kbd>/var/log </kbd> dizini altında tutuluyor. Ayrıca log dizini içerisinde de belli başlı programlara ve servislere ait logları bulunduran başka alt dizinler bulunuyor. Bu durumu gözlemlemek için komut satırına `cd /var/log` yazarak log dosyalarının tutulduğu dizine gidip dizin içerisinde iken `ls` komutu ile dizin içeriğini listeleyelim.

![enter image description here](https://i.hizliresim.com/OoRdaD.png)

Örneğin <kbd>user.log</kbd> dosyasını `cat user.log` şeklinde açarak sistemde yapılmış olan oturum açma işlemlerini ve detaylarını inceleyebilirim. Ancak bu noktada bir kısa bilgi linux sistemi log dosyalarının çok fazla yer kaplamasını önlemek için üzerine yazma metodunu kullanıyor. Bu noktada cron servisi ile log kayıtlı her hafta eklenerek maksimum 1 ay kadar eskiyi yani 4 haftayı kayıt altında tutuyor.

Log dosyalarını incelerken kolaylık olması açısından daha önce de kullanmış olduğumu ve dosyanın alt(tail/kuyruk) kısımlarını listeleyen `tail` komutundan yararlanacağız.

![enter image description here](https://i.hizliresim.com/z0mEyj.png)

Bu sayede uzun uzadıya dosyanın tamamına bakmak yerine son eklenen bilgileri inceleyebileceğiz.


dmesg
-
Sistem açılışından itibaren çekirdek tarafından üretilen tüm iletiler iletiler ve kernel hakkındaki kayıtlar <kbd>/proc/kmsg</kbd> dizininde tutuluyor. Ancak biz bütün kernel kayıtları yerine, sistem açılışında yazan açılış notlarını `dmesg` komutu ile görüntüleyebiliriz. Yani `dmesg` komutu sadece tampondaki son iletileri gösterir. Bu komutun kullanımına genelde sistem açılışında bildirilen problemlerin tespiti ve diğer sistem uyarılarını saptamak için başvurulur. Yani genelde sorun yaşadığınızda forum ve benzeri topluluklarda sizden bu komut istenirse komutun hangi amaca hizmet ettiğini bilmeniz için ve aynı zamanda komutun log konusu ile bağlantılı olduğu için sizlere açıkladım.

![enter image description here](https://i.hizliresim.com/G9v1GZ.png)

Elbetteki çıktı çok daha uzun ancak ben örnek olması açısından çıktıları kısaca verdim.


last
-
Sistemde oturum açan kullanıcıları listelemek için `last` komutunu kullanabiliriz.

![enter image description here](https://i.hizliresim.com/JQpEWQ.png)
