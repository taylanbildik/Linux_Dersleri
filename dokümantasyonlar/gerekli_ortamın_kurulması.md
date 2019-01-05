
# Gerekli Ortamın Kurulması

Linux işletim sistemini kurmak veya Linux'u herhangi bir kurulum işlemi gerçekleştirmeden kullanmak için çok fazla seçenek bulunuyor. Ben sadece içlerinde bilmediğiniz bir alternatif seçenek olması ihtimaline karşı genel kullanım seçeneklerini aşağıda listeliyorum.

## Kurulum ve Kullanım Metodları

-   Sanal olarak kurulum (Vmware & Virtualbox)
-   İkincil işletim sistemi olarak kurmak (Dualboot)
-   Live versiyon olarak kullanmak.
-   Linux VPS aracılığı ile kullanmak.

### Sanal Olarak Kullanmak;

**Sanallaştırma işlemi kısaca;** kurmak istediğiniz yeni bir işletim sistemini, diske kalıcı kuruluma ihtiyaç duymadan, mevcut işletim sistemi üzerinden sanallaştırma teknolojisi ile çalıştırabilmeniz anlamına gelir. Sanallaştırma teknolojisi sayesinde, kullanmakta olduğunuz işletim sisteminden çıkmadan, tıpkı program çalıştırır gibi; herhangi bir işletim sistemini sanal olarak çalıştırabilirsiniz.  Sanallaştırma işlemini; bu iş için geliştirilmiş olan **vmware** ve **virtualbox** gibi özel yazılımlar yerine getiriyor.

### Avantajları
 - Sistemin yedeğini alarak, büyük bir sorun ile karşılaştığımızda
   aldığımız yedeği kolaylıkla geri yükleyebiliriz.
 - Snapshot(anlık görüntü) özelliği sayesinde sistemi olduğu gibi kaydedip, daha sonra istediğimiz zaman kaldığı yerden çalışmaya devam edebiliriz. 
 - Diske kalıcı kurulum gerektirmez, ve kurulu olan sistemin dosyalarına kesinlikle müdahale etmez. Yani kurulu sisteme hiç bir zarar vermeden sanal olarak çalışır.
 - Aynı anda birden çok işletim sistemini çalıştırabilir.(Bilgisayarınızın performansına göre değişiklik gösterebilir.)
 - Kendinize göre ayarladığınız sanal makineyi kopyalayıp istediğiniz bilgisayarda aynı şekilde çalıştırabilirsiniz.

**Kısacası;** yeni öğrenmeye başlayan kişiler için test alanı görevi görür, snapsot ve yedekleme özellikleri sayesinde hatalardan kolaylıkla geri dönülmesi mümkündür. Eğer; sisteme zarar vermeden gönül rahatlığı ile her şeyi kurcalayayım, deneme yanılma ile öğreneyim derseniz sizin için biçilmiş kaftandır.
 
 
#### Dezavantajları
 Sanallaştırmanın sağladığı avantajlarının yanında, dezavantajlarının sayısı ve etkisi çok büyük değildir.
 
 - Mevcut işletim sistemi üzerinde çalıştığı için performans sorunları yaşanabilir.(Bilgisayarınızın performansına göre değişiklik gösterir.)
 - Fiziksel ortamda oluşan herhangi bir donanım sorunu sanal makineyi de etkiler.
  
 ***Vmware;*** ücretli bir yazılımdır ve içerisinde bir çok ekstra özellik barındırır. Bu özellikler genellikle işletmelerin işine yarayacak türdendir. Eğer bireysel bir kullanıcıysanız muhtemelen bir çok ekstra özelliği kullanmanız gerekmez.(Bu fazla özellikler sistemin daha hantal çalışmasına neden olabilir.)

 ***Virtualbox:*** tamamen ücretsiz, vmware ile hemen hemen aynı özelliklere sahip yazılımdır. Eğer bireysel bir kullanıcıysanız; virtualbox yazılımını tercih edebilirsiniz.(Virtualbox yazılımı içerisinde çok fazla ekstra özellik barındırmadığından bireysel kullanıcılar için vmware yazılımına oranla daha performanslı çalışır.)

### İkincil İşletim Sistemi Olarak Kullanmak

**Bu yöntem, özetle;** mevcut işletim sisteminin yanına, diskte alan açarak ikincil bir sistem olarak kurmak ve kullanmaktır. Bu kurulumun ardından sistem, başlangıçta hangi işletim sistemini kullanmak istediğinizi sorar ve seçiminize göre ilgili sistemi başlatır.

