
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


Gerekli ifadeleri girdikten sonra komut vermek istersek <kbd>ESC</kbd> tuşuna bastırktan sonra komutları `:` karakteri başta olacak şekilde vermemiz gerekiyor. Kullanabileceğimiz bazı komutlar aşağıdaki şekildedir.

**:q =** Eğer yapılan değişiklikler kayıt edilmişse Vim editörünü kapatır. Aksi durumda uyarı verecektir.

**:q! =** Editörü kaydetmeden direk olarak kapatır.

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

Ayrıca kaç dosyanın vim editöründe çalıştığını pencere ekranının üst bilgi kısmından öğrenebiliriz. Örneğin ben 3 dosya ile çalıştığım için üst kısımda bulunduğum dosya bilgisi ile beraber **dosya1 (~) (1 of 3) - VIM** şeklinde bir üst bilgi yazısı bulunuyor.

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

Böylelikle konsol bize **Vim: Reading from stdin...** çıktısını verecek ve bizden veri girişi bekleyecektir.

Ben örnek olması açısından konsoldan birkaç ifade ekliyorum.

![enter image description here](https://i.hizliresim.com/kOAkqy.gif)

İfade giriş işlemim tamamlandığında <kbd>Ctrl + D</kbd> tuş kombinasyonu basarak, vim editörü ekranına yazdığım ifadeler ile birlikte dönmüş oluyorum.



Ayrıca oluşturduğumuz dosyaları şifreleyerek koruma imkanımız da var. Bu durumu bir örnek üzerinden anlatalım.

`vim vim_metni` komutu ile bir belge açıyorum ve içerisini bazı ifadeler ekleyerek belgeyi kaydediyorum.

Dosyamızın özelliklerini `file vim_metni` komutu ile öğrenip, dosyanın içeriğini ise `cat vim_metni` komutu ile okuyalım.

![enter image description here](https://i.hizliresim.com/RnXYaa.gif)

İstediğimiz bilgilere kolayca ulaşabildik. Bu durumu birde dosyamızı şifreleyerek test edelim. Bunun için konsola `vim -x vim_metni` şeklinde komut veriyoruz ve konsol bizden şifre belirlememizi istiyor.

Dosyamıza birkaç veri daha ekledikten sonra dosyamızı `:w` komutu ile kaydettik. Ve sonuç olarak vim editörü alt bilgi çubuğunda bize dosyanın şifrelendiğini aşağıdaki çıktıda yer alan **"vim_metni" [crypted]** şekilde ifade ederek belirtti.

![enter image description here](https://i.hizliresim.com/jyL2Pj.png)

Daha sonra dosyamızı tekrar `file` ve `cat` komutları ile sınadık.
Çıktı da görüldüğü üzere dosyamız artık şifrelenmiş durumda. Yani dosyayı tekrar okunaklı şekilde açabilmemiz için şifresini girmemiz gerekecek. Bu durumu hemen <kbd>vim_metni</kbd> isimli dosyamızı açmaya çalışarak test edelim. Bunun için konsola `vim vim_metni` komutunu giriyoruz. Ve konsol bize aşağıdaki çıktıyı veriyor.

![enter image description here](https://i.hizliresim.com/m2dzlP.png)

Konsol çıktısında da görüldüğü gibi bizden bir parola isteniyor. Eğer parolayı doğru girersek dosyamız açılacaktır.

**Ancak sizlere önemli bir uyarı;**

Bu dosya şifreleme olayı iyi hoş ancak çok çok önemli bir nokta var o da belirlediğiniz şifre. Eğer uzun, karmaşık yazarsanız bu şifreyi unutma riskiniz yüksek olacağından daha sonra bulmanız veya bir şekide kırmanız da bir o kadar zor olacaktır. Ayrıca kısa ve kolay şifreler de kolayca kırılabileceğinden pek güvenli bir yol sayılmaz. Yani anlayacağınız ne unutacağınız kadar uzun veya karmaşık ne de kolay kırlabilecek kadar kısa olsun. Şimdiden sizleri uyarıyorum sonradan bu durum yüzünden aman başınız ağrımasın.

Konumuza yavaş yavaş bitirmek üzere devam edecek olursak.

Örneğin vim editöründe kod yazıyordunuz ve kod 101. satırda hata verdi. Bu durumda 101. satırı aramak yerine editöre `:101` şeklinde yazarak hatalı kodun bulunduğu satıra ulaşabiliyoruz. Yani direk olarak atlamak istediğimiz satırı vim editörüne `:satır_numarası` şeklinde girerek bu işlemi gerçekleştirebiliriz.

![enter image description here](https://i.hizliresim.com/rOjVL1.gif)

Eğer yazdığınız ifadeler içerinden herhangi bir ifadeyi bulmak isterseniz `/aranacak_ifade` şeklinde yazarsanız ilgili ifadeye ulaşmış olursunuz. Ve aynı ifadenin başka yerlerde geçmesi durumunda bir sonraki ifadeye gitmek için `:/` komutu, bir önceki aynı ifadeye dönmek için ise `:?` komutunu kullanıyoruz.

![enter image description here](https://i.hizliresim.com/G9Ekbv.gif)

Eğer aradığımız ifadede büyük küçük harf duyarlılığı olmadan hedefteki aranan ifadenin aynısı olan bütün ifadeleri bulmak istersek `:set ic` komutunu verdikten sonra ifademizi `/ARNACAK_İFADE` şeklinde ya da `/aranacak_ifade` hatta `ArAnAcAk_İfAdE` şeklinde dahi belirtebiliriz. Sonuçta aynı karakter bütününü içeren ifadeler karşımıza gelecektir.


Vim editörü anlatımının burada sonuna geliyoruz. Ancak dediğim gibi zaten vim editörü başlı başına bir dokümantasyon konusu ki bu bilgileri burada izah etsek bile fazlaca gereksiz ayrıntıya değinmiş, sizlere boş yere yormuş olurduk. Vim editörü ancak baştan beri bahsi geçen kendi kendine öğrenme, deneme, alıştırma yapma ve özümseme ile öğrenilecek bir konudur. Kullanmanız şart değil kimisi çok sever kullanır kimisi ayrıntılarından nefret eder bırakır.

Neticede internette yer alan tüm zengin kaynaklar ile birlikte man kılavuz sayfasından, vim editörü içerisinde iken `:help` komutundan ve daha önce verdiğim vim editörü [wiki kaynağından](http://vim.wikia.com/wiki/Vim_Tips_Wiki) diğer tüm bilgilere ulaşabilirsiniz.(Benim önerim vim editörü içerisindeki `:help` komutu ile ulaşabileceğiniz dokümantasyonu takip etmenizdir.) Ve unutmayın bu araç ancak ve ancak öğrenmek isteyen kişinin kendi kendine kurcalaması ve bolca alıştırmalar yapmasıyla öğrenilebilir.
