# Gerekli Ortamın Kurulması

Bir önceki bölümde, neden Debian tabanlı bir dağıtım üzerinden ilerlememiz gerektiğini ele aldık. 

Profesyonel veya kişisel kullanım da dahil olmak üzere anlatımların herkese hitap edebilmesi için ben eğitim süreci boyunca grafiksel arayüzlü Kali Linux versiyonu üzerinden ilerleyeceğim. Zaten eğitim içerisinde ana odağımız komut satırı kullanımı olacağı için, Linux’u temel düzeyde öğrendikten sonra ister grafiksel arayüzlü isterseniz de komut satırı arayüzlü sistemleri rahatlıkla yönetebiliyor olacaksınız. Biz kurulum yapacağımız ortamı belirlememize yardımcı olabilmesi için birkaç farklı kurulum alternatiften kısaca bahsedelim.

# Kurulum Alternatifleri Hakkında

Söz konusu Linux olduğunda, çok fazla kurulum ve kullanım alternatifimiz bulunuyor. Ben sadece içlerinde bilmediğiniz bir alternatif seçenek olması ihtimaline karşı genel olarak bu kullanım yöntemlerinden bahsetmek istiyorum. 

## Kurulum ve Kullanım Metotları

- **Sanal olarak kurulum (Vmware & Virtualbox)**
    - Vmware veya Virtualbox gibi sanallaştırma araçlarını kullanarak Linux’u sanal olarak mevcut işletim sistemimiz üzerinden kurup kullanabiliriz.
- **İkincil işletim sistemi olarak kurmak (Dualboot)**
    - Bilgisayarımızın sabit diskine tekil işletim sistemi olarak kurabileceğimiz gibi, mevcut sabit diski bölümleyerek ya da ikincil harici bir diske kurulum yaparak Linux’u ikincil işletim sistemi olarak kullanabiliriz.
- **Live versiyon olarak kullanmak.**
    - Tüm dağıtımlarda varsayılan olarak desteklenmese de yaygın kullanıma sahip dağıtımları herhangi bir kurulum yapmadan usb ya da dvd disk gibi aygıtlar üzerinden live yani canlı biçimde kullanabiliriz.
- **Linux VPS aracılığı ile kullanmak.**
    - İstediğimiz özellikteki sunucuyu kiralayıp bu sunucu üzerinden Linux işletim sistemini kullanabiliriz.
- **WSL veya WSL2**
    - WLS olarak geçen özellik sayesinde Windows üzerinden yaygın kullanıma sahip çeşitli dağıtımları kullanabiliriz.

En genel haliyle temel kullanım alternatifleri ve kısa açıklamaları bu şekilde. Şimdi hangi kurulum metodunun daha uygun olduğuna karar verebilmek için anlatımlarımıza biraz da bu metotların avantaj ve dezavantajlarından bahsederek devam edelim.

---


## Sanal Olarak Kullanmak

Profesyonel kullanımda farklı yaklaşımlar söz konusu olsa da **sanallaştırma işlemi kısaca;** kurmak istediğiniz yeni bir işletim sistemini, diske kalıcı kuruluma ihtiyaç duymadan, mevcut işletim sistemi üzerinden sanallaştırma teknolojisi ile çalıştırabilmeniz anlamına geliyor. Sanallaştırma teknolojisi sayesinde, kullanmakta olduğunuz işletim sisteminden çıkmadan, tıpkı program çalıştırır gibi; herhangi bir işletim sistemini sanal olarak çalıştırabilirsiniz. Sanallaştırma işlemini; bu iş için geliştirilmiş olan ”**Vmware”** ve ”**Virtualbox”** gibi çeşitli özel yazılımlar sayesinde kolayca uygulayabiliyoruz. Sanallaştırma işleminin avantajlarından bahsedecek olursak;


### <span class="yesil small text-success">Avantajları</span>