#### Avantajları

 - Sanal kuruluma oranla performans açısında oldukça verimlidir. 
 - Var olan sistemi silmeden yanına kurduğunuz için, ihtiyacınız olduğunda diğer sisteme geçiş yapabilirsiniz.

#### Dezavantajları
- Sistem yedeğini almak ve ilgili yedeğe dönmek, sanal kullanıma oranla daha zahmetlidir.
- Snapshot özelliği olmadığından sistemde herhangi bir kritik hata meydana geldiğinde, sistemi onarması çok daha uzun sürer. 
- Kurulum işlemi ve kurulum sonrası sistem ayarlarının yapılandırılması, diğer kurulum işlemlerine oranla biraz daha uğraştırıcı olabilir.

Öğrenme aşamasında, kullanıcıların hata yapması çok doğal bir durumdur.  Etkili öğrenim için bire bir uygulama şart, bu yüzden kullanıcılar sürekli deneme yanılma yöntemiyle yeni şeyler keşfeder ve daha fazlası için sistemi kurcalar. Bu duruma bağlı olarak kullanıcının alıştırmaları sırasında meydana gelebilecek olası hatalar, kullanıcının öğrenme şevkini kırarak, öğrenme sürecini sekteye uğratabilir. Eğer Linux işletim sistemini ilk defa kullanacaksınız, daha hızlı ve etkili öğrenebilmek için bu yöntemi kullanmayın. Ancak sanal olarak kullandığınızda sistem performansı sizin için çok sorun oluyorsa olabilir, ama bundan önce diğer kullanım alternatiflerini de değerlendirebilirsiniz. Bu yüzden lütfen yazının tamamını okuyup sizin için en ideal olanına kendiniz karar verin.

### Live Versiyon Olarak Kullanmak
Live olarak kullanmak; Linux işletim sistemini USB diskimiz üzerine kurup, sistemi bu USB disk ile başlatıp Linux işletim sistemini bu USB disk üzerinden kullanmaktır. Üstelik USB üzerinden kullanımda tek bir kullanım modu da bulunmuyor. Aşağıda farklı kullanım modları sırasıyla açıklanmıştır. **"Live Versiyon Olarak Kullanma" seçeneğini, sanal kullanımda performans sorunu yaşayan arkadaşlara kesinlikle öneririm.** 

**Boot Menüsünde Yer Alan Seçenekler**

