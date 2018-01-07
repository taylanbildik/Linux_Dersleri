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

    Kali GNU/Linux Rolling taylan tty3 
    taylan login:

 <p>Eğer bu komut satırından çıkıp tekrar kullanıcı arayüzüne yani grafiksel arayüze geçmek isterseniz <kbd>Ctrl + Alt + (f7,f8,f9,f10,f11,f12) </kbd> kombinasyonlarından herhangi birini kullanarak bunu başarabilirsiniz. Ancak kimi Kali Linux sürümlerinde durum böyle olamayabiliyor yani eğer <kbd>Ctrl + Alt + f7</kbd> ve sonrası tuş kombinasyonu grafik arayüze dönmenizi sağlamaz ise bu sefer <kbd>Ctrl+Alt+f1</kbd> veya <kbd>Ctrl + Alt + f2 </kbd> şeklinde dönmeye çalışın. Grafik arayüzden Terminal(konsol) ile çalışmak isterseniz masaüstünde bulunan Terminal simgesine tıklamanız yeterli olacaktır.(Genelde görev çubuğunda sabit şekilde yer alır.) Eğer masaüstünde yok bulamıyorum diyorsanız arama çubuğu ve benzeri yardımcılar aracılığı ile lütfen "konsol" veya "terminal" şeklinde aratarak kendiniz bulun. Ayrıca kısayollardan bahsetmiştim örneğin bazı dağıtımlarda <kbd>Ctrl + Alt + T</kbd> tuş kombinasyonu direk olarak terminal ekranını açıyor. Ancak bu kısayollar ayarlar aracılığı ile ve ayrıca da dağıtımdan dağıtıma farklılık gösterdiği için bu kısayolları sizin kendi kullandığınız dağıtıma göre araştırmanız gerek. Korkmayın inanılmaz kolay bir işlem, hem böylelikle yavaş yavaş Linux öğrenmenin aslında araştırmak ve kendi kendine öğrenmek olduğunu öğreniyoruz. Zaten ileride Kali Linux için <a href="#terminal_kısayolları">kısayollar</a> konularına ayrıca değineceğim.
      <p>Şimdilik konumuza dönecek olursak Shell'in ne olduğunu açıklamıştık ve en çok tercih edilen kabuk programının BASH kabuk programı olduğunu söylemiştik.Bunu teyit etmek için komut satırına <code>echo $SHELL</code> komutumuzu giriyoruz.
      <p>Girdiğimiz komutu açıklayacak olursak ' <kbd>echo</kbd> ' komut satırında ekrana yazdırma işlevini görür örneğin ben komut satırına <code>echo "Merhabalar"</code> yazarsam komut satırı ' Merhabalar ' çıktısını verecektir.' <kbd>$</kbd> ' işareti bir parametre ve tanımlanan değişkene normal bir kullanıcı olarak erişebilmeyi sağlıyor. Şimdilik bu komut bütünü hakkında bu kadar bilgi yeter. Eğer komutun açıklamasını anlamadıysanız sorun yok. Okumaya devam ettikçe parçalar yerine oturmaya başlayacak. Zaten ileride bu konuların her birine tek tek değineceğiz ve sizler de anlamış olacaksınız. Şimdi devam edecek olursak:</p>
      
    root@taylan:~#echo $SHELL
	/bin/bash
	
<p>Konsola girmiş olduğumuz komut yorumlandı ve neticesinde bize <kbd>/bin/bash</kbd> şeklinde bir çıktı verdi. Bu çıktı bize mevcut sistemde kullanılan ana kabuk programının BASH olduğunu bildirmiş oldu. Burada komut yorumlandı dedik ancak neye göre oldu bu iş ? İşte bu noktada devreye ortam değişkenleri(çevre değişkenleri) giriyor. Bu kısımları fazlaca incelediğimi düşünenler olabilir ancak emin olun öğrendiğiniz her şey birbiri ile bağlı ve bütünü anlamak için bilmek gerekli. İleride yeri geldikçe bunları daha net kavrayacağız zaten.</p><p>Anlatımları mümkün oldukça teknik dilden uzak sade anlaşılır ve sizlerin de sürekli etkileşimde olacağı şekilde aktarmaya çalışıyorum. Yani burada yazanları kuru kuruya ezberlemeyecek, ilerleyiş sırasında uygulamalar yaparak konuları anlamış olacağız.</p>
<p>Tamda bu noktada uygulama yaparak öğrenmenin önemini belirten Konfüçyüs'ün bir sözünü hatırlatmak istiyorum:</p>
> ### "Bana anlat unuturum, bana göster hatırlarım, beni dahil et, anlarım."  **Konfüçyüs**

