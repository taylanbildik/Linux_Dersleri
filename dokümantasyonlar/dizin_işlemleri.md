# Dizinler Hakkında

Linux işletim sisteminde bütün programlar, aygıtlar, dosyalar ve genel olarak sistemin tüm ögeleri, hiyerarşik bir düzen içerisinde çeşitli klasörlerde tutuluyor. Normalde eğer grafiksel arayüzdeyken dizinlerde gezinti yapacaksak, dosya yöneticisi aracını kullanarak istediğimiz dizinlerde gezinti yapıp dizinlerin içeriğini görüntüleyebiliyor ya da gerektiğinde düzenleyebiliyoruz. 

Grafiksel arayüze benzer şekilde söz konusu komut satırı üzerinden sistemi yönetmek olduğunda da tabii ki işlerimizi tek bir dizin altında yürütmeyeceğimiz için komut satırındayken de dizinler arasında rahatlıkla gezinebiliyor olmamız gerekiyor. İşte bu bölümde, dizinlerde rahatlıkla gezinme ve görüntüleme için gerekli komutlara tek tek değiniyor olacağız. Yani bölümün sonunda, komut satırı üzerinden tüm sistemdeki dizin hiyerarşisi içinde rahatlıkla gezinebiliyor olacaksınız. 

Fakat dizinlerde gezinmeden önce tabii ki üzerinde gezineceğimiz bu dizin yapısını tanımamız gerekiyor. Çünkü üzerinde gezineceğimiz Linux dosya sistemi hiyerarşisi, pek çoğumuzun alışık olduğu Windows’tan biraz farklı. Dizin yapısını bilmediğimizde körlemesine gezinmek zorunda kalırız bu da dizinlerde gezinti gibi son derece basit olan işlevi bile zar zor yerine getirmemize neden olur. Zaten yeni başlayan kullanıcıların dizinlerde gezinirken yaşadıkların sorunların neredeyse tamamı Linux sisteminin dizin yapısını temel düzeyde bilmiyor olmalarından kaynaklanıyor. 

# Linux Dosya Sistemi Hiyerarşisi

Söz konusu Linux olduğunda pek çok farklı dağıtım olduğunu biliyoruz. Bu sebeple temel dosya hiyerarşisi dışında dağıtıma özel olan farklı dizinler de mevcut olabiliyor. Fakat bu durumum bizim için sorun değil çünkü temel dosya sistemi hiyerarşisi tüm dağıtımlarda ortak olmak durumunda. Biz de burada temel yapıdan bahsediyor olacağız. 

Linux’ta tüm dosya ve dizinler “**root**” olarak ifade edilen “**kök”** dizini altında hiyerarşik şekilde tutuluyor. Kök dizin de slash `/` işareti ile temsil ediliyor. Ben anlaşılır olması için temel dizinleri aşağıdaki diyagramda belirttim.

![hiyerarsi.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/hiyerarsi.webp)
Gördüğünüz gibi tüm dizinler `/` işareti ile temsil edilen kök dizinin altında bulunuyor. Bu durumu bizzat sistemimizden teyit etmek için kök dizini listelemek üzere `ls /` komutunu girebiliriz. 

```bash
└─$ ls /
bin             lib         opt   tmp
boot            lib32       proc  usr
dev             lib64       root  var
etc             libx32      run   vmlinuz
home            lost+found  sbin  vmlinuz.old
initrd.img      media       srv
initrd.img.old  mnt         sys
```

Burada kullanmış olduğumuz `ls` komutu listeleme yapan bir araç ve biz de `/` dizini içerisindekileri listelemek için `ls /` komutunu kullandık. Bu listede benim diyagramda belirttiklerime ek olarak harici dizinler olduğunu görebiliyoruz. Zaten anlatımın başında kullanılan dağıtıma göre bu gibi ekstra içerikler olabileceğinden bahsetmiştik. En temel dizinleri tanımamız yeterli. Sırasıyla açıklayarak devam edelim.

## <span class="text-danger">Ana Dizin</span> | <span class="text-danger">Kök Dizin</span> | <span class="text-danger">/</span>

Dosya sistemi hiyerarşisinin en tepe noktasını yani başlangıcını temsil eden ana dizine kök(root) dizin deniyor olsa da aslında ana dizinin doğrudan bir ismi olmadığı için yalnızca slash `/` işareti ile temsil ediliyor. Kök dizin, yapısı gereği Linux sistemini başlatmak için gereken tüm dosyaları içermesi gerekiyor.

## <span class="text-danger">/</span><span class="text-primary">bin</span> <span class="text-secondary">ve</span> <span class="text-danger">/</span><span class="text-primary">sbin</span>

***/bin*** ve ***/sbin*** dizinlerinin ismi, “**bin**ary” yani “ikili” ifadesinin kısaltmasından geliyor. Bu dizinlerde; sistemin başlatılması, yönetimi ve gerektiğinde onarımı için kullanılan araçların çalıştırılabilir "**binary**" dosyalarını barındırılıyor. Örneğin konsola girdiğimiz komutların **PATH** yolu üzerinde arandığını biliyoruz. PATH yoluda bu ***/bin*** ve ***/sbin*** dizinleri de bulunuyor. Bu sayede çalıştırılabilir olan ikili dosyalar bulunup çalıştırılabiliyor. 

***/bin*** (**Bin**aries): Bu dizin, tüm kullanıcıların erişebileceği temel işlevleri gerçekleştirmek için kullanılan programları içeriyor.

***/sbin*** (**S**ystem **Bin**aries): Bu dizin, sistem yöneticileri tarafından kullanılan ve sistem yönetimi ve bakımıyla ilgili önemli programları içeriyor.

Örneğin sistem yöneticisi tarafından kullanılabilen fdisk isimli aracın varlığını her iki dizin içerisinde sorgulayabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls /sbin | grep fdisk
cfdisk
docfdisk
fdisk
sfdisk

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls /bin | grep fdisk                                                                 

┌──(taylan㉿linuxdersleri)-[~]
└─$ 
```
Buradaki `grep` aracından daha sonra ayrıca bahsediyor olacağız, fakat şimdilik filtreleme yapma işlevinde olduğunu bilmeniz yeterli. Biz öncelikle `ls` komutu ile ilgili dizin içeriğini listeledik, daha sonra `grep` aracı ile bu dizi içeriğinde "***fdisk***" isimli bir dosya var mı diye filtrelemiş olduk. Bu sayede disk yönetimi gibi sistem yöneticisinin yetkileri dahilinde olan `fdisk` aracının yalnızca ***/sbin*** dizini içinde bulunduğunu teyit etmiş olduk.

Benzer şekilde sistemin yeniden başlatılmasını sağlayan `reboot` isimli araç için de aynı durumu teyit edebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls /bin | grep reboot

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls /sbin | grep reboot                                                                 
grub-reboot
reboot
```

Neticede "***bin***" olarak geçen dizinlerin "**binary**" yani çalıştırılabilir ikili dosyaları barındıran dizinler olduğunu, "***sbin***" dizininin ise sistem yöneticilerinin ihtiyaç duyabileceği türden araçları barındırdığını teyit etmiş olduk.

## <span class="text-danger">/</span><span class="text-primary">boot</span>

Önyükleme yani "boot" aşaması için gereken dosyaları barındıran dizindir. Ne yaptığınızdan emin olmadığınız sürece bu dizini kurcalamanız gerekmeyecektir. 

## <span class="text-danger">/</span><span class="text-primary">dev</span>

***/dev*** dizini “**dev**ices” yani “aygıtlar” kelimesinin kısaltmasından geliyor. Bu dizin, sisteme bağlı olan donanım aygıtlarını temsil eden aygıt dosyalarını içeriyor. Linux üzerinde her şey bir dosya gibi ele alındığı için sisteme bağlı olan aygıtları temsil eden dosyalar da bu dizinde bulunuyor.

## <span class="text-danger">/</span><span class="text-primary">etc</span>

***/etc*** dizini, sistemdeki konfigürasyon dosyalarının tutulduğu dizindir. Genellikle istisnalar hariç Linux sisteminde bir hizmetleri yapılandırmamız veya diğer çeşitli temel ayarları değiştirmemiz gerekiyorsa, bakacağımız ilk yer burasıdır. 

## <span class="text-danger">/</span><span class="text-warning">home</span>

Daha önce de bahsetmiş olduğumuz gibi ***home*** dizini altında her bir kullanıcının ismiyle oluşturulmuş klasörler vardır. Bu klasörler ilgili kullanıcının ev dizini olarak geçer. Her bir kullanıcının kendi kullanıcı hesabına özgü olan çeşitli konfigürasyon dosyaları, belgeleri resimleri ve diğer çeşitli dosyaları bu dizinde bulunur. Örneğin ben “taylan” isimli kullanıcı hesabını yönettiğim için benim kullanıcı hesabımın ev dizini ***/home/taylan*** adresinde yer alıyor. Dizin içeriğine göz atmak için `ls /home/taylan/` komutuyla listeleyebiliriz.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ ls /home/taylan/
Desktop    Music     Templates
Documents  Pictures  Videos
Downloads  Public    yeni-klasor
```

Bakın burada “Desktop” “Documents” “Downloads” “Pictures” ve benzeri dizinlerin yanında benim kendi oluşturduğumu dizinler ve dosyalar da bulunuyor. Eğer hatırlıyorsanız kendi kullanıcı hesabım için kabuğun konfigürasyonlarını kendi ev dizinimdeki ***.bashrc*** dosyasını değiştirerek düzenlemiştim. Diğer kullanıcıların da kendi ev dizinlerinde kendilerine ait olan ve o kullanıcı hesabını etkileyen dosyalar vardır. Bu sebeple her bir kullanıcının kendine ait dosyaları barındırabileceği ev dizinleri ***/home*** klasörü a    ltında tutuluyor. 

## <span class="text-danger">/</span><span class="text-primary">lib</span>

Eğer ana dizinin içeriğini tekrar listeleyecek olursak **lib** ile başlayan birden fazla dizin(lib32,lib64,libx32) görebiliyoruz. 

![2.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/2.webp)
Buradaki **lib** ifadesi “**lib**rary” yani “kütüphane” ifadesinin kısaltmasından geliyor.

Sistemdeki araçların ortak olarak kullandığı kütüphane(library) dosyaları buradaki uygun dizinlerde tutuluyor. Bu sayede tekrar tekrar aynı kütüphane dosyalarının diskte yer işgal etmesi önleniyor. İlgili araçlar, gerektiğinde ortak olarak bu kütüphane dosyalarını kullanabiliyorlar. Kütüphaneler için birden fazla dizin olması da uyumluluk için 32 ve 64 bit kütüphane dosyaların barındırılmasından kaynaklanıyor.

## <span class="text-danger">/</span><span class="text-primary">usr</span>

***/usr*** dizini aslında neredeyse tüm komut dosyalarının, kütüphane dosyalarının ve çeşitli dokümantasyonlarla birlikte sistemin normal işleyişi için gerekli olan dosyaların bulunduğu dizindir. 

İlk zamanlar ***lib bin sbin*** dizinleri ayrı ayrı tutuluyorken, hepsine tek bir noktadan ulaşma fikri dolayısıyla tüm dizinler aslında ***usr*** altında taşınmıştır. Bizim ana dizin altında ***lib bin sbin*** olarak gördüğünüz dizinler de aslında geriye dönük uyumluluk için ana dizinde gözüken ama ***usr*** klasörüne sembolik olarak bağlı olan dizinlerdir. Yani bu dizinlerin asılları da ***usr*** dizini altında.

Bu durumu gözlemlemek için `ls -ld /*` komutunu girebiliriz.

![usr.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/usr.webp)Burada benim kırmızı kutucuklar içine alarak özellikle belirttiğim gibi, ***lib bin sbin*** dizinleri aslında ***/usr*** dizini altında bulunuyor. Ana dizin altında hala bu dizinlerin sembolik bağlantılarını görüyor olma nedenimiz geriye dönük uyumluluktur. 

