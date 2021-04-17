Gerekli Ortamın Kurulması
=========================

Linux işletim sistemini kurmak veya Linux'u herhangi bir kurulum işlemi gerçekleştirmeden kullanmak için çok fazla seçenek bulunuyor. Ben sadece içlerinde bilmediğiniz bir alternatif seçenek olması ihtimaline karşı **genel kullanım seçeneklerini** aşağıda listeliyorum.

Kurulum ve Kullanım Metodları
-----------------------------

*   Sanal olarak kurulum (Vmware & Virtualbox)
*   İkincil işletim sistemi olarak kurmak (Dualboot)
*   Live versiyon olarak kullanmak.(Tüm dağıtımlarda bu özellik bulunmayabilir.)
*   Linux VPS aracılığı ile kullanmak.

* * *

### Sanal Olarak Kullanmak;

**Sanallaştırma işlemi kısaca;** kurmak istediğiniz yeni bir işletim sistemini, diske kalıcı kuruluma ihtiyaç duymadan, mevcut işletim sistemi üzerinden sanallaştırma teknolojisi ile çalıştırabilmeniz anlamına gelir. Sanallaştırma teknolojisi sayesinde, kullanmakta olduğunuz işletim sisteminden çıkmadan, tıpkı program çalıştırır gibi; herhangi bir işletim sistemini sanal olarak çalıştırabilirsiniz. Sanallaştırma işlemini; bu iş için geliştirilmiş olan **vmware** ve **virtualbox** gibi özel yazılımlar yerine getiriyor.

### Avantajları

*   Sistemin yedeğini alarak, büyük bir sorun ile karşılaştığımızda aldığımız yedeği kolaylıkla geri yükleyebiliriz.
*   Snapshot(anlık görüntü) özelliği sayesinde sistemi olduğu gibi kaydedip, daha sonra istediğimiz zaman kaldığı yerden çalışmaya devam edebiliriz.
*   Diske kalıcı kurulum gerektirmez, ve kurulu olan sistemin dosyalarına kesinlikle müdahale etmez. Yani kurulu sisteme hiç bir zarar vermeden sanal olarak çalışır.
*   Aynı anda birden çok işletim sistemini çalıştırabilir.(Bilgisayarınızın performansına göre değişiklik gösterebilir.)
*   Kendinize göre ayarladığınız sanal makineyi kopyalayıp istediğiniz bilgisayarda aynı şekilde çalıştırabilirsiniz.

**Kısacası;** yeni öğrenmeye başlayan kişiler için test alanı görevi görür, snapshot ve yedekleme özellikleri sayesinde hatalardan kolaylıkla geri dönülmesi mümkündür. Eğer; sisteme zarar vermeden gönül rahatlığı ile her şeyi kurcalayayım, deneme yanılma ile öğreneyim derseniz "sanal olarak kullanım" sizin için biçilmiş kaftandır.

#### Dezavantajları

Sanallaştırmanın sağladığı avantajlarının yanında, dezavantajlarının sayısı ve etkisi çok büyük değildir.

*   Mevcut işletim sistemi üzerinde çalıştığı için performans sorunları yaşanabilir.(Bilgisayarınızın performansına göre değişiklik gösterir.)
*   Çok fazla yedek alındığında ve çok fazla sanal makine oluşturulduğunda disk alanı ve çalışma organizasyonunuz kötü etkilenebilir.(Sahip olduğunuz organizasyon becerisi ve disk kapasitesi ile bu sorun pek de önemli sayılmaz.)

Söz konusu sanallaştırma olduğunda çeşitli araçlar bulunsa da bizler en sık tercih edilen "Vmware" ve "Virtualbox" araçlarından kısaca bahsedelim.

_**Vmware;**_ ücretli bir yazılımdır ve içerisinde bir çok ekstra özellik barındırır. Bu özellikler genellikle işletmelerin işine yarayacak türdendir. Eğer bireysel bir kullanıcıysanız muhtemelen bir çok ekstra özelliği kullanmanız gerekmez.(Bu fazla özellikler sistemin daha hantal çalışmasına neden olabilir.)

_**Virtualbox:**_ tamamen ücretsiz, vmware ile hemen hemen aynı özelliklere sahip yazılımdır. Üstelik "Windows", "MacOS" ve "Linux" platformlarında kullanılabilir. Eğer bireysel bir kullanıcıysanız; virtualbox yazılımını tercih etmenizi öneririm.(Virtualbox yazılımı içerisinde çok fazla ekstra özellik barındırmadığından bireysel kullanıcılar için vmware yazılımına oranla daha performanslı çalışır.)