<p>İlerleyişimize gelin ortam değişkenlerini tanıyarak devam edelim.</p>
<h2 id="ortam_değişkenleri"> Ortam Değişkenleri (Çevre Değişkenleri)</h2>
		  
<p>Ortam değişkenlerini anlamak için bir örnek üzerinden gidelim. Örneğin grafiksel arayüzde komut satırına <code>leafpad</code> yazdığımızda karşımıza leafpad(metin editörü) programı gelir. (Özellikle grafiksel arayüz diye belirttim çünkü leafpad uygulaması grafiksel arayüz ile çalışmaktadır yani tek başına komut satırının olduğu durumda çalışmayacaktır.)</p>

<p>Fark ettiyseniz bu komutu yazarken programın bulunduğu konumu belirtmeme gerek kalmadı. Yalnızca programın ismini Terminale girmemiz sonucu leafpad programı açılmış oldu. Bunun nedeni programın dosya dizinlerinin PATH(yol) ortam değişkeni üzerinde ekli olmasıdır. Sonuç olarak konsoldan girilen <code>leafpad</code> komutu bu yol üzerinde arandı ve yol üzerinde var olan leafpad uygulaması çalıştırıldı.</p>
<p>Daha iyi anlayabilmek adına bize PATH(yol) bilgisini veren komutumuzu kullanalım ve terminalin bize vereceği tepkiye göre açıklamaya devam edelim. Komut satırımıza <code>echo $PATH</code> komutunu verelim:</p>

    root@taylan:~# echo $PATH
	/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

<p>Çıktının bize gösterdiği yani konsolun demek istediği şu:</p> 
<p>Konsoldan girilen komutu çalıştırabilmem için sırasıyla bu <kbd>/usr/local/sbin: /usr/local/bin: /usr/sbin: /usr/bin: /sbin: /bin</kbd> dizinlere bakmam gerek.Eğer verilen komutun çalıştırılabilir dosyası bu dizinlerin içerisinde ise çalıştırırım, yoksa çalıştıramam. </p>
<p>Çıktıda görüllen iki nokta üst üste (<kbd>:</kbd>) işareti ile ayrılmış dizinlere PATH(yol) ortam değişkeni deniyor. Ben yine de emin olamadım diyenler için gelin PATH yoluna ekli olmayan bir progamı kendimiz ekleyelim ve konsoldan verdiğiniz bir komutla direk olarak çalışmasını sağlayalım. Adım adım ilerleyelim.</p>

<p>Ben masaütünde "yeni_dizin" adında bir klasör oluşturdum daha sonra içerisine "yeni" diye başka bir klasör daha oluşturdum son olarak bu klasörün de içerisine "en_yeni" şeklinde bir klasör daha oluşturdum. Yani oluşturduğum dizinin tam adresi <kbd>yeni_dizin /yeni /en_yeni</kbd> şeklinde oluşmuş oldu.</p>
<p>Şimdi oluşturduğum dizinin en alt klasörünün(en_yeni) içine girerek leafpad programı aracılığı ile metin belgesi oluşturuyorum ve belgenin içine  <code>echo "Program Çalıştı"</code> yazarak oluşturmuş olduğum dosya dizininin en alt dosyaya yani "en_yeni" ismindeki klasöre dosyamı "komut.sh" ismiyle kaydediyorum. Dosya sonuna eklediğimiz <kbd>.sh</kbd> eki ile bir betik dosyası halini aldı. Betik dosyası genel tanımı ile konsol komutlarını içerisine kaydettikten sonra tek seferde bir bütün halinde komutları çalıştırabildiğimiz dosya türüdür. Zaten fark ettiyseniz dosyamızın içerisine daha önce de konsolda verdiğimiz komutlardan birini olan <code>echo</code> komutunu ekledik. Yani bu oluşturmuş olduğumuz betik dosyası Terminal üzerinden çalıştığında komut satırına "Program Çalıştı" şeklinde bir çıktı vericek. Betik dosyasının dizin içerisindeki tam konumu aşağıdaki şekildedir.</p>

<p>Programımızın dizin adresi belli olduğuna göre artık bu dizini PATH ortam değişkenine ekleyip istediğimiz zaman, istediğimiz yerden programımızı(komut.sh) çalıştırabiliriz.