- Sistemin yedeğini alarak, büyük bir sorun ile karşılaştığımızda aldığımız yedeği kolaylıkla geri yükleyebiliriz.
- Snapshot yani anlık görüntü özelliği sayesinde sistem çalışırken herhangi bir çalışma anını kaydedip, daha sonra istediğimiz zaman bu anlık görüntüyü kullanarak sistemi aynen en son anlık görüntüsü alındığı andan devam edecek şekilde kullanabiliyoruz. Bu durumu oyunlardaki checkpoint sisteminin çok daha esnek bir hali gibi de düşünebilirsiniz.
- Diske kalıcı kurulum gerektirmez, ve sanallaştırma yazılımını çalıştıran ana işletim sisteminin dosyalarına kesinlikle müdahale etmez. Tıpkı herhangi bir programı çalıştırırmış gibi sanal işletim sistemini kullanmanız mümkündür. Üstelik sanal işletim sisteminin sistem dosyaları, kalıcı diske kurulumdaki gibi seçilmiş disk bölümüne yayılmaz. Sanal işletim sistemin disk üzerindeki tüm varlığı yalnızca sanallaştırma yazılımının okuyup çalıştırabildiği birkaç dosyadan ibarettir. Bunlar da sanallaştırma yazılımı için oluşturulmuş olan ilgili klasörün altında düzenli şekilde tutulur. Yani sanal sistemler disk üzerindeki mevcut sisteme hiç bir zarar vermeden sanal olarak çalışır. Herhangi bir programı çalıştırmak kadar kolay ve risksizdir.
- Eğer bilgisayarın donanım kaynakları müsaitse sanallaştırma sayesinde aynı anda birden çok işletim sistemini çalıştırılabilir.
- Kendinize göre ayarladığınız sanal makineyi kopyalayıp istediğiniz bilgisayarda aynı şekilde çalıştırabilirsiniz. Yani oluşturduğunuz sanal çalışma ortamını taşınabilirdir.

**Kısacası;** sanallaştırma, Linux’u yeni öğrenmeye başlayan kişiler için ideal bir test ortamı görevi görür. Örneğin snapshot ve yedekleme özellikleri sayesinde hatalardan kolaylıkla geri dönülmesi mümkündür. Eğer; mevcut sistemime zarar vermeden gönül rahatlığı ile sanallaştırma üzerinden Linux’u kurcalayayım, deneme yanılma ile öğreneyim derseniz "sanal olarak kullanım" sizin için biçilmiş kaftandır. Bizler de zaten tam olarak bu sebeple eğitim boyunca Linux işletim sistemini sanallaştırma yazılımı üzerinden kullanacağız. Ancak elbette tüm bu avantajlarının yanında elbette birkaç belirgin dezavantajı da bulunuyor. 


### <span class="kirmizi small text-danger">Dezavantajları</span>


Esasen sanallaştırmanın sağladığı avantajların yanında, dezavantajlarının sayısı ve etkisi çok büyük sayılmaz. Yine de dezavantaj sayacak olursak;

- Sanal sistem mevcut işletim sistemi üzerinde çalıştığı için performans sorunları yaşanabilir. Elbette bu performans sorunları bilgisayarınızın sahip olduğu donanım gücüne ve sanal sistem için ne kadar kaynak ayırdığınıza göre değişiklik gösterir. Sahip olduğunuz donanıma göre sanal makinenin kaynaklarını doğru şekilde ayırdığınızda ortalama sistemlerde dahi sanal kullanım çok büyük performans sorunlarına neden olmaz.
- Performans sorunu dışında diskte çok fazla yer kaplama sorunu ile de karşılaşabilirsiniz. En nihayetinde sanal olarak da olsa, çalıştırdığınız dosya aslında bir işletim sisteminin sahip olduğu tüm bilgileri içeriyor. Dolayısıyla sanal dosyalar da bir işletim sistemi kadar yer kaplarlar. Özellikle sanal işletim sistemine çok fazla program veya dosya yükleyip bir de bu sanal sistemin birden fazla yedeği alındığında fiziksel disk üzerinde çok sayıda dosya olmasa da var olan dosyaların boyutları fazlaca yer kaplayabilir. Ayrıca bu duruma ek olarak örneğin birden fazla sanal makine oluşturulduğunda da doğal olarak disk alanı ve çalışma organizasyonunuz kötü etkilenebilir. Yine de sahip olduğunuz temel organizasyon becerisi ve yeterli disk kapasitesi ile bu da pek önemli bir sorun sayılmaz. Yani fiziksel diskinizdeki boş bulunan alana göre yedekleme ve yeni sanal makine kurulumlarını planlarsanız sanallaştırma dosyalarının boyutları da sizin için çok sorun olmayacaktır.

Sanallaştırmanın belirgin avantaj ve dezavantajları bu şekilde. Şimdi, sanallaştırma teknolojisini nasıl yani hangi yazılımlar aracılığı ile kullanabildiğimize de değinelim. 