* * *

### İkincil İşletim Sistemi Olarak Kullanmak

**Bu yöntem, özetle;** mevcut işletim sisteminin yanına, diskte alan açarak ikincil bir sistem olarak kurmak ve kullanmaktır. Bu kurulumun ardından sistem, başlangıçta hangi işletim sistemini kullanmak istediğinizi sorar ve seçiminize göre ilgili sistemi başlatır.

#### Avantajları

*   Sanal kuruluma oranla performans açısında oldukça verimlidir.
*   Var olan sistemi silmeden yanına kurduğunuz için, ihtiyacınız olduğunda diğer sisteme geçiş yapabilirsiniz.

#### Dezavantajları

*   Sistem yedeğini almak ve ilgili yedeğe dönmek, sanal kullanıma oranla daha zahmetlidir.
*   Snapshot özelliği olmadığından sistemde herhangi bir kritik hata meydana geldiğinde, sistemi onarması çok daha uzun sürebilir.
*   Kurulum işlemi ve kurulum sonrası sistem ayarlarının yapılandırılması, diğer kurulum işlemlerine oranla biraz daha uğraştırıcı olabilir.

Öğrenme aşamasında, kullanıcıların hata yapması çok doğal bir durumdur. Etkili öğrenim için sizlerin de bildiği üzere uygulama yaparak ilerlenmesi şarttır. Uygulamalar esnasında kullanıcılar sürekli deneme yanılma yöntemiyle yeni şeyler keşfeder ve daha fazlası için sistemi kurcalar. Sistemin kullanımı sırasında meydana gelebilecek olası hatalar, yeni başlayan kullanıcıların öğrenme şevkini kırarak öğrenme sürecini sekteye uğratabilir. Eğer Linux işletim sistemini ilk defa kullanacaksınız, daha hızlı ve etkili öğrenebilmek için bu yöntemi(İkincil İşletim Sistemi) kullanmayın. Ancak sanal olarak kullandığınızda sistem performansı sizin için çok sorun oluyorsa elbette bu yöntem ile de eğitime devam edebilirsiniz. Yine de yeni başlayan kullanıcıların bu kullanım yönteminden önce diğer kullanım alternatiflerini de değerlendirmesi faydalı olacaktır. **Bu yüzden lütfen yazının tamamını okuyup sizin için en ideal olan yönteme kendiniz karar verin.**

* * *

### Live Versiyon Olarak Kullanmak

Live olarak kullanmak; Linux işletim sistemini USB diskimiz üzerine kurup, sistemi bu USB disk ile başlatıp Linux işletim sistemini bu USB disk üzerinden kullanmaktır. Üstelik USB üzerinden kullanımda tek bir kullanım modu da bulunmuyor. Aşağıda farklı kullanım modları sırasıyla açıklanmıştır. **"Live Versiyon Olarak Kullanma" seçeneğini, sanal kullanımda performans sorunu yaşayan arkadaşlara kesinlikle öneririm.** Ancak maalesef ki tüm dağıtımlar live kullanımı doğrudan desteklemiyor. Doğrudan live modu desteklenmediğinde uygulanabilecek çözümler olsa da bu konu temel eğitimin dışındadır. İleride bir blog yazısı ile ayrıca bu konuya değinebiliriz. Yine de Kali Linux gibi live modunu destekleyen bir dağıtım kullanıyorsanız bu modu da mutlaka deneyimlemenizi öneririm.

##### Avantajları

*   Sabit diske kurulum gerektirmez, yalnızca USB disk yeterlidir.
*   Bir çok ihtiyaca göre bir çok kullanım modu vardır.
*   Live modu sayesinde sistemi kurcalamaktan korkmadan etkili öğrenme sağlayabilirsiniz.

##### Dezavantajları

*   Bu kullanımdan verim alabilmek için en az **8 GB** USB diskiniz olmalı.
*   Boot etmek için bir kaç ön hazırlık gerekir.

#### Boot Menüsünde Yer Alan Seçenekler

Daha önce de belirttiğimiz şekilde, tüm dağıtımlarda USB üzerinden kullanım seçenekleri bire bir aynı değildir. Yine de ben anlatım sırasında Kali Linux kullanacağım için, Kali Linux dağıtımının USB üzerinden kullanımını desteklediği modlara kısaca değinmek istiyorum.