<h2 id="dizin_ekle"> PATH(yola)Dizin Ekleme</h2>
<p>PATH(yola) yeni dizin eklemek için öncelikle her defasında oturum başlatılırken okunan <kbd>profile</kbd> isimli dosyada değişiklik yapmalıyız ki eklediğimiz dizin her daim biz silene kadar geçerli olsun. <kbd>profile</kbd> dosyasında değişiklik yapmak için komut satırına dosyamızın bulunduğu tam konumu belirtmek üzere <code>nano -w /etc/profile</code> komutunu giriyoruz.</p>

<p>Ve komut satırında karşımıza yukarıdaki gibi <kbd>profile</kbd> dosyasının içeriği geliyor. Şimdi yapmamız gereken programımızın ( komut.sh ) bulunduğu tam dizin konumunu bu dosyaya uygun şekilde eklemek.</p>

<p>Bunun için dosyanın en alt satıra inerek eklemek istediğim dosyanın tam dizin adresini aşağıdaki şeklinde dosyaya ekliyorum.</p>

    PATH="/root/Desktop/yeni_dizin/yeni/en_yeni:$PATH

<p>Yazma işlemi bittikten sonra dosyada yaptığımız değişiklikleri kaydedip dosyayı kapatmak için <kbd>Ctrl + X</kbd> tuş kombinasyonu uyguluyoruz. Bana, "Değiştirilen tampon kaydedilsin mi?  ("Hayır" demek değişiklikleri SİLECEK.) "  şeklinde bir uyarı veriyor. Dosyada yaptığım değişikliği kaydetmek için <kbd>e</kbd> tuşuna basarak devam ediyorum. Son olarak bana, "Yazılacak Dosya Adı: <kdb>/etc/profile</kdb>" diye belirtiyor, buradaki ismi değiştirmeden kaydediyoruz. Eğer ismi değiştirirsek sistem bu dosyayı okuyamacağı için problem çıkacaktır.</p>


<p>Bu adımları geçtikten sonra istediğimiz dizin PATH(yol) ortam değişkenine eklenmiş oldu. Ancak işlemin geçerli olması için oturumun kapatılıp tekrar açılması gerekiyor çünkü <kbd>profile</kbd> dosyası oturum açılırken okunuyor.</p>
		
<p>Oturumu kapatıp tekrar giriş yaptım. Şimdi sırada eklediğimiz dizinin PATH yolunda ekli olup olmadığını kontrol etmek var bunun için konsola <code>echo $PATH</code> komutunu veriyoruz.</p>

    root@taylan:~# echo $PATH
	/root/Desktop/yeni_dizin/yeni/en_yeni:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
	
<p>Gördüğünüz gibi dizin yola(PATH) eklenmiş bulunuyor.</p>
<p>Artık dosyayı çalıştırmadan önce son bir ayar daha yapmamız gerek. Daha sonra "komut.sh" dosyamızı aynı leafpad programında olduğu gibi istediğimiz zaman komut satırından ismi ile çalıştırabiliyor olacağız. Son işlemimiz yetkilendirme işlemi. Bu neden gerekli diyecek olursanız işlemin gerekliliğini kendi gözlerinizle görmek için bu kısmı atlayarak dosyayı çalıştırmaya çalışın. Bunun için komut satırına <code>komut.sh</code> yazalım.</p>

    root@taylan:~/Desktop/yeni_dizin/yeni/en_yeni# komut.sh
	bash:/root/Desktop/yeni_dizin/yeni/en_yeni/komut.sh: Erişim engellendi
<p>Gördüğünüz gibi konsol bize "Erişim engellendi" diye bildirdi ve dosyayı bulmasına rağmen çalıştırmadı. İşte bu durumu yaşamamak için "komut.sh" dosyamızın bulunduğu konuma giderek (<code>cd Desktop/yeni_dizin/yeni/en_yeni/</code>) <code>chmod +rwx komut.sh</code> komutunu vermemiz gerekiyor. Böylelikle dosyayı çalıştırma izni de elde etmiş olacağız. Yani artık konsola <code>komut.sh</code> yazdığımız anda bizim oluşturmuş olduğumuz "komut.sh" betik dosyası çalışarak "Program Çalıştı" yazısını konsola basacak.</p>

    root@taylan:~# chmod +rwx komut.sh

	root@taylan:~# komut.sh
	Program Çalıştı