Esasen söz konusu sanallaştırma olduğunda çeşitli alternatif yazılımlar bulunsa da bizler en sık tercih edilen "Vmware" ve "Virtualbox" araçlarından kısaca bahsedebiliriz. İlk olarak vmware yazılımından bahsedecek olursak:

***Vmware;*** içerisinde pek çok özelliği barındıran ücretli bir sanallaştırma yazılımıdır. Fakat burada bahsi geçen özellikler genellikle işletmelere yönelik çözümler aslında. Eğer bireysel bir kullanıcıysanız muhtemelen bir çok ekstra özelliği hiç kullanmanız gerekmeyecek. Ayrıca Vmware aracının ücretsiz sürümü de bulunuyor ancak bu sürüm de genel olarak çok kısıtlı özellikle sahip olduğu için bireysel kullanımda dahi pek de verimli bir çalışma ortamı sunmuyor. Örneğin ücretsiz sürümü yedekleme ve snapshot gibi özellikler bulunmuyor. Ki bu özellikle öğrenme aşaması için gerçekten de çok önemli.

***Virtualbox:*** ise tamamen ücretsiz, Vmware yazılımın ücretli sürümü ile hemen hemen aynı özelliklere sahip açık kaynaklı bir sanallaştırma yazılımıdır. Üstelik "Windows", "MacOS" ve "Linux" platformlarının hepsi üzerinden rahatlıkla kullanılabiliyor. Eğer bireysel bir kullanıcıysanız; Virtualbox yazılımını tercih etmenizi öneririm.

---

## İkincil İşletim Sistemi Olarak Kullanmak

Normalde standart şekilde bilgisayarımızdaki sabit diskte tekil olarak Linux kurup kullanabiliriz. Ancak bu her kullanıcı için uygun olmayabilir. Bazı durumlarda tek bir bilgisayarda birden fazla işletim sistemini kullanmamız gerekebilir. Bunun için diskinizde yeteri kadar alan varsa diskinizi bölümlendirerek mevcut işletim sistemini bozmadan yeni işletim sistemleri yükleyebilirsiniz. Örneğin Windows kurulu bir bilgisayara ikincil işletim sistemi olarak Linux kurabilirsiniz.

Özetle bu yöntem**;** mevcut işletim sisteminin kurulu olduğu diskte yeni bölüm oluşturup, bu bolüme ikincil sistem olarak Linux işletim sistemini kurmaktır. Bu kurulumun ardından sistem, başlangıçta hangi işletim sistemini kullanmak istediğinizi sorar ve seçiminize göre ilgili sistemi başlatır. Bu sebeple zaten bu yöntem dualboot olarak da biliniyor. Bu yöntemin avantajlarından bahsedecek olursak;

### <span class="yesil small text-success">Avantajları</span>


- Sanal kuruluma oranla performans açısından oldukça verimlidir. Çünkü aynı anda hem ana işletim sistemi hem de sanal olmak üzere iki işletim sisteminin çalıştırılması gerekmiyor. Böylece bilgisayarın tüm kaynakları o an kullanılmakta olan tek bir sistem için ayrılabiliyor.
- Var olan sistemi silmeden ikincil bir sistem olarak yanına kurduğunuz için, ihtiyacınız olduğunda bilgisayarınızı yeniden başlatıp diğer sisteme de kolaylıkla geçiş yapabilirsiniz. Yani tek bir işletim sistemini kullanmak zorunda da değilsiniz. İhtiyaçlarınıza göre kolayca bir diğerine geçiş yapabilirsiniz.

Kısaca dezavantajlarından da bahsedecek olursak;

### <span class="kirmizi small text-danger">Dezavantajları</span>


- Sistem yedeğini almak ve ilgili yedeğe dönmek, sanal kullanıma oranla daha zahmetlidir.
- Snapshot özelliği olmadığından sistemde herhangi bir kritik hata meydana geldiğinde, sistemi onarması çok daha uzun sürebilir. Bu durum özellikle yeni öğrenmeye başlayan kullanıcılar için gerçekten heves kırıcı ve göz korkutucu olabilir.
- Kurulum işlemi ve kurulum sonrası sistem ayarlarının yapılandırılması, diğer kurulum işlemlerine oranla biraz daha uğraştırıcı olabilir. Ayrıca hatalı yapılandırma sonucu, diskte yer alan diğer işletim sisteminin dosyalarına zarar verebilme ihtimali de vardır.