![](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/0-%20Gerekli%20Ortam%C4%B1n%20Kurulmas%C4%B1/boot-menu.jpg)

#### Live:

Kali Linux işletim sistemini USB diskiniz üzerinden kullanırsınız ve **sistemi kapattığınızda** veya USB diskinizi bilgisayardan çıkardığınızda **sistemde yaptığınız tüm değişiklikler silinir.** Yani bu mod isminden de anlaşılacağı gibi yalnızca kullanım sırasında bilgileri tutar, daha sonra sistem kapandığında tüm bilgiler silinir ve sistem ilk baştaki haline döner. Bu mod sayesinde her defasında üzerinde hiç bir değişiklik yapılmamış temiz bir sistem üzerinde çalışabilirsiniz.

#### Live (failsafe):

Tıpkı live modunda olduğu gibi bilgileri yalnızca kullanım sırasında tutar. Genellikle sistemde sorun meydana geldiğinde sorunun kaynağını anlamak adına kullanılan, **güvenli mod** diye tabir edilen moddur.

#### Live (forensic mode):

Adli moddur, ve mevcut sistem üzerinde inceleme yapılacağı zaman tercih edilir. Bu mod **mevcut sistemde hiç bir kalıntıya ya da değişikliğe neden olmadan sistemin incelenebilmesine** olanak tanır. Genellikle bir suçun kanıtlanması gibi olaylarda tercih edildiği için adli(**forensic**) mod olarak tabir edilir.

#### Live USB Persistence:

Kali Linux işletim sistemini USB diskiniz üzerinden tıpkı sabit bir diske kurulmuşcasına kullanabilmenize olanak sağlar. Bu mod ile sistemde yapılan tüm değişiklikler USB disk üzerinde kayıt olur ve daha sonra bu bilgilere tekrar bu mod aracılığı ile ulaşabilirsiniz. Yani **live modunun kalıcı halidir. Sistemde yapılan tüm değişiklikler tekrar ulaşabileceğiniz şekilde kalıcı olarak USB üzerine yazılır.**

#### Live USB Encrypted Persistence:

Bu mod ise bir üst kısımda bahsedilen kalıcı(persistence) modun şifrelenmiş halidir. Diğer moddan farklı olarak "Encrypted" isminden de anlaşılacağı üzere, **sistemde yapılan değişiklikler diske yazılırken şifrelenerek kayıt edilir.** Diskin şifresi bilinmeden kalıcı bilgilere ulaşmak ya da disk şifresini sıfırlamak mümkün değildir. USB diskin kolayca kaybolup istenmeyen kişilerin eline geçme ihtimali için bu modun kullanımı tavsiye edilir. Yine de şifrenin unutulmaması kalıcı bilgilere ulaşma noktasında oldukça kritiktir.

#### Install:

Sabit diske kurulum işlemini başlatmak için kullanılan seçenektir.

#### Graphical Install:

Sabit diske kurulum işlemini **grafiksel arayüz** ile başlatmak için kullanılan seçenektir.

* * *

### VPS Üzerinden Kullanım

Uzaktaki özel bir sunucu sistemine bağlanılarak, bağlanılan sistemi herhangi bir yüksek donanım gücüne ihtiyaç duymadan yönetebilmemize olarak tanır. Özetle; sizin istediğiniz işletim sistemini uzak sunucuda başlatılır, siz de bu sistemi uzaktan komutlar vererek yönetirsiniz.

#### Avantajları

*   Mevcut donanımınızın çok güçlü olması gerekmez.
*   İstenilen yerden ve istenilen cihazdan(_pc, laptop, tablet, telefon.._) uzak sunucudaki sisteme komut verilebilir.
*   Sistem yedeği alma ve üst düzey sistem performansı imkanı vardır.

#### Dezavantajları

*   Bu hizmetler ücretlidir.

Bu kısımda neden kurulum detaylarını anlatmıyorsun diyecek olursanız, burada izahı dokümantasyonu uzatacak ve çok da verimli olmayacaktır. Kurulum işlemini verimli şekilde anlatabilmek için en iyi yol, kurulum işlemlerini videolu şekilde göstermektir. Dilerseniz bu dokümantasyonun [video eğitiminden](https://www.udemy.com/course/kali-linux-ile-sifirdan-temel-linux-egitimi/?referralCode=04ABD09E6ED5DA93F7A2) ya da internette araştırma yaparak kurulum işlemleri hakkında detaylıca bilgi edinebilirsiniz.