Geçmişte bu dizinler kendi başına ana dizin(***/***) altında bulunduğu için geçmişten beri aynı konfigürasyonlar ile çalışan araç ve yapıların çalışmaya devam edebilmesi için yani geriye dönük uyumluluk için sembolik olarak hala ana dizin altında gözüküyorlar. Örneğin bir araç binary dosyaya erişmek üzere ***/bin*** dizinini kontrol ediyorsa, otomatik olarak ***/usr/bin*** dizinine yönlendirilerek sorunsuzca aracın çalışmaya devam etmesi sağlanmış oluyor.


## <span class="text-danger">/</span><span class="text-primary">opt</span>

***/opt*** klasörü harici olarak kurulan bazı araçların(üçüncü taraf yazılımlar) kendi isimlerindeki klasörlerde tüm gerekli dosyalarının barındırıldığı dizindir. Yani ***usr*** dizininde olduğu gibi çalıştırılabilir dosyası ***bin*** dizinine ya da kütüphane dosyaları ***lib*** dizinine eklenmez. İlgili aracın tüm dosyaları ***opt*** dizini altındaki kendi ismiyle oluşturulmuş olan klasör içinde bulunur. 

## <span class="text-danger">/</span><span class="text-primary">media</span> <span class="text-secondary">ve</span> <span class="text-danger">/</span><span class="text-primary">mnt</span>

***media*** ve ***mnt*** dizinlerinin her ikisi de medya aygıtlarının bağlanması için kullanılıyor. Aralarındaki fark ***media*** dizini “USB bellek, harici disk, CD/DVD sürücüsü vb.” gibi harici çıkarılabilir medya aygıtlarını bağlamak için kullanılırken, ***mnt*** dizini ise genellikle geçici olarak disk bölümlerini bağlamak için kullanılan bir dizindir. 

## <span class="text-danger">/</span><span class="text-primary">proc</span>

***proc*** dizini önyükleme sırasında oluşturulduğu ve kapatma sırasında kaldırıldığı için her zaman mevcut gibi görünse de aslında sisteminiz ve o anda çalışan işlemleri hakkında birçok alakalı bilgi içeren sanal bir dosya sistemidir. Örneğin yeni bir işlem başlattığınızda bu dizin altında bu işlemle ilişkili yeni bir sanal dizin oluşturulacaktır. Dizinin "**proc**" ismi de "**process**" yani "**işlem**" ifadesinin kısaltmasından geliyor zaten. 

## <span class="text-danger">/</span><span class="text-primary">tmp</span>

***tmp*** dizini "**tem**porary" yani "geçici" ifadesinden kısaltmasından geliyor. Geçici olarak tutulması gereken dosya ve klasörler için kullanılan bir dizin adresidir. Hem kullanıcılar hem de programlar, geçici içerikler için bu dizini kullanabiliyor. Bu dosyalar geçici olarak RAM üzerinde tutulduğu için bu dizin altındaki veriler sistem yeniden başlatıldığında silinmiş oluyor. 

## <span class="text-danger">/</span><span class="text-warning">root</span>

***root*** dizini root kullanıcısının ev dizinidir. Tıpkı bizim ev dizinlerimizin ***home*** dizini altında kullanıcı adımızla barındırılıyor olması gibi root kullanıcısının ev dizini de ana dizinde “root” isimli klasörde barındırılıyor. 

## <span class="text-danger">/</span><span class="text-primary">var</span>

***var*** dizininin ismi “**var**iable” yani “değişken” ifadesinin kısaltmasından geliyor. Bu şekilde isimlendirilmesinin nedeni, sürekli yenileri eklenen ve değişen dosyaların burada barındırılıyor olmasıdır. Log dosyaları, çeşitli veritabanı dosyaları ve benzeri pek çok veri bu dizin altında tutuluyor. 

## <span class="text-danger">/</span><span class="text-primary">sys</span>

***/sys*** dizini, çeşitli sistem bileşenleri ve sürücüleri hakkında bilgiler içeren dizindir.

## <span class="text-danger">/</span><span class="text-primary">srv</span>

***/srv*** dizini "**s**e**rv**ice" yani "servis" ifadesinin kısaltması olarak isimlendirilmmiş bir dizindir. Sistemin sunduğu hizmetlere ait veri ve yapılandırma dosyalarını barındıran. Örneğin dosya paylaşımı için kullanılan FTP hizmeti dosyaları burada tutulabilir. Ya da örneğin Nginx ile bir websitesi sunuyorsanız, dosyaları /srv/www/ dizini altında tutuluyor olabilir. Özetle sunucunun sunduğu hizmetlerin çeşitli dosyalarını barından bir dizindir.

## <span class="text-danger">/</span><span class="text-primary">run</span>

Sistem başlangıcından itibaren, sistem kaynaklarının nasıl kullanıldığına dair çeşitli bilgileri tutan bir dizindir. Bu veriler, sistemin o anda çalışan işlemlerinin ihtiyaçlarını karşılamak için gerekli olan türde geçici verilerdir. Örneğin geçici verileri tutmak veya araçlar arasında veri paylaşımını ve yönetimini mümkün kılmak için kullanılan çeşitli bilgiler bu dizin altında tutulur. İsminde de olduğu gibi "**run**ning" yani "çalışma" halindeki bilgiler bulunduğundan, sistem her yeniden başlatıldığında bu veriler de temizlenir. 

Böylelikle temelde haberdar olmamız gereken dizinlerinden kısaca bahsetmiş olduk. Bu sayede artık ihtiyacınız olan dosyaların ve dizinlerin olası konumları hakkında genel bilgi sahibisiniz. Yine de daha detaylı şekilde bilgi almak isterseniz, dosya sistemi hiyerarşi standartlarının belirlendiği [buradaki](https://refspecs.linuxfoundation.org/fhs.shtml) açıklamalara göz atabilirsiniz. 

Özetleyecek olursak Linux dosya sisteminde tüm dizinler ana dizine(***/***) bağlıdır. Yani tıpkı ağaç gibi tek bir noktadan başlayan ve dallanarak genişleyen bir hiyerarşik yapı kurulmuştur. Benimsenmiş olan bu ortak hiyerarşi yapısı sayesinde Linux ekosisteminin çok daha stabil ve sürdürülebilir olması sağlanmıştır. Standart bir dosya sistemi hiyerarşisi olmasaydı, geliştiriciler ve kullanıcıların farklı dağıtımları destekleyip kullanabilmesi çok çok zorlaşırdı. Dolayısıyla özgür yazılım ekosisteminin sunduğu tüm faydalardan tüm dağıtımların ve tüm kullanıcıların faydalanması da pek kolay olmazdı. Neyse ki burada değindiğimiz dizin hiyerarşisi, istisnalar hariç neredeyse tüm dağıtımlarda standart olduğu için dilediğiniz bir dağıtımdaki dizinlerde sorunsuzca gezinebilirsiniz. 

Artık bu bilgiler ışığında bu dizin hiyerarşisi içerisinde nasıl gezinebileceğimizden bahsederek devam edebiliriz.

# `pwd` Komutu

Hani bir yeri ziyaret ettiğimizde karşımıza çıkan haritalarda şu an buradasınız şeklinde yazar ya işte bunun komut satırı  arayüzündeki karşılığı da tam olarak pwd komutu.

![Untitled](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/pwd.webp)
Bu komut sayesinde mevcut bulunduğumuz dizinin tam adresini öğrenebiliyoruz. `pwd` komutu, İngilizce "**p**rint **w**orking **d**irectory" yani "çalışma dizini yazdır" ifadesinin kısaltmasından geliyor. Özellikle komutun açılımından ve İngilizce karşılığından da bahsettim çünkü komutların açılımlarını ve İngilizce karşılıklarını bilirsek, daha sonra ilgili komutları çok daha kolay hatırlayabiliyoruz. Zaten genellikle komutların açılımları da görevleri ile ilişkili oluyor. 

Komutumuzu test etmek için komut satırımızı açalım. istisnalar hariç komut satırı ilk açıldığına kabuk varsayılan olarak bizim mevcut kullanıcı hesabımızın ev dizinimizde çalışmaya başlar. Bu durumu teyit edebilmek için hemen `pwd` komutunu girelim.

```jsx
┌──(taylan@linuxdersleri)-[~]
└─$ pwd
/home/taylan
```

Bakın aldığımız bu çıktı bizim şu an komut satırında çalışmakta olduğumuz dizini belirtiyor. Bu çıktı benim şu anda kullanmakta olduğum kullanıcının ev dizininde çalışmakta olduğumu belirtiyor. Daha net görebilmek adına grafiksel arayüz üzerinden de bizzat kontrol edebiliriz. Bunun için hemen dosya yöneticisini açalım. 

![3.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/3.webp)
Zaten bakın, dosya yöneticim de varsayılan olarak benim kendi ev dizinimde açılıyor. Burada benim Desktop(Masaüstü), Documents(Dokümanlar) ya da Downloads(İndirilen) gibi kişisel amaçlarım için kullanabileceğim klasörler var. İşte burası şu anda kullandığım taylan kullanıcısına ait olan ev dizinidir.

Bu dizinin benim ev dizinim olduğunu ve aldığımız çıktının anlamını iyi kavrayabilmemiz için ben öncelikle hemen dosya sistemi hiyerarşisinin en tepe noktasına geçiş yapıp oradan tekrar bu dizine kadar gelerek size bizzat göstermek istiyorum. 

Bunun için buradan dosya sistemi kısmına tıklayalım.

![4.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/4.webp)
Eğer sizin kullandığınız dosya yöneticisi aracında benimki gibi “file system-dosya sistemi” ifadesi geçmiyorsa, biraz kurcalayıp ana dizini bulabilirsiniz. “Diğer dizinler” şeklinde bir sekme veya “bilgisayarım” şeklinde bir sekme vardır, oradan ana dizine ulaşabilirsiniz. Grafiksel arayüzler farklı olabildiği için ana dizine nasıl ulaşacağınızı kendiniz bulabilirsiniz. Zaten ana dizine ulaştığınızda tıpkı bende olduğu şekilde bu temel klasörleri görüyor olacaksınız. 

![5.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/5.webp)
Bakın şu an gördüğümüz tüm bu klasörler, mevcut işletim sistemini oluşturan dosyaları barındıran klasörler. Burada bulunduğum dizin işletim sisteminin dosyalarını barındıran tüm dosya ve klasörlerin en tepe noktası. Bu dizinin adresini görmek için adres çubuğuna bakabiliriz.

![6.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/6.webp)
Bakın bulunduğumuz dizinin ismi **slash** `/` karakteri olarak gözüküyor. Komut satırı arayüzünde aldığımız çıktıya da dönecek olursak bakın çıktının en başında slash işareti bulunuyor. İşte bu slash işareti tam olarak şu anda dosya yöneticisi üzerinden görüntülediğimiz bu dizini temsil ediyor. 

![7.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/7.webp)
Bu slash dizini tüm işletim sistemini oluşturan dosyaları barındıran en tepedeki dizin. Diğer tüm dosya ve klasörler bu dizin altındaki diğer klasörlerin altında bulunuyor. Bu durumu teyit etmek için çıktıda aldığımız ***/home/taylan*** yolunu dosya yöneticisi üzerinden takip edebiliriz.

![8.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/8.gif)
İşte komut satırında çalışmakta olduğumuz dizini belirten bu çıktı, tıpkı bizim grafiksel arayüzden de adım adım takip ettiğimiz gibi benim ev dizinimi temsil ediyor. Yani ben “taylan” kullanıcısı olarak konsolumu ilk açtığımda tıpkı dosya yöneticisinde de olduğu gibi kendi ev dizinimden(***/home/taylan***) çalışamaya başlıyorum.

Neticede konsolun ilk açıldığında kullanıcının ev dizininden çalışmaya başladığını ve `pwd` komutunun da kabuğun o anda çalışmakta olduğu dizinin bilgisini verdiğini bizzat teyit etmiş olduk. Dilerseniz farklı bir dizine geçip, konsolu burada açarak `pwd` komutunu tekrar test edebiliriz. 

![9.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/9.gif)
Gördüğünüz gibi komut satırının çalışmakta olduğu dizini `pwd` komutu ile öğrenmiş olduk.

Bence artık `pwd` komutunun işlevi tam olarak anlaşılmıştır. Komut satırı arayüzündeyken hangi dizinde çalıştığınızı merak ediyorsanız `pwd` komutunu kullanmanız yeterli.

Ayrıca `pwd` komutu dışında eğer dikkatinizi çektiyse hangi dizinde çalıştığım aslında ismimden sonra konsolda **prompt** olarak isimlendirilen kısmında da gözüküyor. 

![10.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/10.webp)
Yani `pwd` komutunu kullanmadan da buraya bakarak, hangi dizinde olduğunuzu öğrenebilirsiniz. Hatta bakın ilk açtığım konsolda ev dizinde çalıştığım için ev dizinim tilde `~` işareti ile temsil ediliyor. 

![11.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/11.webp)
Bu sebeple burada ben uzun uzadıya ***/home/taylan/*** dizini yerine bu dizinle aynı anlama gelen ***~*** işaretini görüyorum. 

Aslında tıpkı çalışmakta olduğumuz dizini öğrenebildiğimiz gibi **prompt** olarak geçen bu bölümden başka bazı bilgiler de edinebiliyoruz. Ancak konumuzdan çok fazla uzaklaşmamak adına yeri geldiğinde ayrıca değinmek üzere prompt konusunu şimdilik noktalayalım. Ama aklınızda bulunsun prompt gerçekten önemli bir yapı. Tıpkı burada bahsettiğimiz gibi gerektiğinde epey bilgi verici olabiliyor. 

Konumuza dönecek olursak **prompt** üzerinde gözüken bu dosya bilgisi her ne kadar kullanışlı olsa da her zaman buradan bilgi edinemeyeceğiniz birkaç istisnai durum var. Öncelikle bu özellik her sistemde **prompt** için konfigüre edilmemiş olabilir. Bunun haricinde çalıştığınız dizin adresi çok uzun olduğu için komut satırında doğru şekilde görüntülenemiyor da olabilir. 

Dolayısıyla her ne kadar **promptta** yer alan, çalışmakta olduğumuz dizinin bilgisi faydalı olsa da, çalıştığımız dizin hakkında en okunaklı bilgiyi çoğunlukla yine `pwd` komutu sayesinde ediniyoruz.

# `cd` Komutu

Dizinlerde gezinmek için İngilizce "**c**hange **d**irectory" yani "dizini değiştirme" ifadesinin kısaltmasından gelen `cd` komutunu kullanabiliyoruz. Dizin değiştirmek için tek yapmamız gereken `cd` komutundan sonra gitmek istediğimiz dizinin tam adresini belirtmek. 

Öncelikle bulunduğumuz dizini öğrenmek için `pwd` komutunu kullanabiliriz.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ pwd
/home/taylan
```

Ben şu an kendi ev dizinim olan ***/home/taylan*** dizininde bulunuyorum. Şimdi bir de bu dizinde hangi dosya ve klasörler var diye `ls` komutu ile kontrol edelim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ ls
Desktop    Music     Templates
Documents  Pictures  Videos
Downloads  Public    yeni-klasor
```

Bakın burada `ls` komutu sayesinde elde ettiğim çıktı, benim mevcut bulunduğum dizinin içeriği. Ben “***Desktop***” klasörüne geçiş yapmak için `cd Desktop` şeklinde komutumu girip, dizin değişimini teyit etmek için de `pwd` komutunu kullanıyorum .

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ cd Desktop/

┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ pwd                                  
/home/taylan/Desktop
```

`pwd` komutunu kullanarak veya doğrudan prompt üzerindeki bilgi ile de teyit edebildiğimiz üzere bakın şu an ***Desktop*** dizinine geçiş yapmış bulunuyorum. Örnek üzerinden gördüğünüz gibi, mevcut bulunduğumuz dizin içerisindeki bir klasörlere geçiş yapmak için yalnızca ilgili klasörün ismini yazmamız yeterli oldu. Yani ben ev dizinimdeydim, ev dizini içerisinde ***Desktop*** klasörü bulunuyordu. Bu sebeple yalnızca `cd Desktop` komutu ile ***Desktop*** klasörüne kolayca geçiş yapabildim. Yani **yalnızca klasörün ismini yazarak geçiş yapmak için zaten halihazırda o klasörün bulunduğu dizinde olmamız gerekiyor**. İşte bu kullanıma “relative path” yani “göreli yol” deniyor. Buradaki “göreli yol” ifadesi, yalnızca bulunduğunuz dizinden itibaren geçerli olan yolu tasvir ediyor.

Geçiş yapmak istediğim klasör mevcut çalışmakta olduğum dizin içinde bulunmuyorsa, bu klasörün dosya sistemi hiyerarşisindeki tam dizin adresini belirtmek zorundayım. Örneğin ben ana(***/***) dizindeki ***etc*** dizini altında yer alan ***apt*** klasörüne gitmek istiyorsam `cd` komutunun ardından ***/etc/apt*** dizin adresini tam olarak girmem gerekiyor. Burada ilk girdiğim slash “***/***” kök dizinini yani ana dizini temsil ederken, ***etc*** ile ***apt*** arasında yer alan ikinci slash “***/***” işareti ise ***etc*** dizini altındaki ***apt*** klasörüne geçiş yapılması gerektiğini belirtiyor. İlk slash işaretinden sonraki slash işaretleri, dizin isimlerini birbirinden ayırmak için kullandığımız bir sembol. 

![12.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/12.webp)
Hemen geçiş yapmak için komutumuzu girelim. 


```bash
┌──(taylan@linuxdersleri)-[~]
└─$ cd /etc/apt  

┌──(taylan@linuxdersleri)-[/etc/apt]
└─$ pwd
/etc/apt
```

Prompta bakarak ve pwd komutu ile dizini değiştirdiğimizi de teyit etmiş olduk. Yani ben şu anda ***etc*** dizini altındaki ***apt*** klasöründe bulunuyorum. Peki bu dizine bir anda nasıl atlayabildik ? Tabii ki ilgili dizinin tam adresini belirterek. 

İlgili dizinin tam adresini verdiğim için kabuk tek seferde sorunsuzca ilgili dizini bulup geçiş yapabildi. Buradaki tam adresten kastım, sistem üzerindeki tüm dizinler **kök(”*/”*) dizininden başladığı** için kök dizini de dahil ederek ilgili dizine giden yolun tüm bilgisini adım adım sunmak. Bu şekilde belirtilen dizin adreslerine de “absolute path” yani “kesin yol” deniyor. 

Göreli yol bulunduğumuz dizinden itibaren geçerli olan adresin tarif edilmesiyken, kesin yol ilgili adresin dosya sistemi hiyerarşisinin en tepe noktasından başlanarak eksiksizce tarif edilmesiyle oluyor. 

Dizinler arasında gezinirken en çok dikkat etmeniz gereken detay bu göreli ve kesin yol kavramları. Zaten anlaşılması sön derece kolay. Hadi emin olmak için benzer örneği yanlış şekilde tekrar ele alalım. Daha önce ben kendi ev dizinimde olduğum için yalnızca `cd Desktop` komutunu girerek kendi masaüstü klasörüme geçiş yapmıştım. Şimdi aynı komutu ***apt*** dizini içindeyken girip yine masaüstüme geçiş yapmayı deneyebilirim. 

```bash
┌──(taylan@linuxdersleri)-[/etc/apt]
└─$ cd Desktop
bash: cd: Desktop: No such file or directory
```

Bakın böyle bir dosya veya klasör bulunmuyor diye hata aldık çünkü gerçekten de bulunduğumuz ***apt*** klasörü içinde ***Desktop*** isminde bir klasör bulunmuyor. Bu durumu `ls` komutu ile teyit edebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[/etc/apt]                            
└─$ ls                                               
apt.conf.d     sources.list    trusted.gpg.d             
auth.conf.d    sources.list~
preferences.d  sources.list.d
```

Ben bu ***etc*** dizini atlındaki ***apt*** klasöründeyken göreli şekilde yani `cd Desktop` şeklinde komutumu girdiğimde, kabuk mevcut dizindeki ***Desktop*** isimli klasöre geçiş yapmak istediğimi düşünüyor ancak bu dizinde bu isimde bir klasör bulunmadığı için doğal olarak hata veriyor. 

Şimdi aynı komutu bu kez kendi ev dizinimdeki ***Desktop*** klasörünün tam dizin adresini belirtecek şekilde yani kesin yolunu belirtecek şekilde de girmeyi deneyebilirim. 

```bash
┌──(taylan@linuxdersleri)-[/etc/apt]
└─$ cd /home/taylan/Desktop/                               

┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ pwd                                                  
/home/taylan/Desktop
```

Bakın kesin yolu belirterek, şu anda hangi dizinde çalıştığım fark etmeksizin gitmek istediğim Desktop dizinine komut satırı üzerinden de sorunsuzca erişebildim. 

Neticede bizzat örnekler üzerinden de teyit ettiğimiz gibi eğer geçiş yapmak istediğiniz klasör çalışmakta olduğunuz mevcut dizinde bulunmuyorsa, ilgili klasörün **tam dizin adresini** yani kesin yolunu kök dizinden itibaren belirtmeniz gerekiyor. Eğer geçiş yapacağınız klasör zaten kabuğun halihazırda çalışmakta olduğu dizinin içinde veya altında bulunuyorsa o zaman göreli konumu kullanabilirsiniz. Göreli konum belirtirken dizin adresinin en başına slash işaretini eklememiz gerekmiyor çünkü **en baştaki slash işareti kök dizine gidilmesi,** oradan diğer dizinlere geçiş yapılması gerektiği anlamına geliyor. 

Örneğin ben tekrar ev dizinime dönmek için `cd /home/taylan/` şeklinde komutumu girebilirim. Ancak ev dizinindeyken örneğin ***Desktop*** isimli klasöre geçiş yapmak için `cd /Desktop` şeklinde komut giremem.

```bash
┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ cd /home/taylan/                                       

┌──(taylan@linuxdersleri)-[~]
└─$ cd /Desktop                                          
bash: cd: /Desktop: No such file or directory
```

Böyle bir dosya veya dizin yok şeklinde hata alıyoruz çünkü bu komutumuzla, öncelikle kök(”***/***”) dizine gitmemiz gerektiğini oradan da ***Desktop*** isimli klasöre geçiş yapılması gerektiğini belirtmiş oluyoruz. Ancak kök dizin altında “Desktop” isimli bir klasör bulunmuyor.

`cd /Desktop` komutu yerine mevcut bulunduğumuz dizin altındaki ***Desktop*** klasörüne geçmek için yalnızca komutumuzu en başta slash olmadan yani `cd Desktop` şeklinde girmemiz yeterli. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ cd /Desktop
bash: cd: /Desktop: No such file or directory

┌──(taylan@linuxdersleri)-[~]
└─$ cd Desktop                                          

┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ pwd                                                  
/home/taylan/Desktop
```

Yani, olay tamamen o anda hangi dizinde olduğunuz ve hangi dizine geçiş yapmak istediğinizle ilgili. Kabuk sihirli bir biçimde gitmek istediğiniz dizini kendi kendine bilemeyeceği için o anda bulunduğunuz ve gitmek istediğiniz dizinlere göre uygun şekilde komut girmeniz gerekiyor. Gitmek istediğiniz dizin, mevcut bulunduğunuz dizinde veya altındaysa bu durumda başta slash işareti olmadan göreli yolu belirtmeniz gerekiyor. Eğer gitmek istediğiniz dizin sizin o an çalışmakta olduğunuz dizinin içinde değilse, o dizine giden kesin yolu belirtmek için başta slash işareti ile ana dizinden başlayıp o dizine kadar giden tüm yolu belirtmeniz gerekiyor.

Bu açıklamaları yapıp göreli ve kesin yol üzerinde özellikle duruyorum çünkü yeni başlayan çoğu kullanıcı kesin yol için tam dizin adresi belirtirken kök dizinini temsil eden en baştaki slash işaretini unutabiliyor. Ya da tersi şekilde mevcut bulunduğu dizin altındaki bir klasöre geçiş için en başta slash ekleyip ilgili dizinin kök dizini altında olmamasına rağmen kök dizinde aranmasına sebep olabiliyor. Neticede kabuğa doğru adres tarif edilmezse, kabuk da doğru dizini bulup geçiş yapamıyor. Gerçek dünyadaki yol tarifleri gibi düşünün, yanlış yol tarifiyle doğru adrese gitmemiz mümkün değil. Lütfen bu detaya dikkat edin. Benim anlatımlarımla sınırlı kalmayın mutlaka bu konuda pratik yapın. Zaten pratik yaptığınızda kesin yol ve göreli yol kavramını net biçimde kavrayacaksınız çünkü benim anlattığımdan çok daha kolay bir konu aslında. Yani uygulamak, anlatmaktan çok daha kolay. Tek ihtiyacınız bizzat pratik yapıp işleyişi kavramak.

Neticede komut satırı üzerinden dizinlerde gezinmek için cd komutunu kullanabildiğimizi öğrendik. Biz en temel kullanım biçimini ele aldık fakat söz konusu komut satırı üzerinde rahatlıkla gezinebilmek olduğu için `cd` komutunun bize pek çok kolaylıkla sağlayan esnek özellikleri de bulunuyor.

## Üst Dizine Geçiş

Bir üst dizine dönmek için `cd ..` komutunu kullanabiliyoruz.

 

```bash
└─$ pwd
/home/taylan/Desktop

┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ cd ..

┌──(taylan@linuxdersleri)-[~]
└─$ pwd
/home/taylan
```

`pwd` komutu ile de teyit edebildiğimiz gibi `cd ..` komutunu kullanarak bir üstteki dizine geçiş yapabiliyoruz.

Kabuk için tek nokta `.` karakteri **mevcut dizini** temsil ederken, iki nokta `..` işareti ise **bir üst dizini** temsil ediyor. Yani iki nokta kullandığınızda kabuk bir üst dizini kastettiğinizi anlıyor.

Bu komut yerine bir üst dizine dönmek için `cd /home/taylan/` komutunu da kullanabildim ancak gördüğünüz gibi bu kadar zahmete hiç gerek yok. İki nokta sayesinde bir üst dizini otomatik olarak belirtebiliyorum zaten.

Üstelik tek tek `cd ..` komutunu kullanmak yerine tek seferde, gidilecek daha üst dizinleri de belirtebiliriz. Ben iki üst dizine dönmek için `cd ../../` komutunu giriyorum.

```bash
└─$ pwd
/home/taylan

┌──(taylan@linuxdersleri)-[~]
└─$ cd ../../

┌──(taylan@linuxdersleri)-[/]
└─$ pwd
/
```

Gördüğünüz gibi, iki üst dizine dönmek için peşi sıra slash işaretleri ile ayırarak iki nokta karakterlerini yazmamız yeterli oldu.

Buradaki ilk iki nokta beni ***taylan*** dizininden çıkardı, ikinci iki nokta, ***home*** dizininden çıkardı. Neticede kök dizine ulaşmış oldum. Tıpkı iç içe olan dizinlere geçiş yaparken dizin isimlerini ayırmak için belirttiğimiz gibi tek yapmamız gereken peşi sıra iki nokta karakterini kullanırken üst dizinlere geçiş yapmak istediğimizin anlaşılması için bu iki nokta karakteri arasında slash işaretini belirtmek.

Ayrıca bir üst dizine gidip, başka bir dizine geçiş de yapabiliriz. Örnek gösterebilmek için önce `cd /home/taylan/Downloads` komutu ile dizine geçiş yapalım. 

```bash
┌──(taylan@linuxdersleri)-[/]
└─$ cd /home/taylan/Downloads/

┌──(taylan@linuxdersleri)-[~/Downloads]
└─$ pwd
/home/taylan/Downloads
```

Ben bu dizinden bir üst dizine dönmek, oradan da Desktop isimli klasöre geçiş yapmak istiyorum. Normalde eğer kesin yolu belirtecek olsak, `cd /home/taylan/Desktop` şeklinde uzun uzadıya yazmamız gerek ancak bunun yerine `cd ../Desktop` komutunu da kullanabiliriz.

```bash
┌──(taylan@linuxdersleri)-[~/Downloads]
└─$ pwd
/home/taylan/Downloads

┌──(taylan@linuxdersleri)-[~/Downloads]
└─$ cd ../Desktop/                                       

┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ pwd                                                  
/home/taylan/Desktop
```

Burada girmiş olduğumuz `cd ../Desktop/` komutu ile, kabuğa “mevcut bulunduğun dizinden bir üst dizine dön, oradan da ***Desktop*** isimli klasöre geçiş yap” demiş oluyoruz. Bakın aslında bu da göreli bir yol. Neticede bir üst dizinde ***Desktop*** klasörünün yer aldığını bildiğimiz için mevcut bulunduğumuz konumdan iki nokta işareti ile bir üst dizine döndük, daha sonra slash işaretinin ardından yazdığımız için ***Desktop*** isimli klasöre de geçiş yapabildik. 

Zaten komutlarınızı girerken dosya sistemindeki dizinlerin iç içe klasörlerden oluştuğunun bilincinde olduğunuz sürece üst veya alt dizinde olma duruma göre uygun komutu kolaylıkla verebilirsiniz.

Dizinler arası geçiş biçimi tamamen sizin ihtiyaçlarınıza göre şekillenecektir. Tek yapmanız gereken bildiklerinizi harmanlayıp kullanmak. Bu noktada elbette kesin yol ve göreli yol kavramını iyi bir biçimde anlamış olmanız gerekiyor. Eğer anladıysanız zaten dizinler arasında son derece esnek yöntemlerle gezinebilirsiniz.

## Bir Önceki Dizine Dönüş

Komut satırı üzerinden işlerimizi hallerken kimi zaman birbirinden çok uzak dizinler arasında hızlıca geçiş yapmak isteyebiliriz. Bu durumda en son bulunduğumuz bir önceki dizine doğrudan atlamak için `cd -` komutunu kullanabiliyoruz.

Hemen uygulamalı olarak görmek için öncelikle `cd /etc/apt` komutu ile geçiş yapalım.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ cd /etc/apt

┌──(taylan@linuxdersleri)-[/etc/apt]
└─$ pwd
/etc/apt
```

Siz dilediğiniz bir dizine geçiş yapabilirsiniz. Ben şu anda ***/etc/apt*** dizinindeyim. Buradan da cd /home/taylan/Desktop komutu ile ev dizinimdeki masaüstü dizinine geçiş yapıyorum.

```bash
┌──(taylan@linuxdersleri)-[/etc/apt]
└─$ cd /home/taylan/Desktop/

┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ pwd
/home/taylan/Desktop
```

Şu anda da ***Desktop*** dizinindeyim gördüğünüz gibi. Eğer bir önceki bulunduğum dizine yani ***/etc/apt*** dizinine dönmek istersem `cd /etc/apt` ya da yalnızca `cd -` komutunu kullanabilirim.

```bash
┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ cd -
/etc/apt

┌──(taylan@linuxdersleri)-[/etc/apt]
└─$ pwd                                                  
/etc/apt
```

Bakın bir önceki çalıştığım dizine tek seferde geçiş yaptım ve geçiş yaptığım dizin de konsola basıldı. Tekrar deneyelim.

```bash
┌──(taylan@linuxdersleri)-[/etc/apt]
└─$ cd -                                                 
/home/taylan/Desktop

┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ pwd                                                  
/home/taylan/Desktop
```

Bakın kısacık bir komut ile bir önceki dizin adresine anında atlayabiliyorum ve atlama işlemini kolay takip edebilmem için geçiş yaptığım dizin konsola da bastırılıyor. Bence müthiş bir kolaylık.

Kabuk, her zaman bir önceki dizinin adres bilgisini tuttuğu için bu şekilde çalışmakta olduğumuz bir önceki dizine `cd -` komutu ile hızlıca geçiş yapabiliyoruz. Bu komut özellikle, iki dizin arasında gidip geliyorken işlerimizi inanılmaz kolaylaştırıyor. Neticede uzun uzadıya önceki çalıştığımız dizini yazmamıza veya dizinin tam yolunu hatırlamamıza gerek kalmıyor. Bu özellik, dosya yöneticisi ile dizinlerde gezinmekten yani grafiksel arayüz kullanımından bile çok daha pratik bir gezinti deneyimi sağlıyor, haksız mıyım ?

Hazır daha iyi bir gezinti deneyiminden ve pratiklikten bahsetmişken tabii ki otomatik tamamlama nimetlerinden bahsetmesek olmaz.

## Otomatik Tamamlamadan Faydalanmak

Daha önce kısayollar bölümünde bahsettiğimiz otomatik tamamlama özelliği sayesinde geçiş yapabileceğimiz dizin isimlerinin otomatik olarak tamamlanmasını da sağlayabiliriz. 

Örneğin ben `cd /home/taylan/` komutunu yazdıktan sonra iki kez <kbd>tab</kbd> tuşuna basarsam, ***taylan*** dizini içerisinde yer alan geçiş yapabileceğim olası dizinler listelenir. 

![13.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/13.gif)
Gitmek istediğim dizinin birazını yazıp örneğin **De** yazıp tekrar <kbd>tab</kbd> tuşuna basarsam bulunduğum dizinde bu ifadeyle başlayan yalnızca ***Desktop*** klasörü bulunduğu için, klasör ismi otomatik olarak “**Desktop”’a** tamamlanacaktır. 

![14.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/14.gif)
Benzer şekilde örneğin `cd /` yazıp iki kez <kbd>tab</kbd> tuşuna basarsak ana dizin altında bulunan gidilebilecek olası tüm dizinler yani klasörler listelenecektir. 

![15.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/15.gif)
Bizzat gördüğümüz gibi <kbd>tab</kbd> ile tamamlama işlevi, yalnızca ilgili dizinin içinde bulunan diğer dizinleri karşımıza getiriyor. Zaten mantıken olması gereken de bu. Dolayısıyla bir kısmını yazdığınız dizin adresine göre, size sunulacak tamamlama önerileri de otomatik olarak değişiyor.

![16.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/16.gif)
Özetle, otomatik tamamlama özelliği sayesinde seçeneklerimizi görebiliyor ve gerektiğinde uzun uzadıya yazmadan otomatik olarak tamamlanmasını sağlayabiliyoruz.

## Ev Dizini Kısayolu

Hatırlıyorsanız daha önce de tilde `~` işaretinin **mevcut kullanıcının ev dizinini** temsil ettiğini belirtmiştik. Şimdi bu durumu uygulamalı olarak tekrar `cd` komut üzerinden de teyit edebiliriz. Örneğin ben kendi ev dizinime geçiş yapmak istediğimde `cd /home/kullanıcı-adım` yani benim durumumda `cd /home/taylan/` şeklinde komut girmem gerekiyor. Ancak aslında bu şekilde uzun uzadıya kendi ev dizinimi belirtmem de şart değil.  Bunun yerine yalnızca `cd ~` komutunu kullandığımda zaten buradaki tilde işareti otomatik olarak benim ev dizin adresimin yerine geçiyor olacak. Eğer tilde işaretini nasıl oluşturabileceğinizi bilmiyorsanız tilde işaretini oluşturmak için klavyenizden <kbd>AltGR</kbd> + <kbd>Ü</kbd> tuşlarına aynı anda basmanız yeterli. 

Ben teyit edebilmek için öncelikle `cd /etc/` komutu ile ***etc*** dizine geçmek istiyorum. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ cd /etc/

┌──(taylan@linuxdersleri)-[/etc]
└─$ pwd
/etc
```

Şu an ben ***etc*** dizinindeydim. Buradan kendi ev dizinime dönmek için tek yapmam gereken `cd ~` komutunu girmek. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ cd ~

┌──(taylan@linuxdersleri)-[~]
└─$ pwd
/home/taylan
```

Bakın kendi ev dizinime doğrudan geçiş yaptım. Bunu hem `pwd` komutunun çıktısında hem de prompt bölümündeki tilde **~** işareti ile teyit edebiliyorum.

Ayrıca ben burada tilde işaretini tek başına kullandım ama aslında tilde işaretini tek başına kullanıp yalnızca ev dizinine geçiş için kullanmak zorunda da değiliz. Ev dizinimiz altında yer alan dizinlere kolayca geçiş yapmak için de tilde işaretini kullanabiliyoruz. Örneğin ben kendi ev dizinimdeki Desktop klasörüne geçiş yapmak istersem `cd ~/Desktop` şeklinde komut girebilirim.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ cd ~/Desktop/                        

┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ pwd                                  
/home/taylan/Desktop
```

Ayrıca tilde kullanımı dışında eğer doğrudan ev dizinimize dönmek istersek yalnızca `cd` komutunu girebiliriz. Test etmek için yine `cd /etc` komutu ile ***etc*** dizine altında geçiş yapabiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ cd /etc/                             

┌──(taylan@linuxdersleri)-[/etc]
└─$ pwd                                  
/etc
```

Bakın ben şu anda ***etc*** dizininde çalışıyorum. Kendi ev dizinime hızlıca dönmek için `cd` komutunu kullanmam yeterli. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ cd                                   

┌──(taylan@linuxdersleri)-[~]
└─$ pwd                                  
/home/taylan
```

Bakın hangi dizinde olduğum fark etmeksizin, yalnızca `cd` komutu ile anında kendi ev dizinime dönmüş oldum. Bu da sıklıkla kullanacağımız bir kısayol.

Belki şu an öğrendiklerinizin etkisi çok büyük gibi gelmiyor olabilir ancak aslında burada öğrendiğiniz bilgiler ile yetkiniz olduğu sürece tüm dosya sistemi üzerindeki dizinlerde rahatlıkla gezinebilirsiniz. Yani öğrendikleriniz aslında komut satırı üzerindeki hakimiyetiniz için çok değerli bilgiler. Neticede şimdiye kadar temelde `cd` komutu hakkında bilmemiz gerekenlerden bahsettik ancak ben yine de son olarak `cd` komutunu kullanırken dikkat etmeniz gereken birkaç detaydan daha bahsetmek istiyorum. Çünkü yeni öğrenen kişiler tarafından cd komutu kullanılırken bu hatalar sıklıkla yapılabiliyor.

## Dikkat Edilmesi Gerekenler

### Göreli ve Kesin Yol

Dikkat etmenizi istediğim ilk ve bence en sık yapılan hatalardan biri kesin yol belirtirken kök dizini belirtmek için kullandığımız en baştaki slash işaretini unutmamanız. Daha önce en baştaki slash işaretinin kök dizini yani ana dizini temsil ettiğini ve bu sebeple tam dizin adresi belirtilirken unutmamanız gerektiğini birden fazla kez söylemiştim. Bu önemli bir detay olduğu için tekrar hatırlatmak istiyorum.

![hiyerarsi.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/hiyerarsi.webp)
Anlatımın başında ele aldığımız hiyerarşik dosya sistemine tekrar bakacak olursak zaten sistemi oluşturan tüm klasörlerin kök dizinden başladığını görebiliyoruz. Ayrıca alt dizin ve üst dizin yaklaşımını da net biçimde görebiliyoruz. Örneğin bakın buradaki temsilde, ali kullanıcısının ev dizini kök dizini altındaki ***home*** klasöründe yer alan ***ali*** isimli klasörde bulunuyor. 

***home*** dizininde olan birisi için ***ali*** klasörü alt dizinken, kök ***/*** dizin ise bir üst dizini temsil ediyor. Komutlarımızı da bu doğrultuda girmemiz gerekiyor. Hatırlatacak olursak, mevcut bulunduğumuz dizin tek nokta `.` işareti ile temsil ediliyorken, bir üst dizin iki nokta `..` işareti ile temsil ediliyor. 

![17.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/17.webp)
Yani örneğin ***home*** dizini içindeyken bir üst dizine dönmek için `cd ..` şeklinde komutumuzu kullandığımızda kök dizine dönmüş oluyoruz. Bunun dışında ***home*** dizini içinde bulunan herhangi bir klasöre yani alt klasöre geçiş için de ilgili klasörün ismini girmemiz yeterli oluyor. Örneğin `cd ali` komutu ile alttaki ***ali*** klasörüne kolayca geçiş yapabiliyoruz. İşte buradaki durum göreli yola örnek. Home dizininde yer alan birine göre ***ali*** klasörü bir alttaki dizindir dolayısıyla yalnızca `cd ali` komutu ile bu dizine geçiş yapılabilir. Ya da benzeri şekilde ***ali*** dizini içinde olan birisi için `cd ..` komutu bir üst dizini yani ***home*** dizinini temsil ediyorken, ***home*** dizinindeki birisi `cd ..` komutunu girdiğimde bir üstündeki kök dizini temsil etmiş oluyor. 

![18.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/18.webp)
İşte zaten kök dizinden başlayan kesin bir yol rotası belirtmeden girdiğimiz komutların hepsi mevcut bulunduğumuz dizine göre, gitmek istediğimiz dizinin nerede olduğuyla ilgili. Bu sebeple bu yola göreli yol diyoruz.

Ayrıca alt dizin ve üst dizine geçişler dışında yani göreli yol dışında, dosya sistemi üzerinde o anda hangi dizinde olduğumuz fark etmeksizin kök dizini kullanarak kesin dizin yolunu belirtip çok farklı konumlardaki dizinlere ulaşmamız da mümkün. Örneğin ben ali kullanıcısının ev dizinindeyken ***etc*** dizini atlındaki ***apt*** klasörüne geçiş yapmak istersem `cd /etc/apt` komutu ile kesin yolunu belirterek, öncelikle kök dizine gidilmesi oradan ***etc*** dizinine geçilmesi ve son olarak da ***apt*** klasörüne geçilmesi gerektiğini kolayca ifade edebilirim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ pwd
/home/taylan

┌──(taylan@linuxdersleri)-[~]
└─$ cd /etc/apt/

┌──(taylan@linuxdersleri)-[/etc/apt]
└─$ pwd
/etc/apt
```

Eğer komut girerken en baştaki slash işaretini atlarsam kök dizini belirtmemiş olurum. Dolayısıyla mevcut bulunduğum dizindeki ***etc*** isimli bir klasöre oradan da ***apt*** isimli klasöre geçmek istediğim anlaşılır. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ pwd
/home/taylan

┌──(taylan@linuxdersleri)-[~]
└─$ cd etc/apt/
bash: cd: etc/apt/: No such file or directory
```

Bu şekilde hata aldık çünkü mevcut bulunduğum(***/home/taylan/***) dizin ile gerçekte gitmek istediğim ***etc/apt*** dizini aynı dizin kesişimine sahip değil. Mevcut bulunduğum dizinin altında bu isimde klasörler bulunmuyor, dolayısıyla geçiş de yapılamıyor.

Neticede buradaki basit hiyerarşik şemaya bakarak bile, hiyerarşik dosya yapısına uygun olmayan yani gerçekte var olmayan dizin adresleri belirttiğimizde ilgili dizine geçiş yapamayacağımızı açıkça görebiliyoruz. Doğru komutlar girebilmek için kesin yol ve göreli yol kavramını anlayana kadar kendi kendinize alıştırmalar yapın lütfen.

### Boşluk ve Özel Karakter Kullanımı

Sık yapılan hatalardan bir diğer ise, dosya ve dizin isimlerindeki boşluklar ve özel karakterlerin kullanımı. Daha önce kabuğun nasıl çalıştığından bahsederken kabuğun, girilen komuttaki boşluk karakterlerinden komutu ayrı ayrı argümanlara ayırdığından ve kabuk için özel anlam ifade eden karakteri de özel olarak ele aldığından bahsetmiştik. Eğer komut girerken bir dosya veya klasör isminde boşluk karakteri veya kabuk için özel anlam ifade eden özel bir karakter varsa kabuk bizim girdiğimiz komutu yanlış anlayabiliyor.

Bu sebeple isminde özel karakterler veya boşluklar içeren klasörlerin doğru algılanabilmesi için klasör isimlerini tırnak içinde yazmamız gerekiyor. Ben basit bir örnek olması için isminde boşluk bulunan bir klasör oluşturacağım. Klasör oluşturmak için ileride ayrıca ele alacağımız `mkdir` komutunu kullanabiliriz. `mkdir` komutunun ardından tırnak içinde klasörün adını `‘yeni klasor'` şeklinde yazalım ve `ls` komutu ile klasörün varlığını da teyit edelim.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ mkdir 'yeni klasor'

┌──(taylan@linuxdersleri)-[~]
└─$ ls
 Desktop     Music      Templates      yeni-klasor
 Documents   Pictures   Videos
 Downloads   Public    'yeni klasor'
```

Bakın “***yeni klasor***” isimli klasör oluşturulmuş. Eğer komutumuzu `mkdir 'yeni klasor'` şeklinde tırnak içinde girmeseydik, argümanlar arasındaki boşluktan dolayı “***yeni***” ve “***klasor***” isimli iki ayrı klasör oluşacaktı. Bu durumu teyit etmek için `mkdir yeni klasor` şeklinde komutumuzu girebiliriz.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ mkdir yeni klasor

┌──(taylan@linuxdersleri)-[~]
└─$ ls
 Desktop     klasor     Public      yeni              
 Documents   Music      Templates  'yeni klasor'      
 Downloads   Pictures   Videos      yeni-klasor
```

Tırnak kullanmadığımız için aradaki boşluk karakteri dolayısıyla iki ayrı argüman olarak algılanan “yeni” ve “klasor” isimli iki ayrı klasör oluşturuldu.

İşte bizzat klasör oluşturma aşamasında gözlemediğimiz bu durum, aslında dizinlerde gezinirken de bizzat geçerli. Eğer geçiş yapmak istediğimiz klasör isminde boşluk veya özel bir karakter varsa, bu klasör ismini mutlaka tırnak içinde özel olarak belirtmemiz gerekiyor. Burada dikkat etmeniz gereken detay tek tırnak kullanmanızdır. Aslında bu örnek için çift tırnak kullansak da sorun yaşamazdık ancak size önerim içerisinde boşluk veya özel karakter barından komutlarınızda bu komutların özel anlamının tamamen görmezden gelinmesi için tek tırnak içinde yazmanızdır. Neden tek tırnak kullanmamız gerektiğini “kabuk genişletmeleri” bölümünde ayrıca ele alacağız.

Örneğimize dönecek olursak neticede isminde boşluk karakteri bulunan klasör çalışmakta olduğum dizinde oluşturuldu. Bu dizine geçiş yapmak için `cd yeni klasor` şeklinde komut girmeyi deneyebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~]                                    
└─$ cd yeni klasor                                    
bash: cd: too many arguments
```

Bakın “çok fazla argüman” hatası aldık çünkü girmiş olduğumuz komuttaki boşluk karakteri dolayısıyla `cd` aracına hem “***yeni***” hem de “***klasor***” isimli iki ayrı dizine geçiş yapması gerektiğini söylemiş olduk. Bunun yerine isminde boşluk karakteri bulunan dizine geçiş için tek tırnak içinde ilgili klasörün tam adını yazmamız gerek.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ cd 'yeni klasor'

┌──(taylan@linuxdersleri)-[~/yeni klasor]
└─$ pwd                                               
/home/taylan/yeni klasor
```

Bakın isminde boşluk olan dizine geçiş yapabildik. Kullandığımız tırnaklar sayesinde girdiğimiz "**yeni klasor**" ifadesi kabuk tarafından tek bir argüman olarak algılanıp ilgili klasöre başarılı şekilde geçiş yapıldı. Bu örneğimizle birlikte kabuğun çalışma yapısını tekrar hatırlayıp, içinde boşluk ya da kabuk tarafından farklı algılanabilecek özel karakterler olan klasörlerin tırnak içinde tek bir argüman olarak yazılması gerektiğini de öğrenmiş olduk.

Boşluk karakterine örnek verdik bir de özel karaktere örnek verecek olursak, mesela değişken çağırırken kullandığımız dolar işaretini kullanabiliriz. Normalde sizin de bildiğiniz gibi kabuk dolar işaretini gördüğünde bu işaretin yanındaki ifadeyi değişken olarak kabul ediyor. Yani dosya isminde dolar işareti olursa kabuk dosya ismini doğru şekilde algılayamayabilir. Ben denemek için `mkdir 'ben$klasor'` şeklinde komutumu giriyorum. Burada tek tırnak kullanmak önemli. Tek tırnak içinde yazdığımızda kabuğun bu tırnak içindeki tüm ifadelerin özel anlamlarını görmezden gelmesini sağlamış oluruz. `ls` komutu ile mevcut dizindeki dosya ve klasörleri listeleyelim. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni klasor]
└─$ mkdir 'ben$klasor'

┌──(taylan@linuxdersleri)-[~/yeni klasor]
└─$ ls                                                
'ben$klasor'
```

Bakın tam olarak tek tırnak içinde belirttiğim isimde yeni klasörüm oluşturulmuş.

Şimdi test etmek için içerisinde özel karakter olan bu klasöre geçiş yapmak üzere ismini olduğu gibi yazmayı deneyebiliriz.

```bash
┌──(taylan@linuxdersleri)-[~/yeni klasor]
└─$ cd ben$klasor                                     
bash: cd: ben: No such file or directory
```

Bakın yanıt olarak böyle bir dosya ya da dizin olmadığı konusunda uyarıldık. Hata aldık çünkü kabuk buradaki dolar işaretinin, klasör isminin bir parçası olduğunu bilmiyor. Dolar işaretini gördüğü için dolar işaretinden sonraki kısmı değişken olarak dikkate alıyor.

İşte bizim bu noktada klasörün isminin kabuk tarafından sıradan bir argüman olarak anlaşılabilmesi için tek tırnak kullanmamız gerekiyor. Yani aslında tek tırnak ile bu argümanı kabuk için sıradan hale getirmemiz gerekiyor. Eğer çift tırnağın işe yarayacağını düşünüyorsanız klasör ismini çift tırnak içinde de belirtebilirsiniz. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni klasor]
└─$ cd "ben$klasor"
bash: cd: ben: No such file or directory
```

Ancak gördüğünüz gibi çift tırnak işe yaramadı. Çünkü kabuk, çift tırnağın içindeki bazı özel sembolleri de dikkate alıyor. Son olarak tek tırnak ile klasörün ismini belirtmeyi deneyebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni klasor]
└─$ cd 'ben$klasor'

┌──(taylan@linuxdersleri)-[~/yeni klasor/ben$klasor]
└─$ pwd                                               
/home/taylan/yeni klasor/ben$klasor
```

Bakın klasöre sorunsuzca geçiş yapabildik. Çünkü tek tırnak işareti sayesinde kabuk, dolar işaretinin özel anlamını görmezden gelerek dolar işaretini yalnızca klasörün isminde geçen standart bir karakter olarak gördü. Dolayısıyla kabuk buradaki argümana herhangi bir müdahalede bulunmadan olduğu gibi `cd` komutuna aktardı. `cd` aracı da aldığı argüman doğrultusunda bu dizine geçiş yapabilmemizi sağladı.

Bizzat birkaç kez teyit ettiğimiz gibi tek tırnak işareti bizim sorumuzu gayet iyi çözüyor ancak belki tek tırnak kullanımı size o kadar da konforlu gelmemiş olabilir. Bu durumda tüm ifadeyi tırnak içinde yazmak yerine kabuk için özel olan herhangi bir karakterin kabuk tarafından görmezden gelinmesi için ilgili özel karakterden hemen önce ters slash `\` işaretini de kullanabiliriz. Ters slash işareti, bash için **kaçış karakteri** anlamına geliyor ve dolayısıyla bash kabuğu bu karakteri gördüğünde bu karakterden sonraki karakterin özel anlamını görmezden geliyor. Yani örneğin ben `cd ~/yeni\ klasor` şeklinde komutumu girersem, kabuk ters slash işaretinden sonraki boşluk karakterini görmezden geliyor. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni klasor/ben$klasor]
└─$ cd ~/yeni\ klasor                                 

┌──(taylan@linuxdersleri)-[~/yeni klasor]
└─$ pwd                                               
/home/taylan/yeni klasor
```

Normalde sizin de bildiğiniz gibi kabuk için boşluk karakteri argümanları ayırmayı sağlıyor yani özel bir anlam ifade ediyor. Fakat girdiğim komutta boşluk karakterinden hemen önce ters slash `\` işareti kullanıldığı için kabuk, boşluk karakterinin özel anlamını görmezden gelip, onu standart bir karakter olarak ele aldı. Bu sayede isminde boşluk karakteri bulunan klasöre sorunsuzca geçiş yapabildik. Aynı yöntemi dolar işaretli klasör üzerinde de aynen deneyebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni klasor]
└─$ cd ben\$klasor/

┌──(taylan@linuxdersleri)-[~/yeni klasor/ben$klasor]
└─$ pwd                                               
/home/taylan/yeni klasor/ben$klasor
```

Bakın ters slash yani kaçış karakteri sayesinde dolar işaretinin özel anlamı kabuk tarafından görmezden gelindi ve neticede sorunsuzca bu dizine de geçiş yapabildik.

Görebildiğiniz gibi tek bir karakterin görmezden gelinmesi gerekiyorsa kolayca ters slash işaretini kullanabiliyoruz. Ben örnekler sırasında tek bir noktada bu karakteri kullandım ancak gerekiyorsa, görmezden gelinmesi gereken tüm karakterlerden önce bu ters slash işaretini tekrar tekrar kullanabilirsiniz. Örneğin ben “***bu bir deneme metnidir***” isminde bir klasör oluşturmak istersem komutumu `mkdir bu\ bir\ deneme\ metnidir` şeklinde girebilirim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ mkdir bu\ bir\ deneme\ metnidir

┌──(taylan@linuxdersleri)-[~]
└─$ ls
'bu bir deneme metnidir'   Music       yeni
 Desktop                   Pictures   'yeni klasor'
 Documents                 Public      yeni-klasor
 Downloads                 Templates
 klasor                    Videos
```

Burada kabuk tarafından görmezden gelinmesini istediğim tüm boşluk karakterlerinden önce ters slash işaretini belirtmem gerekti. Şimdi yeni oluşturduğum bu dizine geçiş yapmak için `cd` komutunda sonra bu yazıp <kbd>tab</kbd> ile otomatik olarak klasör isminin tamamlanmasını sağlıyorum. 

![19.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/19.gif)
Bakın burada da otomatik olarak boşluk karakterlerinden önce ters slash karakteri ile öneri sunuldu. Komutumu onayladığımda ilgili dizine geçiş yapabiliyorum.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ cd bu\ bir\ deneme\ metnidir/

┌──(taylan@linuxdersleri)-[~/bu bir deneme metnidir]
└─$ pwd
/home/taylan/bu bir deneme metnidir
```

Neticede örnekler üzerinden de gördüğünüz gibi ters slash kullanışlı olsa de genelde pek okunaklı bir komut görünümü sunmadığı için genelde tırnak içine alma daha sık tercih ediliyor. Yine de artık her iki kullanım yönteminden de haberiniz var. Örneğin ters slash karakterini kullanmayı tercih etmeseniz bile isminde boşluk geçen bir klasöre geçiş yaparken <kbd>tab</kbd> önerisinde sunulan isimdeki ters slash işaretlerinin ne anlama geldiğini artık biliyorsunuz.

### Küçük Büyük Harf Duyarlılığı

Hazır kabuk üzerindeki karakterlerden bahsetmişken dikkat etmemiz gereken bir diğer önemli husus da, **Linux sisteminin küçük büyük harf duyarlılığına sahip olduğu** gerçeği. Küçük büyük harf duyarlılığı ile tam olarak neyi kast ediyorum ? Hemen bir örnek üzerinden açıklayalım.

Örnek olası için grafiksel arayüzde dosya yöneticisi üzerinden isimleri aynı olan ama küçük büyük harfleri farklı olan klasörler oluşturmayı deneyebiliriz. Öncelikle Linux üzerinde test edelim.

![20.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/20.gif)
Bakın küçük büyük harfleri farklı ama birebir aynı isimli birden fazla klasörü oluşturabildik. Çünkü Linux için küçük büyük harfleri dolayısıyla her biri ayrı bir klasör.  

Aynı işlemi Windows sisteminde de deneyebiliriz. 

![21.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/21.gif)
Bakın ismini onayladığımızda aynı isimde başka bir klasör olduğu konusunda uyarılıyoruz. Çünkü Windows üzerinde küçük büyük harf duyarlılığı bulunmuyor. Windows sistemine göre hepsi aynı.

İşte bakın Windows üzerinden ele aldığımız bu örnek, Linux sisteminin sahip olduğu küçük büyük harf duyarlılığını kanıtlıyor. Çünkü biraz önce Linux'ta küçük büyük harfleri farklı olan aynı isimli birden fazla klasörü sorunsuzca oluşturabildik. Linux için klasör isimleri içerdikleri küçük büyük harf farkları dolayısıyla benzersiz birer klasördür. İşte harf duyarlılığı olduğu için oluşturma aşamasında olduğu gibi klasöre geçiş aşamasında da elbette klasörün küçük büyük harfli karakterlerine dikkat ederek doğru adını girmemiz gerekiyor. 

Örneğin ben tamamı büyük harflerle yazılmış olan ***DOSYA_ADI*** klasörüne gitmek istersem `cd ~/DOSYA_ADI` yazmam gerekiyor. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ ls
'bu bir deneme metnidir'   Downloads   Videos
 Desktop                   klasor      yeni
 Documents                 Music      'yeni klasor'
 DOSYA_ADI                 Pictures    yeni-klasor
 dosya_adı                 Public
 Dosya_adı                 Templates

┌──(taylan@linuxdersleri)-[~]
└─$ cd DOSYA_ADI

┌──(taylan@linuxdersleri)-[~/DOSYA_ADI]
└─$ pwd
/home/taylan/DOSYA_ADI
```

Bakın tamamı küçük harfli olan “***dosya_adı***” ve yalnızca başlangıç karakteri büyük olan “***Dosya_adı***” klasörlerine değil doğrudan tamamı büyük harflerden oluşan “***DOSYA_ADI***” isimli klasöre sorunsuzca geçiş yapabildim. Bizzat bu örnek üzerinden de teyit edebildiğimiz gibi Linux üzerindeki küçük büyük harf duyarlılığı sebebiyle kabuğa komutlar girerken girdiğimiz tüm komutlarda küçük büyük harf duyarlılığa dikkat etmemiz gerekiyor.

Örneğin `cd ~/desktop` yazarsam, ev dizinimde küçük harfle başlayan ***desktop*** isimli bir klasör olmadığı için ilgili dizine geçiş yapamam. 

```bash
┌──(taylan@linuxdersleri)-[~/DOSYA_ADI]
└─$ cd ~/desktop
bash: cd: /home/taylan/desktop: No such file or directory
```

Aynı komutu küçük büyük harflere dikkat ederek yani `cd ~/Desktop` şeklinde yazmam gerekiyor.

```bash
┌──(taylan@linuxdersleri)-[~/DOSYA_ADI]                                
└─$ cd ~/Desktop/

┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ pwd                                                     
/home/taylan/Desktop
```

Dizinlerde gezinirken yeni başlayan kullanıcılar sıklıkla küçük büyük harf duyarlılığına dikkat etmediği için bu detaydan da özel olarak bahsetmek istedim. Ayrıca elbette **küçük büyük harf duyarlılığı yalnızca klasör isimleri için değil, tüm sistem geneli için geçerli.** İleride ele alacağımız komutlarda ve bu komutlara vereceğimiz seçenek ve argümanlarda da küçük büyük harf duyarlılığa dikkat ederek komut giriyor olacağız. Aksi halde doğru komutları girmemiş oluruz. Örneğin ev dizinimdeki ***Documents*** klasörüne geçiş yapmak için `cd` komutunu büyük yazıp `CD ~/Documents` şeklinde komut girmeyi deneyebilirim. 

```bash
┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ CD ~/Documents/
CD: command not found
```

Bakın böyle bir komut bulunamadığı konusunda uyarıldık. Çünkü gerçekten de bash yerleşik kabuklarında veya **PATH** dizini üzerindeki herhangi bir dizinde tamamı büyük harflerden oluşan **CD** ismi geçmiyor. Aynı örneğin `cd ~/Documents` şeklinde tekrar deneyebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~/Desktop]
└─$ cd ~/Documents/

┌──(taylan@linuxdersleri)-[~/Documents]
└─$ pwd                                                     
/home/taylan/Documents
```

Dolayısıyla örneklerimiz üzerinden de bizzat tekrar tekrar teyit ettiğimiz gibi Linux üzerinde çalışıyorken her zaman küçük büyük harflere dikkat etmemiz gerekiyor.

Tamamdır bence dizinlerde gezinmek için bilmemiz gereken tüm detaylardan bahsettik. Artık böylelikle sistem üzerinde yetkinizin bulunduğu tüm dizinlerde rahatlıkla gezinebilirsiniz. Üstelik konsol kullanımına alıştığınızda grafiksel arayüze oranla çok daha hızlı gezinebildiğinizi kendiniz de bizzat fark edeceksiniz zaten. Bu noktada sizlerden tek ricam dizinlerde gezinerek bol bol pratik yapmanız. Pratik yaptığınızda konsol üzerinden dizinlerde gezinmenin ne kadar kolay olduğunu bizzat deneyimleyeceksiniz.

# `ls` Komutu

Daha önce tekrar tekrar deneyimlediğimiz gibi komut satırı üzerinden, dizin içeriklerini listelemek için için `ls` komutunu kullanabiliyoruz. `ls` komutu İngilizce "**l**i**s**t" yani "liste-listelemek" ifadesinin kısaltmasından geliyor. En yalın kullanımı, mevcut dizindeki içerikleri listelememizi sağlıyor.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ ls
'bu bir deneme metnidir'   Downloads   Videos
 Desktop                   klasor      yeni
 Documents                 Music      'yeni klasor'
 DOSYA_ADI                 Pictures    yeni-klasor
 dosya_adı                 Public
 Dosya_adı                 Template
```

Bakın bulunduğum dizindeki tüm dosya ve klasörler `ls` komutu sayesinde konsola bastırdı. `ls` komutunu tek başına kullanmak yalnızca mevcut dizindeki dosya ve klasörlerin isimlerini öğrenmek istediğimizde faydalı. Ancak bizim dosya veya klasörler ile ilgili daha detaylı bilgilere ihtiyacımız da olabilir. Şimdi istediğimiz detay seviyesinde bilgi alabilmek için `ls` komutunun diğer seçenekleri ile neler yapabileceğimizden bahsederek devam edebiliriz. 

## Ayrıntılı Liste Almak

Eğer aldığımız çıktıda dosyanın veya klasörün türü, yetkileri, dosyanın sahibi ve dosyanın oluşturulma veya değiştirilme tarihi gibi ekstra detayları yani uzun çıktıları da istiyorsak İngilizce “**l**ong” yani “uzun” ifadesinin kısaltmasından gelen  `-l` seçeneğini kullanabiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ ls -l
total 64
drwxr-xr-x 2 taylan taylan 4096 Jun  4 03:51 'bu bir deneme metnidir'
drwxr-xr-x 3 taylan taylan 4096 May 27 07:02  Desktop
drwxr-xr-x 4 taylan taylan 4096 Jul 18  2022  Documents
drwxr-xr-x 2 taylan taylan 4096 Jun  4 04:07  DOSYA_ADI
drwxr-xr-x 2 taylan taylan 4096 Jun  4 04:07  dosya_adı
drwxr-xr-x 2 taylan taylan 4096 Jun  4 04:07  Dosya_adı
drwxr-xr-x 3 taylan taylan 4096 May 26 05:36  Downloads
drwxr-xr-x 2 taylan taylan 4096 Jun  4 03:28  klasor
drwxr-xr-x 2 taylan taylan 4096 Feb 11  2022  Music
drwxr-xr-x 4 taylan taylan 4096 May 30 13:21  Pictures
drwxr-xr-x 3 taylan taylan 4096 Jun 25  2022  Public
drwxr-xr-x 2 taylan taylan 4096 Feb 11  2022  Templates
-rw-r--r-- 1 taylan taylan    0 Jun  4 05:06  test-dosyası
drwxr-xr-x 2 taylan taylan 4096 Feb 11  2022  Videos
drwxr-xr-x 2 taylan taylan 4096 Jun  4 03:28  yeni
drwxr-xr-x 3 taylan taylan 4096 Jun  4 03:46 'yeni klasor'
drwxr-xr-x 2 taylan taylan 4096 May 30 13:18  yeni-klasor
```

Aldığımız çıktıdaki sütunları ve bunların anlamlarını kısaca ele alacak olursak; 

En baştaki ilk karakter listelenen içeriğin tipini ifade ediyor. Örneğin başında **d** olanlar klasörleri temsil ediyor. Buradaki **d** karakteri İngilizce "**d**irectory" yani "dizin" ifadesinin kısaltmasından geliyor. Başında **-** işareti olanlar ise standart dosyaları temsil ediyor. 

Hemen bu ilk karakterin yanında bulunan **rwx** gibi karakterleri barındıran üçlü grup ise ilgili dosya veya klasörün yetkilerini temsil ediyor. Bu konudan daha sonra detaylıca bahsedeceğiz zaten. 

Yetkilerin hemen yanındaki rakamlar ise, ilgili dizinin içinde kaç **hardlink** yani **katı linki** bulunduğunu belirtiyor. Hard link kavramını da henüz öğrenmedik, şimdilik bu sütunun hard link sayısını gösterdiği konusunda kulağınızı kabartmanız yeterli. 

Bir sonraki sütunda, dosya ya da klasörün sahibini, onun yanındaki ise grubunu belirtiyor. Dosyanın sahibi olan veya burada belirtilen grupta bulunan tüm kullanıcılar dosya veya klasör üzerinde burada belirtilen bazı yetkilere sahip oluyor. Bu kavramdan da ileride ayrıca bahsedeceğiz. 

Grubun hemen yanındaki sütun ise listelenen ögenin boyutunu bayt olarak ifade ediyor. 

Tarih bilgisi de ilgili dosya veya klasörün en son değiştirildiği tarihi veriyor. 

Ve elbette en son bölüm de klasör veya dosyanın ismini gösteriyor.

Biliyorum şimdi kısaca açıklamış olsam da buradaki çıktılar sizin için çok da anlamlı gelmedi. Ancak merak etmeyin eğitimin devamında buradaki tüm çıktılar sizin için de anlam ifade ediyor olacak. 

## Gizli Dosyaları Listelemek

`-l` seçeneği ile tüm ekstra detayları listelemiş olsak da, bu listede gizli dosyalar yer almıyordu. Daha önce de kısaca bahsettiğimiz gibi Linux sisteminde, başında nokta bulunan dosya veya klasörler gizli statüsüne oluyor. Dolayısıyla biz özellikle belirtmediğimiz sürece gizli dosya ve klasörler listelenmiyor. Zaten dosyaların gizli olmasının nedeni o dosyaların özellikle hedef gösterilmedikleri sürece gizli tutulup çeşitli işlemlerden de muaf kalmalarını sağlamak. Gizleme özelliği sayesinde istemsizce silinmesi sorun oluşturabilecek çeşitli dosya ve klasörler bilinçsiz veya hatalı işlemlerden korumuş oluyor. 

Eğer standart olanlarla birlikte gizli içerikleri de listelemek istersek `-a` seçeneği kullanabiliriz. Bu seçenek **a**ll yani “hepsi” ifadesinin kısalmasından geliyor. Zaten biz de standart gizli demeden hepsini listelemek istediğimiz için all seçeneğini kullanıyoruz. 

Gizli dosyaları da listeleyebildiğimizi daha net gözlemleyebilmek için öncelikle ls daha sonra ls -a komutunu kullanıp, çıktıları kıyaslayabiliriz.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ ls -l
total 64
drwxr-xr-x 2 taylan taylan 4096 Jun  4 03:51 'bu bir deneme metnidir'
drwxr-xr-x 3 taylan taylan 4096 May 27 07:02  Desktop
drwxr-xr-x 4 taylan taylan 4096 Jul 18  2022  Documents
drwxr-xr-x 2 taylan taylan 4096 Jun  4 04:07  DOSYA_ADI
drwxr-xr-x 2 taylan taylan 4096 Jun  4 04:07  dosya_adı
drwxr-xr-x 2 taylan taylan 4096 Jun  4 04:07  Dosya_adı
drwxr-xr-x 3 taylan taylan 4096 May 26 05:36  Downloads
drwxr-xr-x 2 taylan taylan 4096 Jun  4 03:28  klasor
drwxr-xr-x 2 taylan taylan 4096 Feb 11  2022  Music
drwxr-xr-x 4 taylan taylan 4096 May 30 13:21  Pictures
drwxr-xr-x 3 taylan taylan 4096 Jun 25  2022  Public
drwxr-xr-x 2 taylan taylan 4096 Feb 11  2022  Templates
-rw-r--r-- 1 taylan taylan    0 Jun  4 05:06  test-dosyası
drwxr-xr-x 2 taylan taylan 4096 Feb 11  2022  Videos
drwxr-xr-x 2 taylan taylan 4096 Jun  4 03:28  yeni
drwxr-xr-x 3 taylan taylan 4096 Jun  4 03:46 'yeni klasor'
drwxr-xr-x 2 taylan taylan 4096 May 30 13:18  yeni-klasor

┌──(taylan@linuxdersleri)-[~]
└─$ ls -la
total 272                                                           
drwxr-xr-x 25 taylan taylan  4096 Jun  4 05:06  .                       
drwxr-xr-x  4 root root  4096 Jul 14  2022  ..                      
-rw-------  1 taylan taylan 38073 May 31 14:44  .bash_history                
-rw-r--r--  1 taylan taylan   220 Feb 11  2022  .bash_logout                 
-rw-r--r--  1 root root  5589 May 29 04:21  .bashrc                           
-rw-r--r--  1 taylan taylan  3526 Feb 11  2022  .bashrc.original                  
-rw-r--r--  1 taylan taylan  5552 Jun 29  2022  .bashrc.save                      
-rw-------  1 taylan taylan  5571 Jun 29  2022  .bashrc.save.1
-rw-r--r--  1 taylan taylan  5572 Jun 30  2022  .bashrc.save.2
drwxr-xr-x  2 taylan taylan  4096 Jun  4 03:51 'bu bir deneme metnidir'
drwxr-xr-x 13 taylan taylan  4096 May 29 13:49  .cache
drwxr-xr-x 16 taylan taylan  4096 Apr 24 13:16  .config
drwxr-xr-x  3 taylan taylan  4096 May 27 07:02  Desktop
-rw-r--r--  1 taylan taylan    35 Feb 11  2022  .dmrc
drwxr-xr-x  4 taylan taylan  4096 Jul 18  2022  Documents
drwxr-xr-x  2 taylan taylan  4096 Jun  4 04:07  DOSYA_ADI
drwxr-xr-x  2 taylan taylan  4096 Jun  4 04:07  dosya_adı
drwxr-xr-x  2 taylan taylan  4096 Jun  4 04:07  Dosya_adı
drwxr-xr-x  3 taylan taylan  4096 May 26 05:36  Downloads
-rw-r--r--  1 taylan taylan 11759 Feb 11  2022  .face
lrwxrwxrwx  1 taylan taylan     5 Feb 11  2022  .face.icon -> .face
-rw-r--r--  1 taylan taylan     0 Jul  9  2022  .gizli-dosya
drwxr-xr-x  2 taylan taylan  4096 Jul  9  2022  .gizli-klasor
drwx------  3 taylan taylan  4096 Feb 11  2022  .gnupg
-rw-------  1 taylan taylan     0 Feb 11  2022  .ICEauthority
drwxr-xr-x  3 taylan taylan  4096 Feb 11  2022  .java
drwxr-xr-x  2 taylan taylan  4096 Jun  4 03:28  klasor
-rw-------  1 taylan taylan   115 May 29 15:31  .lesshst
drwx------  6 taylan taylan  4096 Apr 24 08:38  .local
drwx------  5 taylan taylan  4096 Jun 18  2022  .mozilla
drwxr-xr-x  2 taylan taylan  4096 Feb 11  2022  Music
drwxr-xr-x  4 taylan taylan  4096 May 30 13:21  Pictures
-rw-r--r--  1 taylan taylan   807 Feb 11  2022  .profile
drwxr-xr-x  3 taylan taylan  4096 Jun 25  2022  Public
-rw-------  1 root root 12288 Jul  7  2022  .swp
drwxr-xr-x  2 taylan taylan  4096 Feb 11  2022  Templates
-rw-r--r--  1 taylan taylan     0 Jun  4 05:06  test-dosyası
-rw-r-----  1 taylan taylan     6 Jun  4 03:12  .vboxclient-clipboard.pid
-rw-r-----  1 taylan taylan     6 Jun  4 03:12  .vboxclient-display-svga-x11.pid
-rw-r-----  1 taylan taylan     6 Jun  4 03:12  .vboxclient-draganddrop.pid
-rw-r-----  1 taylan taylan     6 Jun  4 03:12  .vboxclient-seamless.pid
drwxr-xr-x  2 taylan taylan  4096 Feb 11  2022  Videos
-rw-r--r--  1 taylan taylan   209 Apr 24 08:34  .wget-hsts
-rw-------  1 taylan taylan    49 Jun  4 03:12  .Xauthority
-rw-------  1 taylan taylan  6665 Jun  4 03:13  .xsession-errors
-rw-------  1 taylan taylan  6617 Jun  3 03:27  .xsession-errors.old
drwxr-xr-x  2 taylan taylan  4096 Jun  4 03:28  yeni
drwxr-xr-x  3 taylan taylan  4096 Jun  4 03:46 'yeni klasor'
drwxr-xr-x  2 taylan taylan  4096 May 30 13:18  yeni-klasor
-rw-------  1 taylan taylan   260 May 24 11:11  .zsh_history
-rw-r--r--  1 taylan taylan 10875 Feb 11  2022  .zshrc
```

Bakın bu kez standart dosya ve klasörlerle birlikte isminin başında nokta bulunan dosya ve klasörler de listelenmiş oldu. Yani aslında bu dosya ve klasörler hep buradaydı ancak biz özellikle belirtmediğimiz için daha önce görememiştik. 

Ayrıca ben burada `ls -la` şeklinde girmiş olduğum komutu dilersem seçeneklerin sıralamasını değiştirip `ls -al` `ls -l -a` ya da `ls -a -l` şeklinde de girebilirim.

![22.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/dizin/22.webp)
Görebildiğiniz gibi gizli dosya ve klasörlerin yer aldığı ayrıntılı liste karşımıza gelmiş oldu. Yani özetle aslında komut girme ve bir aracın çoklu özelliklerini aynı anda kullanabilme konusunda son derece esnekliğe sahibiz. Üstelik bu durum yalnızca `ls` komutuna özgü de değil. İstisnalar hariç pek çok komutun seçeneklerini belirtirken bu gibi esnekliklere sahibiz zaten. Eğer kullandığınız araç, spesifik olarak belirli bir sıralamada seçenekleri belirtmenizi istiyorsa o şekilde belirtmelisiniz ancak genelde seçeneklerin sıralaması konusunda esnek kullanım imkanına sahibiz. Yani nasıl rahat edecekseniz komutunuzu o şekilde girebilirsiniz. Yeter ki eksiksiz ve doğru şekilde girin. Elbette doğru özellikleri ve seçenekleri kullanmak için de komutların yardım sayfalarına da mutlaka göz atın. Örneğin kimi komut seçeneklerinin hiç uzun seçenek alternatifleri yokken kimi komutların seçenekleri çok fazla olduğu için kısa harfle kullanılamayan yalnızca uzun olarak yazılması gereken seçenekler de bulunabiliyor. Neyse neticede seçenekleri belirtme konusunda esnek olduğumuzu ls komutu üzerinden uygulamalı şekilde teyit etmiş olduk. 

## Boyutların Okunaklı Çıktılarını Alma,

Aldığımız çıktılardaki büyüklük birimlerini daha okunaklı şekilde elde etmek için “**h**uman readable" yani "insan tarafından okunabilir" ifadesinin kısaltmasından gelen `h` seçeneğini kullanabiliyoruz.

Bunun için öncelikle normalde aldığımız büyüklük cinsini görmek için `ls -l` şeklinde komutumuzu girelim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ ls -l                                                                                                                                         
total 64
drwxr-xr-x 2 taylan taylan 4096 Jun  4 03:51 'bu bir deneme metnidir'
drwxr-xr-x 3 taylan taylan 4096 May 27 07:02  Desktop
drwxr-xr-x 4 taylan taylan 4096 Jul 18  2022  Documents
drwxr-xr-x 2 taylan taylan 4096 Jun  4 04:07  DOSYA_ADI
drwxr-xr-x 2 taylan taylan 4096 Jun  4 04:07  dosya_adı
drwxr-xr-x 2 taylan taylan 4096 Jun  4 04:07  Dosya_adı
drwxr-xr-x 3 taylan taylan 4096 May 26 05:36  Downloads
drwxr-xr-x 2 taylan taylan 4096 Jun  4 03:28  klasor
drwxr-xr-x 2 taylan taylan 4096 Feb 11  2022  Music
drwxr-xr-x 4 taylan taylan 4096 May 30 13:21  Pictures
drwxr-xr-x 3 taylan taylan 4096 Jun 25  2022  Public
drwxr-xr-x 2 taylan taylan 4096 Feb 11  2022  Templates
-rw-r--r-- 1 taylan taylan    0 Jun  4 05:06  test-dosyası
drwxr-xr-x 2 taylan taylan 4096 Feb 11  2022  Videos
drwxr-xr-x 2 taylan taylan 4096 Jun  4 03:28  yeni
drwxr-xr-x 3 taylan taylan 4096 Jun  4 03:46 'yeni klasor'
drwxr-xr-x 2 taylan taylan 4096 May 30 13:18  yeni-klasor
```

Bakın buradaki boyutlar hep bayt cinsinden. Şimdi daha okunaklı olması için `h` seçeneğini de ekleyebiliriz. Buradaki okunaklıdan kastımız da dosya boyutunu KB, MB, GB türünden büyüklük olarak görülebilesi.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ ls -lh                                                                                                                                        
total 64K
drwxr-xr-x 2 taylan taylan 4.0K Jun  4 03:51 'bu bir deneme metnidir'
drwxr-xr-x 3 taylan taylan 4.0K May 27 07:02  Desktop
drwxr-xr-x 4 taylan taylan 4.0K Jul 18  2022  Documents
drwxr-xr-x 2 taylan taylan 4.0K Jun  4 04:07  DOSYA_ADI
drwxr-xr-x 2 taylan taylan 4.0K Jun  4 04:07  dosya_adı
drwxr-xr-x 2 taylan taylan 4.0K Jun  4 04:07  Dosya_adı
drwxr-xr-x 3 taylan taylan 4.0K May 26 05:36  Downloads
drwxr-xr-x 2 taylan taylan 4.0K Jun  4 03:28  klasor
drwxr-xr-x 2 taylan taylan 4.0K Feb 11  2022  Music
drwxr-xr-x 4 taylan taylan 4.0K May 30 13:21  Pictures
drwxr-xr-x 3 taylan taylan 4.0K Jun 25  2022  Public
drwxr-xr-x 2 taylan taylan 4.0K Feb 11  2022  Templates
-rw-r--r-- 1 taylan taylan    0 Jun  4 05:06  test-dosyası
drwxr-xr-x 2 taylan taylan 4.0K Feb 11  2022  Videos
drwxr-xr-x 2 taylan taylan 4.0K Jun  4 03:28  yeni
drwxr-xr-x 3 taylan taylan 4.0K Jun  4 03:46 'yeni klasor'
drwxr-xr-x 2 taylan taylan 4.0K May 30 13:18  yeni-klasor
```

Aldığımız çıktılara bakacak olursak, daha doğrusu çıktıları kıyasladığınızda görebileceğiniz gibi `h` seçeneği sayesinde dosyaların toplam boyutu ve bireysel boyutları çok daha kolay okunur şekilde basılmış oldu. Bu seçenek özellikle büyük boyutlu dosya ve klasörlerin boyutlarını öğrenmek için oldukça kullanışlı. Bayt cinsinden olduğu için çok basamaklı sayıların büyüklük hesaplarını yapmakla uğraşmamıza gerek kalmıyor böylece. Unutmayın, insan olarak rahat okumak istiyorsanız “human readable” ifadesinin kısaltmasından gelen `h` seçeneğini kullanmanız yeterli.

## Boyutlarına Göre Sıralamak

Eğer çıktıları büyükten küçüğe olacak şekilde boyutlarına göre sıralamak istersek, büyük `S` seçeneğini kullanabiliyoruz. Bu “S” seçeneği muhtemelen tahmin ettiğiniz gibi İngilizce "**S**ize" yani "boyut" ifadesinin kısaltmasından geliyor. Büyük `S` kullanıldığında tıpkı karakterindeki büyüklük gibi **büyükten küçüğe** doğru olacak şekilde listenin sıralanmasını sağlamış oluyoruz. 

Daha net görülebilmesi için ***/boot*** dizini üzerinde çalışabiliriz. Buradaki dosyaları `ls -l` ile listeleyelim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ cd /boot/                                                                                                                                     

┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -l                                                                                                                                         
total 85888
-rw-r--r-- 1 root root   245359 Jan 31  2022 config-5.15.0-taylan3-amd64
drwxr-xr-x 6 root root     4096 Jul  5  2022 grub
-rw-r--r-- 1 root root 80372540 Feb 11  2022 initrd.img-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root       83 Jan 31  2022 System.map-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root  7316800 Jan 31  2022 vmlinuz-5.15.0-taylan3-amd64
```

Bakın aldığımız çıktıda dosya ve klasörler isimlerine göre yukarıdan aşağıya doğru alfabetik şekilde sıralanmış halde karşımıza geldi. Şimdi bir de büyük `S` seçeneğini de ekleyip tekrar listeleyelim.

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -lS                                                                                                                                        
total 85888
-rw-r--r-- 1 root root 80372540 Feb 11  2022 initrd.img-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root  7316800 Jan 31  2022 vmlinuz-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root   245359 Jan 31  2022 config-5.15.0-taylan3-amd64
drwxr-xr-x 6 root root     4096 Jul  5  2022 grub
-rw-r--r-- 1 root root       83 Jan 31  2022 System.map-5.15.0-taylan3-amd64
```

Bakın bu kez aldığımız çıktılar ilk listeden farklı olarak büyükten küçüğe sıralanmış oldu. Hatta emin olmak için dilersem `h` seçeneğini de ekleyip daha okunaklı bir çıktı elde edebilirim. 

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -lSh                                                                                                                                       
total 84M
-rw-r--r-- 1 root root  77M Feb 11  2022 initrd.img-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root 7.0M Jan 31  2022 vmlinuz-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root 240K Jan 31  2022 config-5.15.0-taylan3-amd64
drwxr-xr-x 6 root root 4.0K Jul  5  2022 grub
-rw-r--r-- 1 root root   83 Jan 31  2022 System.map-5.15.0-taylan3-amd64
```

Bakın büyük karakterli size seçeneği yani `S` seçeneği, `ls` komutunun çıktılarını büyükten küçüğe doğru kolayca sıralayabilmemizi sağlıyor.

## Değiştirilme Tarihlerine Göre Sıralama

Normalde `ls` komutunun `-l` seçeneği ile aldığımız ayrıntılı listede dosyaların oluşturulma tarihleri veya değiştirildilerse, değiştirilme tarihleri belirtiliyor. Dosya ve klasörleri **değiştirilme tarihlerine göre en yeniden eskiye doğru** sıralamak istersek `t` seçeneğini kullanabiliyoruz. Buradaki “`t`” seçeneği İngilizce "**t**ime" yani "zaman" ifadesinin kısaltmasından geliyor. Ben örnek olarak bulunduğum dizindeki dosya ve klasörleri `ls -lt` komutu ile listeliyorum.

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -l                                                                                                                                         
total 85888
-rw-r--r-- 1 root root   245359 Jan 31  2022 config-5.15.0-taylan3-amd64
drwxr-xr-x 6 root root     4096 Jul  5  2022 grub
-rw-r--r-- 1 root root 80372540 Feb 11  2022 initrd.img-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root       83 Jan 31  2022 System.map-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root  7316800 Jan 31  2022 vmlinuz-5.15.0-taylan3-amd64

┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -lt                                                                                                                                        
total 85888
drwxr-xr-x 6 root root     4096 Jul  5  2022 grub
-rw-r--r-- 1 root root 80372540 Feb 11  2022 initrd.img-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root   245359 Jan 31  2022 config-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root       83 Jan 31  2022 System.map-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root  7316800 Jan 31  2022 vmlinuz-5.15.0-taylan3-amd64
```

Tarih kısmına baktığımızda `t` seçeneği ile aldığımız listenin en üstünde yer alan içeriklerin, diğerlerine göre daha yeni düzenlemiş olan içerikler olduğunu görebiliyoruz.

## Çıktıları Tersine Çevirmek

Fark ettiyseniz şu ana kadar ele aldığımız seçeneklerde hep tek yönlü listeleme mevcuttu. Örneğin boyutları sıralarken **büyükten küçüğe**, tarihleri de **yeniden eskiye** doğru sıralamıştık. Eğer `ls` çıktılarının normalde sunduğu herhangi bir çıktıyı tersten sıralamak istersek İngilizce "**r**everse" yani "ters" ifadesinin kısaltması olan `r` seçeneğini kullanmamız yeterli oluyor. Hemen bildiğimiz seçenekler üzerinden deneyelim.

`ls -l` komutunu kullandığımızda dosya ve dizinler isimlerine göre alfabetik olarak sıralanıyorlar.

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -l
total 85888
-rw-r--r-- 1 root root   245359 Jan 31  2022 config-5.15.0-taylan3-amd64
drwxr-xr-x 6 root root     4096 Jul  5  2022 grub
-rw-r--r-- 1 root root 80372540 Feb 11  2022 initrd.img-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root       83 Jan 31  2022 System.map-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root  7316800 Jan 31  2022 vmlinuz-5.15.0-taylan3-amd64
```

Bu listeyi ters alfabetik olarak almak istersek `r` seçeneğini ekleyebiliriz.

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -lr
total 85888
-rw-r--r-- 1 root root  7316800 Jan 31  2022 vmlinuz-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root       83 Jan 31  2022 System.map-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root 80372540 Feb 11  2022 initrd.img-5.15.0-taylan3-amd64
drwxr-xr-x 6 root root     4096 Jul  5  2022 grub
-rw-r--r-- 1 root root   245359 Jan 31  2022 config-5.15.0-taylan3-amd64
```

Bakın bu kez aldığımız çıktılar önceki listenin tam tersi yani alfabetik olarak tersten sıralanmış oldu.

`ls -lS` komutu ile **büyükten küçüğe** sıralama yapıyoruz. `r` seçeneği sayesinde **küçükten büyüğe** sıralayabiliriz. 

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -lS
total 85888
-rw-r--r-- 1 root root 80372540 Feb 11  2022 initrd.img-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root  7316800 Jan 31  2022 vmlinuz-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root   245359 Jan 31  2022 config-5.15.0-taylan3-amd64
drwxr-xr-x 6 root root     4096 Jul  5  2022 grub
-rw-r--r-- 1 root root       83 Jan 31  2022 System.map-5.15.0-taylan3-amd64

┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -lSr
total 85888
-rw-r--r-- 1 root root       83 Jan 31  2022 System.map-5.15.0-taylan3-amd64
drwxr-xr-x 6 root root     4096 Jul  5  2022 grub
-rw-r--r-- 1 root root   245359 Jan 31  2022 config-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root  7316800 Jan 31  2022 vmlinuz-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root 80372540 Feb 11  2022 initrd.img-5.15.0-taylan3-amd64
```

Değişim tarihlerine göre yeniden eskiye sıralamak için `ls -lt` komutunu kullanıyorken, eskiden yeniye listelemek için `ls -ltr` komutunu kullanabiliriz. 

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -lt
total 85888
drwxr-xr-x 6 root root     4096 Jul  5  2022 grub
-rw-r--r-- 1 root root 80372540 Feb 11  2022 initrd.img-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root   245359 Jan 31  2022 config-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root       83 Jan 31  2022 System.map-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root  7316800 Jan 31  2022 vmlinuz-5.15.0-taylan3-amd64

┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -ltr
total 85888
-rw-r--r-- 1 root root  7316800 Jan 31  2022 vmlinuz-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root       83 Jan 31  2022 System.map-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root   245359 Jan 31  2022 config-5.15.0-taylan3-amd64
-rw-r--r-- 1 root root 80372540 Feb 11  2022 initrd.img-5.15.0-taylan3-amd64
drwxr-xr-x 6 root root     4096 Jul  5  2022 grub
```

Neticede tekrar tekrar teyit edebildiğimiz üzere `r` seçeneği çıktıları tersine çevirmek için kullanılan işlevsel bir özellik. Bu seçeneği dilediğimiz başka seçenekler ile kullanıp, çıktıları tersine çevirebiliyoruz. Bu sayede her bir özelliğin ek seçeneğine ihtiyacımız olmuyor. Yani örneğin dosyaları hem küçükten büyüğe hem de büyükten küçüğe sıralamak için ayrı ayrı seçeneklere ihtiyacımız kalmıyor. Tek yapmamız gereken tersi durum için `r` seçeneğini kullanmak.

## Dizin Adresini Belirterek İçeriğini Listelemek

Eğer mevcut bulunduğumuz dizini değil de başka bir dizindeki içerikleri listelemek istersek, ilgili dizininin tam adresini tıpkı `cd` komutunda olduğu gibi `ls` komutunun ardından yazmamız yeterli.

Örneğin ben şu anda ***/boot*** dizini altında çalışıyorum. Buradayken `ls` komutunu kullanırsam, mevcut dizindeki içerikler karşıma geliyor. 

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls                                                                                                                                            
config-5.15.0-taylan3-amd64  grub  initrd.img-5.15.0-taylan3-amd64  System.map-5.15.0-taylan3-amd64  vmlinuz-5.15.0-taylan3-amd64
```

Ama ben ***/etc*** dizini altındaki ***apt*** klasörünün içeriğini listelemek istiyorum. Bunun için tek yapmam gereken `ls /etc/apt` komutu ile içeriğini listelemek istediğim dizinin adresini açıkça belirtmek. 

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls /etc/apt                                                                                                                                   
apt.conf.d  auth.conf.d  preferences.d  sources.list  sources.list~  sources.list.d  trusted.gpg.d
```

Bakın hangi konumda çalışmakta olduğumdan bağımsız olarak, ***apt*** dizinin içeriği anında konsola listelendi.

İşte bu şekilde o konumda değilken, yetkimiz olan dizinlerin içeriklerini görüntüleyebiliyoruz. Hazır yetki kavramına da değinmişken yetkimiz olmayan dizinlerin içeriklerini görüntüleyemeyeceğimizi örneğin ***/root*** dizininin içeriğini sorgulayarak teyit edebiliriz. Normalde **root** kullanıcısı sistem üzerindeki **en yetkili kullanıcı** olduğu için bizim gibi standart kullanıcı hesapları root kullanıcısının ev dizinini temsil eden ***/root*** klasörünü üzerinde yetkiye sahip değil. 

Hemen denemek için konsola `ls /root` komutunu girebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls /root                                                                                                                                      
ls: cannot open directory '/root': Permission denied
```

Bakın gördüğünüz gibi doğrudan yetki hatası aldım. Yetkilendirme işlemlerinden bahsederken, nasıl yetki kısıtlaması yapabileceğimizden ve yetki kısıtlaması olan dosyaları kimlerin nasıl ulaşabileceğinden de ayrıca söz edeceğiz. Şimdilik tıpkı bu ***root*** klasöründe olduğu gibi yetkimiz olmayan dizinlere erişemeyeceğimizi bilmemiz yeterli.

Dizin adreslerini belirterek dizin içeriklerini listeleyebilme özelliği dosya taşıma kopyalama veya içerikleri teyit etme noktasında inanılmaz kolaylık sunuyor. Çünkü `cd` komutu ile ilgili dizine gidip `ls` komutunu yazmaktansa, `ls` komutuna doğrudan içeriğinin listelenmesini istediğimiz dizini argüman olarak vermek çok daha kolay.

## Dosya veya Dizinin Kendisini Listelemek

Doğrudan bizim istediğimiz bir veya birden fazla dosya veya klasörlerin özelliklerini görebilmek için dosyanın tam dosya dizin adresin `ls -l` komutundan sonra yazmamız yeterli. Örneğin ben kendi ev dizinimde bulunan ***.bashrc*** dosyasının özelliklerini listelemek istersem `ls -l ~/.bashrc` şeklinde komutumu girmem yeterli. 

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -l ~/.bashrc                                                                                                                               
-rw-r--r-- 1 root root 5589 May 29 04:21 /home/taylan/.bashrc
```

Bakın yalnızca ***.bashrc*** dosyasının özellikleri konsola basılmış oldu. Benzer şekilde yalnızca tek bir klasörün özelliklerini de listeleyebiliriz. 

Normalde örneğin `ls -l /etc/apt` komutunu girdiğimizde ***apt*** dizini içindeki tüm dosya ve klasörler listeleniyor. 

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -l /etc/apt/                                                                                                                               
total 24
drwxr-xr-x 2 root root 4096 Feb 11  2022 apt.conf.d
drwxr-xr-x 2 root root 4096 Jan 19  2022 auth.conf.d
drwxr-xr-x 2 root root 4096 Jan 19  2022 preferences.d
-rw-r--r-- 1 root root  257 Feb 11  2022 sources.list
-rw-r--r-- 1 root root    0 Feb 11  2022 sources.list~
drwxr-xr-x 2 root root 4096 Jan 19  2022 sources.list.d
drwxr-xr-x 2 root root 4096 Feb 11  2022 trusted.gpg.d
```

Biz dizin içeriğinin değil de doğrudan ***apt*** dizinin özelliklerine bakmak istersek, `ls` komutuna “**d**irectory” yani “dizin” ifadesinin kısalmasında gelen `d` seçeneğini eklememiz yeterli. Denemek için bu kez `ls -ld /etc/apt` komutunu girelim. 

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -ld /etc/apt/                                                                                                                              
drwxr-xr-x 7 root root 4096 Feb 11  2022 /etc/apt/
```

Bakın yalnızca ***/etc/apt/*** klasörünün bilgileri listelenmiş oldu. Elbette tek tek girmek zorunda da değilsiniz. İsterseniz peşi sıra birden fazla dosya ya da klasör ismini girip, özelliklerini konsola bastırabilirsiniz. Örneğin ben başka bir dizinde olan ***/var/tmp*** klasörünü de ekleyip peşi sıra özelliklerin listelenmesini sağlayabilirim. 

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -ld /etc/apt/ /var/tmp/                                                                                                                    
drwxr-xr-x 7 root root 4096 Feb 11  2022 /etc/apt/
drwxrwxrwt 7 root root 4096 Jun  4 06:09 /var/tmp/
```

Bakın iki farklı konumdaki klasörlerin tam dizin adreslerini yazıp, özelliklerini kolayca listeleyebildim. Benzer şekilde elbette listelemek istediğiniz dosya veya klasörlerin da tam adını belirttiğiniz sürece sistemdeki farklı dizinlerde bulunan dosya ve dizinleri tek seferde bastırabilirsiniz. Örneğin ben komutun sonuna ***~/.bashrc*** dosyasını da listelemek için ekliyorum. 

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -ld /etc/apt/ /var/tmp/ ~/.bashrc                                                                                                          
drwxr-xr-x 7 root root 4096 Feb 11  2022 /etc/apt/
-rw-r--r-- 1 root root 5589 May 29 04:21 /home/taylan/.bashrc
drwxrwxrwt 7 root root 4096 Jun  4 06:09 /var/tmp/
```

Bakın `ls -ld` komutunun sonuna eklediğim klasörler ve dosyalar tek tek bastırıldı.

Özetle `ls` komutunun görevi kendisine argüman olarak verilmiş olan dosya veya dizinleri listelemek. Bu sebeple tam dizin adresini belirttiğimiz ve yetkimiz olduğu sürece tek seferde pek çok farklı dizindeki dosya ve klasörleri kolayca listeleyebiliyoruz.

## Alt Dizinler de Dahil Tüm İçerikleri Listelemek

Eğer herhangi bir dizin altında yer alan tüm dizinlerin içeriklerini listelemek istersek “**R**ecursive” yani “özyineleme” ifadesinin kısalmasından gelen büyük **`R`** seçeneğini kullanma imkanına sahibiz. Bu seçeneği kullandığımızda tüm alt klasörler de dahil mevcut dizin altındaki tüm dosya ve klasörlerin içerikleri bizim için kademe kademe listeleniyor. Zaten iç içe olan dizinlerin içeriğini bulup bize listelediği için bu seçeneğin adı özyineleme olarak geçiyor. Örnek üzerinden çok daha net anlaşılacağı için hemen basit bir örnek yapalım.

Ben örnek olması için ***/etc/apt*** dizini altındaki tüm içeriği listelemek üzere `ls -R ~` şeklinde komutumu giriyorum.

```bash
┌──(taylan@linuxdersleri)-[/boot]
└─$ ls -R /etc/apt                                                                                                                               
/etc/apt:
apt.conf.d  auth.conf.d  preferences.d  sources.list  sources.list~  sources.list.d  trusted.gpg.d

/etc/apt/apt.conf.d:
00aptitude      00trustcdrom  01autoremove-kernels     50apt-file.conf      50taylan     80debtags
00CDMountPoint  01autoremove  02autoremove-postgresql  50command-not-found  70debconf

/etc/apt/auth.conf.d:

/etc/apt/preferences.d:

/etc/apt/sources.list.d:

/etc/apt/trusted.gpg.d:
debian-archive-bullseye-automatic.gpg           debian-archive-buster-security-automatic.gpg   debian-archive-stretch-stable.gpg
debian-archive-bullseye-security-automatic.gpg  debian-archive-buster-stable.gpg               taylan-archive-keyring.gpg
debian-archive-bullseye-stable.gpg              debian-archive-stretch-automatic.gpg
debian-archive-buster-automatic.gpg             debian-archive-stretch-security-automatic.gpg
```

Bakın tek tek hangi dizin altındaki hangi içerikler bulunduğu ve daha alt dizinlerde de aynı şekilde hangi içeriklerin bulunduğu tek tek konsola bastırıldı. 

Çıktıları incelediğimde ev dizinim altındaki tüm içeriklerin özyinelemeli olarak listelenmiş olduğunu görebiliyorum. İşte sizler de alt dizinlerler de dahil tüm içeriği görmek istediğinizde bu şekilde büyük `R` seçeneğini kullanabilirsiniz.

Özyineleme özelliğinden de bahsettiğimize göre benim `ls` komutu hakkında aktarmak istediğim bilgilerin şimdilik sonuna gelmiş olduk.

Elbette `ls` komutunun bütün özellikleri benim anlattıklarım ile sınırlı değil. `ls —help` komutu ile `ls` aracının sahip olduğu özellikler hakkında her zaman ek bilgi alabilirsiniz. 

# Dizin Oluşturma ve Silme

## Dizin Oluşturma | `mkdir` Komutu

Şu ana kadar bulunduğumuz dizini öğrendik, dizinlerde gezindik ve dizinlerin içeriklerini listeledik ama konsol üzerinden dizin oluşturmaya dair özellikle bir anlatımda bulunmadık. Tabii ki şu ana kadar dizin oluşturmamızı sağlayan `mkdir` aracını defaatle kullandık ama, özellikle bu aracın üzerinde durmak henüz. Sizin de bildiğiniz ve birden fazla kez deneyimlediğiniz gibi konsol üzerinden dizin oluşturmak için İngilizce "**m**a**k**e **dir**ectory" yani "dizin oluştur" ifadesinin kısaltması olan `mkdir` komutunu kullanabiliyoruz. En temel kullanımı `mkdir klasor_adı` şeklinde. Bu kullanım ile mevcut çalışmakta olduğumuz dizinde bizim belirttiğimiz isimde bir klasör oluşturuluyor. Zaten eğitimin başından beri örnek vermek için ara da bu komutu bu şekilde kullandık. Yani hiç de yabancı değiliz. Yine de ele almamız gereken birkaç detayı daha bulunuyor.  

Ben öncelikle standart kullanımını tekrar ele almak için bulunduğum dizine folder1 isimli bir klasör oluşturmak üzere `mkdir folder1` komutunu giriyorum.

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ mkdir folder1

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls
folder1
```

`ls` komutu ile içerikleri listelediğimde, klasörün oluşturulduğunu görebiliyorum.

Bulunduğumuz dizin dışında tam dizin adresi belirtirsek, eğer yetkimiz de varsa istediğimiz konumda istediğimiz isimde bir dizin de oluşturabiliriz.

Örneğin ben `mkdir ~/Documents/belgeler` komutu ile kendi ev dizinimdeki ***Documents*** klasörünün içinde ***belgeler*** isimli yeni bir klasör oluşturabilirim. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ mkdir ~/Documents/belgeler
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls ~/Documents/
belgeler        metinler
linux-dersleri  metin.txt
```

Bakın çalışmakta olduğum dizinden bağımsız olarak istediğim bir konumda yeni klasörün oluşturulması da sağlamış oldum. Biz bu şekilde komut girdiğimizde `mkdir` aracı belirttiğimiz dizini kontrol ediyor, örneğin benim girdiğim komutta ***Documents*** dizini kontrol edildi ve burada belirtilen “***belgeler***” isimli bir klasör olmadığı için `mkdir` aracı bu isimde yeni bir klasör oluşturdu. Zaten bu sayede yetkimiz dahilinde olduğu sürece istediğimiz adreste istediğimiz klasörü oluşturabilme esnekliğine sahip oluyoruz. 

Daha önce yetkimiz olmayan ***/root*** dizininin içeriğini listelemeye çalışmış ve yetki hatası almıştık hatırlarsanız. Aynı durum klasör oluştururken de geçerli. Yetkimiz olmayan dizinlerin içine yeni klasörler ekleyemeyiz. Denemek için ***/root*** dizini altında "***yetkisiz***" isimli bir klasör oluşturmayı deneyelim. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ mkdir /root/yetkisiz
mkdir: cannot create directory ‘/root/yetkisiz’: Permission denied
```

Gördüğünüz gibi yetkim olmadığı için bu dizinde yeni klasör oluşturamadım. 

Tekrar örneklerimize dönecek olursak, ben örneklerde hep tek bir klasör oluşturdum. Ancak dilersek klasör isimlerini peş peşe yazarak tek seferde birden fazla klasör de oluşturabiliriz. Denemek için üç klasör birden oluşturalım.

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ mkdir folder2 folder3 folder4

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls
folder1  folder2  folder3  folder4
```

Bakın tek seferde birden fazla klasörü oluşturabildim. İşlemin hızlıca sonuçlanması harika ama kimi zaman işlemi konsol üzerinden de takip etmek isteyebiliriz. 

Eğer çoklu klasör oluştururken klasör oluşturma işlemini daha kolay takip etmek istersek, İngilizce “**v**erbose” yani "ayrıntılı" ifadesinin kısaltması olan `v` seçeneğini de kullanmamız gerekiyor.

Örneğin ben biraz önce çoklu şekilde klasör oluşturduğumda klasörlerin oluşturulduğuna dair herhangi bir çıktı almadım.

Eğer `mkdir` komutunun **`-v`** seçeneğini kullanırsak tüm oluşturma işlemleri konsola basılacaktır. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]                              
└─$ mkdir -v a b c d                                 
mkdir: created directory 'a'                             
mkdir: created directory 'b'                                 
mkdir: created directory 'c'                                 
mkdir: created directory 'd'
```

Her bir klasörün oluşturulmasına dair adım adım bilgi edinmiş olduk. `mkdir` komutunun **verbose** seçeneği özellikle farklı konumlarda çoklu klasör oluşturma gibi işlemlerde, oluşturma işlemlerinin takibi konusunda çok kullanışlı olabiliyor. Zaten **verbose** ifadesini tüm eğitim boyunca komutların buradaki gibi işlem adımlarına dair **ayrıntılı çıktılar** vermesi için kullanacağımız için şimdiden tanıtmak istedim.

### İç içe Dizin Oluşturma

Şimdiye kadar hep derinliği olmayan yani alt klasörleri bulunmayan tekil klasörler oluşturduk. Normalde bildiğiniz gibi klasörlerin içinde ve üstünde dizinler yer alabiliyor. Yani iç içe bir yapı söz konusu. İşte kimi zaman tekil bir klasör oluşturmamız gerekiyorken kimi zaman da tek seferde iç içe birden fazla klasör oluşturmamız da gerekebiliyor.

Eğer tek seferde iç içe birden fazla klasörü oluşturmak istersek `mkdir` komutunun `p` seçeneğini kullanabiliyoruz. Buradaki `p` seçeneği İngilizcedeki "**p**arrent" yani "ebeveyn" ifadesinin kısalmasından geliyor. Aslında bu ifade üst dizin alt dizin kavramıyla ilişkili. Örneğin ben bir klasörün içine yeni bir klasör oluşturursam, bir üst klasör alttaki klasörün **parrent**'ı yani **ebeveyni** olarak kabul ediliyor. Bu seçenek de buradan aklınızda kalabilir. 

Hemen uygulamalı olarak -p seçeneğinin etkisini gözlemleyelim. Ben `mkdir -p buyukanne/anne/cocuk` şeklinde komutumu girmek istiyorum.  

```bash
┌──(taylan@linuxdersleri)-[~/yeni]                                                 
└─$ mkdir -p buyukanne/anne/cocuk                                              
                                                                               
```

Tamamdır, şimdi teyit etmek için `ls -R buyukanne` komutunu girelim. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls -R buyukanne/                                                                               
buyukanne/:
anne

buyukanne/anne:
cocuk

buyukanne/anne/cocuk:
```

Bakın ***buyukanne*** klasörünün içinde “***anne***” onun da içinde “***cocuk***” isimli klasörler alt alta tek seferde `p` seçeneği sayesinde oluşturulmuşlar. Bizde `ls -R` komutu sayesinde klasör içeriğini özyinelemeli olarak bastırarak bu durumu teyit edebildik.

Eğer `p` seçeneğini kullanmasaydık, kabuk gerçekte var olmayan bir dizin adresinde yeni klasör oluşturmaya çalıştığımız düşünecekti. Yani bizim iç içe oluşturulması için verdiğimiz klasör isimlerini sanki halihazırda var olan bir dizin yoluymuş da en sonraki klasör oluşturulacak klasör ismiymiş gibi algılanacaktı. Hemen denemek için `p` seçeneği olmadan `mkdir x/y/z` komutunu girelim.

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ mkdir x/y/z                                                                                    
mkdir: cannot create directory ‘x/y/z’: No such file or directory
```

Böyle bir dosya ya da dizin olmadığı uyarısını döndürdü, haklı da. Gerçekten böyle bir dizin yok. Çünkü biz bu komutu girdiğimizde `mkdir` aracı ***x*** dizinine geçip oradan ***y*** dizinine geçecek, ***y*** dizini altında da ***x*** klasörünü oluşturacaktı. Çünkü `p` seçeneği olmadan bizim girdiğimiz bu komut bunu ifade ediyor. Elbette bu dizinler var olmadığı için komutumuz da hata verdi. Bizim amacımız da bu dizinin oluşturulması, bunun için özellikle `p` seçeneği ile bu durumu belirtmemiz gerekiyor.

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ mkdir -p x/y/z                                                                                 

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls -lR x/                                                                                      
x/:
total 4
drwxr-xr-x 3 taylan taylan 4096 Jun  4 07:16 y

x/y:
total 4
drwxr-xr-x 2 taylan taylan 4096 Jun  4 07:16 z

x/y/z:
total 0
```

Bakın `p` seçeneğini kullandığımda bu kez dizinler iç içe sorunsuzca oluşturuldu.

Tamamdır bence `mkdir` aracından yeterince bahsettik. Şimdi var olan dizinleri nasıl silebileceğimizden bahsederek devam edelim.

## Dizin Silme | `rmdir` Komutu

Söz konusu komut satırı üzerinden klasörleri silmek olduğunda da `rmdir` ve `rm` olmak üzere ihtiyacımıza göre kullanabileceğimiz iki alternatif aracımız var. Ben bu bölümde yalnızca `rmdir` aracına odaklanacağım. Ancak merak etmeyin daha sonra eğitim içerinde `rm` aracından da ayrıca bahsedeceğiz zaten.

Biliyorsunuz klasörler yani dizin yapısı, içerisindeki dosya ve klasörleri organize şekilde bir arada tutmak için tasarlanmış olan harika bir çözüm. Yeterince alana sahip olduğumuz sürece bir klasör içerisine istediğimiz kadar dosyayı barındırabiliyoruz. Bu durum da tıpkı gerçek hayatta kullandığımız klasörleme yapısı gibi, işletim sistemleri üzerinde de bize hiyerarşik bir düzen sağlıyor. Klasörlerin içerisinde dosya barındırabilmesi her ne kadar işlevsel olsa da, bu durum aynı zamanda klasörleri riskli getiriyor. Eğer yanlışlıkla içerisinde kritik dosyaların bulunan bir klasörü silersek, tek seferde içerisindeki tüm alt dosya ve klasörler de silineceği için tek bir hatanın faturası çok ağır olabilir. Bu sebeple klasör silme işlemi Linux üzerinde ciddiye alınıyor. Zaten son derece dikkatle yapılması da gerekiyor. Klasörü silmek tek bir dosyayı silmeye benzemez. Tek seferde büyük bir yıkıma sebep olabiliriz. Zaten bu tehlike göz önünde bulundurularak klasör silmek için spesifik olarak güvenli bir araç olan `rmdir` aracı geliştirilmiştir.

`rmdir` aracı yalnızca içeriği boş olan klasörleri silmemizi sağlıyor. Bu sayede, içeriği dolu olan klasörlerin yanlışlıkla silinmesinin de önüne geçilmiş oluyor. Özellikle toplu olarak klasör silmek için `rmdir` aracını sıklıkla kullanılıyor çünkü klasörlerin boş olduğundan emin olunabiliyor.

Aracın kullanımına geçecek olursak en temel kullanımı `rmdir "silinecek klasör ismi"` şeklinde. Örneğin ***folder1*** klasörünü silmek için `rmdir folder1` komutunu girebiliriz.

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls                                                                                             
a  b  buyukanne  c  d  folder1  folder2  folder3  folder4  x

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rmdir folder1                                                                                  

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls                                                                                             
a  b  buyukanne  c  d  folder2  folder3  folder4  x
```

`ls` komutu ile de teyit ettiğimde, klasörün içerisin boş olduğu için sorunsuzca silindiğini görebiliyorum. Şimdi `rmdir` aracının davranışlarını gözlemleyebilmek için içerisinde başka bir klasör bulunan ***x*** klasörünü silmeyi de deneyebiliriz. Biliyorsunuz ***x*** klasörü içinde ***y*** onun da içinde ***z*** klasörü yer alıyor, çünkü biz daha önce `mkdir` aracının `p` seçeneği sayesinde iç içe oluşturduk. Şimdi `rmdir x` komutu ile ***x*** klasörünü silmek üzere komutumuzu girelim. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls                                                                                             
a  b  buyukanne  c  d  folder2  folder3  folder4  x

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rmdir x
rmdir: failed to remove 'x': Directory not empty
```

Bakın klasörün içi boş olmadığı için silme işlemi anında reddedildi. Bunun yerine iç içe olan klasörlerin tam isimlerini girmeyi de deneyebiliriz. Silme işlemini rahat gözlemleyebilmek için rmdir aracında da mevcut olan **verbose** yani "ayrıntılı" çıktı sağlayan `v` seçeneğini de komutumuza ekleyelim. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rmdir -v x/y/z/                                                                                
rmdir: removing directory, 'x/y/z/'
```

Komut neticesinde en son klasör olan ***z*** klasörünün silindiğini öğrendik. Çünkü ***z*** klasörünün içeriği tamamen boştu ve biz ***z*** klasörünün tam dizin adresini `rmdir` aracına iletmiş olduk. Dolayısıyla yalnızca ***z*** klasörü içeriği boş olduğu için, `rmdir` aracı tarafından kolayca silindi. Bu durumda ***x*** ve ***y*** klasörlerinin hala silinmediğini teyit etmek için `ls -R x/` komutu ile dizin içeriğini listeleyebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls -R x/                                                                                       
x/:
y

x/y:
```

Bakın gördüğünüz gibi ***x/y*** dizini hala mevcut.

Eğer tek seferde içerisi boş olan tüm iç içe dizinleri silmek istersek tıpkı dizinleri oluştururken kullandığımız gibi silerken de `p` seçeneğini kullanabiliriz. Daha önce `mkdir` aracı ile iç içe dizin oluşturmak için kullandığımız `p` seçeneğini, iç içe olan dizinleri tek seferde silmek için de kullanabiliyoruz. Ben işlem ayrıntılarını da takip edebilmek için `rmdir -vp x/y` şeklinde komutumu giriyorum. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rmdir -vp x/y
rmdir: removing directory, 'x/y'
rmdir: removing directory, 'x'
```

Bakın ayrıntılı çıktılardan da takip edebildiğimiz gibi içe içe olan boş klasörleri `p` seçeneği sayesinde silmeyi başardık.

Lütfen unutmayın, biz burada **iç içe olan boş klasörleri** sildik. Eğer herhangi bir klasörün içerinde dosya bulunuyor olsaydı bu işlem tabii ki başarısız olacaktı. 

Denemek için `mkdir -p a/b/c/` komutu ile iç içe yeni klasörler oluşturalım. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ mkdir -p a/b/c/
```

Klasörleri oluşturduktan sonra bu dizinlerden birine içerisi dolu bir metin dosyası ekleyebiliriz. Ben en sondaki klasöre "***metin.txt***" isminde bir dosya kaydetmek için `echo "bu bir metin dosyasıdır" > a/b/c/metin.txt` komutunu giriyorum.

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ echo "bu bir metin dosyasıdır"  > a/b/c/metin.txt                                              

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls a/b/c/
metin.txt
```

Bakın ***metin.txt*** dosyası en alt dizinde yer alıyor.

Şimdi tekrar `rmdir -vp a/` komutu ile iç içe olan klasörleri silmeyi deneyebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rmdir -vp a/
rmdir: removing directory, 'a/'
rmdir: failed to remove 'a/': Directory not empty
```

En sonraki klasörün içeriği boş olmadığı için silinemediği belirtiliyor. Bu klasörü silmek için öncelikle içerisinde bulunan dosyaları taşımanız veya silmeniz gerek.

Ayrıca kimi zaman içerisi dolu olan klasörleri `rmdir` aracını kullanmadan doğrudan silmek de isteyebilirsiniz. Tam olarak bu işlem için de zaten `rm` komutunu kullanabiliyoruz. Bu aracın kullanımından ileride ayrıca bahsedeceğiz. Ancak temelde bilmeniz gereken, içerisindeki her şey ile birlikte klasörleri silmek istediğimizde `rm -dr` komutunu kullanabiliyor olmamızdır. Buradaki `r` seçeneği “**r**ecursive” yani “özyineleme” anlamına geliyor. Bu seçenek sayesinde dizinin sonuna kadar tüm içeriklerin otomatik olarak silinmesini sağlanıyor. Buradaki `d` seçeneği de “**d**irectory” yani “dizin” ifadesinin kısaltmasından geliyor. Burada özellikle `d` seçeneği ile dizin silmek istediğimizi belirtmemiz gerekiyor çünkü normalde `rm` aracı yalnızca dosyaları silmek için kullanılıyor. Hemen deneyelim.

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rm -dr a/                                                                                     

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls
b  buyukanne  c  d  folder2  folder3  folder4
```

***a*** klasörünün silinmiş olduğunu `ls` sayesinde teyit etmiş olduk.

Zaten ileride dosyalardan bahsederken dosyaları nasıl silebileceğimizden de bahsetmemiz gerekecek. Dolayısıyla `rm` komutunun detaylarında da ayrıca bahsedeceğiz. Şimdilik bu kadarlık bilgi yeterli. Dizinler hakkında yeterince şeyden bahsettik.