Bu dezavantajları ele aldığımızda yeni başlayan kullanıcılar için Linux’u tekil veya ikincil bir sistem olarak kullanmak pek de mantıklı olmayacaktır. 

Öğrenme aşamasında, kullanıcıların hata yapması çok doğal bir durumdur. Zaten etkili öğrenim için sizlerin de bildiği üzere pratik yaparak ilerlemek gerekiyor. Pratiklerimiz esnasında sürekli deneme yanılma yöntemiyle sistemi bozma korkusu olmadan ilerlemek eğitimin verimi için çok önemli. Bu yolla edinilen bilgiler de zaten çok daha kalıcı oluyor. Sistemin kullanımı sırasında meydana gelebilecek olası hatalar, yeni başlayan kullanıcıların öğrenme şevkini kırarak öğrenme sürecini sekteye uğratabilir. Bu sebeple eğer Linux işletim sistemini ilk defa kullanacaksınız, daha hızlı ve etkili öğrenebilmek için bu yöntemi yani “İkincil İşletim Sistemi” alternatifini sizlere önermiyorum.  Ancak sanal olarak kullandığınızda sistem performansı sizin için çok sorun oluyorsa, yani eğitime devam edemeyeceğiniz kadar sorun oluşturuyorsa elbette sabit diskinize kurulum yaparak da Linux'u kullanabilirsiniz. 

---

## USB üzerinden Live Versiyon Olarak Kullanmak

Live olarak kullanmak; Linux işletim sistemini USB diskimiz üzerine kurup, sistemi bu USB disk ile başlatıp kullanabildiğimiz alternatiftir. Bu kullanım alternatifinde tüm dosyalar geçici olarak tutuluyor, sistemi kapattığımızda tüm veriler sıfırlanıyor. Zaten canlı mod olarak ifade edilme nedeni de budur. Sistemleri sabit diske kurmadan önce deneyimleyip tanımak, geçici işlerimizi halletmek veya gerektiğinde çökmüş sistemleri kurtarmak için kullandığımız bir yöntemdir. Üstelik söz konusu USB üzerinden Linux kullanmak olduğunda aslında yalnızca Live olarak bahsettiğimiz bu kullanım metoduyla da sınırlı değiliz. Uygun dağıtımlarda doğru ayarlamalar yapıldığında sistem kapatılırken USB üzerinden dosyaların silinmediği yani kalıcı olarak Linux sistemini kullanabileceğimiz alternatifler de bulunuyor.

USB üzerinden kullanma seçeneğini, sanal kullanımda eğitime devam edemeyecek kadar performans sorunu yaşayanlara ve sabit diskine kurmak istemeyenlere önerebilirim. Kısaca USB üzerinden kullanımın avantajlarına değinecek olursak;

### <span class="yesil small text-success">Avantajları</span>


- Sabit diske kurulum gerektirmez, yalnızca USB disk yeterlidir. Bu sayede sabit diskinizde ek alan ayırmak zorunda kalmazsınız.
- Farklı amaçlarla kullanılabilmesi için kendi içinde canlı, kalıcı ve şifreli olmak üzere birden fazla kullanım modu vardır.
- Usb disk taşınabilir olduğu için pek çok farklı bilgisayardan kuruluma gerek kalmadan Linux sistemini kullanmaya devam edebilirsiniz. Sabit disklerden ziyade USB diskler daha taşınabilir ve kolay takılabilir olduğu için her zaman yanınızda taşıyabileceğiniz Linux sistemine sahip olabilirsiniz.

Biraz da dezavantajlarına değinmemiz gerekirse;

### <span class="kirmizi small text-danger">Dezavantajları</span>