![](https://udemy-images.s3.amazonaws.com/redactor/raw/2018-08-14_21-31-07-f123de1dd35b3d13c3d1be22b73253e5.jpg)


**Live:**

Kali Linux işletim sistemini USB diskiniz üzerinden kullanırsınız ve **sistemi kapattığınızda**  veya USB diskinizi bilgisayardan çıkardığınızda  **sistemde yaptığınız tüm değişiklikler silinir.**  Yani bu mod isminden de anlaşılacağı gibi yalnızca kullanım sırasında bilgileri tutar, daha sonra sistem kapandığında tüm bilgiler silinir ve sistem ilk baştaki haline döner. Bu mod sayesinde her defasında üzerinde hiç bir değişiklik yapılmamış temiz bir sistem üzerinde çalışabilirsiniz.

  
**Live (failsafe):**

Tıpkı live modunda olduğu gibi bilgileri yalnızca kullanım sırasında tutar. Genellikle sistemde sorun meydana geldiğinde sorunun kaynağını anlamak adına kullanılan, **güvenli mod**  diye tabir edilen moddur.

**Live (forensic mode):**

Adli moddur, ve mevcut sistem üzerinde inceleme yapılacağı zaman tercih edilir. Bu mod  **mevcut sistemde hiç bir kalıntı bırakmadan sistemi inceleme** işleminde kullanıldığı ve genellikle bir suçun kanıtlanması gibi olaylarda tercih edildiği için adli(**forensic**) mod olarak tabir edilir.


**Live USB Persistence:**

Kali Linux işletim sistemini USB diskiniz üzerinden tıpkı sabit bir diske kurmuşcasına kullanabilmenize olanak sağlayan moddur. Bu mod ile sistemde yapılan tüm değişiklikler USB disk üzerinde kayıt olur ve daha sonra bu bilgilere tekrar bu mod aracılığı ile ulaşabilirsiniz. Yani  **live modun kalıcı halidir. Sistemde yapılan tüm değişiklikler tekrar ulaşabileceğiniz şekilde kalıcı olarak USB üzerine yazılır.**

**Live USB Encrypted Persistence:**

Bu mod ise bir üst kısımda bahsedilen kalıcı(persistence) modun şifrelenmiş halidir. Diğer moddan farklı olarak isminden de anlaşılacağı üzere bu mod  **sistemde yapılan değişiklikleri kaydederken bu bilgileri şifreleyerek kayıt eder.**

**Install:**

Sabit diske kurulum işlemini başlatmak için kullanılan seçenektir.
  
**Graphical Install:**

Sabit diske kurulum işlemini  **grafiksel arayüz**  ile başlatmak için kullanılan seçenektir.

#### Avantajları
- Sabit diske kurulum gerektirmez, yalnızca USB disk yeterlidir.
- Bir çok ihtiyaca göre bir çok kullanım modu vardır.
- Live modu sayesinde sistemi kurcalamaktan korkmadan etkili öğrenme sağlayabilirsiniz.

#### Dezavantajları
- Bu kullanımdan verim alabilmek için en az **8 GB** USB diskiniz olmalı.
- Boot etmek için bir kaç ön hazırlık gerekir.

### VPS Üzerinden Kullanım

Bu kullanım yöntemi de, uzaktaki özel bir sunucu sistemine bağlanılarak, bağlanılan sistemi herhangi bir yüksek donanım gücüne ihtiyaç duymadan yönetebilmemize olarak tanır.  Özetle; uzaktaki sunucu sisteminde, sizin istediğiniz işletim sisteminiz başlatılır, siz de bu sistemi uzaktan komutlar vererek yönetirsiniz.

#### Avantajları 
- Mevcut donanımınızın çok güçlü olması gerekmez.
- İstenilen yerden ve istenilen cihazdan(*pc, laptop, tablet, telefon..*) uzak sunucudaki sisteme komut verilebilir.
- Sistem yedeği alma ve üst düzey sistem performansı imkanı vardır.

#### Dezavantajları 
- Bu hizmetler ücretlidir. 

Bu kısımda neden kurulum detaylarını anlatmıyorsun diyecek olursanız, burada izahı dokümantasyonu uzatacak ve çok da verimli olmayacaktır. Kurulum işlemini verimli şekilde anlatabilmek için en iyi yol, kurulum işlemlerini videolu şekilde göstermektir. Bu noktada hem bana destek olmak hem de kurulumları ve diğer tüm içerikleri videolu şekilde takip edebilmek için  [buradan](https://www.udemy.com/kali-linux-ile-sifirdan-temel-linux-egitimi/?couponCode=GITHUB)  kursumu  **indirimli**  olarak satın alıp devam edebilirsiniz. Ancak kursu almak gibi bir niyetiniz yoksa, elbette bu kursu almadan da internet üzerinden araştırarak çok fazla kaynağa ulaşabilirsiniz. Yine de; ilerleyen kısımlarda işleyeceğimiz konular da aynı şekilde  **videolu**  ve özellikle  **renklendirilmiş görsel animasyonlar**  ile çok daha net anlaşılabilecek konulardır. Yani bu dokümantasyonda temel linux öğrenimi için gereken her bilgi mevcut, ancak benim  **kurs videolarımın artısı buraya bağlantılı ve açıklık getirici**  şekilde ilerliyor olmasıdır.  **Bu yüzden lütfen burada yazdıklarıma reklam gözü ile bakmayın, ben sadece bir eğitimin tamamlayıcı bütünü olan videolardan bahsediyorum.**  Yani burada herhangi bir dayatma söz konusu değil kesinlikle, kursa kayıt olup olmamak tamamen sizlerin isteğine bağlı bir durum. Eğer buradaki kavramları öğrenmekte güçlük çekerseniz; içerisinde  **alıştırmaları**,  **pratik testleri**  ve  **soru-cevap**  imkanı olan kursuma göz atabilirsiniz. Üstelik kursu beğenmemeniz halinde  **30 gün içinde koşulsuz şartsız olarak**  kursu iade edebilirsiniz. Kursun kalitesi hakkında fikir sahibi olmak için bu dokümantasyona, kurs müfredatına ve kurs yorumlarına bakarak bilgi edinebilirsiniz.

[![](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/0-%20Gerekli%20Ortam%C4%B1n%20Kurulmas%C4%B1/1.png)](https://www.udemy.com/kali-linux-ile-sifirdan-temel-linux-egitimi/?couponCode=GITHUB)