<p>Sizler de bu yolla sıklıkla kullandığınız dosyaları kolay erişilebilir kılabilirsiniz. Burada vermiş olduğum komutları ayrıntılı şekilde ileride açıklayacağım siz şimdilik konunun temeline ve ne neden oluyor ona hakim olsanız yeter. Ancak kafalarda soru işareti ile devam etmemek adına ben yinede tek tek izah edeyim hangi komutu neden kullandık.</p>
		
<p><code>nano -w /etc/profile</code> bu komutta; <code>nano</code> komutu, konsol üzerinden dosya içeriğini okumamıza olanak sağlayan bir araç ve <code>nano</code> komutunun yanındaki <code>-w</code> karakteri ise dosyada değişiklik yapmamıza olanak sağlayan parametredir. Biz bu parametre sayesinde nano aracı ile belgeyi yazma(write) kipinde açmış oluyoruz. Geri kalan <code>/etc/profile</code> kısmı ise <kbd>profile</kbd> dosyasının bulunduğu konumu belirtiyor. Bu sayede nano aracı ile yazma kipinde <kbd>/etc/profile</kbd> konumundaki <kbd>profile</kbd> dosyasını komut satırı üzerinden görebiliyor ve değişiklik yapabiliyoruz.</p>

<p><code>PATH="/root/Desktop/yeni_dizin/yeni/</code> <code>en_yeni:$PATH"</code>ifadesi ise mevcut PATH(yola) yeni dizin eklememize olanak sağlayan bir bütündür. Burada açıklanacak özel bir durum yok kullanım şekli itibari ile PATH yoluna dizin ekleme işlemi için gereken ifade bütünüdür.</p>

<p><code>echo $PATH</code> komutunu daha önce de görmüştük buradki <code>echo</code> komutu PATH ortam değişkeninde bulunan dizinleri görmemizi sağlıyor.</p>
<p><code>chmod +rwx komut.sh</code> komutunda, <code>chmod</code> yetkilendirme ayarlamaları yapmamıza olanak sağlıyor.<code>+rwx</code> parametrelerinden " + "işareti ekleme," r "işareti okuma, " w "işareti yazma, " x "işareti ise çalıştırma yetkisi olmak üzere bizlere bir bütün olarak dosyayı çalıştırabilmemiz için gereken yetkilendirmeyi sağlıyor. Geri kalan <code>komut.sh</code> kısım ise zaten yetkilendirme vermek istediğimiz dosyanın adı.</p>	

			
<p>Şimdi bu kısımlar sizlere çok fazla detaya girilmiş belki de gereksiz yere eklenmiş gibi gelebilir ancak bu dokümanı bir bütün olarak kabul etmelisiniz. Dokümantasyon bir sefer okudum bitti değil ihtiyacınız oldukça tekrar tekrar bakasınız diye var. Yani buraları okuyup uygulayıp kavradıktan sonra böyle bir ihtiyacınız olduğunda bu konunun burada olduğunu bilin. Burada yer alan anlatımlar temeli oluşturma üzerine sıralı ve bağlantılı şekilde ilerliyor. Burada bunları ezberlemenize gerek yok zaten öğrenmenin temelinde de ezber yok. O yüzden rahat olun her şey kullandıkça gelişecek ancak dediğim gibi artık böyle birşeyin varlığından haberdarsınız yeri geldiğinde ihtiyacınız olan bilgiler burada olacak. </p>

<p>Ortam değişkenleri dedik ancak şu ana kadar sadece PATH değişkeninden bahsettik. Tabii ki sistemde sadece PATH değişkeni bulunmuyor bu değişken dışında da pek çok ortam değişkeni mevcut. Bunları görmek istersek komut satırına <code>set</code> , <code>env</code> yada <code>printenv</code> komutlarından birini ihtiyacımıza göre yazabiliriz. Bu üç komut arasındaki farklar aşağıdaki şekildedir.</p>

<p><span style="color: #000000; font-size: large; font-weight: bold;">set :</span> Shell'e ait olan değişkenlerin adını ve değerlerini verir.</p>						
<p><span style="color: #000000; font-size: large; font-weight: bold;">printenv :</span> Sistemde bulunan bütün çevresel değişkenleri verir.</p>		
<p><span style="color: #000000; font-size: large; font-weight: bold;">env :</span> Sistemde bulunan bütün "export" edilmiş yani değiştirilmiş değişkenlerle beraber değişkenleri gösterir.</p>
Ben aşağıda sadece <code>printenv</code> komutunun çıktısını veriyorum. Sizler diğer komutları da mutlaka uygulayarak aralarındaki farkları kendi gözlerinizle görün.</p>	