- USB üzerinden kullanımda verim alabilmek için USB diskinizin en az 8 GB depolama kapasitesi olması gerekiyor. Ve ayrıca mümkünse okuma yazma hızı yüksek olan bir USB aygıtı kullanmalısınız. Eğer kullanacağınız USB aygıtın okuma yazma hızı düşükse sistem performansı oldukça kötü etkilenebiliyor. Çünkü okuma yazma hızı düşük olan bir depolama birimi kullanıldığında, ram ve cpu gibi bileşenlerin iyi olması okuma yazma hızının oluşturacağı darboğaz dolayısıyla sistem performansına olumlu katkı sunamıyor maalesef.
- Diğer bir dezavantaj ise sistemi USB disk üzerinden başlatmak için bir kaç ön hazırlığın gerekmesidir. USB diskin kullanılacağı sistemin bios ayarlarından bu USB diskin sorunsuzca boot edilebilmesi için değiştirilmesi gereken ayarlar vardır. Yine de ne yaptığınızı biliyorsanız bu durumda büyük bir zorluk sayılmaz.
- Belki de en kritik olan dezavantaj ise eğer bilinçsizce hareket ederseniz USB diski bağladığınız bilgisayardaki disklerden verilerin silinmesine sebep olabileceğinizdir. Çünkü USB diski doğrudan bilgisayara bağlayıp kullanıyor olacaksınız. Eğer farkında olmadan USB diski bağladığınız bilgisayardaki sabit disk üzerinde işlemler yaparsanız verilerin silinmesine sebep olabilirsiniz. Elbette ne yaptığının bilincinde olan kullanıcılar için bu gibi bir hata pek olası olmasa da henüz öğrenme aşamasının başındaki kişilerde özellikle de disk işlemleri yapılırken bu gibi hataların yapılması olasıdır. Bu bakımdan USB üzerinden kullanım tıpkı sabit diske kurulumda da olduğu gibi sanal olarak kullanım kadar izole değildir.

## VPS Üzerinden Kullanım

VPS ifadesi **V**irtual **P**rivate **S**erver ifadesinin kısaltmasıdır. VPS sunucular en basit tabirle; fiziksel bir sunucunun sanallaştırma yazılımları ile birden fazla alt sanal sunucuya bölündüğü yapıdır. Her bir sanal sunucu birbirinden bağımsızdır ve kendisine ayrılmış kaynak kadar tüketimde bulunabilir. İşte bizler de çeşitli servis sağlayıcılarına kirasını ödeyerek istediğimiz özelliklerdeki sanal sunuculara uzak bağlantı ile bağlanıp istediğimiz yerden yönetebiliyoruz. VPS servisleri özellikle kesintisiz hizmet vermeyi gerektiren servislerin barındırılması gibi işler için kullanılsa da, elbette kişisel amaçlarımız için de istediğimiz şekilde kullanabiliriz. Yani özetle bu servisler sayesinde fiziksel olarak sahip olmadığımız bilgisayarları, uzaktan bağlanıp yönetebiliyoruz. Bu yöntemde ister bilgisayar ister telefon isterseniz de internete bağlanabilen başka bir araç ile kiraladığınız sunucuya bağlanıp sisteminizi kolayca yönetebilme esnekliğine de sahip oluyorsunuz.

Eğer fiziksel olarak güçlü bir bilgisayarınız yoksa ve ödeme yapabilme imkanınız varsa, Google Cloud, AWS, DigitalOcean, Linode veya yerel hizmet sağlayıcıları gibi platformlar üzerinden istediğiniz özelliklere sahip bir VPS kiralayabilirsiniz. Hangi hizmeti tercih ederseniz edin, genellikle Ubuntu, CentOS ve diğer dağıtımların seçenek olarak sunulduğunu göreceksiniz. Ben doğrudan bir hizmet sağlayıcı önerisinde bulunmuyorum. Biraz araştırırsanız kendinize uygun olana karar verebilirsiniz. Kimi servisler geçici süreli ücretsiz deneme imkanları da sunuyor. 

Aslında açıklama esnasında az çok değinmiş olsak da bir kez daha kısaca VPS kullanım avantajlarından madde madde bahsedelim.

### <span class="yesil small text-success">Avantajları</span>


- Mevcut donanımınızın çok güçlü olması gerekmez. Tek ihtiyacınız olan uzak sunucuya bağlanıp komut girebileceğiniz basit özellikteki cihaz ve internet erişimi.
- İstenilen yerden ve istenilen cihazdan(*pc, laptop, tablet, telefon..*) uzak sunucudaki sisteme komut verilebilir. Cihaz bağlamında esneklik sunuyor yani.
- Kullandığınız servise göre değişiklik gösterse de servis sağlayıcının sunduğu imkanlar dahilinde sistem yedeği alma ve üst düzey sistem performansı imkanına sahip olabiliyorsunuz. Sunucu özelliklerine bakarsanız, kullanılan disk tipi gibi donanımsal tercih imkanlarınız olduğunu da görebilirsiniz.

### <span class="kirmizi small text-danger">Dezavantajları</span>


- Bu hizmetler ücretlidir. Eğer ihtiyacınızdan fazla özelliklerde hizmetler kiralarsanız gereksiz harcamalara sebep olabilirsiniz.
- Servislerin kullanımı her ne kadar kolay olsa da Linux ile yeni tanışan kullanıcılar için öncelikli olarak tercih edilecek bir yöntem değildir. Çevrimdışı olarak erişememe dezavantajının yanında, gerektiğinde yüksek sistem kaynakları ve test için disk ekleme gibi ek faaliyetler gerekeceği için eğitimi VPS üzerinden takip etmekte zorlanabilirsiniz.

## WSL ve WSL2

WSL ifadesi **W**indows **S**ubsystem for **L**inux ifadesinin kısaltmasından geliyor. WSL, sanallaştırma aracı kullanmadan Windows üzerinde Linux işletim sistemini entegre şekilde kullanabilmemize olanak sağlayan bir özelliktir. Bu özellik sayesinde Microsoft’un mağaza uygulaması üzerinden Ubuntu Kali Fedora gibi yaygın kullanıma sahip birkaç farklı dağıtımı indirilip kullanmanız mümkün. Sanallaştırma yazılımına gerek kalmadığı için Windows üzerinden istediğiniz zaman açıp kullanabileceğiniz kullanışlı ve nispeten sanallaştırmaya oranla daha performanslı bir alternatiftir. Yine de yeni başlayan kullanıcılara zorunda olmadıkça ilk aşama için bu kullanım yöntemini pek önermiyorum. Çünkü sanallaştırmanın sağladığı yedekleme kolaylıklarından mahrum kalınıyor. Ayrıca WSL kullanırken mevcut sistemin dosyalarına zarar verme ihtimaliniz diğer seçeneklere oranla daha yüksek. 

Bu durumlar Linux sistemini yeni öğrenen kişilerin hata yapmaktan kaçınarak sistemi yeterince kurcalayıp hakkıyla öğrenememesine neden olabilir. İşletim sistemini etkili kullanma yetisi, sistemi kurcalayıp gerektiğinde bozmak ve bozuk sistemi tekrar onarmaya çalışmakla edinilen tecrübelerden gelir. Dolayısıyla hata yapmaktan korkacağınız bir ortamda verimli çalışamazsınız. Elbette temel eğitimden sonra dilerseniz WSL yöntemini de kullanabilirsiniz. Özellikle Windows’a sık ihtiyaç duyuyorsanız ama Linux da kullanmanız gerekiyorsa WSL gerçekten verimli bir alternatif. Ben sadece Linux’u yeni öğrenmeye başlayacak kişilere sanallaştırma üzerinden çalışmanın daha özgür bir çalışma ortamı sunacağını düşündüğüm için WSL kullanmanızı önermiyorum. Yine de kullanmak istiyorsanız ve kendinize de güveniyorsanız WSL üzerinden de bu eğitimi pekala takip edebilirsiniz. 

# Sonuç

En nihayetinde genel olarak tüm kullanım alternatiflerinden kısaca bahsetmiş olduk. Ama durun bir eksik var, kurulum işlemlerinden bahsetmedik?

Ben burada kurulum işlemlerinden bahsetmedim çünkü kurulum işlemini verimli şekilde anlatabilmek için en iyi yol, kurulum işlemlerini videolu şekilde ele almak. Bu sebeple Linux öğrenirken ve kullanırken sıklıkla yapacağınız gibi seçtiğiniz kullanım alternatifi için kendiniz araştırıp nasıl kurulum yapabileceğinizi bulabilirsiniz. 

Ben de [video eğitim](https://www.udemy.com/course/kali-linux-ile-sifirdan-temel-linux-egitimi/?referralCode=04ABD09E6ED5DA93F7A2) içerisinde herkesin kolaylıkla takip edebilmesi ve en azından öğrenme aşamasında güvenli bir ortamda çalışabilmek için yalnızca sanal kurulum ve usb üzerinden kullanım için anlatımlarda bulundum. Ancak sizler dilerseniz diğer alternatif kurulum yöntemleri için internet üzerinde sayısız yerli ve yabancı kaynak bulabilirsiniz. Ben eğitim boyunca çalışma ortamı olarak açık kaynaklı Virtualbox sanallaştırma yazılımı üzerinden Kali Linux dağıtımını kullanacağım. Sizler kendiniz için uygun olan alternatif ortamları kullanabilirsiniz. Ancak sizleri şimdiden temin ederim, eğitimin sonunda Temel Linux bilgisine sahip olacağınız için tüm alternatif kurulum yöntemleri sizler için son derece basit ve anlaşılır olacak.
