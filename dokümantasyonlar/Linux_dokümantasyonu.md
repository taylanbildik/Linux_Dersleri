<p align="center" style="bold">
<b>Aşağıdaki tabloyu kullanarak istediğiniz konuya doğrudan ulaşabilirsiniz.</b><br>
</p>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col"></th>
      <th scope="col">#</th>
      <th scope="col"></th>
	  <th scope="col">#</th>
	  <th scope="col"></th>
      <th scope="col">#</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <th scope="row"><a href="#linux-nedir-" >Linux Nedir ?</a></th>
      <th scope="row">7</th>
      <th scope="row"><a href="#linux-dosya-sistemi-hiyerar%C5%9Fisi" >Linux Dosya Sistemi Hiyerarşisi</a></th>
	  <th scope="row">13</th>
	  <th scope="row"><a href="#s%C3%BCre%C3%A7lerprocess" >Süreç İşlemleri</a></th>
	  <th scope="row">19</th>
	  <th scope="row"><a href="#a%C4%9Fnetwork-komutlar%C4%B1" >Ağ Komutları</a></th>
    </tr>
    <tr>
      <th scope="row">2</th>
      <th scope="row"><a href="#gerekli-ortam%C4%B1n-kurulmas%C4%B1" >Gerekli Ortamın Kurulması</a></th>
      <th scope="row">8</th>
      <th scope="row"><a href="#dizinler-hakk%C4%B1nda" >Dizin İşlemleri</a></th>
	  <th scope="row">14</th>
	  <th scope="row"><a href="#disk-işlemleri" >Disk İşlemleri</a></th>
	  <th scope="row">20</th>
	  <th scope="row"><a href="#vim-edit%C3%B6r%C3%BC" >Vim Editörü</a></th>
    </tr>
    <tr>
      <th scope="row">3</th>
	  <th scope="row"><a href="#komut-sat%C4%B1r%C4%B1" >Komut Satırı</a></th>
	  <th scope="row">9</th>
      <th scope="row"><a href="#dosya-işlemleri" >Dosya İşlemleri</a></th>
	  <th scope="row">15</th>
	  <th scope="row"><a href="#çalışma-seviyelerirunlevels" >Çalışma Seviyeleri - Servisler</a></th>
	  <th scope="row">21</th>
	  <th scope="row"><a href="#konsol-üzerinden-dosya-indirmek" >Dosya İndirmek</a></th>
    </tr>
    </tr>
	  <tr>
      <th scope="row">4</th>
	  <th scope="row"><a href="#k%C4%B1sayollar" >Kısayollar</a></th>
	  <th scope="row">10</th>
	  <th scope="row"><a href="#dosya-arşiv-işlemleri" >Dosya Arşivleme</a></th>
	  <th scope="row">16</th>
	  <th scope="row"><a href="#sembolik-link-ve-kat%C4%B1-link" >Sembolik Link ve Katı Link</a></th>
	  <th scope="row">22</th>
	  <th scope="row"><a href="#zamanlanm%C4%B1%C5%9F-g%C3%B6revler" >Zamanlanmış Görevler</a></th>
    </tr>
	  <tr>
      <th scope="row">5</th>
	  <th scope="row"><a href="#yard%C4%B1m-almak" >Yardım Alma Komutları</a></th>
	  <th scope="row">11</th>
	  <th scope="row"><a href="#eri%C5%9Fim-yetkileri" >Erişim Yetkileri</a></th>  
	  <th scope="row">17</th>
	  <th scope="row"><a href="#kurma-kaldırma-güncelleme-işlemleri" >Güncelleme Kurma Kaldırma İşlemleri</a></th>
	  <th scope="row">23</th>
	  <th scope="row"><a href="#log-kay%C4%B1tlar%C4%B1" >Log Dosyaları</a></th>
    </tr>
	  <tr>
      <th scope="row">6</th>
	  <th scope="row"><a href="#bilgi-almak" >Bilgi Alma Komutları</a></th>
	  <th scope="row">12</th>
	  <th scope="row"><a href="#kullanıcı-işlemleri" >Kullanıcı İşlemleri</a></th>
	  <th scope="row">18</th>
	  <th scope="row"><a href="#joker-karakterlerwildcards" >Joker Karakterler</a></th>
	  <th scope="row">24</th>
	  <th scope="row"><a href="#linux-arayüzünü-özelleştirmek" >Linux Arayüzünü Özelleştirmek</a></th>
    </tr>
  </tbody>
</table>


Linux Nedir ?
=
Başlamadan.. Şunu bilin ki Linux tek başına işletim sistemi değil **çekirdektir**!

UNIX
-
Burada sizlere çok tarihi veya çok teknik olmayan bir üslupla, Linux hakkında genel bilgi sahibi olmanızı sağlayacak şekilde Linux'un ortaya çıkış hikayesini anlatacağım. Zamanında **Bell Laboratuvarı**'nda geliştirilen **UNIX** adında bir işletim sistemi vardı. Bu sistem kendi bünyesinde bulundurduğu araçları sayesinde çeşitli üniversiteler ve diğer ihtiyaç duyulan kurumlarda kullanılıyordu. Buraya kadar her şey gayet güzel ancak **Unix** lisans ücreti istiyordu ve tabii ki bu durum sistemi kullanabilecek kişilerin sayısını da oldukça azaltıyordu. Yani insanlar ihtiyaç duysalar dahi lisans ücretinden dolayı bu sistemi kullanamıyorlardı. Bunun sonucunda *"para ödemek yerine bende kendi işletim sistemimi yazarım"* diye düşünenler ortaya çıktı ve bu da **UNIX**'e mecbur olunmadığı, eğer istenirse yeni bir sistemin yazılabileceği düşüncesini ortaya koydu.  Bunun sonucunda birçok işletim sistemi geliştirme girişimleri oldu ancak sonuçta geliştirilen sistemler stabil şekilde çalışmıyorlardı. Tabi bu durum sonsuza kadar böyle kalmayacaktı..

Linus Torvalds
-
Bir efsanenin doğuşu..

Buraları her ne kadar istemesem de kısaca geçmek durumundayım ama eğer *"Linux kullanıyorum"* demek istiyorsanız kesinlikle bu konuları araştırın ve ayrıca [Revolution OS](https://www.youtube.com/watch?v=cEhnQN1ZmDI) belgeselini de mutlaka izleyin derim.

İnsanların lisans ücretinden kaçmak için kendi işletim sistemini yazma akımı devam ediyorken bu durum [Linus Torvalds](https://www.wikiwand.com/tr/Linus_Torvalds)'ı da etkilemiş olacak ki Linus, [UNIX](https://www.wikiwand.com/tr/UNIX)'ten esinlenerek **Helsinki Üniversitesi**'ndeyken kendi **işletim sistemi çekirdeğini** yazdı. **UNIX**'ten esinlendi ancak bunu hiçbir kod alıntısı yapmadan sıfırdan yazarak başardı. Daha sonra Linus, bu geliştirdiği çekirdeğin çeşitli insanlara ve gruplara(geliştirici topluluklar vb..) ulaşmasını sağlayarak, insanların verdiği dönütlerle düzenlemeler yaptı. Böylelikle Linus, çekirdeğin daha da kullanışlı hale gelmesini sağlamış oldu. Ve en nihayetinde Linus, bu geliştirdiği **çekirdeğe**(**kernel**) "[Linux](https://www.wikiwand.com/tr/Linux)" adını verdi. Ancak **Linux** bir **çekirdekti** ve içerisinde **UNIX** gibi kullanışlı araçları bulundurmuyordu.

Linux cephesinde bunlar yaşanıyorken [Richard Stallman](https://www.wikiwand.com/tr/Richard_Stallman)'da , [GNU genel kamu lisansı](https://www.wikiwand.com/tr/GNU_Genel_Kamu_Lisans%C4%B1)nı ortaya atarak  [özgür yazılım](https://tr.wikipedia.org/wiki/%C3%96zg%C3%BCr_yaz%C4%B1l%C4%B1m)ı savunuyordu. Nedir bu **genel kamu lisansı** ve **özgür yazılım** diyecek olursanız lütfen okumaya devam edin.

GPL
-

GNU GPL (General Public License - Genel Kamu Lisansı) açık kaynağı destekleyici bir lisans türü olup, ilk defa açık kaynak kodlu yazılımların kapalı kaynak kodlu hale getirilerek satılmasından rahatsız olunması sonucu öneri olarak geliştirilmiştir.

GPL 4 temel özgürlük üzerine kurulmuştur bunlar:

- **Özgürlük 1:** Programı sınırsız kullanma özgürlüğü.
- **Özgürlük 2:** Programın nasıl çalıştığını inceleme ve amaçlara uygun değiştirme özgürlüğü.
- **Özgürlük 3:** Programın kopyalarını sınırsız dağıtma özgürlüğü.
- **Özgürlük 4:** Programın değiştirilmiş halini dağıtma özgürlüğü.

GPL, **Richard Stallman** tarafından geliştirilmiş çok akıllıca detaylarla bağlayıcılığı bulunan lisans türüdür. Burda herkes kazançlıdır. [Kaynak kodları](https://www.wikiwand.com/tr/A%C3%A7%C4%B1k_kaynak) paylaşılmak zorunda olduğu için her şey şeffaf ve dolayısıyla oldukça berraktır . Burada insani bir hizmet vardır. Yani savunulan şey daha fazla rant değil, insanların gönül rahatlığı ile sınır olmadan ihtiyaçlarını karşılamasıdır. Bu konu hakkında ayrıca avantajları ve dezavantajları sıralayabiliriz ancak konuyu çok genişletmemek ve sizlere **araştırma, kendi kendine bulup öğrenme alışkanlığı** kazandırmak adına bu konuyu burada kesiyorum. Ben yazmaktan üşenmiyorum ancak benim burada yazıyı genişletmem, sizin araştırıp kendi kendinize öğrenmenizden ve bu araştırma alışkanlığını kazanmanızdan daha yararınıza olmayacaktır.  Bir de benim konu içinde veya dışında belirtmiş olduğum kaynaklarla sakın ola sınırlı kalmayın. Ben sadece bir başlangıç noktası ve referans olması adına sizlerle bunları paylaşıyorum. 
Bu durumdan hiç hoşlanmamış olabilirsiniz, ancak araştırma ve kendi kendine öğrenme ateşi sizi sardığında bana bu konuda hak vereceğinizi umuyorum. Bu noktada söylediklerimin daha net anlaşılması için sözümü Konfüçyüs'ün en bilindik sözü ile noktalamak istiyorum.

> **"Bir kişiye iyilik yapmak istiyorsan ona balık verme, balık tutmayı öğret." *Konfüçyüs***

GNU
-

**GNU** (**G**nu is **N**ot **U**nix/**GNU Unix Değildir**), açık kaynak hareketinin doğrultusunda geliştirilen araçların içinde bulunduğu **ücretsiz ve herkes için ulaşılabilir bir işletim sistemidir**. Ancak GNU için her şey her daim güllük gülistanlık değildi. GNU, içerisinde kendine ait güçlü araçları bulundurmasının yanı sıra kararlı bir çekirdeğe sahip değildi. Çekirdek için denemeler yapılmış ancak kararlı bir çekirdek oluşturulamamıştı.

Tam da bu noktada **Linus Torvalds**'ın geliştirip topluluğa sunduğu ve topluluk doğrultusunda geliştirdiği çekirdek yazılımı, **GNU** ile tencere kapak uyumu olacak şekilde bir araya geldi. Böylelikle ortaya bir **GNU/Linux** efsanesi çıktı. İşte **GNU/Linux** devrimi kısaca bu şekilde oldu. Hem **GNU**'nun hem de **Linux**'un topluluğa bağlı dönütlerle geliştirilmesi doğrultusunda **herkese açık, ücretsiz ve sınırsız geliştirilme potansiyeline sahip, gerçek anlamda insana hizmet eden  özgür bir işletim sistemi** ortaya çıkmış oldu.

Sonuç Olarak
-
**Linux** bir işletim sistemi değil, **çekirdektir(kernel).** **GNU/Linux** bütünü bir **işletim sistemidir**. Ancak genellikle söylenmesi uzun veya zor geldiği için, zamanla sadece **Linux** olarak geçmeye başlamıştır. Ben de yazılarımda **GNU/Linux** yerine **Linux** kullanıyor olacağım. Ancak emin olun **çekirdekten**(**kernel**) yani **Linux**'tan bahsettiğimde ve **GNU/Linux**(**işletim sistemi**)'tan bahsettiğimde hangisini kastettiğimi anlıyor olacaksınız.


----------



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

----------



Komut Satırı
===================

Esaslı bir giriş yapabilmemiz için öğrenmemiz gereken ilk kavram **Linux Komut Satırı** diğer bir adıyla **Linux Terminali** (**konsol**) olacaktır. Ancak bundan önce Linux işletim sisteminin(GNU/**Linux**) **çekirdeğini** ele almalıyız. Linux çekirdeği  Linux'un kalbi kabul edilir. En önemli ana görevinin tanımı kısaca; **yazılımla donanımın haberleşmesini sağlamaktır**. Ayrıca Linux'un yani çekirdeğin ingilizce karşılığı "**kernel**"dir. Yabancı terimleri sizlere aktarıyor olma nedenim; eninde sonunda bu terimlere alışmamız gerektiği ve bu durumun ne kadar erken olursa bizim için o kadar iyi olacağıdır.
Kernel, yani çekirdeği biraz daha açıklayacak olursak:


Kernel
-------------

Biz ister grafiksel arayüzü kullanalım, istersek de yalnızca komut satırını kullanacak olalım; örneğin bir dosyayı bir yerden başka bir yere taşırken; ister sürükle bırak yöntemiyle(grafiksel arayüz kullanarak) taşıyalım, istersek de bu işi komut satırından komutlar yardımı ile gerçekleştirelim; neticede yapılan işlem aslında arka tarafta komutların yorumlanarak çalıştırılması ile gerçekleşmektedir. 
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/0.png)
İşte tüm bu işlemleri gerçekleştirmekle görevli bazı yapılar vardır. **Çekirdek(kernel) de kullanıcıdan gelen girdilerle birlikte sistemin işleyebilmesi (process) için donanıma iş yaptırmakla görevlidir**. Ancak direk olarak kullanıcıdan alınan komutlar **Kernel**'e geçmez. Bundan önce **komut satırı** dediğimiz bir **kabuk(shell)** programını temel alarak çalışan bir yapı, kullanıcı ile çekirdek arasında aracı bir katman görevi görür.

**Shell**(**kabuk**) programını açıklayacak olursak:

Shell
-------------
Mantığını oturtmanız ve kavramların daha kolay yerleşmesi açısından bir fıstık düşünün. Bu fıstığın dış katmanı Kabuk (Shell) iç kısmı ise Çekirdek (Kernel) olacaktır. 
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/shell-kernel.png)
Bu benzetme sayesinde isimlerin de nereden geldiği az çok açıklığa kavuşmuş oldu. 
**Shell'in görevi bir üst kısımda belirttiğimiz gibi kullanıcı ile kernel arasında aracı bir katman olarak kullanıcıdan gelen girdileri kernele uygun şekilde iletmektir**. Sistemde yapmak istediklerimiz ve yapabileceklerimiz Shell'in esnek ve kullanışlı yapısına yani yeteneklerine bağlı olarak değişmektedir. Bu bağlamda Shell'in sisteme hükmetmekteki anahtarlardan olduğunu söyleyebiliriz. Shell hakkındaki biraz önceki açıklamalara("yeteneklerine bağlı olarak değişmektedir") bakarak birden fazla Shell programının olduğunu tahmin etmiş olabilirsiniz. Tebrik ederim çok doğru, **Linux** sistemlerinde **BASH** dışında (**ksh,tcsh,zsh,fish...**) gibi birçok **Shell** (**kabuk**) programı mevcuttur. Ancak yetenekleri dolayısıyla olsa gerek **en çok tercih edilen kabuk programı BASH kabuk programıdır**.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/1.png)

İnanmıyorsanız bir test edelim sizin sisteminizde hangi kabuk programı kullanılıyor.

Bunun için konsolunuzu açın ve aşağıdaki komutu girin diyecektim ki... *"Hayda.. daha konsol nedir açıklamadın ki !"* diyeceksiniz, haklısınız temeli oturtmak adına buralara kadar geldik ama direk konsol şudur demedik. Ancak zaten bu kısıma kadar **Konsol**'un ne olduğunu dolaylı olarak da olsa açıklamış olduk.

**Konsol, kullanıcı ile Shell arasından yer alarak kullanıcının komut girmesini sağlayan grafiksel ve komut satırı arayüzüne sahip bir araçtır.** Biz komutlarımızı bu araç aracılığı ile Shell'e ulaştırırız Shell ise kullanıcıdan gelen girdileri yorumlayarak Kernel'e aktarır.

Aşağıdaki basit diyagrama bakarak bu yapıları daha net kavrayabilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/diagram.png)

Konsol Ekranı Açmak (Terminal/Komut Satırı)
-

Konsolu daha yakından incelemek adına öncelikle bir konsol ekranı açalım. 
Konsol ekranını açmak için kısayol tuşları olduğu gibi grafiksel arayüz aracılığı ile de açmak mümkündür. Ayrıca aynı anda birden fazla konsol ekranı da kullanabiliyoruz. Yani Linux bize çok sayıda konsol açma imkanı tanıyor. Örenğin aynı anda 6 ayrı konsol açıp hepsinde ayrı işlem yapabiliriz. Bunu kanıtlamak istersek..(*Anlatımlar Kali linux işletim sistemi üzerinden gerçekleştirilmektedir. Dolayısıyla anlatım sırasında anlatılanların uygulanması noktasına gelindiğinde sizlerden **kali linux işletim sistemini** halihazırda açık ve kullanıma hazır şekilde bekletiyor olmanız beklenmektir.*) Grafiksel arayüzden komut satırına geçmek için <kbd>Crtl + Alt + (f1,f2,f3,f4,f5,f6)</kbd> tuş kombinasyonlarını kullanabiliriz. Demiştim ya 6 farklı konsol açılabiliyor işte açtığınız konsolun numarası da <kbd>tty1,tty2,tty3,tty4,tty5,tty6</kbd> gibi "**tty_konsol_numarası**" şeklinde konsolda görülüyor. Örneğin ben <kbd>Ctrl + Alt + f3</kbd> tuş kombinasyonunu uyguladığımda karşıma aşağıdakine benzer bir komut satırı geliyor ve benden login olmamı yani kullanıcı adımı ve sonrasında şifremi yazarak giriş yapmamı bekliyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/2.png)
Eğer bu komut satırından çıkıp tekrar kullanıcı arayüzüne yani grafiksel arayüze geçmek isterseniz <kbd>Ctrl + Alt + (f7,f8,f9,f10,f11,f12) </kbd> tuş kombinasyonlarından herhangi birini kullanarak bunu başarabilirsiniz. Ancak kimi Kali Linux sürümlerinde durum böyle olamayabiliyor yani eğer <kbd>Ctrl + Alt + f7</kbd> ve sonrası tuş kombinasyonu grafik arayüze dönmenizi sağlamaz ise bu sefer <kbd>Ctrl+Alt+f1</kbd> veya <kbd>Ctrl + Alt + f2 </kbd> şeklinde dönmeye çalışın. 
Grafik arayüzden **Terminal**(**konsol**) ile çalışmak isterseniz; masaüstünde bulunan Terminal simgesine tıklamanız yeterli olacaktır.(Genelde görev çubuğunda sabit şekilde yer alır.) Eğer masaüstünde yok bulamıyorum diyorsanız arama çubuğu ve benzeri yardımcılar aracılığı ile lütfen "***konsol***" veya "***terminal***" şeklinde aratarak kendiniz bulun. Konsol(terminal) açma işlemi hemen aşağıda gif resmi ile gösterilmiştir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/3.gif)

Bu işlemeler için kısayolların da kullanılabildiğinden bahsetmiştim, örneğin bazı dağıtımlarda <kbd>Ctrl + Alt + T</kbd> tuş kombinasyonu direk olarak terminal ekranını açıyor. Ancak sistemdeki kısayollar; ayarlar aracılığı ile ve ayrıca da dağıtımdan dağıtıma farklılık gösterdiği için bu kısayolları sizin kendi kullandığınız dağıtıma göre araştırarak bulmanız gerekiyor. Korkmayın inanılmaz kolay bir işlem, hem böylelikle yavaş yavaş Linux öğrenmenin aslında araştırmak ve kendi kendine öğrenmek olduğunu kavrıyoruz. Zaten ileride Kali Linux için <a href="#k%C4%B1sayollar">kısayollar</a> konularına ayrıca değineceğim. Yani ileride kısayollar konusunu teferruatlıca işleyeceğiz merak etmeyin.
      Şimdilik konumuza dönecek olursak Shell'in ne olduğunu açıklamıştık ve en çok tercih edilen kabuk programının **BASH kabuk programı** olduğunu söylemiştik. Bunu teyit etmek için komut satırına `echo $SHELL` komutumuzu giriyoruz.
      Girdiğimiz komutu açıklayacak olursak ' <kbd>echo</kbd> ' komut satırında ekrana yazdırma işlevini görür örneğin ben komut satırına <code>echo "Merhabalar"</code> yazarsam komut satırı ' ***Merhabalar*** ' çıktısını verecektir.<kbd>$</kbd> işareti ise bir parametre ve tanımlanan değişkene normal bir kullanıcı olarak erişebilmeyi sağlıyor. Şimdilik bu komut bütünü hakkında bu kadar bilgi yeterli. Eğer komutun açıklamasını anlamadıysanız hiç bir sorun yok. Okumaya devam ettikçe parçalar yerine oturmaya başlayacak. Zaten ileride bu konuların her birine sırasıyla tek tek değineceğiz ve sizler de anlamış olacaksınız. Şimdi devam edecek olursak:

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/4.png)

Konsola girmiş olduğumuz **komut yorumlandı** ve neticesinde bize <kbd>/bin/bash</kbd> şeklinde bir çıktı verdi. Bu çıktı bize mevcut sistemde kullanılan ana kabuk programının **BASH**  olduğunu bildirmiş oldu. Burada komut yorumlandı dedik ancak neye göre oldu bu iş ? İşte bu noktada devreye **ortam değişkenleri**(**çevre değişkenleri**) giriyor..

Bu kısımları fazlaca incelediğimi, gereksiz detaylara girdiğimi düşünenler olabilir ancak emin olun öğrendiğiniz her şey birbiri ile bağlı ve bütünü anlamak için bilinmesi gerekli olan kavramlardır. İleride yeri geldikçe bunları daha net kavrayacağız zaten. 
Anlatımları mümkün oldukça **teknik dilden uzak sade anlaşılır ve sizlerin de sürekli etkileşimde olacağı şekilde** aktarmaya çalışıyorum. Yani sizler burada yazanları yalnızca kuru kuruya okumayacak, ilerleyiş sırasında konu içerisinde gösterilen uygulamalar ile konuları ve kavramları tam olarak özümsemiş olacaksınız.
Tam da bu noktada uygulama yaparak öğrenmenin önemini belirten **Konfüçyüs**'ün bir sözünü hatırlatmak istiyorum:

> ### "Bana anlat unuturum, bana göster hatırlarım, beni dahil et, anlarım."  **Konfüçyüs**

İlerleyişimize gelin ortam değişkenlerini tanıyarak devam edelim.

Ortam Değişkenleri (Çevre Değişkenleri)
-
		  
Ortam değişkenlerini anlamak için bir örnek üzerinden gidelim. Örneğin grafiksel arayüzde komut satırına `leafpad` yazdığımızda karşımıza leafpad(metin editörü) programı gelir. (***Özellikle grafiksel arayüz diye belirttim çünkü leafpad uygulaması grafiksel arayüz ile çalışmaktadır yani tek başına komut satırının olduğu durumda çalışmayacaktır.*** )

Fark ettiyseniz bu komutu yazarken programın bulunduğu konumu belirtmeme gerek kalmadı. Yalnızca programın ismini Terminale girmemiz sonucu **leafpad** programı açılmış oldu. Bunun nedeni programın dosya dizinlerinin **PATH(yol)** ortam değişkeni üzerinde ekli olmasıdır. Sonuç olarak konsoldan girilen <code>leafpad</code> komutu bu yol üzerinde arandı ve yol üzerinde var olan **leafpad** uygulaması çalıştırıldı.
Daha iyi anlayabilmek adına, bize **PATH(yol)** bilgisini veren komutumuzu kullanalım ve terminalin bize vereceği tepkiye göre açıklamaya devam edelim. Komut satırımıza <code>echo $PATH</code> komutunu verelim:

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/5.png)

Çıktının bize gösterdiği yani konsolun demek istediği şu: 
**Konsoldan girilen herhangi bir komutu çalıştırabilmem için sırasıyla bu <kbd>/usr/local/sbin: /usr/local/bin: /usr/sbin: /usr/bin: /sbin: /bin</kbd> dizinlere bakmam gerek. Eğer verilen komutun çalıştırılabilir dosyası bu dizinlerin içerisinde ise çalıştırırım, yoksa çalıştıramam.**
Çıktıda görülen iki nokta üst üste (<kbd>:</kbd>) işareti ile ayrılmış dizinlere **PATH(yol)** ortam değişkeni deniyor. Ben yine de emin olamadım diyenler için gelin **PATH** yoluna ekli olmayan bir progamı kendimiz ekleyelim ve konsoldan vereceğimiz bir komutla direk olarak çalışmasını sağlayalım. Adım adım ilerleyelim.

Ben masaüstünde "**yeni_dizin**" adında bir klasör oluşturdum daha sonra içerisine "**yeni**" diye başka bir klasör daha oluşturdum son olarak bu klasörün de içerisine "**en_yeni**" şeklinde bir klasör daha oluşturdum. Yani oluşturduğum dizinin tam adresi **<kbd>yeni_dizin /yeni /en_yeni</kbd>** şeklinde oluşmuş oldu.
Şimdi oluşturduğum dizinin en alt klasörünün(**en_yeni**) içine girerek leafpad programı aracılığı ile metin belgesi oluşturuyorum ve belgenin içine  **<code>echo "Program Çalıştı"</code>** yazarak, oluşturmuş olduğum klasör dizininin en altındaki klasöre yani "**en_yeni**" ismindeki klasöre dosyamı "***komut.sh***" ismiyle kaydediyorum. 
Dosya sonuna eklediğimiz <kbd>.sh</kbd> eki ile dosyamız bir **betik dosyası** halini almış oldu. Burada bahsi geçen betik dosyasının genel tanımı; içerisine yazılmış olan konsol komutlarını tek seferde bir bütün halinde düzenli şekilde çalıştırabilen dosya formatı şeklinde yapılabilir. Yani bizler böylelikle betik dosyası programlayıp konsola yapması gereken bir çok işlemi tek bir dosya ile yaptırabiliriz. Anlayacağınız bu betik dosyası sıradan bir dosya değil, program yerine geçen bir formattır. Konsol programıdır yani.. 
Zaten fark ettiyseniz dosyamızın içerisine daha önce de konsolda verdiğimiz komutlardan birini olan <code>echo</code> komutunu ekledik. Yani bu oluşturmuş olduğumuz betik dosyası Terminal üzerinden çalıştığında komut satırına "**Program Çalıştı**" şeklinde bir çıktı verecek. 
Oluşturmuş olduğum betik dosyasının dizin içerisindeki tam konumu aşağıdaki şekildedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/6.png)

Programımızın dizin adresi belli olduğuna göre artık bu dizini **PATH ortam değişkenine** ekleyip istediğimiz zaman, istediğimiz yerden **programımızı**(**komut.sh**) çalıştırabiliriz.

PATH(yola)Dizin Ekleme
-

PATH(yola) yeni dizin eklemek için öncelikle her defasında oturum başlatılırken okunan <kbd>profile</kbd> isimli dosyada değişiklik yapmalıyız ki eklediğimiz dizin her daim biz silene kadar geçerli olsun. <kbd>profile</kbd> dosyasında değişiklik yapmak için komut satırına dosyamızın bulunduğu tam konumu belirtmek üzere <code>nano -w /etc/profile</code> komutunu giriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/7.png)

Ve komut satırında karşımıza yukarıdaki gibi <kbd>profile</kbd> dosyasının içeriği geliyor. Şimdi yapmamız gereken; programımızın (komut.sh) bulunduğu tam dizin konumunu bu dosyaya uygun şekilde eklemek.

Bunun için dosyanın en alt satıra inerek, eklemek istediğim dosyanın tam dizin adresini aşağıdaki şeklinde dosyaya ekliyorum.

     PATH="/root/Desktop/yeni_dizin/yeni/en_yeni":$PATH

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/8.png)

Yazma işlemi bittikten sonra dosyada yaptığımız değişiklikleri kaydedip dosyayı kapatmak için <kbd>Ctrl + X</kbd> tuş kombinasyonu uyguluyoruz. Bana, "***Değiştirilen tampon kaydedilsin mi?  ("Hayır" demek değişiklikleri SİLECEK.)*** "  şeklinde bir uyarı veriyor. Dosyada yaptığım değişikliği kaydetmek için <kbd>e</kbd> tuşuna basarak devam ediyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/9.png)

Son olarak bana, "***Yazılacak Dosya Adı:  /etc/profile***" diye belirtiyor, **buradaki ismi değiştirmeden kaydediyoruz**. Eğer ismi değiştirirsek sistem bu dosyayı okuyamayacağı için problem çıkacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/10.png)

Bu adımları geçtikten sonra istediğimiz dizin **PATH(yol) ortam değişkenine** eklenmiş oldu. Ancak yaptığımız değişikliklerin geçerli olabilmesi için, oturumun kapatılıp tekrar açılması gerekiyor. Çünkü <kbd>profile</kbd> dosyası yalnızca oturum açılırken okunuyor.
		
Oturumu kapatıp tekrar giriş yaptım. Şimdi sırada eklediğimiz dizinin PATH yolunda ekli olup olmadığını kontrol etmek var bunun için konsola <code>echo $PATH</code> komutunu veriyoruz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/11.png" width="875">
	
Gördüğünüz gibi dizin yola(PATH) eklenmiş bulunuyor.
Artık dosyayı çalıştırmadan önce son bir ayar daha yapmamız gerek. Daha sonra "komut.sh" dosyamızı aynı leafpad programında olduğu gibi istediğimiz zaman komut satırından ismi ile çalıştırabiliyor olacağız. 
Son işlemimiz yetkilendirme işlemi. Bu neden gerekli diyecek olursanız işlemin gerekliliğini kendi gözlerinizle görmek için bu kısmı atlayarak dosyayı çalıştırmaya çalışın. Bunun için komut satırına <code>komut.sh</code> yazalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/12.png)

Gördüğünüz gibi konsol bize "**Erişim engellendi**" diye bildirdi ve dosyayı bulmasına rağmen çalıştırmadı. İşte bu durumu yaşamamak için "komut.sh" dosyamızın bulunduğu konuma giderek (<code>cd Desktop/yeni_dizin/yeni/en_yeni/</code>) <code>chmod +rwx komut.sh</code> komutunu vermemiz gerekiyor. Böylelikle dosyayı çalıştırma izni de elde etmiş olacağız. Yani artık konsola <code>komut.sh</code> yazdığımız anda bizim oluşturmuş olduğumuz "komut.sh" betik dosyası çalışarak "**Program Çalıştı**" yazısını konsola basacak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/13.png)

Sizler de bu yolla sıklıkla kullandığınız dosyaları kolay erişilebilir kılabilirsiniz. 
Burada vermiş olduğum komutları ayrıntılı şekilde ileride zaten açıklayacağım, siz şimdilik konunun temeline ve ne neden oluyor ona hakim olsanız yeter. Ancak kafalarda soru işareti ile devam etmemek adına ben yinede tek tek izah edeyim hangi komutu neden kullandık.
		
<code>nano -w /etc/profile</code> bu komutta; <code>nano</code> komutu, konsol üzerinden dosya içeriğini okumamıza olanak sağlayan bir araç ve <code>nano</code> komutunun yanındaki <code>-w</code> karakteri ise dosyada değişiklik yapmamıza olanak sağlayan parametredir. Biz bu parametre sayesinde nano aracı ile belgeyi **yazma(write)** kipinde açmış oluyoruz. Geri kalan <code>/etc/profile</code> kısmı ise <kbd>profile</kbd> dosyasının bulunduğu konumu belirtiyor. Bu sayede nano aracı ile yazma kipinde <kbd>/etc/profile</kbd> konumundaki <kbd>profile</kbd> dosyasını komut satırı üzerinden görebiliyor ve değişiklik yapabiliyoruz.

<code>PATH="/root/Desktop/yeni_dizin/yeni/en_yeni:$PATH"</code> ifadesi ise mevcut **PATH(yola) yeni dizin ekleme**mize olanak sağlayan bir bütündür. Burada açıklanacak özel bir durum yok kullanım şekli itibari ile, burada yazdığımız ifade PATH yoluna dizin ekleme işlemi için gereken ifade bütünüdür.

<code>echo $PATH</code> komutunu daha önce de görmüştük buradki <code>echo</code> komutu **PATH ortam değişkeni**nde bulunan dizinleri görmemizi sağlıyor.
<code>chmod +rwx komut.sh</code> komutunda, <code>chmod</code> yetkilendirme ayarlamaları yapmamıza olanak sağlıyor. <code>+rwx</code> parametrelerinden "**+**" işareti **ekleme**, "**r** " işareti **okuma**, " **w** "işareti **yazma**, "**x**"  işareti ise **çalıştırma** yetkisi olmak üzere bizlere **bir bütün olarak dosyayı çalıştırabilmemiz için gereken yetkilendirmeyi** sağlıyor. Geri kalan <code>komut.sh</code> kısım ise zaten yetkilendirme vermek istediğimiz dosyanın adı.	

			
Şimdi bu kısımlar sizlere çok fazla detaya girilmiş belki de gereksiz yere eklenmiş gibi gelebilir ancak bu dokümanı bir bütün olarak kabul etmelisiniz. Dokümantasyon bir sefer okudum bitti değil ihtiyacınız oldukça tekrar tekrar bakasınız diye var. Yani buraları okuyup uygulayıp kavradıktan sonra böyle bir ihtiyacınız olduğunda bu konunun burada olduğunu bilin. Burada yer alan anlatımlar temeli oluşturma üzerine sıralı ve bağlantılı şekilde ilerliyor. Burada bunları ezberlemenize gerek yok zaten öğrenmenin temelinde de ezber yok.(Aman M.E.B. duymasın*!) O yüzden rahat olun her şey kullandıkça gelişecek ancak dediğim gibi artık böyle bir şeyin varlığından haberdarsınız yeri geldiğinde ihtiyacınız olan bilgiler burada olacak. 

Ortam Değişkenlerini Görüntülemek
-

Ortam değişkenleri dedik ancak şu ana kadar sadece **PATH** değişkeninden bahsettik. Tabii ki sistemde sadece PATH değişkeni bulunmuyor bu değişken dışında da pek çok ortam değişkeni mevcut. Bunları görmek istersek komut satırına <code>set</code> , <code>env</code> ya da <code>printenv</code> komutlarından birini ihtiyacımıza göre kullanabiliriz. Bu üç komut arasındaki farklar aşağıdaki şekildedir.

**set :** Shell'e ait olan değişkenlerin adını ve değerlerini verir.

**printenv :** Sistemde bulunan bütün çevresel değişkenleri verir.

**env :** Sistemde bulunan bütün "export" edilmiş yani değiştirilmiş değişkenlerle beraber değişkenleri gösterir.

Ben aşağıda sadece <code>printenv</code> komutunun çıktısını veriyorum. Sizler diğer komutları da mutlaka uygulayarak aralarındaki farkları kendi gözlerinizle görün.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/14.png)

Evet bize burada pek çok ortam değişkeni sıralandı. Ben her birini açıklamayacağım. Neden diye soracak olursanız; mevcut dökümantasyonda temel anlatım içerisinde olduğumuz için, sizlere mümkün olduğunca ilk adım için gerekli olan bilgileri vermeye çalışıyorum. Yani benim burada anlattığım her bilgi sizlere konuyu açıklamak ve konuyu daha iyi şekilde kavratmak için var. İlk aşama için gereksiz, yorucu bilgilere ihtiyacımız yok. Ancak buradan açıkladıklarım haricindekiler gereksiz gibi bir anlam çıkmasın lütfen. Zaten temeli yani asıl işlevlerini kavradıktan sonra yeri geldikçe diğer değişkenleri de biliyor ve kullanıyor olacaksınız. Ancak ben yinede şimdi diğer bir değişken olan **HOME** değişkenini de kısaca açıklayarak örneklendirmiş olacağım. Merak eden arkadaşlar şimdiden diğer ortam değişkenlerini de araştırıp kurcalayabilir.
	  
**HOME** değişkenini örnekleyerek açıklayacak olursak:

Şöyle bir durum düşünün; bir programcı, yazmış olduğu programının kurulduğu zaman masaüstüne bir kısayol oluşturmasını istiyor olsun. Ancak böyle bir şey yapabilmek için, kullanıcıların masaüstüne giden yolunun tespit edilebilmesi lazım. Ama şöyle bir problem var; Bildiğiniz gibi herkesin masaüstüne giden yol aynı değil. Bir bilgisayardaki masaüstü dizinini bulabilmek için, o bilgisayarı kullanan kişinin kullanıcı adını da biliyor olmanız lazım. Çünkü masaüstünün bulunduğu dizin kullanıcı adına bağlı olarak değişiklik gösterecektir.

Mesela bende <kbd>/home/taylan/Desktop</kbd> olan masaüstü dizini sizde <kbd> /home/burak/Desktop </kbd> şeklinde olabilir. Hatta işletim sisteminin dilinin Türkçe veya İngilizce (diğer tüm diller de dahil..) olmasına göre de masaüstünün yolu farklı olabilir. Yani demem o ki bu kadar basit bir işlem için bile tahmin edilemez bu yolun bilinmesi veya bulunması gerek. Ama masaüstüne kısayol oluşturma çok olağan bir durum.. bir imkansız değil. İşte tam bu noktada neden ortam değişkenlerinin var olduğunu biraz daha net kavrıyoruz. Ortam değişkenleri, kullandığımız işletim sisteminde belli değerlere daha sonra kolaylıkla ve kararlılıkla ulaşabilmemiz ve işleyebilmemiz için oluşturulan ifadelerdir. Bahsettiğimiz konuda, örneğin masaüstüne herhangi bir yerden ulaşmak istersek, komut satırına **ev dizininin yol bilgisini tutan değişken** olan **HOME** değişkenini <code>cd $HOME</code> şeklide girmemiz yeterli oluyor. Yani bizler bu değişken sayede, hiç aramamıza gerek kalmadan ev dizini içerisinde yer alan Desktop konumuna da ulaşabiliyor olacağız.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/15.png)

Ayrıca burada ekstra bir bilgi olsun diye belirtmek isterim ki ev dizinine gitmek için iki farklı yol daha bulunmaktadır. Bunlardan ilki yalnızca <code>cd</code> komutunu kullanmak diğeri ise <code>cd ~</code> komutunu kullanmaktır. ( Burada yer alan <kbd> ~</kbd> işareti Türkçe klavyede <kbd>Alt Gr + Ü</kbd> tuş kombinaysonu ile oluşturuluyor. )

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/16.png)
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/17.png)

Komutumuzu girdikten sonra ulaştığımız konumda hangi dosyaların olduğunu görmek için konsola <code>ls</code> komutunu verdik. Konsol bize Desktop(masaüstü) ve ev dizininde bulunan diğer dosyalarında çıktılarını verdi. Yani bu demek oluyor ki ev dizinine, kullanıcı ismini bilmemize gerek olmadan kolayca ulaştık. Yani gördüğünüz gibi örnek durumda açıkladığımız program kısayolu oluşturma işlemi **ana dizini** tutan **HOME** ortam değişkeni sayesinde kolayca gerçekleştirilebilir oluyor.

Komutu biraz açıklayacak olursak <code>cd</code>  dizinler arası geçiş yapmamızı sağlayan bir komut.
 <code>$</code>  (dolar işareti) tanımlanmış olan değişkene erişme işlemini yapan parametremiz, **HOME** ise **ev dizini**ni tutan ortam değişkeni. 
 Son olarak <code>ls</code>  komutu bulunduğumuz konumdaki dosyaları **listeliyor**. Burada bahsi geçen tüm komutları ileride ele alacağız şimdilik bu açıklama yeterli.

Temel ve sık kullanılan değişkenlerden birkaçını da kısaca açıklayacak olursak:

**SHELL:** Çalışmakta olan kabuk programının adını ve yerini verir.

**PATH:** Konsola komut girildiğinde, komut için gereken ilgili dosyaların aranacağı dizinler diğer bir adıyla yol.

**HOME:** Kullanıncının ev dizinini içeren değişken.

**TERM:** Komut satırı uygulamalarının hangi terminalde çalışacağını belirtir. Birçok çeşidi vardır ancak xterm yaygın şekilde karşımıza çıkmaktadır.

Ortam değişkenlerinin değerlerini tek tek kontrol etmek istersek, konsola <code>echo $ORTAM_DEĞİŞKENİ</code> şeklinde komut vererek ilgili bilgilere ulaşabiliriz. Örneğin **TERM** değişkenine bir bakalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/18.png)

Gördüğünüz üzere konsol **TERM** değişkeninin değerini **xterm** olduğunu göstermiş oldu. Zaten daha önce yaygın olarak kullanıldığından söz ettiğimiz için bu çıktı bizi şaşırtmadı. Eğer bu çıktıyı teyit etmek istersek konsola <code>xterm</code> komutunu verdiğimizde **xterm* açılacak ve çıktı teyit edilmiş olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/19.png)

İstersek diğer ortam değişkenleri için de aynı şekilde tek tek bilgi alabiliriz. Ancak ortam değişkenleri sabit ve sınırlı değildir. Sistemde var olanların haricinde bizde kendimiz ortam değişkenleri tanımlayabiliriz. Tanımlamaları üç farklı kategoriye ayırabiliriz;

- **konsola(terminal) özel :** yalnızca açık olan mevcut terminaldeki uygulamalar için kullanılabilen
- **kullanıcı :** yalnızca tek kullanıcı için geçerli ve o kullanıcının her oturum açtığında kullanabildiği
- **sistem geneli :** sistemde öntanımlı olarak ayarlanmış sürekli kullanılabilir

Gelin şimdi teker teker kullanımlarına değinelim.

### Mevcut Konsola Özel

**Sadece o an kullanmakta olduğumuz terminale(konsol) özel olan ve terminali kapattıktan sonra sıfırlanan ortam değişkenidir.** Aşağıdaki örnek ile adım adım açıklayalım bu durumu:

Terminali açtım ve komut satırına "<code>asdf</code> "(anlamsız karşılığı olmayan bir ifade/komut) yazdım. Konsol yanıt olarak " <code>bash: asdf: komut yok</code> " yazısını ekrana bastı.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/20.png)

Görüldüğü gibi konsol çıktısı Türkçe oldu ancak ben bu çıktıları İngilizceye çevirmek istiyorum diyelim. Bunun için konsola <code> export LANG=C </code> komutunu veriyorum. Ve sonrasında tekrar komut satırına <code>asdf</code> yazıp dilin değişip değişmediğini kontrol ediyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/21.png)

Çıktıda da görüldüğü gibi dil değişmiş ve yazdığımız <code>asdf</code> komutunun neticesinde konsol, ekrana `bash: asdf: command not found` yazısını basmış oldu. Sonuç olarak geçerli terminal için dil ingilizceye çevrilmiş oldu.

Bütün bu işlemler sadece bu komut penceresi için sınırlı. Yani açmış olduğumuz terminal ekranını(konsol/komut penceresi) kapatırsak yeni bir tane açtığımızda başlangıçta olduğu gibi konsol bize Türkçe yanıt verecektir. **Yani bu şekilde yapılan tüm değişiklikler sadece yapıldığı konsol için geçerli.** Bunu kendiniz de deneyerek görebilirsiniz.


### Kullanıcıya (Oturuma) Özel

Daha önce BASH kabuğundan bahsetmiştik ve mevcut sistemimizde bulunup bulunmadığını da kontrol etmiştik. BASH her oturum açtığımızda tüm ayarlarını ve davranışlarını " <kbd>.bashrc</kbd> " isimli gizli bir dosyadan okur. **Ufak bir bilgi daha; başında <kbd>.</kbd> (nokta) olan dosyalar gizli dosya görevindedir.** Konuya dönecek olursak bizim mevcut oturumumuzda ortam değişkenlerinde kalıcı değişiklik yapabilmemiz için yapmak istediğimiz değişiklikleri " <kbd>.bashrc</kbd> " isimli dosyaya eklememiz gerekiyor ki oturum açtığımızda sistem burada yaptığımız değişiklikleri her seferinde görebilsin.

Bulunduğumuz oturumda kalıcı değişiklik yapmak için birisi grafiksel diğeri ise sadece komut satırı arayüzü olmak üzere iki farklı yoldan nasıl değişiklik yaparız onu görelim. İsterseniz ilk olarak grafiksel arayüz ile başlayalım. Öncelikle <kbd>.bashrc</kbd> dosyasını açmalıyız. Dosyayı açmak için konsola <code>leafpad ~/.bashrc</code> komutunu veriyoruz.

Kodu kısaca açıklayacak olursak <code>leafpad</code> sistemde mevcut bulunan basit metin düzenleyicisinin adıdır, <code>~</code>(<kbd>Alt Gr + ü</kbd> kombinasyonu ile oluşturulan "**tilde**" karakteri) karakteri ev dizinini temsil ediyor <code>/.bashrc</code> ise düzenleme yapacağımız dosyanın adıdır. Bu kısa açıklama sonrası komutları tam olarak anlamamış olabilirsiniz. Ancak yakında her birine değineceğiz ve bu kısımlar da tam anlamıyla oturmuş olacak. Yani şimdilik bu kodlara çok takılmadan asıl anlatılmak istenilene odaklanın lütfen.

<code>leafpad ~/.bashrc</code> komutunu verdikten sonra karşınıza <kbd>.bashrc</kbd> dosyasının açılmış olması gerek. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/22.png)

Şimdi yapmak istediğimiz değişikliği dosyanın en alt satırına yani dosyanın sonuna eklemeliyiz. Bu eklemeyi <code>export DEĞİŞKEN_ADI=değeri</code> şeklinde yapıyoruz. Ben örnek olması açısından dil değişikliğini ele aldım. Bu sebepten dil değişimi(Türkçe olan dili ingilizceye çevirmek) için gerekli olan yazı dizisini <code>export LANG=C</code> şeklinde dosyanın sonuna ekledim ve dosyayı kaydederek kapattım.

Geldik diğer yöntem olan yalnızca konsol ekranını kullanarak değişiklik yapmaya.

Bunun için konsola <code>nano -w ~/.bashrc</code> komutumuzu veriyoruz.
Komutumuzu girdikten sonra karşımıza konsol ekranı içerisinde <kbd>.bashrc</kbd> dosyasının içeriği geliyor. Klavyedeki yön tuşlarını kullanarak en alt satıra iniyoruz ve oraya yapmak istediğimiz değişkliği giriyoruz. Ben dilde değişiklik yapacağım için satırın sonuna <code>export LANG=C</code> şeklinde ekleme yaptım .

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/23.png)

Ve <kbd>Ctrl + X</kbd> tuş kombinasyonunu uyguladım. Daha sonra konsol bana çıkmadan önce dosyada yaptığım değişikliği kaydetmek isteyip istemediğimi sordu bende "**e**" diyerek **dosyanın adını herhangi bir değişime uğratmadan kaydettim** ve işte bu kadar işlem tamamdır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/24.png)
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/25.png)

Yalnızca komut satırından işlem yapmak sanki daha uzun ve zor gibi gelmiş olabilir ancak kesinlikle grafiksel olarak yapmaktan bir farkı yok sadece belki izahı biraz uzun sürmüş olabilir.

Artık böylelikle değişiklik yaptığımız bu kullanıcı oturumunu ne zaman açarsak, yaptığımız dil değişikliği geçerli olacak. Ancak değişikliği yaptığımız anda etki etmiyor. Bunun nedeni <kbd>.bashrc</kbd> dosyasının oturum açılırken okunmasıdır. Yani yaptığımız değişikliklerin geçerli olabilmesi için oturumun kapatılıp tekrar açılması gerekmektedir. Ya da konsoldan vereceğimiz <code>source ~/.bashrc</code> komutu da dosyanın tıpkı oturum yeniden açılıyormuşçasına <kbd> .bashrc</kbd> dosyasının tekrar okunup yapılan değişikliklerin geçerli olmasını sağlar. Ancak benim önerim oturumu kapatıp tekrar açmanız yönündedir.

### Sistem Genelinde

Eğer yaptığımız değişiklik bütün kullanıcı oturumlarında aynı şekilde geçerli olsun istiyorsak değişkenin sistemde her oturum açıldığında okunan bir dosyada bulunması gerekmektedir. İşte bizim de yapacağımız değişiklikler tüm kullanıcılar için geçerli olsun istiyorsak, yapacağımız değişikliği <kbd> bash.bashrc</kbd> dosyasına eklemeliyiz. Dosyamızın tam konumu <kbd>/etc/bash.bashrc </kbd> dizininde yer alıyor. Bu dosyada ilgili değişikliği nano aracı ile yapmak için konsola <code>nano -w /etc/bash.bashrc</code> komutunu veriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/26.png)

Örnek olması açısından dosyamızın en son satırına dil değişikliği işlevindeki "<code>export LANG=C</code>" ifadesini ekliyorum. Bu sayede terminal dili bütün sistemdeki kullanıcılar için ingilizce olacaktır.

İlgili ifadeyi <kbd>bash.bashrc</kbd> dosyamıza ekleyip dosyamızı kaydediyoruz .

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/27.png)
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/28.png)

Sıra geldi değişikliklerin sistem tarafından tanınmasına. Yapılan değişikliğin sistem bütününde geçerli olabilmesi için daha önce de bahsi geçen <code>source</code> komutunu <kbd>bash.bashrc</kbd> dosyası için <code>source /etc/bash.bashrc</code> şeklinde kullanıyoruz. Ve değişikliklerin geçerli olup olmadığını denemek için konsola olmayan geçersiz bir komut verelim, örneğin konsola <code>asdf</code> yazalım bakalım konsolun tepkisi hangi dilde olacak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/29.png)

Çıktımız ingilizce olduğuna göre başarmışız demektir. Yaptığımız bu değişiklik bütün kullanıcılar için yani sistem geneli için geçerlidir. Bu durumu başka bir hesap oluşturarak kendiniz de gözlemleyebilirsiniz.

Ayrıca değişiklikleri geri almak isterseniz eklediğiniz ifadeyi ilgili dosyadan silin ve sistemi <code>source ilgili_dosya_adı</code> şeklindeki komut bütünü ile yeniden konfigüre edin, bütün değişimler düzelmiş olacaktır.(<code>source</code> komutunu kullanmak zorunda değilsiniz, hatta bu komut yerine sistemi yeniden başlatmanız daha iyi olacaktır.)

--------------

Kısayollar
=========


Bu bölümde, sistem üzerinde gerekli hakimiyeti sağlamada bizlere kolaylıklar sunan bazı kısayollar hakkında önemli bilgileri öğrenip uygulayacağız. Kısayolları şimdi öğrenmemizin sebebi, ileride komutları uygularken bizlere kolaylıklar sağlayarak bize hız katacak olmalarıdır. Hem şimdi öğrenirsek eğitim boyunca da sürekli pratik yapma imkanı bulmuş olacağız. 
**Benim tecrübeme göre eğitim asla ezber üzerine kurulamaz. Öğrenme denilen olgu uygulama yani sürekli olarak yapılan pratik ile gerçekleşir.** Bu bölümde öğreneceğiniz bilgiler belki başlangıç için fazlaca gözükebilir. Ancak her kısayolu ve her bilgiyi direk ve sürekli olarak kullanmasak bile burada olduğunu bilmeli, ve gerektiğinde dönüp tekrar bakabilmeliyiz. O yüzden buradaki bilgiler gözünüze fazla gözükürse endişe etmenize gerek yok. Zaten kısayol bilgileri temel Linux kullanımı için hayati bilgi olarak sayılmazlar, ancak zamanla göreceksiniz ki işlerimizi kolaylaştırarak Linux sistemini verimli şekilde kullanmamızı sağlıyor olacaklar. Neyse bu kadar açıklama yeter, gelin kısayollar konumuza terminal için kısayol atama işlemleri ile başlayalım.

### Terminal Kısayolları

Genelde başka bir işletim sisteminden geçiş yapan arkadaşlar konsoldan bir komutu kopyalamak üzere, alıştıkları gibi <kbd>Ctrl + C</kbd>, kopyalanan komutu yapıştırmak için ise <kbd>Ctrl + V</kbd> tuş kombinasyonunu denerler. Ancak komut satırında görürler ki kopyalamak için bastıkları <kbd>Ctrl + C</kbd> tuş kombinasyonu <kbd>^C</kbd>, yapıştırmak için bastıkları <kbd>Ctrl + V </kbd> tuş kombinasyonu ise <kbd>^V</kbd> şeklinde konsola çıktı basmış. Tabi yanlış basmış olma ihtimaline karşı aynı işlemi genellikle tekrar deneyen arkadaşlar olur ancak yine aynı çıktıları alınca, anlaşılır ki o işler öyle olmuyormuş :) İşin şakası bir yana insanın zamanla edindiği alışkanlıklarını değiştirmesi zor olabiliyor. O yüzden Terminalde <kbd>Ctrl + Shift + C </kbd> ve <kbd>Ctrl + Shift + V </kbd> olan kopyala-yapıştır kısayolunu daha önceden alışmış olduğumuz gibi değiştirmek bizim en doğal hakkımız. Bunun için eğer isterseniz yalnızca kopyala-yapıştır kısayolunu değiştirebilir ya da diğer mevcut tüm kısayolları istediğiniz ve alıştığınız şekilde düzenleyebilirsiniz. Düzenlemek için, yeni Kali Linux versiyonlarında Terminal'in üst kısmında yer alan sekmelerden sırasıyla ***Düzenle > Tercihler > Kısayollar*** sekmelerini takip ederek açılan pencerede yer alan kısayolları dilediğiniz şekilde değiştirebilirsiniz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/30.gif" width="875">

Eğer eski bir versiyon kullanıyorsanız yukarıda sıraladığım adımlarla Terminal kısayollarına ulaşamamış olabilirsiniz. Ancak Terminal'in üst kısmında yer alan sekmelere kendiniz göz atarak "**kısayollar**" penceresine ulaşabilirsiniz. Sonuçta sürekli yenilikler olduğu için her versiyona özel bu tarz şeyleri yazmak gereksiz olacaktır. Kendiniz de biraz kurcalama ile çok rahat keşfedebilirsiniz.

Terminalin kısayollar penceresine ulaştığımıza göre artık istediğimiz şekilde değişiklik yapabiliriz. Buradaki kısayol seçeneklerine göz atın hangisi size uymuyorsa dilediğiniz şekilde düzenleyin. Ayrıca bilmediğiniz kısayollar varsa onlara da göz atmayı ihmal etmeyin.

### Sistem Kısayolları

Şimdi ise sistem üzerindeki kısayollara göz atalım. Ben sürekli Terminali kullandığımız için Terminali açmak üzere bir kısayol oluşturmak istiyorum. Bunun için adım adım yapmamız gerekenlere bakalım. Başlamadan önce, kullandığınız sürüme göre sistem arayüzü değişiklik gösterebileceğinden, yönerge tam olarak sizi yönlendiremeyebilir. Ancak bunlar biraz kurcalayarak kendi kendinize bulamayacağınız şeyler değil. Ben yine de kullandığım sürüm üzerinden sizlere adımları aktarıyorum:

Öncelikle sistem ayarlarını(**Ayarlar**) açalım. 

Sol tarafta yer alan ayarlar menüsünden "**Aygıtlar**" sekmesine tıklayalım. 

Aygıtlar sekmesinde yer alan "**Klavye**" ayarını seçelim. Sağ tarafta "***Klavye Kısayolları***" şeklinde bir pencere açılacaktır.

Buradan en alta inerek altta yer alan " **+** " işaretine tıklayalım.

Karşımıza küçük bir "***Özel Kısayol***" penceresi açılacaktır.

Burada yer alan **İsim** kısmına herhangi bir ad verebilirsiniz ben daha sonra değiştirmek istediğimde hatırlamada kolaylık olsun diye "**Terminal**" adını verdim.

Komut kısmına terminalin açılması için gerekli olan komutu girmeliyiz ben terminali açmak istediğimden terminali açma komutu olan `gnome-terminal` komutunu yazdım.

Daha sonra bir alt kutucuğa istediğimiz kısayol tuş kombinasyonunu giriyoruz.

Ben <kbd>Ctrl + Shift + T</kbd> şeklinde ayarladım. Elbette siz kısayol tuş kombinasyonunu dilediğiniz gibi ayarlayabilirsiniz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/31.gif" width="875">

Son olarak "**Ekle**" butonuna tıklayarak kısayolumu atamış oluyorum. Artık ne zaman atadığım kısayol tuş kombinasyonunu  (<kbd>Ctrl+Shift+T</kbd>) uygularsam yeni bir Terminal ekranı açılıyor olacak. Ben burada yeni bir Terminal açma üzerinden örnek verdim, ancak burada atayacağınız kısayol herhangi başka işlev için de olabilir, o sizlere kalmış. Ayrıca; bu kısayollar menüsünde yer alan kısayollara da göz atıp, eğer isterseniz dilediğiniz şekilde değiştirebilirsiniz.

### Bash Shell Kısayolları

Bash Shell programının ne işe yaradığını daha önceki kısımlarda açıklamıştık. Şimdi ise komut yazarken işimizi kolaylaştıracak olan bazı Bash Shell kısayollarını göreceğiz. Burada verilenleri direk olarak kullanmanız beklenmediğini daha önceki kısımlarda söylemiştim. Kısayolların oturması için çokça pratik gerek. Pratik yaptıkça zaten zamanla istemeden de olsa öğrenmiş ve farkında olmadan kullanıyor olacağız emin olun.

## İmleç Hareketleri:

<div class="table-responsive"><table class="table table-bordered table-striped"><thead><tr><th>Kısayol</th><th>Kısayol Açıklaması</th></tr></thead><tbody><tr><td><kbd>Ctrl + A</kbd></td><td>imleç satır başına gider.</td></tr><tr><td><kbd>Ctrl + E</kbd></td><td>imleç satır sonuna gider.</td></tr><tr><td><kbd>Ctrl + P</kbd></td><td>önce çalıştırılmış komut gösterilir.</td></tr><tr><td><kbd>Ctrl + N</kbd></td><td>sonra çalıştırılmış komut gösterilir.</td></tr><tr><td><kbd>Alt + B</kbd></td><td>sola doğru(geri) bir kelime kadar imleç kayar.</td></tr><tr><td><kbd>Alt + F</kbd></td><td>sağa doğru(ileri) bir kelime kadar imleç kayar.</td></tr><tr><td><kbd>Ctrl + F</kbd></td><td>imleç bir karakter ileri gider.</td></tr><tr><td><kbd>Ctrl + B</kbd></td><td>imleç bir karakter geri gider.</td></tr><tr><td><kbd>Ctrl + XX</kbd></td><td>geçerli imleç konumundan, imleç satır başına geçer.</td></tr></tbody></table></div>

* * *

## Düzenleme

<div class="table-responsive"><table class="table table-bordered table-striped"><thead><tr><th width="21%">Kısayol </th><th width="79%">Kısayol Açıklaması</th></tr></thead><tbody><tr><td><kbd>Ctrl + L</kbd></td><td>ekran temizlenir ve imleç en üst satıra çıkar yani `clear` komutu ile aynı işlemi yapar.</td></tr><tr><td><kbd>Alt + D</kbd></td><td>imleçten sonraki kelimeyi siler.</td></tr><tr><td><kbd>Ctrl + U</kbd></td><td>imlecin solundaki her şeyi siler.</td></tr><tr><td><kbd>Ctrl + K</kbd></td><td>imlecin sağındaki her şeyi siler.</td></tr><tr><td><kbd>Ctrl + Y</kbd></td><td>kesilmiş olan son metni ekrana yapıştırır.</td></tr><tr><td><kbd>Esc + T</kbd></td><td>imleçten önceki iki kelime yer değiştir.</td></tr><tr><td><kbd>Ctrl + H</kbd></td><td>sola doğru tek tek karakterleri siler.(yani Backspace gibi davranır)</td></tr><tr><td><kbd>Alt + U</kbd></td><td>imlecin başladığı yerden sözcüğün sonuna kadar bütün karakterleri büyük harf yapar.</td></tr><tr><td><kbd>Alt + L</kbd></td><td>imlecin başladığı yerden sözcüğün sonuna kadar bütün karakterleri küçük harf yapar.</td></tr><tr><td><kbd>Alt + C</kbd></td><td>imlecin üstünde bulunduğu karakteri büyük harf yapar.</td></tr><tr><td><kbd>Ctrl + C</kbd></td><td>komutu durdurur/keser.</td></tr><tr><td><kbd>Ctrl + R</kbd></td><td>daha önce kullanılmış olan komutlar arasında arama yapma ve o komutu tekrardan kullanma imkanı sağlar.</td></tr><tr><td><kbd>Ctrl + Z </kbd></td><td>çalışan süreci arka plana atarak duraklatır.</td></tr><tr><td><kbd>Ctrl + D</kbd></td><td>Terminali sonlandırır.</td></tr><tr><td><kbd>Tab</kbd></td><td>Otomatik tamamlamayı sağlar. Konsol üzerinden bir kısmını yazmış olduğunuz, dosya, dizin ve komut türevi her türlü ifadeyi otomatik tamamlar. Ayrıca iki kez üst üste basıldığında da yazmış olduğunuz ifade ile başlayan tüm içeriği listeler.</td></tr></tbody></table></div>

* * *



Burada belirttiklerim dışında pek çok kısayol mevcut ancak ben hepsine değinmedim. Kaynak olarak kullandığım [bu adresten](https://ss64.com/bash/syntax-keyboard.html) veya internette yer alan ücretsiz bir çok kaynaktan çok rahat şekilde yeni kısayol bilgilerine ulaşabilirsiniz.

### Aynı Anda Birden Fazla Komut Kullanımı

Hazır konu kısayollardan ve pratiklikten açılmışken aynı anda birden fazla komut kullanımını da anlatmadan geçmek olmaz. Bunun için üç farklı yol izleyebiliriz. 
Birincisi yan yana olacak şekilde <kbd>&&</kbd> operatörünü kullanmaktır, hemen bu yolu deneyelim. Ancak henüz tam olarak komutları öğrenmediğimiz için önceden kullandığımız komutlardan yararlanalım. Bunun için **PATH** ve **TERM** ortam değişkenlerini kullanarak aynı anda çıktı almak üzere <code> echo $PATH && echo $TERM</code> komutunu konsola yazalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/32.png)

Çıktıda görüldüğü gibi **PATH** ve **TERM** ortam değişkenlerinin değerleri, yazdığımız iki komutun arasına koymuş olduğumuz <kbd>&&</kbd> operatörü sayesinde aynı anda basılmış oldu. 
Gelin şimdi de diğer bir yol olan noktalı virgül " <kbd>;</kbd> " kullanarak aynı işlemi tekrar edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/33.png)

Ve sonuç bizleri şaşırtmayarak yine birleşik komut içerisinde yazdığımız ortam değişkenlerinin değerlerini aynı anda ekrana bastırdı. 
Son olarak  <kbd> || </kbd> operatörünü ele alalım. Bu operatör diğerlerinden farklı olarak, kullandığımızda eğer verilen komutlardan birincisi başarısız olursa diğerini basar. Bu operatörü de kısaca şu örnek ile inceleyelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/34.png)

Burada 1. komut başarısız olduğu için 2. komut ekrana basılmış oldu. Yani bir nevi önlem amaçlı bir kullanımdır. Biz konsola bu kullanım ile diyoruz ki; ***"Eğer verdiğim ilk komut başarısız olursa ikinci komutu çalıştır."*** Yani bu durumda eğer ilk komut başarısız olursa, hemen devreye ikinci komut girecektir, ancak ilk komut başarılı olursa ikinci komut çalışmayacaktır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/35.png" width="875">

### Kısayol Koruması

Buraya gelene kadar birçok kısayoldan ve bu kısayolların avantajlarından bahsettik ancak kısayollar bazen istemediğimiz sonuçlar doğurabiliyor. Biz de böyle durumlarla karşılaşmamak adına şimdiden ufak önlemler alsak iyi olur. Önceki kısımlarda <kbd>Ctrl+D</kbd> kısayolunun mevcut konsolu kapattığını öğrenmiştik. Bu çok kullanışlı bir kısayol olsa da bazen yanlışlıkla kullanıldığında konsolun ansızın kapanmasına neden olabiliyor. Yani konsolun anlık kapanmasına karşı bir kontrol mekanizması oluşturmamız sonradan üzülmemek için şart. Bu kontrol sağlama imkanını bize **ignoreeof** verir. **ignoreeof** tanımını kullanmanın 2 farklı yolu vardır. Bunlardan birisi sadece **mevcut Terminal için geçerli** diğeri ise **sürekli ve oturumdaki tüm Terminallerde geçerli** olan kullanımlardır. 
**Sürekli ve tüm Terminal ekranlarında geçerli olsun istiyorsak:** 
Gerekli ayarlamaları yapmak üzere komut satırımıza <code> nano -w ~/.bashrc</code> komutunu veriyoruz ve <kbd> .bashrc</kbd> dosyasının en alt satırına <code>export IGNOREEOF=2</code> yazıp <kbd>Ctrl + X </kbd> tuş kombinasyonunu kullanarak **dosyanın ismini değiştirmeden kaydederek** çıkıyoruz.(Bütün kullanıcılarda bu korumayı sağlamak için değişikliği <kbd>bash.bashrc</kbd> dosyasında yapmamız gerektiğini daha önceki kısımlardan biliyorsunuz.)

Böylece koruma sistemi kuruldu ve artık test etmeye hazır. Komut satırındayken iki kez <kbd>Ctrl + D </kbd> tuş kombinasyonunu uygularsak konsol bize iki defa uyarıda bulunacaktır ve çıkmak için ancak 3. defa bastığımızda ya da komut satırına <code>exit</code> yazdığımızda konsol kapanacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/36.gif)

Burada biz <code>IGNOREEOF=2</code> şeklinde belirttik ve bu tanımlama bizi **2 kez** <kbd>Ctrl + D </kbd> kapatma kombinasyonundan korudu. Ancak sizler bu bana yetmez ya da 2 kez fazla olur diyorsanız tanımı istediğiniz değerlerde ayarlayabilirsiniz. Örneğin <code>IGNOREEOF=4</code> olabilir ya da <code>IGNOREEOF=1</code> olabilir, bu değer tamamen size kalmış. Ayrıca bu kapanmaya karşı koruma özelliğini kapatmak isterseniz eklemiş olduğunuz ifadeyi dosyadan silerek dosyayı kaydetmeniz yeterli olacaktır.

**Şimdi de yalnızca mevcut Terminal için geçici koruma nasıl sağlarız ona değinelim:** 
Koruma katmanı ne kadar hayat kurtarıcı olsa da sürekli olması bazen rahatsız edici olabilir. İşte bu noktada sadece önemli ve gerekli gördüğümüz zaman bu özelliği açıp kapatma seçeneğine sahibiz. Bunu da iki farklı yolla yapabiliriz.

İlk yol, komut satırına <code>ignoreeof=2</code> şeklinde komut vermek. Bu komut sayesinde mevcut Terminal ekranı ancak 3.kez <kbd>Ctrl + D</kbd> tuş kombinasyonu uygulandığında kapanacaktır. Buradaki sayıyı dilediğiniz gibi değiştirebileceğinizi biliyorsunuz. Eğer bu özelliği devre dışı bırakmak istersek komut satırına <code>ignoreeof=0</code> yazmamız yeterli.

İkinci yöntem ise komut satırına <code>set -o ignoreeof</code> yazmak. Bu komut ile de mevcut komut satırımız ancak 11.kez <kbd>Ctrl + D </kbd>yapmamız sonucunda kapanacaktır. Bunun haricinde bir de <code>exit</code> komutunu verirsek konsol ekranı anında sonlanır. Bu özelliği devre dışı bırakmak isterseniz de, komut satırına <code> set +o ignoreeof</code> yazmanız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/1-%20Komut%20Sat%C4%B1r%C4%B1/37.gif)
  
  
----------



Yardım Almak
===========

Bu kısımda bir nevi öğrenmeyi öğreneceğiz. Bunu da Linux sistemlerinin sahip olduğu çok geniş çaplı yardım mekanizmasını kullanarak başaracağız. Linux sistemlerinde yer alan bu geniş çaplı yardım mekanizmasının bulunmasının birçok nedeni var. Ancak genel olarak; çok fazla komutun çok fazla argüman alması veya her bir programın kendine has kurulum ve kullanım komutlarının olmasından kaynaklanıyor diyebiliriz. 
Ayrıca, Linux'un bünyesinde bulundurduğu yardım sayfalarının dışında da birçok yardım alma kaynakları mevcuttur. Zaten zamanla göreceksiniz ki; Linux'a kurmak için edindiğimiz hemen her araç veya program kurulum dosyalarının beraberinde, kurulum ve kullanımla ilgili açıklamayı içeren belgelerle birlikte geliyor olacak.

Bu bağlamda, Linux sistemlerinin temel doküman-bilgi kaynaklarını 3 türe ayırabiliriz.

Bunlar; **bilgi sayfaları(info)**, **kılavuz sayfaları(manuel)** ve **uygulamalar ile gelen <kbd>/usr/share/doc</kbd> konumunda bulunan dokümanlar**dır. Bizler de zaman zaman unuttuğumuz için veya bilmediğimizden dolayı, bu yardım sayfalarına ve dokümanlarına danışıyor olacağız. Bu girizgahtan sonra artık yavaş yavaş yardım alma komutlarımıza geçelim.

help Komutu
------------------
Hiç ingilizce bilmiyorum diyen birinin bile, "**help**" ifadesinin "**yardım**" anlamında olduğunu bildiğini düşünüyorum. Yani bu sebepten <code>help</code> komutu akılda kalması en kolay komutlardandır. Komutun kullanımına geçecek olursak; örneğin daha önce kullandığımız yetki verme işlevini gören <code>chmod</code> komutu ile ilgili yardım(bilgi) almak isteyelim. 
Bunun için komut satırına <code>chmod --help</code> şeklinde komutumuzu yazıyoruz. Ve aşağıda görüldüğü gibi gerekli bilgileri içeren yardım sayfası bizi karşılıyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/1.png)

Bu kullanımın dışında <code>help</code> komutunun bir de <code>help komut</code> şeklinde kullanımı var, ancak bu kullanımda her zaman komut hakkında yardım bilgisi bulunmayabiliyor. O yüzden ilk öğrendiğiniz yol önceliğiniz olsun. Örneğin <code>help chmod</code> yazdığımızda komut satırı yardım bilgisi bulunmadığını belirtti.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/2.png)

"*Peki madem her zaman sonuç vermeyebiliyorsa neden ikinci kullanım yöntemi var ?*" ..diyecek olursanız: 
Bazı istisnai komutlarda `komut --help` şeklinde yazıldığında komutun kullanım şekli nedeniyle çıktı alınamıyor. Buna bir örnek verelim ancak örnekte kullanacağım komutu ileride ayrıntılı ele alacağım şimdilik sadece konumuzla ilgili olan kısımına odaklanın lütfen.

Örneğin; `echo` komutu kendisinden sonra yazılan ifadeyi ekrana basıyor. Yani ben `echo Merhaba` yazarsam, konsol ekranı da çıktı olarak "Merhaba" şeklinde bir ifade basıyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/3.png)

Eğer ben `help` komutunu kullanarak, `echo` komutu hakkında yardım bilgisine ulaşmak istersem; komutumu `echo --help` şeklinde kullandığımda, ekrana yardım bilgisi değil yalnızca "**--help**" ifadesi basılıyor. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/4.png)

İşte bu gibi durumlarda `help` komutunu, ikinci kullanım şekliyle kullanmaktan başka çare kalmıyor. Hemen bu durumu teyit edelim; eğer komutumu `help echo` şeklinde yazarsam çıktılara `echo` komutunun yardım bilgilerinin yer aldığını aşağıdaki resimde görebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/5.png)

Yani sonuç olarak istisnai komutların haricinde `help` komutu `komut --help` şeklinde kullanılıyorken, bazı özel durum oluşturan komutlar mecburen `help komut` yapısıyla kullanılmak durumunda kalıyor. Bu istisnaları kesinlikle bilmek zorunda değilsiniz. Sadece `help` komutu ile yardım bilgisine ulaşmak istediğinizde ilk olarak `komut --help` yapısını kullanın eğer yardım bilgisine bir şekilde ulaşamazsanız bu sefer komutunuzu `help komut` şeklinde kullanın.

man(Manuel Sayfası) Komutu
-----------------------------------------
**man**(**manuel**) sayfaları temel yardım alma dosyalarıdır. Ve **kılavuz sayfaları** olarak da bilinir.

<code>man</code> komutunu kullanmak için komut satırına, hakkında bilgi edinip yardım almak istediğimiz komutu <code>man komut</code> şeklinde  giriyoruz. Örneğin ben <code>chmod</code> hakkındaki bilgilere ulaşmak istiyorsam konsola <code>man chmod</code> şeklinde yazarak gerekli bilgilere ulaşabilirim. Komutun çıktısında göreceğiniz gibi uzunca bir açıklama sizleri bekliyor. Açılan bu kılavuz sayfasında yön tuşlarını ve <kbd>space</kbd> tuşunu kullanarak rahatlıkla gezinebilirsiniz. Ayrıca <code> man</code> sayfasının kısayollarını ve kullanımını görmek isterseniz <code> man</code>  sayfası açıkken <kbd>h</kbd> tuşuna basarsanız sizi <code> man</code> kılavuzunun yardım sayfası karşılar, orada **man** komutunun kullanımı ile ilgili detaylı bilgi yardımı mevcuttur. Kılavuz sayfasını kapatmak isterseniz de, sadece <kbd>q</kbd>  tuşuna basmanız yeterli olacaktır.

Şimdi biraz da **man** sayfasının iç yapısına değinecek olursak:

- **NAME:** Komutun ismi ve açıklama kısmı.
- **SYNOPSIS:** Komutun kullanım açıklaması(nasıl kullanılacağı).
- **DESCRIPTION:** Komutun yaptığı iş(fonksiyonu) hakkında açıklama.
- **EXAMPLES:** Komutun kullanımı ile ilgili örnekler ve açıklamalar.
- **SEE ALSO:** Diğer ilgili başlıklar.

<code>man</code> kılavuzunun komutlarla ilgili tuttuğu bilgi sayfaları <kbd>/usr/share/man</kbd> konumu altında tutulur. 
Yani konsol ekranına basılan yardım(kılavuz) bilgileri bu konum içerisinde yer alan dosyalardan alınarak basılır. `man` kılavuz sayfalarının kaynağı burasıdır ve bu dosyalar belirli bir düzene göre sıralanmıştır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/6.png)

İlgili dizin içerisindeyken bakalım; örneğin, <code>man</code> sayfasının yapılanması nasıl oluyor yani <kbd>/usr/share/man</kbd> konumunda yer alan dil dosyaları dışındaki diğer dosyalar olan <kbd>man1, man2, man3, man4, man5, man6, man7, man8</kbd> dosyaları ne ifade ediyor kısaca ona değinelim.

- **man1:** genel kullanıcı programlarını ifade eder.
- **man2:** sistem programlarını ifade eder.
- **man3:** kütüphane fonksiyonlarını(C programlama ile ilgili) ifade eder.
- **man4:** özel dosyaları ifade eder.
- **man5:** dosya biçimlerini ifade eder.
- **man6:** ekran koruyucuları ve oyunları ifade eder.
- **man7:** diğer kategorilere girmeyen çeşitli komutları ifade eder.
- **man8:**  sistem yönetimini ve bakımını ifade eder.


whatis Komutu
---------------------
Hazır yeri gelmişken yukarıda gördüğümüz <code>man</code> sayfası yapılanmasıyla ilgili olarak <code>whatis</code> komutundan da söz edelim. Bu komut sayesinde hangi komutun hangi <code>man</code> sayfasında olduğunu öğrenebiliyoruz. Daha iyi anlamak için örnekler yapalım. Komutun kullanımı <code>whatis komut</code> şeklindedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/7.png)

<code>whatis</code> komutuna, <code>chmod</code> komutunun **man** sayfasındaki açıklamalarının, yukarıdaki açıkladığımız (man1,man2..3..4..5..6..7..8) dosyalarından hangi dosyada olduğunu sorduk. Konsol yanıt olarak hem **1** hemde **2** de bulunduğunu bizlere bildirdi. Siz bunu istediğiniz komut için sorgulayabilirsiniz hatta <code>whatis</code> komutu için bile sorgulayabiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/8.png)

Bu çıktıların doğruluğu `man` sayfalarının tutulduğu <kbd>/usr/share/man</kbd> dizinine gidilerek kontrol edilebilir. Örneğin ben <kbd>/usr/share/man/man1</kbd> konumuna gittiğimde <code>whatis</code> komutunun yardım sayfalarının burada olduğunu görebiliyorum. Sizler de çıktıları bu şekilde teyit edebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/9.png)

<code>whatis</code> komutunun kullanımı bu kadar ile sınırlı değil ancak ben geri kalanını burada vermiyorum. Dileyen arkadaşlar <code>man</code> komutu yardımı ile gerekli bilgilere ulaşabilirler.

apropos Komutu
-----------------------

Yardım alma komutlarını noktalamadan önce; Sizlere <code>man</code> sayfasındayken <kbd>h</kbd> tuşuna basarsak <code>man</code> sayfasının kullanımı hakkında detaylı bilgiye ulaşabileceğimizi belirtmiştim. O sayfaya bakarsanız <code>man -k</code> şeklinde parametre alan komutun işlevinin, sorguladığımız komutun geçtiği uygulamaları listelemek olduğunu görebilirsiniz. Yani örnek vermek gerekirse komut satırına <code>man -k chmod</code> yazdığımızda çıktısı aşağıdaki şekilde olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/10.png)

Gördüğünüz gibi belirtmiş olduğumuz `chmod` komutunun geçtiği uygulamalar listelenmiş oldu. İşte <code>apropos</code> komutu da tam olarak bu işin aynını yapıyor. Örneğin Terminale <code>apropos chmod</code> komutunu girersek çıktısı aşağıdaki şekilde olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/11.png)

Çıktılar karşılaştırıldığında görülüyor ki; <code>man -k</code> komutu ile <code>apropos</code> komutları arasında işlevsel yandan hiç bir fark bulunmuyor.

Komutun kullanım amacını daha iyi anlamak için; örneğin, bir komutun ismini tam olarak hatırlayamıyorsunuz ancak işlevini hatırlıyorsunuz diyelim. İşte bu noktada `apropos` komutu sayesinde **man klavuz sayfaları içinde anahtar kelime araştırması yapılmasıyla** yazdığınız kelime ile ilgili tüm komutlara ulaşabiliyorsunuz. Yani aslında biz `apropos` komutuyla sadece **man kılavuz sayfalarında detaylı bir araştırma** yapmış oluyoruz.

**Örneğin**

Bir komut vardı.. silme işlevindeydi.. neydi.. neydi diye düşünüyorken; konsola `apropos sil` şeklinde yazarsanız, karşınıza man klavuz sayfalarında yer alan, aradığınız "**sil**"anahtar kelimesiyle uyuşan ifadeler listelenir. Yani siz hatırlamadığınız komutun işlevinin silmek olduğunu bildiğimizden "**sil**" ifadesini `apropos` komutu ile sorgulayarak **man sayfalarında "sil" ifadesinin geçtiği kısımları** listelemiş oluyorsunuz. Yani man sayfalarında yer alan açıklamalar sayesinde, sistemle ilgili hatırlayamadığınız kavramları kolaylıkla sorgulayabilirsiniz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/12.png" width="875" >

Bir örnek daha yapalım. Mesela ben komutun yalnızca bir kısmını hatırlıyorum, yani komutun yazılışının tamamını hatırlayamıyorum diyelim. İşte bu gibi bir durumda da yine `apropos` komutumu ya da `man -k` komutumu kullanarak, tamamını hatırlayamadığım ilgili komutu bulabilirim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/13.png" width="875" >

**Yani `apropos` ve `man -k` komutları man klavuz sayfaları içerisinde bizim sorguladığımız her türlü ifadeyi arayarak bulup getiriyor.**
Ayrıca kılavuz(man/manuel) sayfa içeriklerinin büyük çoğunluğunun İngilizce olduğunu da ele alarak, belirtmek isterim ki; sorgulamalarınızı mümkün oldukça İngilizce üzerinden yaparsanız sonuca ulaşmanız sizin için çok daha kolay olacaktır.

Bu konudaki noktayı da **man kılavuz sayfaları güncelleme** işlemi ile yapalım. *"Nedir bu işlem ve neden gerekli ?"*..diyecek olursanız;  Elbette man sayfalarının sürekli kullanılabilir şekilde verimli olması için, zamanla yeni bilgilerin girişi ve eski bilgilerin düzenlenmesi yani kılavuz sayfalarının güncellenmesi şarttır. Eğer aradığımız yardımı man sayfasında bulamadığınız bir durum olursa man sayfalarını güncelleyerek tekrar sorgulama işlemini yapabilirsiniz. Ara ara güncellemek yeni bilgilere de ulaşmamıza olanak sağlar. Güncelleme için konsola <code>mandb</code> komutunu girmemiz yeterli olacaktır. Komut satırı, güncelleme işleminden sonra yapılan değişiklikleri de son satırda bizlere bildirir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/2-%20Yard%C4%B1m%20Alma%20Komutlar%C4%B1/14.png)

***Yardım alma komutlarını bilmek bir zorunluluk değil ihtiyaç meselesidir. Zaten zamanla bu komutlara ve kullanımlarına alışacaksınız. Yardım sayfalarında yer alan çoğu açıklamanın İngilizce olmasını da dert etmeyin, ne yaparsak yapalım eninde sonunda bu işlerin yolu İngilizce'den geçiyor. Yani artık bu duruma alışmamız gerek. Bu noktada kendimizi biraz zorlamalı ve kesinlikle pes etmemeliyiz. Kendimizi biraz zorlayarak, çaba harcayarak öğrenirsek, öğrenilenlerin kesinlikle daha da kalıcı olacağına emin olabilirsiniz. Sakın pes etmeyin çok iyi gidiyoruz...***


----------



Bilgi Almak
=

Bilgi alma komutları sistemimizde bulunan herhangi bir şey hakkında(programlar, dosyalar, kayıtlar, ayarlar vb..) bilgi almamızı sağlayan komutlara verilen genel isimdir ve bu komutlara gerekli durumlarda çok sık başvururuz. Şimdi bilgi alma komutlarının neler olduğuna ve kullanım şekillerine bakalım.

uname
-
Tek başına çekirdek adını verse de aldığı parametreler ile farklı bilgiler de sunabilir. Kısaca bilmemiz gereken; **bu komut genel olarak sistemde kullanılan çekirdek hakkında bilgiler verir**. Hangi parametrenin ne iş yaptığını <code>man uname</code> komutu ile öğrenebileceğinizi biliyorsunuz. Bizde kullanım şekillerini **man** kılavuz sayfası üzerinden açıklayalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/0.png)

Eğer parametresiz kullanıldıysa `-s` parametresi gibi **yalnızca çekirdek ismini** gösterir. Yani `uname` komutu ile `uname -s` komutu aynıdır.
Parametreler ve ifade ettikleri;

     -a, --all
            Bu parametre ile bütün bilgileri aşağıdaki seçenek sırasıyla gösterilir; -p ve -i bilinmiyorsa atlanır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/1.png)

     -s, --
            çekirdek ismini gösterir.
              
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/2.png)

     -n, --nodename
            ağ düğümü konak ismini diğer bir değişle hostname(host adını) gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/3.jpg)

     -r, --kernel-release
            çekirdeğin derleniş sürümünü gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/4.jpg)

     -v, --kernel-version
            çekirdeğin sürümünü gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/5.jpg)

     -m, --machine
            makine donanım ismini gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/6.jpg)

     -p, --processor
            işlemci türünü veya "unknown" gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/7.jpg)

     -i, --hardware-platform
            donanım platformunu veya "unknown" gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/8.jpg)

     -o, --operating-system
            işletim sistemini gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/9.jpg)

     --help 
            Bu yardım iletisini gösterir ve çıkar.

     --version
            Sürüm bilgilerini gösterir ve çıkar.


hostname
-
Bilgisayarımızın adını, diğer bir deyişle bilgisayarımızın ağ üzerindeki adını verir. Eğer isterseniz bu adı değiştirebilirsiniz. Örneğin; komut satırına <code>hostname burak</code> yazarsanız **hostname** yani **bilgisayarınızın adı** *burak* olarak değişmiş olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/10.png)

Ancak bu ayar kalıcı değildir. Oturumu kapatıp tekrar açtığınızda değiştirmiş olduğunuz adın tekrar eski haline döndüğünü görebilirsiniz. Kalıcı olmasını ayarlardan kolaylıkla sağlayabiliriz. Sürümden sürüme değişiklik gösterse de sırasıyla; **Ayarlar >Sistem >Ayrıntılar >Genel aygıt adı: ** kutusuna istediğiniz ismi yazabilirsiniz. Eğer dediğim yoldan ulaşamadıysanız ayarları biraz kurcalayarak bulabilirsiniz.


<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/11.gif" width="875">


Ayrıca tamamen komut satırından da **kalıcı bir hostname değişikliği** yapmak mümkün. Bunun için <kbd> /etc/hostname</kbd> konumunda yer alan <kbd>hostname</kbd> dosyasını açmamız gerek. Dosyamızı açmak için konsola <code> nano -w /etc/hostname</code> komutunu veriyoruz.
Komutun ardından açılan dosyada ismimizin yerine istediğimiz ismi yazıyoruz. Ve <kbd>Ctrl + X</kbd> tuş kombinasyonu ile dosyamızdaki değişiklikleri kaydederek çıkıyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/12.png)


Değişikliğin geçerli olması için oturumun kapatılıp tekrar açılması gerek daha sonra **hostname** yani **bilgisayarınızın ismi** değişmiş olacaktır.

lsb_release
-
Bu komut kullandığımız dağıtım hakkında farklı bilgiler sunan parametrelere sahiptir. Detaylı bilgi için **man** kılavuz sayfasını kontrol edebilirsiniz. Ben örnek olması açısından <code>lsb_release -a </code> komutunun çıktısını veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/13.png)

whoami
-
Sinemayı takip eden arkadaşların aklına ilk ne geldi biliyorum :) 

**Bu komut kimlik sorgu işlevi görüyor.** Komut satırımıza komutumuzu vererek sonucuna bakalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/14.png)

Komut çıktısı bize mevcut kullanıcının <code>root</code> kimliği ile çalıştığını göstermiş oldu.

Yine <code>whoami</code> komutuna benzer ancak çok ufak farkların olduğu birkaç komutu daha peş peşe komut satırına girerek çıkan sonuçlar üzerinden anlatıma devam edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/15.png)

Sıra sıra bakalım:

**whoami:** mevcut kullanıcının hangi kimlikle çalıştığını gösteriyor.

**who:** sistemde hangi kullanıcının çalıştığını gösteriyor.

**w:** hangi kullanıcı hangi uygulamayı çalıştırıyor bunun bilgisini gösteriyor.

Bunun dışında bu komutlar da parametre alabiliyorlar. Hangi parametreleri aldıklarını nasıl öğrenebileceğinizi zaten biliyorsunuz.

uptime
-
<code>uptime</code> komutu **sistemimizin ne kadar zamandır açık olduğu bilgisini** verir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/16.png)


date
-
İsminden de anlaşılacağı gibi bu komut bize **sistemin o anki tarih ve saat bilgisini** veriyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/17.png)

cal
-
Komutumuz Türkçe olarak takvim anlamına gelen İngilizce "**Calendar**" ifadesinin kısaltmasıdır. Komutumuz tek başına kullanıldığında bize konsol ekranı üzerinden, bulunduğumuz **tarihin takvim bilgisini** verir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/18.png)

Ancak daha önceki veya sonraki tarihlerde yer alan takvim bilgilerine komutumuzu `cal ay yıl` şeklinde kullanarak ulaşabiliyoruz. 

Örnek üzerinden açıklayalım.

Eğer 2002 yılının Ocak ayına gitmek istiyorsam komutumu `cal 1 2002` şeklinde kullanırım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/19.png)

Eğer ileri bir tarihe yani 3003 yılının Haziran ayına gitmek istersem de komutumu `cal 6 3003` şeklinde kullanırım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/20.png)

Gördüğünüz gibi ileri geri herhangi bir tarih hakkında takvim bilgisi almak istesek `cal` komutunu kullanabiliyoruz.

which
-
Herhangi bir komutun tam yol bilgisini öğrenmek için kullanılır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/21.png)

whereis
-
Bu komutunda özel parametreleri vardır man sayfasından kontrol edin lütfen. Bunun dışında parametresiz hali <code>apropos</code> komutuna benzer şekilde bir çıktı verir. Ancak <code>apropos</code> komutundan farklı olarak **ilgili komutun man sayfası konumunun tam dizin adresini belirtir.**

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/22.png)

Ayrıca diğer parametrelerini de kesinlikle man sayfasından inceleyin.

locate
-
**Bu komut ile aradığımız bir dosyanın nerede olduğunu öğrenebiliriz.** Komutun çıktısı bize dosyanın bulunduğu dizin veya dizinleri veriyor. Örneğin daha önce **PATH** yoluna eklediğim <kbd>komut.sh</kbd> dosyasını <code>locate</code> komutu ile aratıyorum. Sonuç aşağıdaki şekilde:

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/23.png)

Bu komutun ne kadar kıymetli olduğunu işiniz düştükçe ve kullandıkça anlayacaksınız. Genelde bir dosyayı arama çubuğu yardımı ile aramak sonuç vermez ve bu arama işlemi oldukça hantal çalışır. Örneğin  dosya konumunu bilmediniz ancak sistem var olan bir dosyaya ulaşmak istiyorsunuz diyelim.. İşte tam bu noktada <code>locate</code> komutu çıkageliyor ve bize saniyeler içerisinde sonucu veriyor. Komutu denemek amacıyla Kali Linux içerisinde yer alan bir araç olan ***armitage*** aracını aratıyorum. Bunun için komut satırına <code>locate armitage</code> yazmalıyım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/24.png)


Çıktıda da görüldüğü gibi aradığımız ifadeyi içeren tüm dosyaların nerede olduğunu bir çırpıda buluverdik. Sanırım bu komut sayesinde yavaş yavaş da olsa komut satırının gücünü fark etmeye başlıyoruz :)

dmidecode
-
Eğer daha önce de Linux işletim sistemini deneyimleyip sorunlar ile karşılaştıysanız, forumlardan destek istediğinizde; muhtemelen insanlar sizden bu komutun çıktıları istemiş olabilirler. **Bu komutun işlevi sistemin donanım ve BIOS bilgilerini göstermektir.** Bu komut sayesinde sistem donanımı ve işleyişi hakkında çok fazla bilgiye ulaşabiliriz. Ayrıca bu komutumuz da parametre alarak çalışmaktadır.

Bu komutun sunduğu bilgiler çok fazla olduğu için, bilgilerin daha net anlaşılması adına; bu bilgilere belirli bir düzene sahip olan **DMI(Desktop Management Interface)** ile, yani **Masaüstü Yönetim Arayüzü** tabloları ile ulaşıyoruz. Tabloda yer alan sıralamayı ve hangi bilgileri alabileceğinizi direk olarak görmek isterseniz, komut satırına <code>dmidecode</code> yazın ve sonuçların kategorize şekilde karşınıza geldiğine kendiniz tanık olun.

Bahsi geçen tablo sıralı şekilde ve Numara-Türkçe karşılığı olacak şekilde aşağıdaki gibidir.

<div class="table-responsive"> <table class="table table-bordered table-striped"> <thead> <tr> <th width="10%">Numara </th> <th width="90%">Açıklama</th> </tr></thead> <tbody><tr> <td>0</td><td>Bios</td></tr><tr> <td>1</td><td>Sistem</td></tr><tr> <td>2</td><td>Baz kurulu</td></tr><tr> <td>3</td><td>Şasi</td></tr><tr> <td>4</td><td>İşlemci</td></tr><tr> <td>5</td><td>Bellek denetleyicisi </td></tr><tr> <td>6</td><td>Bellek modülü</td></tr><tr> <td>7</td><td>Önbellek</td></tr><tr> <td>8</td><td>Port bağlantısı</td></tr><tr> <td>9</td><td>Sistem yuvaları</td></tr><tr> <td>10</td><td>On Board Cihazları</td></tr><tr> <td>11</td><td>OEM Dizeleri</td></tr><tr> <td>12</td><td>Sistem Yapılandırma Seçenekleri</td></tr><tr> <td>13</td><td>BIOS Dili</td></tr><tr> <td>14</td><td>Grup Dernekler</td></tr><tr> <td>15</td><td>Sistem Event Log</td></tr><tr> <td>16</td><td>Fiziksel Bellek Array</td></tr><tr> <td>17</td><td>Bellek Cihazı</td></tr><tr> <td>18</td><td>32-bit bellek hatası</td></tr><tr> <td>19</td><td>Bellek Dizisi Haritalı Adres</td></tr><tr> <td>20</td><td>Bellek Cihazo Haritalı Adres</td></tr><tr> <td>21</td><td>Dahili İşaret Aygıtı</td></tr><tr> <td>22</td><td>Taşınabilir Pil</td></tr><tr> <td>23</td><td>Sistem Sıfırlama</td></tr><tr> <td>24</td><td>Dananım Güvenlik</td></tr><tr> <td>25</td><td>Sistem Güç Denetimleri</td></tr><tr> <td>26</td><td>Gerilim Probu</td></tr><tr> <td>27</td><td>Soğutma Cihazı</td></tr><tr> <td>28</td><td>Sıcaklık Probu</td></tr><tr> <td>29</td><td>Elektrik Akımı Probu</td></tr><tr> <td>30</td><td>Uzaktan Erişim</td></tr><tr> <td>31</td><td>Boot Bütünlüğü Hizmetleri</td></tr><tr> <td>32</td><td>Sistem Önyükleme</td></tr><tr> <td>33</td><td>64-bit Bellek Hatası</td></tr><tr> <td>34</td><td>Yönetim Cihazı</td></tr><tr> <td>35</td><td>Yönetimi Cihaz Bileşeni</td></tr><tr> <td>36</td><td>Yönetimi Cihaz Eşik Verileri</td></tr><tr> <td>37</td><td>Bellek Kanal</td></tr><tr> <td>38</td><td>IPMI Cihazı</td></tr><tr> <td>39</td><td>Güç Kaynağı</td></tr></tbody></table> </div>

Başta belirttiğim gibi <code>dmidecode</code> kendi içinde parametre alan bir komut olduğu için istediğimiz spesifik bilgiye doğrudan da ulaşmamız mümkün. Detaylı bilgi için man kılavuz sayfasına bakın lütfen. Ancak küçük bir örnek vermem gerekirse bios hakkında bilgi edinmek istediğimizde konsola <code>dmidecode -t bios</code> komutunu girmemiz yeterli. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/25.png)

Burada ayrıca <code>dmidecode -t bios</code> komutu yerine, bios'un sıralamada bulunan numarasını yani <code>dmidecode -t 0</code> yazarak da aynı işlemi gerçekleştirebilirdik.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/26.png)

fdisk-l
-
Başlıkta da yer aldığı gibi bu bölümde <code>fdisk</code> komutunun yalnızca <code>l</code> parametresinin işlevini göreceğiz. Bu komutu burada vermemin sebebi sistem hakkında bilgi alırken diskin de sistem dahilinde olmasıdır. Zaten ileride tekrar ele alacağımızdan şimdilik bu kadarı da yeterli olacaktır. Bu komutu diskler üzerinde işlem gerçekleştirirken kullanıyoruz. Eğer komut satırımıza <code>fdisk -l</code> şeklinde komut verirsek karşımıza sistemimizdeki disk bölümleri sıralı ve düzenli şekilde listelenecektir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/27.png)

df
-
Bu komut ile disk kullanımı hakkında ayrıntılı bilgiye ulaşabiliyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/28.png)

Bu komutumuz da parametre alabiliyor, yani dileyen arkadaşlar konsolda <code>man df</code> şeklinde komut girerek gerekli bilgilere ulaşabilirler.

du
-
Bir dizinin, içerdiği tüm dosyalar ile birlikte diskte kapladığı toplam alanı verir. Ayrıca boyutla ilgili düzgün bir çıktı almak istersek <code>h</code>  parametresini de kullanabiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/29.png)

free
-
Bu komut ile kullanılan bellek miktarını **KB** cinsinden öğrenebiliriz. Ancak çıktımızın **MB** cinsinden olmasını istersek <code>-m</code> parametresini <code>free</code> komutumuza ekleyerek kullanmamız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/30.png)

modinfo
-
Bu komut sayesinde Linux Kernel(çekirdek) modüllerinin bilgisi alınabilir. Bu modülleri ekran bastırmak isterseniz komut satırına <code>lsmod</code> yazarak modülleri listeleyebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/31.png)

Örneğin modüller içinden **battery** modülü hakkında bilgi almak istersek komut satırına <code>modinfo battery</code> şeklinde yazmamız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/32.png)

stat
-

Bu komut dosyalar veya dizinler hakkındaki bilgileri almamıza olanak sağlar. Kullanımı <code>stat dizin</code> şeklindedir. Örneğin **root** dizinine bakalım. Bunun için komut satırımıza <code>stat /root</code> komutunu veriyoruz.


<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/33.png" width="875">

Gördüğünüz gibi **root** dizini hakkında bilgiler basılmış oldu.


vmstat
-
Bu komut sayesinde sistemimizin o anlık genel durumunu görebiliriz. Ancak komutu verdikten sonra sistem durumu listelenip sonlanacaktır. Eğer sistemin durumunu bir süre izlemek istersek <code>vmstat gecikme_hızı yenilenme_sayısı</code> şeklinde komut vermeliyiz. Ben **her 2 saniyede bir yenilenmesini ve bunu 3 defa** yapmasını istiyorum. Bunun için komut satırına <code>vmstat 2 3 </code> komutunu veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/34.png)

history
-

Bu kısıma gelene kadar konsola bir çok komut yazdık. Peki o yazılan komutların daha sonra kullanılmak üzere saklandığını biliyor muydunuz ?

Evet girilen her komut <kbd>.bash_history </kbd> dosyasında tutuluyor. Biz bu dosyanın içeriğini yani daha önceki yazdığımız kodları görmek istersek komut satırına <code>history</code> yazmalıyız. Çıktı çok uzun olacağından çıktının tamamını aşağıda vermedim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/35.png)


Hazır liste uzun demişken eğer bu listenin limitini öğrenmek istersek komut satırına <code>echo $HISTSIZE</code> yazarak bu değeri tutan ortam değişkeninin, ne kadar komutu <kbd>history</kbd> dosyasında tutulabileceğini görebiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/36.png)


Bu çıktı bize komutların tutulduğu dosyada en son **1000 komuta kadar** kayıt yapıldığını belirtiyor. Eğer tutulan komutların 1000 'den daha fazla olmasını isterseniz <kbd>.bashrc</kbd> dosyasında <code>HISTSIZE=1000</code> yazan değeri istediğiniz doğrultuda düzenleyebilirsiniz.

Komutun kullanımına geçmeden önce bu komutu sadece basit ve kısa komutların tekrar kullanılması olarak değerlendirmeyin. Örneğin sürekli kullandığınız çok uzun ve karmaşık bir komut düşünün. Bu komutun her defasında yazılması eziyet, bir yere kopyalanıp oradan tekrar tekrar kopyala-yapıştır şeklinde kullanılması ise hantallık olacaktır.

Komutun kullanımına gelecek olursak örnek üzerinden açıklayalım. Benim kayıt dosyamın bir kısmı aşağıdaki şekilde, ben burada yer alan **600. komutu** yani <code> vmstat</code> komutunu kullanmak istiyorum. Bunun için komut satırına <code>!600</code> yazmam yeterli olacaktır. Komutun kullanımı <code>!komut_numarası</code> şeklinde. Örnek için çıktıyı inceleyebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/37.png)


Daha önceden kullandığımız bir komutu aynı şekilde tekrar kullanmak için ise komut satırına <code>!komut</code> şeklinde komut girmeliyiz. Örnek vermek gerekirse daha önceki kısımlarda <code>stat</code> komutu ile <kbd>root</kbd> dizini hakkında bilgi edinmiştik. Ve bu bilgiye ulaşmak için <code>stat /root</code> komutunu kullanmıştık. Ben şimdi tekrar aynı komuta ulaşmak için komut satırına <code>!stat</code> yazıyorum ve çıktısı tıpkı <code>stat /root</code> yazdığımda olduğu gibi oluyor. Yani bu sayede komutun geri kalanını uzun uzun yazmak gibi bir dert kalmıyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/38.png" width="875">

Eğer son kullandığımız komutu tekrar kullanmak istersek komut satırına <code>!!</code> yazmamız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/39.png)


Bunlar dışında da çok farklı kullanım şekilleri de mevcut. Bu bilgilere <code>man</code> komutu yardımı ile nasıl ulaşacağınızı zaten biliyorsunuz.

Ayrıca son yazılan komutlara ulaşmak için klavyede yer alan yön tuşlarından <kbd>↑</kbd>(yukarı) ve <kbd>↓</kbd>(aşağı) tuşlarını kullanarak önceki ve sonraki komutlarınıza ulaşabilirsiniz. Genellikle yön tuşlarını kullanmak bize anlık işlemlerimizde hız katmaktadır. Sizler de bu pratiklikleri mutlaka yeri geldikçe sıklıkla kullanacaksınız.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/40.gif)

----------



Linux Dosya Sistemi Hiyerarşisi
=
Linux’un Windows’dan farklı olan dosya hiyerarşi sistemini kavramak ve ileride ele alacağımız dosya-dizin işlemleri konularında zorluk çekmemek adına bu kısımda “***Linux dosya sistemi hiyerarşisi***” konusunu ele alacağız.


## Nedir bu hiyerarşi ve neden gerekli? ##

Hiyerarşi kelimesinin sözlükteki genel anlamı; “*Yunanca yetki, rütbe veya aşama sırası anlamında kullanılan kelime*.” şeklindedir.

Linux sistemlerinde de aynı şekilde sınıflandırma yapılarak dosyaların sıraya koyulmasına, bunun sonucunda tıpkı bir ağaç misali oluşan dosya sistemlerine genel olarak “**Linux dosya sistemi hiyerarşisi**” deniyor. 

Genellikle bütün dağıtımlarda aynı hiyerarşik düzen vardır.(Genellikle diyorum çünkü küçük farkların dışında tüm dağıtımlar aynı hiyerarşik yapıya sahiptir. Zaten eğer her dağıtımın hiyerarşik dosya sistemi tamamen farklı olsaydı o zaman geliştiriciler için ayrı bir uğraş ve içinden çıkılmaz bir karmaşa olurdu. O yüzden buraya çok takılmayın lütfen, istisnalar kaideyi bozmaz diyerek devam ediyoruz. :) )

Linux **"Tekil Hiyerarşik Klasör Yapısı"**'nı benimsemiştir. Yani bu da şu demek oluyor; her şey <kbd>/</kbd> (**slash**) simgesiyle ifade edilen <code>root</code> klasöründen başlar, aşağıya doğru iner. Merak edenler için de söyleyelim “**Root**” kelimesinin karşılığı da Türkçe olarak “**kök**” anlamına geliyor. Bu sayede “**root**” kelimesinin de nereden geldiği ve neden kullanıldığı da az çok açıklığa kavuşuyor sanırım. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/1.png)

Linux, `/` (**root**) klasöründen başlayarak, **boot** işlemindeki önem sırasına göre klasörleri ilgili konumlara yerleştirir. Bu yerleştirme işleminde, yani klasörler arası geçişlerde klasörler arasını ayırmak için <kbd>/</kbd>(**slash**) işareti kullanılır. Herhangi bir dizin ya da dosyanın sistemdeki adresi önce kök dizinden başlar sonra o dosya ya da dizine ulaşmak için geçilmesi gereken dizinler arasına yine <kbd>/</kbd> yazılarak elde edilir. Örneğin `/home/burak` yolu, **kök dizininde**(**/**), **home** isimli dizin içindeki **burak** dizininin konumunu belirtir. Bu ifadede en baştaki `/` işareti **kök dizini** belirtmektedir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/2.gif" width="875">

Ayrıca belirtmekte fayda var, **Linux küçük büyük harf duyarlılığına sahiptir.** Yani Linux'ta `DOSYA_ADI`, `Dosya_Adı`, `dosya_adı`, `DoSyA_aDı`.. vb. gibi isimlendirilmiş dosyaların hepsi **ayrı/farklı** bir dosya olarak tanınır. Windows'ta ise aynı isimli dosyalar, küçük büyük harf ayrımı gözetilmeksizin aynı olarak tanınır. Hemen bu durumu teyit etmek için Windows ve Linux sistemlerinde dosya oluşturma işlemi gerçekleştirelim.

**#Windows**
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/3.gif" width="875">
**Gördüğünüz gibi Windows işletim sisteminde büyük küçük harf duyarlılığı bulunmuyor.**

Gelin bu durumu birde Linux sisteminde test edelim.

**#Linux**
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/4.gif" width="875">
Test sonucundan da anlaşılacağı gibi Linux işletim sisteminde küçük büyük harf duyarlılığı bulunuyor. 
**O yüzden işlemlerimizi yaparken özellikle de ileride konsol(terminal/komut penceresi) ekranından işlem yaparken bu küçük büyük harf duyarlılığı son derece önem kazanacak.** Bu önemli detayı da öğrendikten sonra gelin anlatıma devam edelim.

Daha iyi anlaşılması adına anlatımları Windows ile karşılaştırma yaparak gerçekleştiriyorum. Ve yine bir karşılaştırma daha; Windows işletim sistemine bir program eklediğimizde programın dosyaları `Program Files`(Program Dosyaları) dizini içerisine programın kendi adındaki bir klasöre eklenir.(Örneğin `C:\Program Files\program_adı` şeklinde.) Programın dosyaları tek bir dosya içerisindedir yani.(*Anlatımda kast edilen program dosyalarının tek dosya içerisinde bulunma durumuna harici sistem kayıt dosyaları ve benzeri dosyalar dahil değildir.*) Ancak Linux'ta bir program eklenme durumunda programın tüm dosyaları programın isminin yer aldığı bir klasöre gitmez. 

Örneğin; sistem otomatik olarak program **dokümanlarını** `/usr/share/doc/program_ad/` altına koyarken, eğer varsa **info** dosyaları da,`/usr/share/info` dizini içerisine atar. Yani kısacası, programı kurduğunuzda programın dosyaları ilgili konumlara otomatik olarak dağılır. Tek bir klasör içerisinde yer almaz.

Özetle Linux sisteminde her şey bir dosya(**root-kök dosyası**(`/`)) içerisinde yer alır. Ve bu dosya sistemi hiyerarşik bir yapıda bulunur. Tüm bu **tek kök dosya sistemi** ve hiyerarşik yapılanmanın amacı **çok kullanıcılı ve dağıtık bir sistemi güvenli ve kolay bir şekilde kurup yönetebilmektir**. Buradaki "**dağıtık**" kavramı ne diyecek olursanız; Örneğin birden çok bilgisayarın olduğu bir ağda bilgisayarlardan birisindeki bir ağ dizinine(*neden ağ üzerinden bağlanıyor? neden ağ dizini aracılı ile yapılıyor ? gibi sorularınız varsa buradaki ağ kavramı bilgisayarları birbirine bağlayan bağlantı ağı anlamında. Yani buradaki esas önemli nokta bilgisayarların birbirine bağlanmasıdır.*) kök dosyası altındaki dosyalar istenildiği gibi dağıtılarak bölünebilir. Örneğin x_bilgisayarı'na `/bin` dizini bağlanır, bir diğer bilgisayara `/var` dizini içerisindeki e-posta sunucusunun dosyalarının olduğu dizin, bir diğerine de `/home` dizini bağlanabilir.

Bu sayede fiziksel olarak pek çok bilgisayara dağılmış olan bir sunucu tek bir kök dosya sisteminden, sanki tek bir bilgisayarmış gibi yönetilerek kullanılabilir. Bu sayede hem iş yükü dağılımı yapılarak sistem performansı arttırılmış olur hem de yetkilendirme ve yönetim kısıtlamaları dahilinde sistemin ayrı ayrı parçalara dağılımı ile sisteme ekstra güvenlik önlemi katılmış olunur.
Biraz daha net anlamak adına aşağıdaki görseli inceleyebilirsiniz.

![](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/5.png)
Siz şimdi "*ben sadece kişisel bilgisayarımdan kullanacağım bu dosya sistemi benim için gereksiz.*" diyebilirsiniz. Ancak bu dosya sistemi tekil kullanıcılar için de sağladığı güvenlik özellikleri nedeniyle gerekli bir sistemdir.

Daha iyi anlamak için benzer bir duruma masaüstü kullanıcıları için örnek verelim.

Örneğin sistemde "**burak**" isimli kullanıcı hesabı var diyelim. Burak kullanıcısının sistemi kullanması için gereken sistem dosyalarını çalıştırma yetkisi var yani sistemi normal bir şekilde kullanabiliyor. Ancak burak kullanıcısının dosyaları değiştirme yetkisi yoksa `/home/burak` dizininden önceki dizinlerde değişiklik(dosyaları silme, üzerine veri yazma vs..) yapamaz. Bu sistem sayesinde bütün kullanıcılar, yetkileri dahilinde işlemlerini güvenli şekilde yerine getirirler. Bu sayede yönetim ve güvenlik sağlama işi kolaylaşır.
Bu duruma örnek olması için çok basit bir test yapalım.
**Root(yetkili ve tüm izinlere sahip kullanıcı)** ile **burak** isimli kullanıcı hesaplarından "***Deneme***" isimli dosyada değişiklik yapıp, yaptığımız değişikliği kaydetmeye çalışalım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/7.gif" width="875">

Gördüğünüz gibi "**root**" kullanıcı hesabındayken kayıt işlemini tamamlayabildim ancak "**burak**" kullanıcı hesabında yetki iznim olmadığı için dosyada yaptığım değişikliği kayıt edemedim. 
**Bu da demek oluyor ki kullanıcılar sadece sahip oldukları yetkileri dahilinde işlemler gerçekleştirebiliyor.** Bu sayede sistem yönetimi ve güvenliği kolaylıkla sağlanabiliyor.

Artık kısaca Linux dosya sisteminin neden bu şekilde olduğunu ve sağladığı avantajları anladıysak, gelin bu hiyerarşik yapıdaki dosyalara ve işlevlerine daha da yakından bakalım.

Aşağıda verilenler bilgiler kesinlikle ezberlenecek bilgiler değil. Bu bilgileri anlayarak okuyup özümseyin zaten ihtiyaç duyduğunuzda bu bilgilere buradan tekrar bakabileceksiniz. Bu bilgiler de zamanla yeri geldikçe/ihtiyaç duydukça kullanmanız ile kalıcı hale gelecektir.

/bin
-

İşletim sisteminizi kullanmak için gereken birçok komut `/bin` klasörü altındadır. **cat, mkdir, cp, ls, mv, rm** vb. **temel komutların hepsi buradadır**. Sistem boot ettiğinde, ilk olarak `/bin` klasörü çalışır hâle getirilir. Sistemde ne kadar ciddi bir sorun olursa olsun `/bin` klasöründeki komutlar çalışmaya devam eder. Bu sayede sisteminizde bir sorun meydana geldiğinde `/bin` klasörü altındaki temel komutları kullanarak sistemi onarabiliriz.

/boot
-

Boot, işletim sisteminin yüklenme evresidir. `/boot` klasörü, boot işlemi için gerekli olan tüm dosyaları içerir (çekirdek görüntüsü, sistem haritası, önyükleyici yapılandırması gibi). Bilgisayarın başlangıç (boot) aşamasında gerekmeyen ayar ve yapılandırma dosyaları burada bulunmaz; başka klasörlerden gerektiği zamanlarda yüklenir. 

/dev
-

Linux'ta her şey bir dosyadır; donanım aygıtları da öyle. USB girişleri, seri ve paralel portlar, depolama ortamları, CD-ROM'lar vb... Bütün aygıtlar `/dev` klasörü altında tutulan dosyalardan ibarettir. Örneğin `/dev` altında bulunan `sda1` dosyası, sabit diskinizi temsil eder. Ya da `/dev/dsp`, ses aygıtınızdır. Bunları programlar vasıtasıyla kullanırız; ancak bu dosyalar üzerinden doğrudan müdahale etmek de mümkündür.

Birkaç aygıt dosyası ve işlevi.

<div class="table-responsive"><table class="table table-bordered table-striped"><thead><tr><th>Konumu</th><th>Cihaz Açıklaması</th></tr></thead><tbody><tr><td><kbd>/dev/ttyS0</kbd></td><td>Fare, modem gibi aygıtların bağlandığı seri port (COM 1).</td></tr><tr><td><kbd>/dev/psaux</kbd></td><td>PS/2 girişi; fare ve klavyeler içindir.</td></tr><tr><td><kbd>/dev/lp0</kbd></td><td>Paralel port (LPT 1); yazıcı, tarayıcı vs...</td></tr><tr><td><kbd>/dev/dsp</kbd></td><td>Birincil ses aygıtı
</td></tr><tr><td><kbd>/dev/usb </kbd></td><td>USB aygıtları</td></tr><tr><td><kbd>/dev/sda</kbd></td><td>SCSI aygıtlar, USB bellekler, harici CD-ROM'lar vs...</td></tr><tr><td><kbd>/dev/scd</kbd></td><td>SCSI CD-ROM'lar</td></tr><tr><td><kbd>/dev/js0 </kbd></td><td>Oyun çubuğu (Joystick)</td></tr></tbody></table></div>

* * *
/etc
-

İşletim sistemini bir vücuda benzetirsek, `/etc` klasörünü, sinir sisteminin merkezi olarak görebiliriz. Sisteme dair bütün ayarları ve bilgisayara özel birçok yapılandırma bilgisini içerir.

/home
-

`home` klasörü kullanıcıların kalesi olarak tabir edilir. `home` klasörü içerisinde her kullanıcının kendi adında bir alt klasörü bulunur. (örneğin **/home/ahmet** , **/home/ayşe** gibi). Kullanıcıların kişisel verileri, kullandığı programlarda yaptığı ayar değişiklikleri, yapılandırmaları burada tutulmaktadır. Ayrıca kullanıcılar `/home` dizinini elbette belge, müzik, resim vb. dosyaları düzenli, tertipli bir şekilde depolamak amacıyla da kullanabilirler. `/home` dizini Windows'taki kullanıcı dizinlerine göre çok daha güvenli bir yapıya sahiptir. Çünkü Linux'ta bir başkasının ev klasörüne müdahale edemezken, Windows'ta çok zorlanmadan istediğinizi yapabilirsiniz.


/initrd
-

**initrd**, "**initial ramdisk**" kısaltmasıdır. Anlamı, yaklaşık olarak "**Başlangıç Bellek Diski**" şeklinde ifade edilebilir. Boot aşamasında ilk önce çekirdek (kernel) yüklenir. Bundan sonra bilgisayarınızın belleğinde bir Bellek Diski oluşturulur. Oluşturulan Bellek Disk üzerinde `/` (root) yansısı açılır ve kök dizin olarak monte edilir. `/initrd` bu işlemlerin yapılması ve Linux'un yüklenmesi için gereklidir.

/lib
-

Çekirdek modülleri ve paylaşılan kütüphane dosyaları bu klasörde bulunur. Kütüphane dosyaları, sistemi başlatmak ve `/bin` ile `/sbin` içerisindeki komutları çalıştırmak için gereklidir. Paylaşılan kütüphane dosyalarını, Windows'ta DLL ile eş tutabiliriz. Linux'ta kütüphane dosyalarının sonu "**.so**" ile biter.

/lib64 /lib32
-
Halen 32 bit ve 64 bit sistemler arasında geçiş yapıyoruz. Bu nedenle, kütüphane dosyalarının derleme süresi boyunca kullanılan kayıt boyutunu netleştiren `/lib32` ve `/lib64` adlı dizinlerle karşılaşabilirsiniz. Yani bu sayede 64 bitlik bir bilgisayar, eski uygulamalara uyumluluk için bazı 32 bitlik ikili dosyalara ve kütüphanelere sahip olabilir.

/lost+found
-

İngilizce bir terim olan “**Lost and Found**” **kayıp eşya bürosu** demektir. `/lost+found` klasörü de tam olarak bu işlevi görmektedir. Bazen sisteminizde herhangi bir problem olur; örneğin bilgisayarı resetlerseniz, elektrik gider sonrasında bilgisayarı yeniden başlatırsınız. Bu gibi durumlarda Linux'ta **fsck** (**File System Check**) komutu devreye sokulur. Düzeltilemeyen bir sorun varsa, bağlantıları kopmuş kayıp dosyalar ortaya çıkmışsa, bunlar `/lost+found` altına atılır. Kısaca özetlersek; kötü bir sistem kapanmasından sonra, olması gereken bazı dosyaları bulamıyorsanız, kayıp eşya bürosuna bakmanızda yarar var. 

/media
-

Kaldırılabilir aygıtların (USB bellek, SD kart, CD vb.) ve sistem başlangıcında bağlanmayan sabit disk bölümlerinin bağlanma noktasıdır. Söz konusu depolama ortamları sisteme bağlanmamış iken dizin içeriği boş görünür.

/mnt
-

İşletim sisteminin kurulu olduğu disk bölümü hariç olmak üzere sistem başlangıcında bağlanan sabit disk bölümleri ve donanım aygıtlarının bağlanma noktasıdır. (İşletim sisteminin kurulu olduğu disk bölümünün içeriği ise doğrudan `/` (**kök dizin**) altında bulunur.)

Bağlama(mount) işlemi, bir disk bölümünün sisteme bağlanarak kullanıma hazır hâle gelmesi demektir. Nereye bağladığınız sizin tercihinizdir, değiştirmeniz mümkündür. Yani bir diski, `/media` veya `/mnt` klasörüne ya da bir başka yere bağlamanız fark etmeyecektir. `/media` ve `/mnt` sadece genel kabul görmüş bağlantı noktalarıdır.

/opt
-

İşletim sisteminden bağımsız, sistem için zorunlu olmayan 3. parti kullanıcı programları bu dizinde bulunur. Örneğin; Google Earth programını indirip kurmak istediğinizde, varsayılan olarak kurulacağı nokta, `/opt/google-earth` adresidir.

Elbette üçüncü parti bir programı kurarken bu kurulum konumunu değiştirebilir, size uygun gelen bir başka konuma yükleyebilirsiniz. Ancak daha önce de bahsettiğimiz gibi bazı şeyler genel kabule dayanır.

/proc
-

Süreçler, sistem belleği, bağlı aygıtlar, donanım yapılandırmalarıyla ilgili bilgileri içeren özel bir “sanal” dosya sistemidir. Bildiğimiz anlamda fiziksel dosyalar bulundurmaz; sistem durumuna dair bilgi içeren sanal dosyaları vardır. Bir bilgi alma merkezi olarak görülebilir, birçok uygulama buradaki bilgilerden yararlanmaktadır. Örneğin `cat /proc/swaps` yazarak sisteminizdeki takas dosyalarına dair bilgi alabilir ya da `cat /proc/cpuinfo` komutuyla işlemcinizin özelliklerini görebilirsiniz.

`/proc` klasörü içerisindeki dosyalar, sadece sistem durumunu görüntülemek için kullanılmaz, gerektiğinde sistemde ayarlama yapmak için de kullanılabilir.

/root
-

**Linux/Unix** sistemlerde, işletim sistemine her türlü müdahalede bulunabilme yetkisine sahip, "**root**" adıyla tanımlanmış, süper yetkili özel bir kullanıcı hesabı vardır. `/root` dizini, bu özel kullanıcı hesabının ev dizinidir. Daha iyi anlamak adına örneğin; "**burak**" isimli kullanıcı hesabının ev dizini `/home/burak` şeklindeyken "**root**" kullanıcısının ev dizini `/root` dizini şeklindedir. **Root** kullanıcısına daha önce de belirttiğimiz şekilde "**kök kullanıcı**" da denilir.

Kullanıcıların, sistemi root hesabıyla açma ihtiyacı bulunmaması nedeniyle ve ayrıca sistemi root olarak açmanın güvenlik zaafiyetine yol açabilecek olması nedeniyle pek çok Linux dağıtımında root hesabıyla sisteme giriş yapılması, öntanımlı olarak engellemiştir. Ancak istisnaya dahil olan "**Kali Linux**" dağıtımı penetrasyon testleri ve bunun gibi siber güvenlik işlemleri için oluşturulduğundan kullanıcılar için kolaylık olması için tam yetkili olarak çalışır.

/run
-
Son önyüklemeden bu yana çalışan sistemle ilgili bilgileri tutar. Tutulan bilgilere örnek vermek gerekirse şu anda oturum açmış kullanıcılar, sisteme bağlanan aygıtlar, ağ ile bağlantı(network) değişimleri ve bunun gibi bilgileri tutar.

/sbin
-

Linux'ta normal kullanıcının kullanabileceği komutlarla, kök kullanıcının (root) kullanabileceği komutlar ayrılmıştır. root tarafından kullanılacak bakım ve yönetim için kullanılan önemli programlar, `/sbin` altında tutulur. Daha az öneme sahip yönetim komutlarıysa, `/usr/sbin` klasöründedir. Eğer yerelde, yani kullandığınız makineye özgü kök kullanıcı (root) komutları bulunuyorsa, bunları da `/usr/local/sbin` altında bulabilirsiniz.

/usr
-

Unix ilk çıktığında, kullanıcılara ait ev klasörleri, `/usr` altında tutulurdu. Örneğin; "**burak**" isimli bir kullanıcının ev klasörü `/usr/burak` şeklindeydi. Bu yöntem zamanla değişti ve `/home `klasörü doğmuş oldu. `/usr` klasörü hâlâ çok önemli bir yapıdır ve işletim sisteminizde kullandığınız her şeyle ilişkisi bulunur.

Kurduğunuz pek çok program `/usr` içine kurulur. Her ne kadar Linux'ta kurulan bir programa ait tüm dosyalar `usr` dizini içine atılmıyor olsa da `usr` dizini Windows'taki `Program Files` klasörü ile benzer görev görmektedir. `/opt` adresi işletim sistemi dışında gelen 3.parti programlar içindir. Fakat işletim sistemi aracılığıyla ya da paket yönetim sistemlerini kullanarak yüklediğiniz her şey `/usr` altına aktarılır. Aynı zamanda yüklediğiniz programların çalışmak için ihtiyaç duyacağı kütüphane dosyaları, `/usr/lib` altındadır.

`/usr`, daha geniş bir tanımla; tüm kullanıcılarca paylaşılan verileri (programlar, komutlar, kütüphaneler, dokümanlar gibi) içeren dizindir. `/usr` ile ilgili söylenebilecek bir başka nokta da "local" klasörüdür. Linux, sunucu olarak birçok istemciye hizmet verebilecek bir işletim sistemidir. Bir Linux sunucu (server) kurarsanız, ona bağlanan yüzlerce istemci (client) olabilir. Her istemci bilgisayara, `/usr` altındaki programların ayrı ayrı yüklenmesi gerekmez; bir başka konumdan bu komutları çalıştırabilirsiniz. Ancak `/usr` altında bulunan "local" klasörü sadece kullandığınız makineye özeldir. Örneğin `/usr/local/bin` klasörü içinde bulunan bütün komutlar, direkt olarak kullandığınız makineye yüklenmiştir. `/usr/bin` komutları ise geneldir ve bir ağ üstündeki bütün makinelerden erişilebilir. Yani neticede "local" ifadesini gördüğünüzde, bunun sadece sizin makinenize özel olduğunu bilin.

/var
-

Log dosyaları, e-posta ve yazıcı kuyrukları gibi değişken sistem bilgilerini barındırır. Sisteminize dair tutulan log'ları buradan görebilir; güvenlik durumunu buradan kontrol edebilirsiniz.

/tmp
-

Geçici dosyalar içindir. Birçok program, burayı geçici depolama alanı olarak kullanır. `/tmp` klasörünün içeriği genellikle KB'lar mertebesinde kalır ve genellikle işletim sistemi yeniden başlarken içindeki dosyalar silinir. Her ne kadar `tmp` klasörü geçici dosyalar için de olsa bu klasör altında bulunan dosyaları, ne yaptığınızdan emin değilseniz, kesinlikle silmemelisiniz! Aksi taktirde sisteminizde ya da bazı programlarda birçok sorunla karşılaşabilirsiniz.

----------

Hatırlamanıza yardımcı olması için anlatılanları birde kısaca şematik şekilde aşağıdaki görsel ile verdim. Eğer konuyu anlayarak ve özümseyerek okuduysanız bu grafiğe bakarak bir çırpıda hangi dosyanın, genel olarak hangi işlevde olduğunu hatırlayabilirsiniz.
![](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/6.png)


**Kaynakça :**
[Çağatay Çebi](http://www.cagataycebi.com/linux/file_system/file_system.html) ||
[ubuntu-tr](https://wiki.ubuntu-tr.net/index.php?title=Linux_dosya_sistemi_hiyerar%C5%9Fisi)


----------



Dizinler Hakkında
=
Linux işletim sisteminde bütün programlar, aygıtlar, dosyalar ve genel olarak sistem, hiyerarşik bir düzen içerisindedir. Yani komut satırını kullanacaksak her şeyi oluşturan bu hiyerarşik düzen içerisinde rahatlıkla gezebiliyor olmamız gerekiyor. İşte bu bölümde, hiyerarşide rahatlıkla gezinme ve görüntüleme için gerekli komutlara tek tek değineceğiz.

pwd
-

**Bu komut sayesinde o an bulunduğumuz dizinin adını öğrenebiliriz.** Genellikle sistem yöneticilerinin sık kullandığı bir komuttur.

Örnek vermek gerekirse Linux'ta hiyerarşik bir düzen var dedik. Bu hiyerarşik düzen **kök dizinine**(**root**) bağlıdır her kullanıcı buna **root** da dahil kendi **ev dizinine**(**home**) sahiptir. Böylece neden **root**(**kök**) isminin kullanıldığını da tekrar anlamış oluyoruz. Konsol çalışmaya varsayılan olarak kendi ev dizininde başlar. Root kullanıcısının ev dizini <kbd>/root</kbd> dizinidir. Bunu teyit etmek istersek <code>pwd</code> komutunu kullanabiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/1.png)

Root kullanıcısının dışında da sistemde başka kullanıcılar olabilir. Bu kullanıcıların **ev dizini**(**home**) ise <kbd>/home/kullanıcı_adı</kbd> şeklindedir.

Bu durumu test etmek için "kullanici" adında yeni bir kullanıcı oturumu oluşturdum ve oluşturduğum bu oturum içerisinde komut satırına <code>pwd</code> komutunu verdim. Çıktısı aşağıdaki şekilde oldu.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/2.png)

cd (Change Directory)
-

Bu komut sayesinde dizinler arası geçiş yapabiliyoruz. Zaten daha önceki kısımlarda da bu komutu kullanmak durumunda kalmıştık hatırlarsanız.

Komutumuzu kullanırken gitmek istediğimiz dizinin adresini vermeliyiz. Ben önceki bölümlerde oluşturduğum dizinin en alt klasörüne gitmek istiyorum. Bunun için komut satırına <code>cd Desktop/yeni_dizin/yeni/en_yeni</code> şeklinde bir komut veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/3.png)

Artık gördüğünüz gibi gitmek istediğim dizinin içerisindeyim. Eğer bir önceki dizine (bir dizin geriye) dönmek istersek komut satırına <code>cd ..</code> yazmamız yeterli.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/4.png)

Eğer direk olarak **ana dizine dönmek** istersek de <code>cd</code> 
komutunu kullanmamız gerekiyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/5.png)

Örneğin bir alt dizine geçip orada yer alan başka bir klasöre girmek istiyoruz diyelim. Bunun için komutumuzu <code>cd ../klasör_adı</code> şeklinde bir kullanabiliriz. Ben örnek olması açısından <kbd>/etc</kbd> dizini içerisindeyken bir geri dizine dönüp daha sonra **home** konumuna gelmek için <code>cd ../home</code> komutunu kullanıyorum. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/6.png)

Ancak dikkat etmeniz gereken nokta komutu yazarken **iki noktadan(..) hemen sonra boşluk bırakmadan** gitmek istediğimiz dizini belirtiyoruz. Eğer boşluk bırakarak yazarsak aşağıdaki şekilde bir uyarı alırız.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/7.png)

Eğer sürekli iki dizin arasında gidip geliyorsak bir önceki dizine <code>cd -</code> komutu ile dönebiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/8.gif)

Çıktıda da görüldüğü gibi <code>cd -</code> komutu ile iki konum arasında pratik şekilde gidip gelebiliyoruz.

ls
-

Listeleme ve görüntüleme işini yapan bu komutumuzu anlatmadan önce defalarca kullandık. Bu da gösteriyor ki <code>ls</code> komutu çok yaygın şekilde kullanılan komutlardan. Bu komuta sürekli işimiz düşecek. Bu komutun da pek çok parametresi mevcut ben hepsini olmasa da birkaçını ele alarak anlatıma devam ediyorum.

En temel kullanımı ile başlayacak olursak, <code>ls</code> komutu içinde bulunduğumuz dizinde yer alanları bizlere gösterir. Örneğimize ana dizindeyken <code>ls</code> komutunu vererek başlayalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/9.png)

Görüldüğü üzere <code>ls</code> komutumuzu kullanmamız ardından bulunduğumuz ana konumda yer alan tüm dosyalar konsola basılmış oldu.

### ls-l


Eğer çıktımız ayrıntılı olsun istiyorsak komut satırına komutu parametresi ile beraber <code>ls -l</code> şeklinde yazmamız gerekiyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/10.png)

Çıktımızda dosya izinleri, dosya boyutu, oluşturulma tarihi gibi bilgiler sıralanmış oldu. Tabii ki <code>ls</code> komutu kullanımı bununla sınırlı değil, parametreler ile devam edelim.

### ls-a


Bizim yukarıdaki çıktımızda gizli dosyalar bulunmuyor. Eğer istersek gizli dosyaları da aynı şekilde listeleyebiliriz. Bunun için <code>ls</code> komutunun <code>a</code> parametresini kullanıyoruz. Çıktımızın düzenli ve listeli olması adına <code>a</code> parametresinin yanına bir de <code>l</code> parametresi kullanmak istiyorum. Bunun için komut satırına <code>ls -la</code> şeklinde veya <code>ls -al</code> şeklinde komutu girmemiz gerekiyor. Ayrıca bu komutu <code>ls -a -l</code> şeklinde ayrı ayrı olarak da girebiliriz. Sonuçta bu komutun parametresi hem birleşik hem de ayrı ayrı şekilde yazılabilir. Kullanım tercihi size kalmış.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/11.png)
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/12.png)
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/13.png)

### ls -A


<kbd>.</kbd> ve <kbd>..</kbd> dizinleri hariç gizli dosyalar da dahil bütün dosyaları görmek istersek <code>ls</code> komutumuzu <code>ls -A</code> şeklinde kullanabiliriz. Ayrıca çıktıları düzgün şekilde listelemek adına <code>l</code> parametresi de dahil edebileceğimizi biliyorsunuz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/14.png)

### ls -h


Listelenen dizinlerin boyutunu **okunaklı(human readable)** şekilde verir. Okunaklıdan kasıt dosya boyutunu **KB**, **MB**, **GB** türünden büyüklük olarak vermesidir. Karşılaştırmanız açısından bir normal şekilde birde daha okunaklı şekilde olanın çıktılarını aşağıda veriyorum. (Ayrıca komutumuza <code>-l</code> parametresini eklemiş olmamızın sebebi dizin ayrıntılarını dolayısıyla da dosya boyutunu görebilmektir.)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/15.png)

### ls -i


Düğüm numarasını verir. Düğüm(inode) numarası nedir diyecek olursanız bu konuya ileride değineceğiz şimdilik bu parametrenin bu görevi yerine getirdiğini bilsek yeter.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/16.png)

### ls -S


Dosya büyüklüğüne göre sıralar. Dosyalar büyüklüklerine göre sıralanacağından komutun daha net anlaşılması için içerisinde farklı boyutlara sahip dosyaları barındıran <kbd>/root/run</kbd> dizini altında işlem yaptım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/17.png)

### ls -t


Dosyanın değiştirilme tarihine göre sıralar.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/18.png)

### ls -r


Konsola basılan çıktıyı ters çevirerek basar. Karşılaştırmanız açısından normal liste sırası ve <code>-r</code> parametreli ters liste sırasını aşağıda veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/19.png)

Örneğin `ls -tl` komutu ile dosyaları oluşturulma tarihlerine göre en yeniden eskiye doğru sıraladık. Bu sıralamayı en eskiden yeniye doğru yapmak istersek komutumuza `r` parametresi ekleyerek kullanmamız gerekir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/20.png" width="875">

Bir başka örnek `ls -Sl` komutu ile dosya ve dizinleri büyükten küçüğe sıralarken eğer komutumuza birde `r` parametresi eklersek bu sefer komutumuzun çıktısı ters şekilde yani küçükten büyüğe doğru sıralanmış olacak.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/21.png" width="875">

Yukarıda bahsi geçen <code>ls</code> komutu, açıkladığım parametreleri dışında da oldukça fazla parametreye sahip. Bunları öğrenmek için **man kılavuz sayfasını** inceleyin lütfen.

Dizin Oluşturma Ve Silme
=

Dizin oluşturmak için <code>mkdir</code> , silmek için ise ileride tekrar dosya sistemlerinde değineceğimiz <code>rm</code> komutu kullanılıyor.

mkdir
-

Klasör oluşturmamıza olanak sağlayan komuttur. En temel kullanımı <code>mkdir klasör_adı</code> şeklindedir. Örneğin bulunduğumuz konuma dosyalar adında bir dizin oluşturalım. Bunun için komut satırına <code>mkdir dosyalar</code> yazmamız yeterli. Ayrıca klasörümüzün oluşup oluşmadığını da <code>ls</code> komutu ile teyit ediyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/22.png)

Eğer çoklu şekilde klasör oluşturmak istersek klasör isimlerini peş peşe yazarak bu işlemi gerçekleştirebiliriz. Komutun kullanımı <code>mkdir dizin1 dizin2 dizin3</code> şeklindedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/23.png)

Ayrıca klasör oluştururken izin ayarlarını da dilediğimiz şekilde ayarlayabiliriz. Bu imkanı bize <code>-m</code> parametresi sağlıyor. Kullanımı <code>mkdir -m izin_kodu klasör_adı</code> şeklindedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/24.png)

Burada yer alan izin kavramı hakkında endişelenmeyin ileride "Erişim Yetkileri" kısmında ele alacağız. Kafası karışan arkadaşlar isterse şimdilik bu kısmı geçebilir yada "[Erişim Yetkileri](https://github.com/taylanbildik/Linux_Dersleri/blob/master/dok%C3%BCmantasyonlar/eri%C5%9Fim_yetkileri.md#eri%C5%9Fim-yetkileri)" konusuna göz atarak devam edebilir. 

rm
-

Komutumuzu ileride dosya işlemleri bölümünde tekrardan ele alacağız. Ancak şimdi <code>rm</code> yani silme komutunun dizinler üzerinde kullanımı öğrenmeliyiz.

Dizin dediğimiz şey iç içe sıralanmış klasör ve dosyalardan oluşan bir yol. Yani bu yolu silmek istediğimizde içerisindeki her şeyi de silmeliyiz. Bu yüzden komutumuzu <code>-r</code> parametresi ile birlikte kullanarak dizinin içerisindeki dosyalar da dahil her şeyi silmesini söylemiş oluruz. Yani komutun dizin silme işlemi için kullanım <code>rm -r silinecek_dizin</code> şeklindedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/25.png)

Ve dizin, içerisinde bulunanlar ile birlikte silinmiş oldu. Eğer komutumuzu parametresiz olarak yani <code>-r</code> olmadan <code>rm secure</code> şeklinde verseydik, komut satırı bu işlemi dizinin içerisinde klasör ve dosya bulunması nedeniyle gerçekleştiremezdi.(Klasör içerisinde hiçbir şey bulunmasa dahi aynı uyarıyı verecektir.) Bu durumu denemek için daha önceden oluşturmuş olduğumuz <kbd>dosyalar</kbd> isimli klasörümüzü <code>-r</code> parametresi olmadan silmeye çalışalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/26.png)

Konsol bize " ***'dosyalar' silinemedi: Bu bir dizin*** " şeklinde uyarı verdi.

Eğer silmeden(işlem yapılmadan) önce bize sorulsun yani bizi uyarsın istiyorsak komuta <code>-i</code> parametresi de ekleyebiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/27.png)

Gördüğünüz gibi konsol işlem yapmadan önce her işi bize sordu ve "**y**" yanıtını aldığı için silme işlemine devam etti. Bu sayede dizinleri kontrollü şekilde silmiş olduk.(Kullandığınız sistemin diline göre onaylama yanıtı değişmektedir. Örneğin kullandığınız dil Türkçe ise onay vermek için kullanılan yanıt "**e**"{burdaki "**e**" den kasıt "**evet**" onayının kısaltması olan "**e**" karakteridir.} olacaktır.)

Ayrıca dizin silme komutunu<code>rm -ri dizin1 dizin2 dizin3</code> şeklinde kullanarak toplu şekilde silme işlemi de gerçekleştirebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/5-%20Dizin%20%C4%B0%C5%9Flemleri/28.png)

----------



  
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

Yazmak istediğimiz ifadeleri hem komut satırına yansıtıp hem de bu ifadelerim bir dosya içerisine kayıt olmasını isterseniz kullanacağınız komut <code>tee</code> komutu olacaktır.

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

----------



Dosya Arşiv İşlemleri
=
Bu bölümde dosya arşivleme, sıkıştırma ve sıkıştırılmış olan dosya arşivlerini açma gibi işlemleri ele alacağız. Zaten bu kavramlar sizlere yabancı gelmemeli zira daha önce hangi işletim sistemini kullanmış olursanız olun öyle ya da böyle karşınıza çıkmıştır. Genellikle yüksek boyutlu dosyaların sıkıştırılmasında veya veri kaybı olmadan güvenli transfer yapabilmek için ve bunlar gibi pek çok sebep dolayasıyla arşiv dosyaları ile sıklıkla karşılaşıyoruz, karşılaşmaya da devam edeceğiz.
Konumuza arşiv dosyalarını nasıl oluşturabileceğimizi öğrenerek başlayalım.

tar
-

`tar` komutunun açılımı (**T**ape **AR**chive) şeklindedir. Bu komut bir veya birden fazla dosyayı tek bir forma sokarak arşivlenmiş duruma getirir. Örnekler üzerinden anlatıma devam edelim.

Masaüstünde yer alan ismi "**metin**" ile başlayan her şeyi <kbd>metinler.tar</kbd> şeklinde arşivlemek isteyelim. Bunun için komut satırına `tar -cf metinler.tar metin*` yazmalıyız.

![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/1.png)

Kullandığımız komut bütününü tek tek izah edelim;

`tar`(Tape ARchive) arşivleme işlevini yapan program.

`-c`(**c**reate archive) parametresi joker `*` yardımıyla dosya ismi ile başlayan her şeyi paketleyip <kbd>dosyalar.tar</kbd> isimli dosyaya yollar.

Kullandığımız `-f` parametresi de hangi dosyaya yazılacağını belirtir.

Dosyaları tekrar açmak için `tar -xf metinler.tar` komutunu kullanabiliriz. Veya açılan dosyaları konsol üzerinden takip etmek için `v` parametresi kullanarak aynı işlemi gerçekleştirebiliriz.

![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/2.png)

Eğer arşivi başka bir klasöre çıkarmak istersek komutumuzu `tar -xf metinler.tar -C hedef_klasör` şeklinde kullanabiliriz.

![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/3.png)

Görüldüğü gibi arşivin içerisindekiler, öncekilerden farklı olarak direk çalıştığımız dizine değil, belirtmiş olduğumuz hedef klasöre çıkarılmış oldu.

Arşivi çıkarmadan içerisindekileri görmek istersek `tar -tf metinler.tar` komutunu kullanabiliriz.

![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/4.png)

Oluşturmuş olduğumuz arşive sonradan ekleme yapmak için `-r` parametresini kullanabiliriz.

Hemen <kbd>metinler.tar</kbd> arşivine aynı dosya konumunda  yer alan <kbd>yeni</kbd> isimli klasörü eklemeye çalışalım.

![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/5.png)

Başta ve sondaki arşivin durumunu karşılaştırdığımızda <kbd>yeni</kbd> isimli klasörün arşive eklenmiş olduğunu gördük.

`tar` komutunun kullanım şekilleri elbetteki yukarıdaki anlatılanlar ile sınırlı değil. Ancak biz genel olarak sıklıkla karşılaşılan kullanım şekillerini ele almış olduk. Daha fazla bilgiye nasıl ulaşacağınızı biliyorsunuz.

gzip-bzip2
-

Biz daha önceki kısımlarda `tar` komutu ile dosyaları sadece arşivlemiş, ancak sıkıştırma işlemi yapmamıştık. Şimdi ise gerektiğinde dosyaları **sıkıştırmayı** ve bu dosyaları **açmayı** göreceğiz.

Sıkıştırma işleminde iki temel araç kullanılıyor. Bunlar `gzip` ve `bzip2` araçları.

Masaüstünde yer alan dosyalardan örnek yapalım hemen. Ben "**metin**" adıyla başlayan dosyaları `gzip` aracı ile sıkıştırmak için daha önceden de defalarca kullanmış olduğumuz `*` joker karakterinin yardımıyla `gzip metin*` komutunu veriyorum. Daha sonra aynı işlemi "**isim**" adı ile başlayan belgeler için bu defa `bzip2` aracı yardımıyla `bzip2 isim*` şeklinde sıkıştırarak gerçekleştiriyorum.

![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/6.png)

Sıkıştırdığımız dosyayı tekrar dışarı çıkarmak istersek komutu `-d` parametresi ile birlikte kullanmamız gerekiyor.

![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/7.png)

Artık hem arşivleme hem de sıkıştırma işlemlerini ayrı ayrı gördükten sonra her ikisini de birlikte kullanma vakti geldi.

`gzip` ile `bzip2` arasında `tar` komutu yardımı ile arşivleme işlemi yaparken ufak bir fark var. Bu fark `gzip` ile arşivleme yaparken komutun `czvf` şeklinde parametre almasıyla, `bzip2` ile arşivleme işlemi yaparken aldığı parametrenin `cjvf` olmasıdır. Bunun dışında kullanım şekilleri aynıdır.

Örnekler ile açıklayalım.

Her iki şekilde de "**metin**" isimli belgeleri bir arşiv içine almaya çalışalım. Sırasıyla bunu ilk olarak `gzip` ile daha sonra ise `bzip2` ile yapalım. Dosya adı verirken kullanılan <kbd>tar.gz</kbd> ve <kbd>tar.bz2</kbd> uzantılarına dikkat edin aksi halde işlem hata verecektir.

<img src="https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/8.png" width="875">
<img src="https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/9.png" width="875">

Gördüğünüz gibi `gzip` kullanırken parametre olarak `czvf` verdik ve oluşturduğumuz dosyanın uzantısını da <kbd>tar.gz</kbd>  şeklinde yaptık. Aynı şekilde `bzip2` için ise `cjvf` parametrelerini kullandık ve dosya adımızın uzantısı <kbd>tar.bz2</kbd>  şeklinde oldu. Daha önce de söylediğim gibi bu ayrıntılara dikkat etmezseniz işlem kaçınılmaz olarak başarısız olacaktır.

Sıkıştırmış olduğumuz arşivleri tekrar açmak için ise `gzip` için `xzvf` parametresi `bzip2` için ise `xjvf` parametresini kullanacağız. 

<img src="https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/10.png" width="875">

Arşivler açılmış oldu. Eğer arşivi **belirli bir konuma çıkarmak** istersek daha önce de öğrenmiş olduğumuz şekilde `-C` parametresi ile bu işlemi gerçekleştirebiliriz. Eğer `-C` parametresi kullanmazsak arşiv içindekiler doğrudan belirttiğimiz konuma açılır. `-C` parametresi hedef konuma arşivin ismi ile bir dosya oluşturur ve o dosya içerisine çıkarma işlemini yapar. 

<img src="https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/11.png" width="875">

Daha önceden öğrendiğimiz işlemleri de aynı şekilde sıkıştırılmış arşiv dosyalarında da yapabiliyoruz. O yüzden aynı şeyleri burada tekrardan vermemiz anlamsız olur.

İlk başlarda akılda kalması, hatırlanması zor gelebilir ancak sizler de zamanla, kullana kullana bu komutlara alışacaksınız. Unuttuğunuz yerde zaten tekrar açıp bakabilirsiniz.

zcat-zgrep-bzcat-bzgrep
-
Daha önce dosya içeriklerini terminal üzerinden `cat` komutu yardımı ile okumayı ve `grep` komutu ile de arama yapmayı öğrenmiştik. Şimdi ki göreceğimiz komutlar ise, aynı işlemleri sıkıştırılmış dosyalar için yerine getiriyorlar. Zaten isimlerinden de bu işlevde oldukları anlaşılabiliyor.

`gzip` ile sıkıştırılmış arşiv dosya içeriklerini `zcat` ile okuruz. Aynı işlemi eğer `bzip2` ile sıkıştırılmış dosyalar varsa `bzcat` şeklinde gerçekleştirebiliriz.

![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/12.png)

Sıra geldi sıkıştırılmış dosyalar içerisinde arama yapmaya. `gzip` ile sıkıştırılmış dosyalar için `zgrep` kullanılırken `bzip2` ile sıkıştırılmış dosyalar için `bzgrep` komutunu kullanıyoruz.

![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/13.png)


zip-unzip
-

Son olarak da <kbd>.zip</kbd> uzantılı dosyaları nasıl oluşturabileceğimizi ve daha sonra oluşturduğumuz .<kbd>.zip</kbd> uzantılı dosyaları nasıl açabileceğimizi görelim.

Anlatıma <kbd>.zip</kbd> dosyası oluşturarak başlayalım.

Bunun için komutumuzu konsola `zip dosya_adı.zip eklenecek_dosya` şeklinde giriyoruz.

![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/14.png)

Çıktıda yer alan "**deflated**" ifadesi dosyanın ne kadarının sıkıştırıldığını yüzdelik olarak bize veriyor.
Ayrıca sarı alan ile işaretlenmiş kısıma bakarak; sıkıştırmış olduğumuz dosyanın boyutu ile dosyanın sıkıştırılmamış hali olan, orjinal dosyanın boyutu arasında oldukça fazla boyut farkı bulunduğunu gözlemleyebiliyoruz.


Eğer `zip` komutu ile sıkıştırdığımız dosyayı açmak istersek <kbd>.zip</kbd> dosyalarını açma işlevindeki `unzip` komutunu `unzip dosya_adı.zip` şeklinde kullanabiliriz.

![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/7-%20Dosya%20Ar%C5%9Fivleme/15.png)

Konsolun bize sorduğu soru " ***bulunduğumuz dizinde aynı dosyadan bir tane daha var ne yapmak istersiniz?*** " gibi bir sorudur.

----------



Erişim Yetkileri
=

Linux sistemlerinin yapısı gereği güvenlik açısından, dosya ve dizinlere ait birçok kısıtlama ve yetkilendirme ayarları vardır. Bu **yetkilerin hepsine sahip olan tek kullanıcı** ise **root** kullanıcısıdır. Bu yüzden sistemi kullanırken eğer root kullanıcısı isek önümüzde uyarıcı bizi kısıtlayıcı bir mekanizma olmayacağından, kimi durumlarda yapacağımız değişiklikler sistemle ilgili büyük sorunlara yol açabilir. Bu yüzden root kullanıcısıyken yapılan işlemlere dikkat etmek gerekir.(Hatta kimi dağıtımlarda root kullanıcı hesabı varsayılan olarak engellenmiştir, ancak istenildiği takdirde ve gereken ayarlar yapıldığında kullanılabilir duruma getirilir.)

Bu girizgahtan sonra, her kullanıcının kendine verilen yetkiler çerçevesince hareket edebildiğini öğrenmiş olduk. Kullanıcıların dosya veya dizinler ile ilgili yapabileceği üç eylem bulunmaktadır. Bunlar;

**okuma(r):** Klasör listesini ve dosya içeriğini görüntüleme.

**yazma(w):** Dosya veya klasör üzerinde değişiklik yapma.

**çalıştırma(x):** Hedef dosyayı çalıştırma veya klasör içerisine erişme.

Aslında bu eylemler sizlere yabancı gelmemeli. Zira daha önce `chmod` komutu yardımı ile gerekli dosyanın iznini değiştirmiş ve dosyamızı çalıştırmayı başarmıştık.

Şimdi mevcut dosyalarımızın ne tür izinleri barındırdığına göz atalım. Bunun için komut satırına ayrıntılı liste yazdırmak üzere `ls -l` komutumuzu veriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/1.png)

Şimdi listemizi inceleyerek bulunan izinleri ele alalım.

<kbd>drwxr-xr-x</kbd> ve <kbd>-rw-r--r-- </kbd> şeklinde gördüğümüz kısımlar dosya izinlerini ifade ediyor.

Bazı ifadelerin başında olan <kbd>d</kbd> harfi o ifadenin dizin olduğunu belirtiyor.

Geriye kalan kısımları ayrı ayrı açıklayacak olursak <kbd>-</kbd> işareti ile ayrılan kısımlar o izine sahip kullanıcı grubunu temsil ediyor. Daha iyi anlamak için <kbd>d</kbd> harfi hariç <kbd>-</kbd> işaretini ayırdığımız zaman geri kalan harfleri üç adet üçlü grup haline getirelim;

<kbd>rwxr-xr-x</kbd>=<kbd>rwx</kbd> <kbd> r-x </kbd> <kbd>r-x</kbd>

<kbd>rw-r--r--</kbd>=<kbd>rw-</kbd> <kbd>r--</kbd> <kbd> r--</kbd>

Sırayla; birinci harf kümesi dosya sahibinin izinlerini, ikinci harf kümesi grup izinleri ve son küme de diğer kullanıcıların izinlerini belirtir. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/2.png)

Buna göre yukarıdaki dosyalarda bulunan izinleri açıklayacak olursak;

**r :** okuma yetkisi

**w :** yazma yetkisi

**x :** çalıştırma yetkisi

**rwx :** dosyanın sahibi olan kullanıcı okuyabilir, yazabilir, çalıştırabilir.

**r-x :** dosya sahibi kullanıcı grubu ile aynı gruba dahil kullanıcılar okuyabilir, çalıştırabilir fakat yazamaz(değişiklik yapamaz).

**r-x :** diğer kullanıcılar okuyabilir, çalıştırabilir fakat yazamaz(değişiklik yapamaz).


Yetkilerin Değişimi(chmod)
-

Erişim yetkisini değiştirme işlemini, ancak en yetkili kişi olan root yapabilir. Bu değişim işlemi; daha öncede de kullandığımız `chmod` komutu sayesinde gerçekleştirilir.

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

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/3.png)


Daha sonra klasörde yer alan tüm dosyalara `*` joker karakteri ile ulaştık ve `chmod +w *` komutumuzu kullanarak **herkese açık** olacak şekilde **yazma(w)** yetkisi verdik.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/4.png)

**Aynı grupta bulunan kullanıcılar** için, yine konumumuzda bulunan tüm dosyaları `*` sayesinde kapsayacak şekilde `g+rx *` komutumuzu verdik.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/5.png)

Gruptaki kullanıcılara(g), okuma-yazma-çalıştırma yetkisi (rwx), kullanıcıya(u) yazma yetkisi(r), diğer kullanıcılara ise yalnızca çalıştırma yetkisi(x) verdik.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/6.png)

Ve en son yine bulunduğumuz konumdaki tüm dosyaların yetkilerini kaldırdık.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/7.png)

Bu kullanımların dışında yetkilendirme işlemleri daha önceden de rastladığımız ve fark etmeden de olsa kullanmış olduğumuz sayısal şekilde de ifade edilebiliyor.

Bu durumu yetkilerin sayısal karşılığını vererek anlatmaya devam edelim.

<table class="table"> <caption>Yetki kalıplarının sayısal karşılıkları.</caption> <thead> <tr> <th>#</th> <th>dosyanın sahibi</th> <th>sahibiyle aynı gruptakiler</th> <th>diğer kullanıcılar</th> </tr></thead> <tbody> <tr> <th scope="row">r</th> <td>4</td><td>4</td><td>4</td></tr><tr> <th scope="row">w</th> <td>2</td><td>2</td><td>2</td></tr><tr> <th scope="row">x</th> <td>1</td><td>1</td><td>1</td></tr></tbody> </table>

Yetkilerin sayısal değerlerini kullanarak bir örnek yapalım.

Örneğin biz sadece dosyanın sahibine bütün yetkileri vermek istiyoruz diyelim. Bunun için ilk başta yetki kalıplarının numara karşılıklarını toplamalıyız. Yani bütün yetkileri vereceğimiz için <kbd>r=4 </kbd>+<kbd> w=2</kbd> +<kbd> x=1</kbd>=<kbd>toplam sayı 7</kbd> etti. Bizler de sadece dosya sahibine bu yetkiyi vermek istediğimizden normalde vereceğimiz `chmod rwx- -----` komutumuzu diğer kullanıcılara yetki vermek istemediğimiz için o alanları 0 bırakarak komutu `chmod 700 dosya` şeklinde veriyoruz. Böylelikle sadece dosyanın sahibi tüm yetkilere sahip olmuş oluyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/8.png)

Daha net anlaşılması adına bir örnek daha yapalım. Şimdi de; dosyanın sahibine tüm yetkileri, ortak gruptakilere yalnızca yazma yetkisini, diğer kullanıcılara da sadece okuma yetkisini verelim.

Dosya sahibi kullanıcıya verilecek tüm yetkiler için `r(4)+w(2)+x(1)=7` sayısını kullanacağız.

Dosya sahibi ile ortak gruptaki kullanıcılar için vereceğimiz yazma yetkisi için **yazma(w)** karakterinin sayısal karşılığı olan `2` sayısını kullanacağız.

Diğer kullanıcılar için vereceğimiz yalnız okuma yetkisi için ise **okuma(r)** karakterinin sayısal karşılığı olan `4` sayısını kullanacağız.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/9.png)

Çıktıdan da anlaşılacağı üzere sayısal karşılıklar istediğimiz yetkilendirme işlemini gerçekleştirdi.

Son bir ayrıntı daha verelim. Eğer verdiğimiz izinlerin o dizinle beraber alt klasörlerinde de etkili olmasını istersek komutumuzu `-R` parametresi ile birlikte kullanmalıyız.

Örneğin bulunduğum konumdaki "**metin**" isimli klasörün erişim yetkilerini listeledim. Sonuç olarak hiçbir yetkinin bulunmadığını belirten <kbd>--------- </kbd> şeklinde bir çıktı geldi. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/10.png)

Daha sonra "**metin**" isimli klasörün içerisine girerek oradaki dosya ve dizinlerin erişim izinlerini sorguladım. Sonuç olarak <kbd>rwxrwxrwx</kbd> şeklinde bütün yetkilere sahip dosya ve dizinlerin olduğunu gördüm. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/11.png)

Daha sonra bir üst dizine dönerek ekleyeceğim erişim izinlerinin tüm alt dosyalarda dahil olmak üzere, geçerli olması için komutuma ek olarak `-R` parametresini kulladım ve komutumu `chmod -R 422 metin` şeklinde yazdım. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/12.png)

Sonuç olarak bütün dosya ve dizinlerde ve alt klasörlerde dahil olmak üzere tüm dosyaların vermiş olduğum yetki erişim izinleri **422** ifadesine karşılık gelen; dosya sahibi için okuma(**r**) , dosya sahibi ile aynı gruptaki kullanıcılar için yazma(**w**) ve diğer kullanıcılar için de yazma(**w**) yetkisi şeklinde yetkilendirildiğini görmüş oldum.

Eğer örneklere ve açıklamalara rağmen yine de anlamadıysanız ister konuyu tekrar okuyup kendiniz de alıştırmalar yapın isterseniz de bu konuyu şimdilik geçin ihtiyacınız olduğunda burada olduğunu bilerek tekrar göz atın. Seçim sizlere kalmış.

chattr
-
Hepimizin başına mutlaka gelen ve çok can sıkıcı bir durum var. Bu durum yanlışlıkla silinen dosyalar. Her nasıl ve neden olursa olsun eğer önemli gördüğümüz dosyalar varsa bir şekilde silinmeden onları koruma altına almamız mümkün. Bizlere bu koruma imkanını veren komut `chattr` komutudur. Aslında `chattr` komutu bir tek silinmeye karşı korumuyor, genel olarak dosyanın değiştirilmesine(silme, değiştirme vs.) engel olmak amacıyla kullanılıyor. Yani bu komutumuz bir nevi ilgili dosyayı dokunulamaz kılıyor. Öyle ki herhangi bir yanlış durumda dosyanın kaybolmasına engel olmak adına **root kullanıcısının bile** değişiklik yapmasına imkan tanımıyor. Komutun kullanım alanına bir örnek daha vererek daha iyi anlamış olalım. Örneğin sistemde bir konfigürasyon dosyasını düzenlediniz ve sistemi yeniden başlattınız, fakat bir bakıyorsunuz ki düzenlediğiniz(değiştirdiğiniz) ayarlar kaybolmuş ve dosya eski haline dönmüş. İşte bu gibi durumlarda sistemin bile ilgili dosyaya müdahale etmesini engellemek için oldukça kullanışlı olan `chattr` komutunu kullanabiliyoruz.

Komutun kullanımı `chattr +i dosya_adı` şeklindedir. Hemen bir örnek yapalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/13.png)
Bu tür dosyaları listelemek için `lsattr` komutu kullanılıyor. Bizde dosyaların durumunu daha sonradan karşılaştırabilmek adına ilk olarak konsola `lsattr` komutunu verdik.

<kbd>test.txt </kbd> isimli dosyamızı `chattr +i test.txt` komutu ile koruma altına aldık.

Daha sonra bunu teyit etmek için `lsattr` komutunu kullandık.

Komutumuzun çıktısında görüldüğü gibi dosyamızın sol tarafında izinler kısmında `-i` şeklinde bir ifade var. İşte bu ifade dosyamızın artık düzenlenemeyecek olduğunun işaretidir. Dosyayı silmeye çalışarak bu durumu teyit ettik.

Eğer bu işlemi geri almak ve dosyamızı üzerinde değişiklikler yapılabilir hale getirmek istersek `chattr -i test.txt` komutumuzu kullanmamız yeterli olacaktır. Örneği aşağıda inceleyebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/8-%20Eri%C5%9Fim%20Yetkileri/14.png)

Çıktıda da görüldüğü gibi hedef dosyamızın solundaki `-i` işareti yok olmuş. Dolayısıyla <kbd>test.txt</kbd> isimli dosyamızın artık eski halinde dönerek, düzenlenebilir forma girmiş olduğunu gördük. Ve dosyamızı silerek bu durumu teyit ettik.

----------



Kullanıcı İşlemleri
=
Linux'ta birçok kullanıcı hesabının olabildiğini ve bunlar içinde en yetkilinin root kullanıcısı olduğunu önceki derslerimizde tecrübe etmiştik. Ancak sistemde root kullanıcısı olmadan da root kullanıcısının yetkilerine sahip olmamız mümkün. Bu imkanı bize **Linux Grup Yönetimi** veriyor.

Grup Yönetimi
-

Aynı grupta yer alan kullanıcılar bizim tanımlamamızla aynı haklara sahip olabiliyorlar.

Biraz daha ayrıntılı vermek gerekirse **Linux** ve **UNIX** sistemlerindeki kullanıcılar bir veya daha fazla gruba aşağıdaki nedenlerle atanır:

- Dosyaları veya diğer kaynakları Grup yönetimi sayesinde ilgili kullanıcılarla paylaşarak, sistemde erişim sınırlamalarıyla güvenlik sağlaması.
- Kullanıcı yönetim ve denetiminde  kolaylık sağlıyor olması.
- Grup üyeliği, bu gruba izin verilen dosyalara, dizinlere veya cihazlara özel erişim sağlar. Bu madde baştaki madde ile benzer amaca hizmet ederek tamamen kontrolü elde tutmayı sağlamak için kullanılır.

Yani genel olarak **Grup sistemini** bir çeşit **kontrol mekanizması** gibi düşünebilirsiniz.

Bu kısa bilgilendirmeden sonra gelin grup yönetimi ile ilgili işlemlere geçelim.

Bir grup oluşturulduğunda bu grubun bilgisi <kbd>/etc</kbd> dizini içerisinde yer alan <kbd>group</kbd> isimli dosyada tutuluyor.
Yani mevcut grupları görüntülemek istersek <kbd>/etc</kbd> dizini içerisinde yer alan <kbd>group</kbd> dosyasına bakmamız gerekir.
Bunun için `less /etc/group` , `more /etc/group` , `cat /etc/group` komutlarından herhangi birini kullanabiliriz. Çıktıları aşağıdaki şekilde olacaktır.(Çıktıyı uzun olması nedeni ile aşağıdaki çıktının görselini keserek verdim.)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/0.png)

Hemen bu çıktıda yer alan kısımlara bir açıklık getirelim. Bunun için bir grubu bölüm bölüm numaralandırarak açıklayalım. Ben bu durum için örnek bir grup belirtiyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/1.png)

Belirtilen numaralı kısımların açıklamaları:

**1. Grup_ismi :** Gruba verilen isimdir.

**2. Parola :** Parola alanını belirtiyor. Genelde parola kullanılmaz ancak kimi durumlarda kullanıldığı oluyor, bizim çıktımızda da **x** ile belirtilen alan parola kısmının boş olduğunu belirtiyor. Bu parola belirleme işlemi çok sık kullanılmasa da, ayrıcalıklı gruplarda uygulamak için yararlıdır.

**3. Grup Kimliği (GID) :** Atanan grup kimliğini(grup numarasını) belirtiyor.

**4. Grup Listesi :** Grubun üyesi olan kullanıcıların kullanıcı adlarının bir listesidir. Kullanıcı adları, virgülle ayrılmış şekilde belirtiliyor.

Bu alanların neleri ifade ettiğini öğrendiğimize göre, gelin hangi kullanıcının hangi gruba dahil olduğunu nasıl öğrenebiliriz onu görelim.

Kullanıcı Gruplarını Sorgulamak
-

Kullanıcıların ait olduğu grupları görmek istersek komut satırına `id kullanıcı_adı` şeklinde komut vermemiz yeterli olacaktır.
Ben "**burak**" kullanıcı hesabı için sorgulama yapmak üzere konsola `id burak` şeklinde komutumu veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/2.png)

Gördüğünüz gibi "**burak**" kullanıcı hesabı için burada; **uid**(**u**ser **id** /kullanıcı numarası), **gid**(group id/grup numarası) ve dahil olduğu **gruplar** listelenmiş oldu. 

Burada yeri gelmişken çıktıda da görülen **uid**(user id/kullanıcı numarası) ve **gid**(group id/grup numarası) kavramlarına değinelim. Bu numara aralıkları kullanıcı hesabına göre değişiklik gösteriyor. Yani kullanıcı çeşidine göre numaraları üç temel gruba ayırabiliriz. O da şu şekilde ;

- **root kullanıcısı :** UID=0, GID=0
- **sistem kullanıcısı :** UID=1 - 499, GID=1 - 499
- **normal kullanıcı :** UID=500 < X, GID=500 < X (Buradaki X ifadeleri 500'den büyük tüm sayıları temsil etmektedir.)

Ayrıca `id` komutunun birçok parametresi vardır bazıları birazdan göreceğimiz grup oluşturma kısmındaki parametrelerden oluşuyor. Detaylı bilgi için man sayfasına bakabilirsiniz. Ben yine de örnek olması açısından birkaç parametresini gösteriyorum ve daha sonra grup oluşturma ile konumuza devam ediyoruz.

**g** : `id -g kullanıcı_adı` belirtilen kullanıcının **grup numarasını**(**gid**) verecektir.

**u** : `id -u kullanıcı_adı` belirtilen kullanıcının **kullanıcı numarasını**(**uid**) verecektir.

**G** : `ìd -G kullanıcı_adı` belirtilen kullanıcının **dahil olduğu tüm grupları**(**groups**) verecektir.


![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/3.png)

Yukarıdaki parametreler haricindekiler için man kılavuz sayfasına bakın lütfen.


Sıra geldi yeni grup oluşturmaya..
-

Yeni bir grup oluşturmak istersek `groupadd yeni_grup_adı` şeklinde komutumuzu kullanırız.

Ben örnek olması açısından "**yeni**" isimli bir grup oluşturmak için komut satırına `groupadd yeni` şeklinde komutumu veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/5.png)

Ve oluşturduğumuz grubu sorgulamak için grup bilgilerinin tutulduğu dosyaya bakmak üzere `cat /etc/group | grep grup_adı` komutunu ya da `tail -n 1 /etc/group` kullanabiliriz.


<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/6.png" width="875">


Ayrıca grup oluşturulurken kullanılabilecek bazı parametreler var. **Bunlar;**

**g :**  Grup id belirleme. İstediğiniz numarayı başka bir gruba ait numara ile aynı olmayacak şekilde verebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/7.png)

Eğer aynı grup id ile başka bir grup eklemek istersek konsol bize "***bu id ye sahip başka bir grubun halihazırda bulunduğu***" uyarısını verecektir. Dolayısı ile grup ekleme işlemi başarısız olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/8.png)

**f :** işlemi hatalar olsa bile zorlayarak tamamlar. Genelde bu kullanım sorunlar çıkardığı için pek tavsiye edilmez.

Parametreler bunlar ile sınırlı değil ancak sizler `man groupadd` ve `groupadd --help` komutları yardımı ile diğer parametreleri de keşfedebilirsiniz.

Ayrıca oluşturduğunuz grupları silmek isterseniz konsola `groupdel grup_adı` şeklinde komut yazmanız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/9.png)


Kullanıcı Yönetimi
-

Sistemimize yeni bir kullanıcı eklemek için kullanabileceğimiz iki farklı komut var. Bunlar `adduser` ve `useradd` komutlarıdır.

### adduser

Yeni kullanıcı eklemek için komutumuzu `adduser kullanıcı_adı` şeklinde veriyoruz. Böylelikle oluşturduğumuz kullanıcıya ait ev dizini `home/kullanıcı_adı` şeklinde otomatik olarak oluşmuş oluyor.
Ben örnek olaması açısından "**hasan**" isimli bir kullanıcı hesabı eklemek üzere konsola `adduser hasan` komutunu veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/10.png)

Çıktıları inceleyecek olursak ev dizini otomatik olarak oluşturulmuş ve "**hasan**" isimli kullanıcı "**hasan**" grubuna dahil edilmiş.
Yeni eklemiş olduğumuz "**hasan**" isimli kullanıcı hesabını teyit etmek için; Sistemde kullanıcı hesapları ile ilgili bilgilerin tutulduğu <kbd>etc</kbd> dizini içerisindeki <kbd>passwd</kbd> dosyaya bakalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/11.png)

Dosyanın en alt satırına baktığımızda yeni eklemiş olduğumuz "**hasan**" isimli kullanıcı hesabının eklenmiş olduğunu görüyoruz.
Son olarak da <kbd>home</kbd> dizinine "**hasan**" kullanıcı hesabı için dosya oluşturulmuş mu buna bakalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/12.png)

Çıktıda görüldüğü gibi <kbd>home</kbd> dizininde oluşturmuş olduğum "**hasan**" isminde kullanıcı dosyası bulunuyor.


### useradd

Kullanıcı oluşturmak için bahsettiğimiz 2. komut olan `useradd` komutu kullanımı; `useradd -m kullanıcı_adı` şeklindedir. Burada komutumuz ile birlikte kullanmış olduğumuz `m` parametresi ile, oluşturduğumuz kullanıcıya ait ev dizininin otomatik oluşmasını sağladık. Birde son olarak kullanıcıya ait bir parola belirlemek üzere `passwd kullanıcı_adı` şeklinde komutumuzu vererek parolamızı oluşturuyoruz.

Parola oluşturma işleminde kullandığımız `passwd kullanıcı_adı` şeklindeki komut bütün hesaplar için şifre güncelleme işleminde de kullanılıyor. Ve bir bilgi daha; bu parola bilgileri <kbd>/etc</kbd> dizini altındaki <kbd>shadow</kbd> isimli dosyada şifreli şekilde tutuluyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/4.png)


Ben örnek olması açısından "**ali**" isimli bir kullanıcı hesabı oluşturmak üzere komutumu `useradd -m ali` şeklinde verdikten sonra "**ali**" isimli kullanıcı hesabı için şifre belirlemek üzere `passwd ali` komutunu kullandım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/13.png)

Görüldüğü gibi "**ali**" isimli kullanıcı hesabımız başarılı şekilde oluşturulmuş oldu. Şimdi <kbd>home</kbd> dizinini ve <kbd>passwd</kbd> dosyasına bakarak bu durumu teyit edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/14.png)

Çıktı sonuçlarında bir problem olmadığına göre konumuza, kullanıcı silme işlemi ile devam edebiliriz.

### Kullanıcı Silmek

Oluşturulan kullanıcı hesabını ev dizini ile birlikte silmek için `deluser --remove-home kullanıcı_adı` komutunu kullanmamız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/15.png)


Kullanıcı silme işlemlerini kontrol etmek adına <kbd>home</kbd> dizinini kontrol edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/16.png)

Çıktıda "**hasan**" ya da "**ali**" bulunmadığına göre kullanıcı silme işlemimiz başarılı şekilde tamamlanmış oldu.


### Gruplara Kullanıcı Ekleme-Çıkarma İşlemi

Yeni grup ve yeni kullanıcı hesabı nasıl oluşturulur bunları gördük.
Şimdi sıra geldi gruba yeni kullanıcı ekleme ve gruptan kullanıcı çıkarma işlemlerine. 

**Gruba Kullanıcı Eklemek**
Var olan bir gruba yeni bir kullanıcı eklemek için `gpasswd` komutunun `a` parametresini kullanarak, komutumuzu `gpasswd -a kullanıcı_adı ekleneceği_grup_adı` şeklinde kullanmamız yeterlidir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/17.png)

**Gruptan Kullanıcı Çıkarmak**

Eğer gruba dahil olan bir kullanıcıyı gruptan çıkarmak istersek de `gpasswd` komutunun `d` parametresini kullanarak, komutu `gpasswd -d kullanıcı_adı çıkarılacağı_grup_adı` şeklinde kullanmamız gerekmektedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/18.png)


### Aktif-Pasif Hesap Ayarlama

Varolan bir kullanıcı hesabını kilitlemek için `usermod -L kullanıcı_adı` komutunu kullanırız. Buradaki kilitlemekten kasıt kullanıcının sisteme giriş yapmasını engellemek için parolasının kilitlenmesidir. Parolayı devre dışı bırakmak için, sistem otomatik olarak şifreli parolanın önüne '**!**' işareti koyar ve kullanıcı hesabına giriş yapamaz. 

Bu durumu denemek için öncelikle kullanıcı hesaplarının parolalarının şifreli bir şekilde tutulduğu dosya olan <kbd>shadow</kbd> dosyasına bakalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/20.png)

"**burak**" isimli kullanıcının parolasını yukarıdaki şekildedir. Daha sonra karşılaştırma yaparken tekrar ele alacağız.

Konsol ekranına `usermod -L burak` yazarsam "**burak**" kullanıcısının hesabını kilitlemiş olurum. Bu kilitleme işlemini; kullanıcının hesaba girişte kullandığı parolanın önüne sistem tarafından otomatik olarak getirilen `!`(ünlem işareti) sayesinde gerçekleşmektedir.
Bu durumu teyit etmek için tekrar <kbd>shadow</kbd> dosyasına bakalım ve önceki hali ile sonraki halini kıyaslayarak görelim.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/19.png)
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/20.png)
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/21.png)

Gördüğünüz gibi hesabı kilitleme işleminde; hesaba girişte kullanılan parolanın önüne otomatik olarak gelen `!` (ünlem işareti) hesaba girmeyi engelleyerek hesabı kilitlemiş oluyor.

Pasif durumdaki hesabı aktif hale getirmek için ise `usermod -U kullanıcı_adı` komutu kullanılır. Aynı şekilde hesabın tekrar aktif hale getirilmesi de devre dışı bırakılmış olan kullanıcı parolasının  önündeki '**!**' işaretinin kaldırılmasıyla gerçekleşir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/22.png)

Eğer anlamadığınız bir nokta varsa bu durumu .gif ile anlattım, dikkatlice takip ederseniz gayet net anlaşılacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/23.gif)

### Kimlik Değişimi

Örneğin ben "**burak**" kullanıcısıyken, yapmak istediğim işlem ancak "**root**" kullanıcısının yetki alanındaysa ve ben "**root**" hesabının parolasını biliyorsam, "**root**" hesabının kimliğine bürünerek o işlemi gerçekleştirebilirim.

Geçiş işlemleri için `su` komutunu kullanıyoruz. Komutun kullanımı ile ilgili iki farklı durum var, bunlar:

- **su kullanıcı_adı :** diğer kullanıcı kimliğine geçiş yapar.
- **su - kullanıcı_adı :** diğer kullanıcı kimliğine geçiş yapar ve direk olarak geçiş yapılan kullanıcının kabuğunda çalışmaya başlar.

Bu durum en iyi örnekler ile açıklanabilir. İlk önce "**root**" kullanıcısıyken "**burak**" isimli kullanıcı hesabına giriş yapacağım daha sonra "**burak**" isimli kullanıcıdan "**root**" hesabına giriş işlemini gerçekleştireceğim. Adımları sırasıyla takip edin lütfen.

Hemen mevcut kullanıcı oturumunu daha önce öğrenmiş olduğumuz `whoami` komutu ile sorgulayalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/24.png)

"**root**" kullanıcısıyken "**burak**" hesabına geçiş yapmak için `su burak` komutunu kullanıyoruz. Ve `whoami` komutu ile geçiş durumunu kontrol ediyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/25.png)

Geçiş yaptığımız "**burak**" hesabından "**root**" hesabına dönmek için `exit` komutunu kullanmamız yeterli.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/26.png)

Şimdi `su - burak` komutu kullanarak geçiş yapacağımız kullanıcı kabuğunda çalışalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/27.png)

Görsellere dikkatlice bakacak olursanız; `su burak` komutunu kullanarak geçiş yaptığımızda `burak@taylan:/root$` olan konsol ismi `su - burak` komutunu kullandığımızda direk olarak geçiş yaptığımız hesabın kabuğunda çalışmaya başlayarak `burak@taylan:~$` şeklinde oldu. Yani `su - burak` komutu bize tıpkı o hesap oturumunu açmışız gibi tepki verdi.
Aşağıda çıktılara tekrar bakarsanız aradaki farkı daha net anlayabilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/28.png)

Fark etmiş olacaksınız ki başta geçiş yapabilmemiz için geçeceğimiz hesabın parolasını bilmemiz gerektiğini söylemiştim. Ancak "**burak**" hesabına yaptığımız geçişlerde parola sorulmadı. Bunun sebebi "**burak**" hesabının normal kullanıcı olmasıdır. Şimdi bu durumu birde "**burak**" hesabındayken "**root**" kullanıcısı için iki farklı kullanımda da deneyelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/29.png)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/9-%20Kullan%C4%B1c%C4%B1%20%C4%B0%C5%9Flemleri/30.png)

Gördüğünüz gibi yönetici hesabına erişmek için bizlerden parola bilgisi istendi. Bu durum da başta açıkladığımız yetkili hesaplara geçişlerde şifre sorma olayını açıklıyor.

----------



  
Süreçler(process)
=

Süreç(process) denilen kavram genel olarak; bir program çalıştığında programın belleğe yüklenme işlemine deniyor. Bizler de bu bölümde süreçler hakkında bilgi almak, işlem yapmak ve gerektiğinde müdahalede bulunmak gibi işlemleri yapabilmek adına ilgili komutları öğreneceğiz.

ps
-

Bu komutumuz çalışan süreçleri görüntülememizi sağlıyor.

Komut tek başına `ps` şeklinde kullanıldığında mevcut konsol üzerinden çalıştırılmış süreçleri verir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/1.png)

Genellikle sistemdeki tüm işlemleri görmek için `ps -aux` komut bütünü kullanıyor. 
Komut `aux` parametreleri ile `ps -aux` şeklinde kullanıldığında sistemde ve terminallerde çalışan tüm süreçleri ve süreç sahiplerini gösteriyor.(Çıktı çok uzun olacağından aradaki çıktıları atlayarak kısa çıktıları aşağıdaki şekilde verdim.)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/2.png)


Ancak gerektiği zaman doğru çıktıları almak adına `ps` komutunun parametrelerine bakalım.

**e :** Sistemde çalışan her süreç.(Çıktı çok uzun olacağından aradaki çıktıları atlayarak kısa çıktıları aşağıdaki şekilde verdim.)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/3.png)


**u :** Kullanıcı adına göre süreç bilgileri verir.

Parametrenin komut ile kullanımı `ps -u kullanıcı` şeklindedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/4.png)


**p :** Süreç numarasına(PID) göre süreç bilgisi verir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/5.png)


Eğer aradığımız özel bir süreç varsa daha önce görmüş olduğumuz `grep` komutu yardımı ile o süreç hakkında doğrudan bilgi alabiliriz.
Şöyle ki eğer ben "**bash**" süreci hakkında bilgi almak istiyorsam konsola `ps -aux | grep "bash"` yazmam yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/6.png)

Çıktıda görüldüğü gibi yalnızca ulaşmak istediğim "**bash**" süreci hakkında çıktı almış oldum.

pstree
-
Süreçleri hiyerarşik bir biçimde görüntülemek istersek `pstree` komutumuzu da kullanabiliriz. Bu komut Windows işletim sisteminde de `tree` olarak kullanılabiliyor. Neyden bahsettiğimizi anlamak için hemen konsola `pstree` komutumuzu verelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/7.png)

Komutumuz isminde(`pstree`) de yer aldığı gibi, süreçleri tıpkı bir ağaç gibi dallanıp budaklanarak hiyerarşik şekilde karşımıza getiriyor.


top
-
Bu komut da tıpkı `ps` komutunda olduğu gibi süreçler hakkında bilgi verir ancak bu işlemi `ps` komutundan farklı olarak 3 saniyede bir yenilenecek şekilde anlık değişimleri verecek şekilde yapar. Temel kullanımı `top` şeklindedir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/8.png)

Eğer varsayılan olarak kullanılan 3 saniyede bir güncelleme tekrarında bir değişiklik yapmak istersek, komutumuzu `d` parametresiyle birlikte yani `top -d saniye` şeklinde yazarak istediğimiz saniye aralığında süreç bilgilerinin çıktılarının güncellenmesini sağlayabiliriz. 
Ben örnek olması açısından bu yenileme hızını 1 saniye olarak ayarlamak için komutumu `top -d 1` şeklinde yazıyorum.
Ve ayrıca bu ekranı kapatmak istesek ise sadece <kbd>q</kbd> tuşuna basmamız yeterli.
Gif resminde de görüldüğü gibi `top -d 1` komutu ile her saniye yenilenen süreçler bilgi tablosu <kbd>q</kbd> tuşuna basmamızla sonlanmış oldu.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/9.gif)


pgrep
-

Çalışan süreçlerin belirli kriterlere göre sıralanmasını sağlayan komuttur. 

Süreç işlemlerinde çalışan süreç üzerinde değişiklik yapabilmemiz için ilk önce değişiklik yapacağımız süreci bulmamız gerekiyor. İşte `pgrep` komutu da bizlere lazım olan **çalışan süreç numaralarını(pid)** veriyor. Süreç numarası sistemde süreçlerin haberleşmesini sağlayan numaradır ve tüm süreçler için benzersiz olacak şekilde atanır. Buraya takılmadan devam edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/10.png)

Örnek vererek komutumuzun kullanımını görmüş olalım.

Örnek göstermek adına *armitage* aracını çalıştırıyorum. Çalışmakta olan *armitage* aracının süreci üzerinden örneğimizi yapalım.
Çalıştırmış olduğumuz *amitage* aracının süreç numaralarını(**procces id(pid)**) sorgulamak üzere `pgrep armitage` komutumuzu giriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/11.png)

Ve çıktı da görüldüğü gibi `pgrep armitage` komutu sayesinde *armitage* aracının **süreç numaralarını(pid)** görmüş olduk.

Şimdi de `pgrep` komutunun birkaç işlevsel parametresini görelim.

**l :** Süreçlerin numaraları ile beraber süreç isimlerini de görmek için kullanılır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/12.png)

**lu :** Belirtilen kullanıcıdaki, süreçlerin numaraları ile beraber süreç isimlerini de görmek için kullanılır. Burada `u` parametresi hedef kullanıcı belirtmemizi sağlar `l` parametresini zaten bir önceki kısımda açıklamıştık.  

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/13.png)

İleride bu bilgiler bize lazım olacak şimdi süreçleri sonlandırma komutları ile devam edelim.


kill-killall
-

Komutlarımız isimlerinden de anlaşılabileceği gibi süreçleri sonlandırma(öldürme) işleminde kullanılıyorlar. 
**Kullanım şekilleri;**

**`kill süreç_numarası(pid)`** : Süreçleri pid(süreç numarası) ile sonlandırmak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/14.png)

**`kill -9 süreç_numarası(pid)`** : Kapanmaya karşı direnen süreçleri pid(süreç numarası) ile sonlandırmak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/15.png)

**`killall süreç_ismi`** : Süreçleri isimleri ile sonlandırmak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/16.png)

**`killall -9 süreç_ismi`** : Kapanmaya karşı direnen süreçleri isimleri ile sonlandırmak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/17.png)


**`killall -i süreç_ismi`** : Süreçleri isimlerini kullanarak ve onay alarak sonlandırmak.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/18.png)


xkill
-

Bu komutumuz yanıt vermeyen bir programı grafiksel arayüzden kapatmamızı sağlayan ilginç bir komuttur.

Diyelim ki *leafpad* aracımızı açtık ve her ne sebeple olursa olsun yanıt vermeyi kesti, bu noktada eğer l*eafpad* aracını anında kapatmak istersek konsola `xkill` yazıyoruz ve fare imleci çarpı işaretine dönüşüyor. Bu çarpı işareti ile tıkladığımız araç otomatik olarak kapanıyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/19.gif)

Anlatım havada kalmış olabilir o yüzden `xkill` komutunun kullanımını kesinlikle sizler de hemen deneyin akılda kalması kolay bir komut zaten.


fg-bg-jobs
-

Son olarak gayet kullanışlı komutlar olan `fg` ve `bg` komutlarına değinerek süreçler konumuzu bitirelim. Konsoldan komut verildiğinde, verdiğimiz komut doğrultusunda gerçekleşen işlem süreci bitmeden, konsoldan tekrar başka bir komut vermemiz mümkün olmuyor. Bu gibi durumlarda eğer yeni bir komut girişi yapmak istersek, süreci arka plana alıp yeni komutumuzu ancak öyle çalıştırabiliriz. 
İşte bu komutlarımız da konsoldan çalıştırdığımız süreçleri arka plana ve arkaplandaki süreçleri önplana taşıma gibi işleve sahiptirler. Ayrıca `jobs` komutu da bu süreçlerin durumunu takip etmemizi sağlar. Bu durum örnekler ile daha iyi anlaşılacaktır.

Kullanımın rahat şekilde anlaşılması için adım adım gidelim.

Konsoldan *leafpad* uygulamasını açalım. Bunun için konsola `leafpad` yazmamız yeterli.

Yazdıktan sonra ekrana *leafpad* uygulaması geldi.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/20.png)

Programı çalıştırdığımız konsol şu anda *leafpad* uygulamasını çalıştırmakla meşgul. Yani bu demek oluyor ki eğer biz bu konsol üzerinden yeni bir komut girmek istersek bu mümkün olmayacak. İşte bu yüzden halihazırda çalışan *leafpad* uygulamasının çalışmasını durdurup arka plana atmalıyız ki yeni komutlar girdiğimizde konsol *leafpad* uygulaması ile meşgul olmasın.

Konsolda çalışan *leafpad* uygulamamızı arka plana atmak yani duraklatmak için <kbd>Ctrl + Z </kbd> tuş kombinasyonunu kullanıyoruz. Bu işlemin ardından konsol bize aşağıdaki gibi bir çıktı basarak *leafpad* uygulamasının durduğunu haber veriyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/21.png)

Konsolun bize *leafpad* programının durduğunu haber verdiğini söylemiştik. Ayırca bu gibi durumlarda sürecin durumunu sorgulama yapmak için `jobs` komutunu da kullanabiliyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/22.png)

Artık *leafpad* programımızın durdurulduğundan kesin eminiz. Hatta *leafpad* uygulamasına grafiksel arayüzden bir şeyler yazmaya çalıştığımızda uygulama durdurulduğu için hiç bir tepki vermiyor. Yani konsolumuz artık *leafpad* uygulamasının sürecini işlemiyor. Bunu teyit etmek için önceden konsola komut veremediğimizi ele alırsak denemek için konsola `ls` komutumuzu giriyoruz. 
Adımların her birini genel olarak .gif olarak verdiğim resimde görebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/23.gif)

`ls` komutunun çıktısını alabildik bu da demek oluyor ki konsol ekranımız önceden olduğu gibi *leafpad* uygulaması ile meşgul değil, böylelikle yeni komutlar alabiliyor. 


*Leafpad* programı durduruldu ancak biz hem *leafpad* programını kullanmak hem de aynı konsol ekranından yeni komutlar girebilmek istiyoruz. İşte bu noktada durdurulan *leafpad* süreçlerinin arka plana alınarak çalıştırılmasına devam edilmesi gerekiyor. Bu işlevi de `bg` komutu sağlıyor. Komut satırımıza `bg` komutumuzu girdiğimizde artık *leafpad* programı süreçleri **arka planda** çalışır duruma geçiyor ve biz hem konsol ekranından yeni komutlar girebiliyoruz hem de *leafpad* uygulamamızı kullanabiliyoruz. *Leafpad* uygulamasının çalışır olduğunu `jobs` komutu ile de aşağıdaki şekilde teyit edebiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/10-%20S%C3%BCre%C3%A7%20%C4%B0%C5%9Flemleri/24.gif)

Eğer arka plana attığımız program sürecini tekrar eskisi gibi konsol üzerinden(**ön planda**) çalışır hale getirmek istersek `fg` komutumuzu kullanabiliriz. Bu komutumuzu kullandığımızda konsol artık yeni komut almayacak ve tekrar sadece *leafpad* uygulaması ile meşgul olacak.

Yukarıda verilen .gif ile bu durumlar ele alınmıştır.


----------




Disk İşlemleri
=

Disk ile ilgili yapabileceğimiz bölümleme, formatlama, bölüm oluşturma, tarama, düzeltme ve benzeri diğer işlemleri gerçekleştirebileceğimiz çeşitli komutlar var. Bu bölümde bu komutları ve işlevsel yanlarını ele alacağız. 
Konumuza ilk olarak daha önce de kullanmış olduğumuz `fdisk` komutu ile başlayalım.


> **Komutlara geçmeden önce disk üzerinde yapacağımız işlemlerde son derece dikkatli olmamız gerektiğini aklınızdan çıkarmayın lütfen.**
> **Yapacağımız yanlışlar dosyalarımızın kalıcı olarak silinmesine ve daha farklı sorunlara yol açabilir.**

> **Eğer mümkünse özellikle bu konuda sanal makine üzerinden çalışmanız ve buradaki komutları denemeden önce sanal makine üzerinden sistem yedeğini(snapshot-clone) almanızı tavsiye ederim.**

**Ayrıca bir hatırlatma daha;** Disk üzerinde işlem yapabilmeniz için o diskin biz işlem yapıyorken sistem tarafından kullanılmıyor olması gerekiyor. Çünkü biz işlem yapmaya çalışıyorken disk sistem tarafından kullanıldığı için doğal olarak bizim disk üzerinde işlem yapmamız mümkün olmuyor. Bunun için eğer yapacağımız disk işlemleri Linux işletim sistemimizin kurulu olduğu disk alanı içinse, diskte kurulu olan sistemi kullanmadan işlemleri diskten bağımsız şekilde yapmamız gerekiyor. Bunu da kurulum aşamasında göstermiş olduğum Linux işletim sisteminin USB üzerinden live olarak çalıştırılması ile gerçekleştirebiliriz.

Yani bu kısımda öğreneceğimiz bilgileri Linux işletim sisteminin kurulu olduğu disk alanında uygulamak için, sistemi başlatmadan Linux Live seçeneği ile çalışın.

fdisk
-
İsminden de anlaşılacağı üzere komutumuz çeşitli disk işlemleri yapılmak üzere kullanılıyor.

Komutun aldığı temel parametreleri ele alarak konumuza devam edelim.

İlk olarak sistemimizde bulunan disk bölümlerini listeleyelim. Bunun için `l` parametresini kullanıyoruz.

**fdisk -l :** disk bölümlerini listeler.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/1.png)
Gördüğünüz gibi disk bölümleri listelenmiş oldu.

Komutumuzu `fdisk /dev/sda` şeklinde parametresiz olarak vermemiz durumunda konsol bizden komut bekler. Burada ki <kbd>/dev/sda</kbd> genel disk alanını temsil ediyor. Biz de disk üzerinden işlem yapacağımız için komutumuzu bu şekilde girdik.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/2.png)

Hazır komutumuzu parametresiz kullanmışken bizden komut bekleyen konsola girebileceğimiz parametreleri ele alalım.

**m :** yardım menüsünü açar. Burada `fdisk` komutu ile kullanabileceğimiz parametreler listelenir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/3.png)

Çıktıda görüldüğü üzere `fdisk` komutu disk konusunda çok fazla işleve sahip. Ancak biz sadece birkaç temel işlevini göreceğiz.

**p :** disk bölümleme tablosunu gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/4.png)

Çıktımız tıpkı komutu `fdisk -l` şeklinde kullandığımızdaki gibi oldu.

**l :** disk bölümlerini listeler.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/5.png)

**d :** bölüm silmek için kullanılır.

Ben `p` parametresi ile listelediğim disk bölüm tablosundan 3. bölümü yani <kbd>/dev/sda3</kbd> bölümünü silmek üzere `d` parametresini vererek **Partition number** kısmını 3 olarak belirttim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/6.png)

Çıktıda da görüldüğü gibi seçili alan silinmiş oldu. Artık diskte alan açıldığına göre yeni bir disk bölümü oluşturabiliriz.

**n :** yeni disk bölümü oluşturur.

`n` parametremiz ile diskte yeni bir alan oluşturabiliriz. `n` parametresini girince bize bölümleme tipinin **öncelikli**(**primary**) mi yoksa **genişletilmiş**(**extended**) mi olması gerektiğini soruyor. Aralarındaki farklar nedir diyecek olursanız:

**Primary Partition** denilen kısım; işletim sistemlerini kurduğumuz sabit disk bölümüdür. Bir sabit diskte maksimum 4 tane primary partition olabiliyor ve bunlardan bir tanesinin mutlaka aktif partition olması gerekiyor ki işletim sisteminiz boot işlemi sırasında çalıştırılabilsin.

**Extended Partition** ise aktif primary partition çıkarıldığında geriye kalan tüm sabit disk alanımızdır, bu alanın içine pasif primary partitionlar da dahildir.

Bu açıklama yeterli gelmemiş dolayısı ile anlamamış olabilirsiniz ancak kafa karışıklığına sebep olmamak için ayrıntıya girmiyorum. Merak eden arkadaşlar kısa bir araştırma sonucu istediklerinden de fazla bilgiye ulaşabilirler. Şimdi konumuza devam edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/7.png)

First sector alanını <kbd>enter</kbd> ile geçip, Last sector alanına  `+1G` olarak girdim ve 1GB boyutunda bir bölüm oluşturmuş olduk. Bunu teyit etmek için `p` parametresini kullandık.

Çıktıda <kbd>/dev/sda4</kbd> ayarladığımız gibi yani 1GB olarak gözüküyor.

**w :** değişiklikleri kaydedip çıkar.

Gerekli ayarlamaları ve işlemleri gerçekleştirdikten sonra `fdisk` aracını kaydederek kapatmak istersek `w` parametresini kullanmamız yeterli.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/8.png)

**q :** çıkış yapar

`q` parametresi direk olarak yapılan değişiklikleri kaydetmeden `fdisk` aracı konsolundan çıkış yapar.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/9.gif)


cfdisk
-
`fdisk` aracının görsel arayüze sahip versiyonudur. Açmak için `cfdisk` komutu yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/10.png)

Ayrıca benden bir tavsiye, `fdisk`'in kullanımı `cfdisk`'e oranla biraz zordur, dolayısıyla kolayca hata yapabilir ve istenmeyen durumlarla karşı karşıya kalabilirsiniz. Etkileşimli bir arayüzü olan `cfdisk`'in kullanımı daha kolay olduğundan hata yapma ihtimaliniz daha düşüktür.
Kullanımı oldukça kolay olduğundan detaylı anlatımda bulunmuyorum. Sadece disk işlemleri ile ilgili olduğu için bu kısımda değinmek istedim. Yani artık disk işlemlerinde böyle bir aracın varlığından haberdarsınız ve merak ettiğiniz takdirde çok kolay şekilde kendiniz keşfedebilirsiniz.(*Disk ile ilgili büyük sorunlara yol açmamak adına keşiflerinizi ana makine haricindeki sanal ortamlarda gerçekleştirmenizi şiddetle tavsiye ederim.*)

badblocks
-
`badblocks` kısaca, bir aygıtın bozuk bloklarını bulmak için tarama işlemi gerçekleştirme görevindedir.

Sırasıyla kullanım parametrelerine göz atalım:

**s :** taranan blokların numaralarını çıktı olarak vererek sürecin gelişimini gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/11.gif)

**v :** süreçle ilgili ayrıntılı bilgi verir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/12.gif)

**b :** bir blok boyutunu bayt cinsinden belirtebiliyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/13.png)

**c :** bir seferde sınanacak blok sayısı belirtilir ve bu sayı öntanımlı olarak tek seferde **16 blok** okuyacak şekildedir. Bu **sayının arttırılması bu işlemin verimini yani hatalı blokların bulunma ihtimalini artırır**, ancak arttırıldığı sayıya bağlı olarak bellek kullanımı da artacağı için bu sayının yüksek tutulması durumunda sistem "***tamponları ayırmada bellek yetersizliği***" hatasını verecek ve işlemi sonlandıracaktır. Tersi durumda yani bu **sayının çok düşük tutulması da hatalı blokların gizli kalmasına neden olarak yapılan işin verimini düşürecektir**. Yani dengeli kullanım çok önemlidir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/14.png)

**f :** dosya sisteminin zarar görüp sistemin çökebileceği durumlarda `badblocks` tarama yapmayı reddeder. Ancak siz çoğu durumda önerilmese de yinede tarama yapmaya zorlamak isterseniz `f` parametresini kullanabilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/15.png)

**p :** diskin kaç defa taranacağını belirtir öntanımlı olarak bu değer sıfırdır yani ekstra değer belirtilmezse disk yalnızca **1 kez** taranır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/16.png)


Bu parametreler dışında da başka parametreler mevcut. Konsola `man badblocks` yazarsanız diğer parametreler hakkında da kısaca bilgi sahibi olabilirsiniz.

Neticede `badblocks` komutu ve parametreleri yardımı ile hatalı blok tespiti yapabiliyoruz. Şimdi de bu hatalı blokları düzeltme kısmına gelelim.


fsck
-
Komutun işlevi diskteki hatalı blokları düzeltmeye çalışmaktır. Aslında bu işlem sistemimizi her açışımızda otomatik olarak gerçekleşir. Biz de şimdi örnek olması açısında USB belleği onarmayı deneyelim.

USB belleğimizin disk adını öğrenmek için sistemimizdeki diskleri `fdisk -l` komutu ile listeleyelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/17.png)

Çıktının alt kısımında yer alan <kbd>/dev/sdb1</kbd> USB belleğimizin diskteki adı. Şimdi belleğimizin adını öğrendiğimize göre onarma işlemini deneyebiliriz. Bunun için komut satırına `fsck -p /dev/sdb1` komutunu giriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/18.png)

Ve USB diskteki hatalı bloklar düzeltilerek işlemimiz başarılı bir şekilde gerçekleşmiş oldu.

df Komutu
-
`df` komutu bizlere disklerin; **dosya sistemini**, **boyutunu**, **doluluk oranını**, **bağlandığı yeri(mount)** gibi bilgileri kısa bir liste halinde verir. 

Eğer çıktılar daha okunaklı olsun yani bilgileri **MB**,**GB** cinsinden görelim istersek komutumuza ek olarak `h` parametresini de kullanırız. Komutumu `df -h` şeklinde yazıyorum. Ve gördüğünüz gibi çıktılar daha okunaklı yani **MB**,**GB** cinsinden bana sunulmuş oldu.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/19.png)

`df` komutu diskler hakkında genel bilgi edinmek için sık kullanılan bir komuttur. Ayrıca komutla birlikte kullanacağımız `m` parametresi çıktıları **MB** cinsinden verirken, `k` parametresi ile kullanımlarda çıktılar **KB** cinsinden olacaktır. Bunlar haricinde daha fazla detay almak için man sayfasına bakabilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/20.png)

gparted
-
Grafiksel basit bir arayüze sahip olmasından dolayı kullanımı en kolay disk aracı denilebilir. Grafiksel arayüze sahip olduğu için açıklamasını burada vermem resimler ile verimsiz ve yetersiz olur. Ancak hazırladığım eğitim kursunda anlatımı videolu şekilde gerçekleştirdim eğer isterseniz [kursumu satın alarak](https://www.udemy.com/kali-linux-ile-sifirdan-temel-linux-egitimi/?couponCode=GITHUB) hem bana destek olabilir, hem de bu kaynağın açıklamalı anlatımını edinmiş olursunuz. Kursumu satın almak istemezseniz de internetteki Türkçe-İngilizce kaynaklardan kullanımı hakkında bolca bilgiye ulaşabilirsiniz. Açmak için konsola `gparted` yazmanız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/21.png)

umount (Diski Ayırmak)
-

Diski ayırmak gibi bir başlık aklınızda diski bölümlemek gibi bir anlam ifade etmiş olabilir. Ancak buradaki ayırmadan kasıt diskin bağlantısının sistemden koparılması. Yani şöyle ki komutumuz daha önce muhtemelen kullanmış olduğunuz, diskin üzerine sağ tıklayarak "**Diski Çıkar**" işlemi ile aynı görevdedir. 

Aşağıdaki Linux ve Windows sistemlerinde grafiksel arayüz ile disk çıkarma işlemi kolay anımsamanız için görsel olarak verilmiştir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/21-1.png" width="875">

Hatta bu durumu hemen teyit etmek için USB diskimizi `umount` komutu ile sistemden ayıralım.

Bu işlem için öncelikle diskimiz hakkında genel bilgi sahibi olmak adına konsola `df -h` komutunu verelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/22.png)

USB diskimin adının <kbd>/dev/sdb1</kbd> ve diskin sisteme bağlandığı konumun da <kbd>/media/root/GPARTED-LIV</kbd> dizini olduğunu öğrenmiş oldum. Artık gerekli bilgileri öğrendiğimize göre diski sistemden çıkarmak için konsola `umount /dev/sdb1` şeklinde komut verebiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/23.png)

Diski çıkarma işlemi sonrasında bu işlemi teyit etmek için birde `df -h` komutunu kullandık. Sonuçta diskimiz sistemden bağını koparmış oldu.


mount (Diski Bağlamak)
-

Sistemden ayırdığımız diski tekrar bağlamak için `mount` komutunu kullanırız. Kullanım şekli `mount aygıt_adı bağlanacak_konum` şeklindedir.

Diski sisteme bağlamadan önce yapmamız gereken şey, diskin bağlanacağı konumu oluşturmaktır. Bunun için ben masaüstüne `mkdir USB` komutu ile <kbd>USB</kbd> adında bir klasör oluşturdum.

USB'nin bağlanabileceği hedef klasör oluştuğuna göre artık USB diskimizi buraya bağlayabiliriz. Bunun için konsola `mount /dev/sdb1 /Desktop/USB` komutunu veriyorum ve daha sonra diskin durumunu `df- h` komutu ile sorguluyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/11-Disk%20%C4%B0%C5%9Flemleri/24.png)

Görüldüğü gibi USB disk <kbd>Desktop/USB</kbd> konumuna bağlanmış bulunuyor.


----------



Çalışma Seviyeleri(Runlevels)
=
Sistem açıldığında hangi çalışma seviyesindeyse o seviyeye göre belirlenmiş olan hizmetler başlatılır. İşte bu olaya da **Runlevels(çalışma seviyeleri)** deniyor. Linux sisteminde **7 farklı seviye** bulunuyor.

Seviyeler ve ifade ettikleri aşağıdaki tabloda verilmiştir.

<table class="table table-bordered table-striped">  <thead> <tr> <th>Runlevel</th> <th>Çalışma Modu</th> <th>İşlevler</th> </tr></thead> <tbody> <tr> <th scope="row">0</th> <td>Halt</td><td>Kapatma işleminin başladığı seviye.</td></tr><tr> <th scope="row">1</th> <td>Tek Kullanılıcı</td><td>Ağ servisleri olmadan sistem bakımı için kullanılan seviye.</td></tr><tr> <th scope="row">2</th> <td>Ağ Desteği Olmadan Çok Kullanıcılı</td><td>Ağ desteği olmadan normal kullanım seviyesi.</td></tr><tr> <th scope="row">3</th> <td>Ağ Destekli Çok Kullanıcılı</td><td>Ağ destekli normal kullanım seviyesi.</td></tr><tr> <th scope="row">4</th> <td>Tanımsız</td><td>Kullanılmıyor ancak kullanıcı tarafından tanımlanabilir durumdaki seviye.</td></tr><tr> <th scope="row">5</th> <td>Grafiksel Kullanıcı Arayüzü</td><td>Grafiksel arayüzün çalıştığı seviye. Hemen her Linux dağıtımında bu seviye varsayılan olarak başlatılır.</td></tr><tr> <th scope="row">6</th> <td>Yeniden Başlatma(Reboot)</td><td>Sistemin yeniden başlatıldığı seviye.</td></tr></tbody> </table>  

O anda hangi seviyede çalıştığımızı öğrenmek istersek komut satırına `runlevel` komutunu vermemiz yeterli.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/1.png)

Çıktıda çalışma seviyem 5 olarak çıktı. Bunun sebebi de, daha önce de söylediğimiz gibi Linux, sistemi varsayılan olarak 5. seviyede başlatıyor. Eğer çalışma seviyesi değiştirmek istersek bunu `init çalışma_seviyesi` şeklinde yapabiliriz.

Bu şekilde sistemi yeniden başlatana kadar seçtiğimiz çalışma seviyesinde devam edebiliriz. Ancak dediğim gibi sistemi yeniden başlattığınızda sistem varsayılan olarak 5. seviyede başlayacaktır.

Ayrıca yeri gelmişken sistemi kapatmak istersek bunu hiç bir hizmetin çalışmadığını **0. runlevel** ile yani `init 0` komutunu vererek yapabiliriz.

Ayrıca kapatma işlemi için;

`shutdown -h now` beklemeden direk sistemi kapatacaktır.

`shutdown -h now+5` 5 dakika sonra sistemi kapatacaktır.

`halt` sisteminizi doğrudan kapatacaktır(halt kavramının 0.seviyede hiç bir servisin çalışmadığı durumu temsil ettiğini söylemiştik).

Eğer sistemi yeniden başlatmak istersek `init 6` veya `reboot` komutunu kullanabiliriz.

service
-
Şimdi ise sistemdeki servisleri açıp-kapatmayı ve bu servislerin durumunu sorgulamayı görelim. Komutumuzun işlevlerinin kullanım kalıpları aşağıdakiler gibidir.

Örnek kullanımları **ssh servisi** üzerinden gösterelim.

Servisimizin durumunu sorgulamak için komut satırımıza `service ssh status` yazıyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/2.png)


Komut satırı çıktı olarak bize ***ssh*** servisinin kapalı olduğunu bildirdi.

Şimdi **servisimizi başlatmak** üzere komut satırına `service ssh start` komutumuzu veriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/3.png)


**Servisimizi başlattıktan sonra durumu kontrol etmek** için tekrar `service ssh status` komutumuzu verdik ve görüldüğü gibi ***ssh*** servisimiz artık çalışır durumda.

Şimdi ise çalışan **servisimizi kapatmak** için komut satırına `service ssh stop` komutumuzu veriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/4.png)


Çıktıda da görüldüğü gibi ***ssh*** servisimiz kapatılmış oldu. Bunu da `service ssh status` komutu ile teyit etmiş olduk.

Komutumuzun diğer bir kullanım şeklide de **servisi yeniden başlatmak**. Bunun için `service ssh restart` komutumuzu kullanıyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/5.png)


Servisimizin durumunu `service ssh status` komutu ile kontrol ettik ve servisimizin yeniden başladığını görmüş olduk.

Son olarak ise sistemde bulunan tüm servislerin sıralanmasını sağlayan `service --status-all` komutunu görelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/6.gif)


Çıktıdaki servislerin sol tarafında yer alan <kbd>[ - ]</kbd> işareti servisin **çalışmadığını**, <kbd>[ + ]</kbd> işareti servisin **çalıştığını** ve <kbd>[ ? ]</kbd> işareti ise **servisin durumunun belirsiz olduğunu** ifade ediyor.

----------




Sembolik Link Ve Katı Link
=

Linux sistemlerinde; **sembolik** ve **katı** olmak üzere iki çeşit bağlantı(link) türü vardır. Bunları sırası ile açıklayacak olursak;

**Sembolik link** ile oluşturulmuş bağlantılar; dosyaların kısayolu görevini görür ve görevi yalnızca ilgili dosyaya yönlendirme yapmaktır.

**Katı link** ile oluşturulmuş bağlantılar ise dosyanın kopyasıdır. Orijinal dosya silinse bile katı link içeriği korumaya devam eder.

Bağlantı türlerinin kullanımlarına geçmeden önce ufak bir bilgi daha öğrenmeliyiz o da **inode** kavramı.

inode(düğüm)
-
**Inode(düğüm)**, dosyanın sahibi, oluşturulma tarihi, boyutu, tipi, erişim hakları, en son erişim tarihi ve en son değişikliklerin yapıldığı tarih gibi birçok meta verileri içeren yapıdır. Yani biz herhangi bir dosya oluşturduğumuzda disk üzerinde **1 inode** yer kaplamaktadır. Bununla ilgili olarak **inode** tablosunu görmek için konsola `df -i` komutumuzu verelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/1.png)

Hemen çıktıları ele alarak açıklamamıza devam edelim.

Örneğin <kbd>/dev/sda1</kbd> disk alanını ele alırsak toplam **6348800 adet inode numarası** alabilir **yani sınırı bu kadar**.

Kullanılan **391980 inode** numarasından toplam kullanılabilir olanı çıkarırsak **(6348800-391980=5956820)** geriye kullanılabilir **5956820 inode** numarası kalmış oluyor.

Bunun anlamı **her bir dosya 1 inode yer kapladığı için**<kbd>/dev/sda1</kbd> dosya sisteminde **5956820 adet daha dosya oluşturulabilecek alan mevcut**.

Her bir **inode(düğüm)** numarasının benzersiz olduğunu söylemiştik. Bu durumu teyit etmek için bulunduğumuz konumdaki dosyaların **inode** numaralarını görebilmek adına komut satırımıza `ls -li` komutumuzu veriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/2.png)

Çıktıda yer alan soldaki numaralar, ilgili dosyanın **inode** numarasını temsil ediyor.

Konumuza sembolik link oluşturma ile devam edelim.

Sembolik Link
-

Sembolik link oluşturmak için `ln -s` komutu kullanılır. Komutun kullanım örneği ile devam edelim.

Örnek bir dosya oluşturarak, sembolik link komutu yardımı ile dosyamıza kısayol oluşturalım.

<kbd>Music</kbd>  dosya konumundayken `touch` komutu yardımı ile "**klasik**" isimli bir dosya oluşturduk.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/3.png)

Oluşturduğumuz "**klasik**" isimli dosyanın kısayolunu, komutumuzu `ln -s dosya_adı kısayol_adı` şeklinde kullanarak oluşturduk.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/4.png)

Son olarak `ls -i` komutunu vererek orijinal dosyanın ve sembolik link yardımı ile oluşturulan kısayol dosyasının **inode** değerlerini karşılaştırdık. Çıktıda da görüldüğü üzere değerler farklı olarak karşımıza çıkmış oldu.

Ayrıca dosyaları `file` isimli bir komut yardımı ile inceleyerek de bilgi alabiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/5.png)

**Sembolik link** komutu ile oluşturduğumuz dosyanın **kısayol** olduğunu çıktıda görebiliyoruz. Ancak son olarak kısayol dosyamızın çalışma durumunu da test edelim.

Bunun için ilk başta dosyamızın içeriğini okuyalım daha sonra orijinal dosyamıza yazı ekleyelim ve kısayoldaki değişimleri gözlemleyelim.

 Orijinal dosyamın içerisine "***Dosya İçeriğinin İlk Sayfası***" şeklinde bir yazı ekledim. Biz orijinal dosyada yer alan bu yazıyı silip yeni bir ifade yazdıktan sonra kısayoldaki değişimi gözlemleyeceğiz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/6.png)

Eğer orijinal dosyayı silersek kısayol dosyası da açılmayacak ve bizlere hata mesajı bildirilecektir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/7.png)

Görüldüğü gibi kısayol dosyası orijinal kaynağı silindiği için okunamadı.

Ayrıca ilk `ls -li` çıktısında kısayol dosyasının sol tarafında yer alan <kbd>lrwxrwxrwx</kbd> ifadesindeki `l` harfi, dosyanın kısayol olduğunu ve `->` işareti ise hangi dosyanın kısayolu olduğunu işaret ediyor.


Katı Link
-
Sıra geldi katı link bağlantısının kullanımına. Katı link bağlantısı için `ln` komutu kullanılıyor. Örnek üzerinden ilerleyelim.

Örnek olması açısından <kbd>Music</kbd> klasörü altında "**caz**" adında bir dosya oluşturuyorum. Daha sonra oluşturduğum "**caz**" isimli klasörün katı linkini `ln caz caz_kati` komutu ile oluşturuyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/8.png)

Çıktıda dikkat edilmesi gereken nokta orijinal "**caz**" dosyası ile katı bağlantı "**caz**" dosyasının inode değerlerinin aynı olmasıdır. Bu da demek oluyor ki; **her iki dosya da her yönüyle birbirlerinin aynı** durumda.

Ayrıca orijinal ya da katı link ile oluşturulmuş dosyaların birinde yapacağımız değişiklik tıpkı sembolik linkte olduğu gibi diğer dosyada da geçerli olacaktır. Yani bu orijinal dosya ile katı link dosyası halihazırda bağlantılı dosyalar.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/9.png)

Hemen daha önce yaptığımız gibi `file` komutu ile orijinal dosya ve link ile oluşturulmuş dosyalarımızı karşılaştıralım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/10.png)

Komutun sonucunda her ikisininde ayrı ayrı dosyalar olduğunu görmüş olduk. Bu da demek oluyor ki biz eğer orijinal dosyayı silersek sembolik linkte olduğu gibi katı link ile oluşturulmuş dosya kullanılmaz hale gelmeyecektir. Bunu da hemen test edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/13-%20Sembolik%20Link%20Ve%20Kat%C4%B1%20Link/11.png)

Gördüğünüz gibi orijinal dosyayı silmeme rağmen katı link ile oluşturmuş olduğum dosya hala okunabilir durumda.


----------



Kurma-Kaldırma-Güncelleme İşlemleri
=

Linux işletim sistemini kullanacaksak mutlaka bilmemiz gerekenler arasında; sistemi güncelleme, program kurma ve kurulu programları kaldırma gibi işlemleri yerine getirmek var. Bu işlemleri nasıl yerine getirebileceğimizi bu konunun devamında öğreneceğiz. Anlatıma ilk olarak sistemi güncelleme işlemi ile başlayalım.

Sistemi Güncelleme
-
Linux sistemleri, kullanıcının ihtiyacı olduğunda, programa kolayca ulaşabilmesini sağlayacak program paketlerini içinde bulunduran kendi paket **depolarına(repository*)** sahiptirler. Farklı Linux dağıtımları için bu paketler de farklılık gösterebiliyor. Bu yüzden farklı Linux dağıtımlarının da kendi paketleri üzerinde işlem yapabilmek için farklı komutları vardır.

Dağıtımlar ve kullanılan paketlere göre komutları aşağıdaki tabloda verilmiştir.

<table class="table"> <thead> <tr> <th>Dağıtım</th> <th>Paketler</th> <th>Komutlar</th> </tr></thead> <tbody> <tr> <th scope="row">Debian</th> <td>.deb</td><td><code>apt</code> , <code>apt-cache</code> , <code>apt-get</code> , <code>dpkg</code></td></tr><tr> <th scope="row">Ubuntu</th> <td>.deb</td><td><code>apt</code> , <code>apt-cache</code> , <code>apt-get</code> , <code>dpkg</code></td></tr><tr> <th scope="row">CentOs</th> <td>.rpm</td><td><code>yum</code></td></tr><tr> <th scope="row">Fedora</th> <td>.rpm</td><td><code>dnf</code></td></tr><tr> <th scope="row">FreeBSD</th> <td>.txz</td><td><code>make</code> , <code>pkg</code></td></tr></tbody> </table>

Debian paketlerinin <kbd>.deb</kbd> uzantılı olduğunu yukarıdaki tabloda gördük. Kullandığımız dağıtım olan **Kali'de Debian tabanlı** olduğu için anlatıma bu doğrultuda devam edeceğiz.

Anlatıma güncelleme işleminde kullanılan komutlarımızı tanıyarak devam edelim.

    apt-get update

Komutu <kbd>sources.list</kbd> dosyasına eklemiş olduğumuz repolara bakarak paket listelerini kontrol edip paketlerin son sürümleri ve bağımlılıkları hakkında bilgi almak için bunları "**günceller**". Yani bu komutumuz; güncelleme işleminden önce, nelerin güncellenmesi gerektiğine bakarak sistemimizdeki sürümünden yüksek sürümleri bulunan yani güncellenmesi gereken doğru paketlerin güncellenmesini sağlıyor. Kısaca bu komutumuzun amacı sadece depolarda yer alan yenilikleri kontrol etmektir.

---
    apt-get upgrade

Komutu da `apt-get update` komutunun depolardan kontrol edip bildirmiş olduğu güncellenmesi gereken paketleri en son versiyonlarına günceller.

---
    apt-get dist-upgrade
    
Komutu ise `apt-get upgrade` komutundan farklı olarak sadece güncelleme yapmakla kalmaz, sistemimizdeki gereksiz paketleri de siler.

---
    apt-get clean

Komutuyla, kurmak üzere indirmiş olduğumuz paketlerin hepsini silebiliyoruz. Depodan indirmiş olduğumuz tüm paketler ve uygulamanın çalışması için gereken bağımlılıklar <kbd>.deb</kbd> uzantısı ile arşivlenerek <kbd>/var/cache/apt/archives</kbd> dizini içerisinde daha sonra tekrar kullanılma ihtimaline karşı tutuluyorlar. İşte bizler de `apt-get clean` komutu yardımıyla eğer internet bağlantımızda sorun yoksa yani bu paketleri tekrar indirirken sorun yaşamayacaksak bu paketleri silerek sistemimizde yer işgal etmelerini önlemiş oluyoruz.

---
    apt-get autoclean

Komutu da `apt-get clean` komutuyla benzer şekilde arşivlenmiş paketleri silme işlemini yapar. Fakat burada silinen arşivler bütün arşiv paketleri değil sadece eski sürüm olup artık kullanımda olmayan ve depolardan kaldırılmış paketlerdir.

---
    apt-get autoremove

Komutu ise silmiş olduğumuz uygulamadan geriye kalan ve artık ihtiyaç duyulmayan bağımlılıkları kaldırmamızı sağlıyor.

---
    -y

<kbd>-y</kbd> parametresinin göreviyse; çıkacak olan onay sorularına **evet(yes)** cevabını otomatik olarak vermektir. Bu sayede gerekli işlemler bizden onay beklemeden otomatik olarak zaman kaybedilmeden yapılmış olur.

Yani bir bütün olarak eğer sistemimizi güncellemek istersek ilk başta <kbd>/etc/apt/sources.list</kbd> konumunda yer alan <kbd>sources.list</kbd> dosyasına kullandığımız versiyona uygun depoları ekliyoruz.

Bunun için [buradaki kaynaktan](https://docs.kali.org/general-use/kali-linux-sources-list-repositories) kullandığınız versiyona uygun olan **repository kaynağını** kopyalayarak <kbd>sources.list</kbd> dosyasına eklemeniz gerekiyor. Ben Kali 2016.1 sonrası (bu anlatımda kullandığım versiyon 2017.3) versiyonunu kullandığım için aşağıdaki repoları(repository) <kbd>sources.list</kbd> dosyasına ekliyorum.

`deb http://http.kali.org/kali kali-rolling main contrib non-free`

Ancak dediğim gibi sizler kullandığınız versiyona uygun olan repoları seçmelisiniz.

***Kali 1.0 ve sonrası için:*** **`deb http://old.kali.org/kali moto main non-free contrib`**

***Kali 2.0 ve sonrası için:*** **`deb http://old.kali.org/kali sana main non-free contrib`**

***Kali 2016.1 ve sonrası için:*** **`deb http://http.kali.org/kali kali-rolling main contrib non-free`**


Repoları, `leafpad /etc/apt/sources.list` komutu ile açarak <kbd>sources.list</kbd> dosyasına ekledim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/1.png" width="875">

Gerekli depo kaynağını ekledikten sonra sıra geldi güncelleme işlemine, bunun için ilk olarak paket bilgilerini güncellemek üzere `apt-get update` , daha sonra güncel paket bilgileri alınan uygulamaları güncellemek için de `apt-get upgrade -y` komutunu verelim. Ayrıca bu komutları `apt-get update && apt-get upgrade -y ` şeklinde birleşik olarak da kullanabiliriz. 
Özellikle sistemimizi kurulum sonrası ilk defa güncellediğimizde bu güncelleme işlemi internetimizin de hızına bağlı olarak oldukça uzun sürebiliyor. Bunun dışında zaten üst kısımlarda hangi komutun hangi işlevde olduğunu öğrendiğimiz için tek tek kullanımlarına örnek vermiyorum sizler yerine göre ilgili komutları kullanabilirsiniz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/2.png" width="875">

Güncelleme işlemi boyunca, kullandığımız `-y` parametresi sayesinde herhangi bir soru sorulmadan bütün işlemler otomatik olarak gerçekleşecek ve güncelleme işlemi hızlı bir biçimde tamamlanacaktır.

Program Kurmak
-
Linux'ta program kurmak için birden fazla yöntem bulunuyor. Bunlardan bir tanesi kullandığımız dağıtıma uygun programı, **paket yönetim sistemi** ile kurmaktır. Diğer bir yol, programı **kaynak koddan derleyerek** kurmaktır. Diğer seçenek ise dağıtımın kullandığı **depolardan(repository)** otomatik kurulum yapmaktır.

Depodan Kurulum
-
Depoda bulunan programların kurulumlarını yaparken `apt-get install program_adı` komut bütünü kullanılıyor.
Unutmayın depodan(repository) kurulum yaparken sisteminizin güncel olması önemlidir. Şayet sisteminizi güncel tutmuyorsanız yani repolarınız güncel değilse **depodan program yükleme** çabalarınız hüsranla sonuçlanabilir.

Ancak programın yüklenmeme sebebi bir tek güncelleme işlemi ile ilgili değil. Şayet yüklemek istediğimiz program depolarda yer almıyorsa depodan yükleme işlemimiz de haliyle başarısız olacaktır.

Bu yüzden öncelikle kurmak istediğimiz program depolarda yer alıyor mu ona bakalım. Ben örnek olması açısından depolarda *filezilla* aracını araştırıyorum eğer depolarda varsa kurulum yapabiliriz. Depoları kontrol etmek üzere konsola `apt-cache search filezilla` şeklinde komutumu vererek *filezilla* aracını depolarda var mı diye kontrol ediyorum.

Ve gördüğünüz gibi *filezilla* aracı depolarda mevcutmuş. Sizler de bu şekilde depolarda yer alan programları `apt-cache search program_adı` şeklinde aratarak sorgulayabilirsiniz.

Örnek olması açısından *filezilla* isimli bir programın depodan kurulumunu yapmak için konsola `apt-get install filezilla` komutunu girdim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/3.gif" width="875">

Ve program kurulmuş oldu. Konsola `filezilla` yazarak da bu durumu teyit ettim.

Şayet kurduğunuz programı **kaldırmanız(silmeniz)** gerekirse konsola `apt-get remove program_adı` şeklinde girdiğinizde ilgili program otomatik olarak sistemden kaldırılacaktır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/4.gif" width="875">

Sadece programı kaldırmakla yetinmeyip bir de programın yapılandırma dosyalarını da sistemden kaldırmak isteyebilirsiniz. 
**Yapılandırma dosyaları ile birlikte programı kaldırmak için** komutu; 

`apt-get --purge remove program_adı` 

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/5.gif" width="875">

veya 

`apt-get purge program_adı` 

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/6.gif" width="875">

şeklinde kullanabilirsiniz.

Bu sayede program yapılandırma dosyaları ile birlikte tamamen silinmiş oluyor.

İşte sizler de bu şekilde depolarda yer alan programları oldukça kolay şekilde kurup kaldırabilirsiniz.


Paket Yönetim Sistemi İle Kurulum
-
Bu işlem için kullandığımız dağıtıma uygun derleyiciyi kullanmalıyız. Daha önce Kali'nin <kbd>.deb</kbd> uzantılı paketleme sistemi olduğunu öğrenmiştik. Bu yüzden biz <kbd>.deb</kbd> uzantılı kurulum paketlerini açmak için `dpkg` komutunu kullanıyoruz. Sanırım kodun kısaltmasının nereden geldiğini bilirsek daha kolay akılda kalabilir. Kodun kısaltması "**d**ebian **p**ac**k**a**g**e(**debian paketi**)" kısaltmasından gelmektedir. Ayrıca `dpkg` komutunu kullanmadan yardımcı bir paket yöneticisi programı(**synaptic**) kullanarak da kurulum işlemlerini yerine getirebiliriz. Konumuza ilk olarak `dpkg` komutu ve kullanımı ile devam edelim.


Örnek olması açısından ben "*master pdf*" adında bir programın kurulumunu ele aldım. Bunun için öncelikle programın <kbd>.deb</kbd> uzantılı dosyasını programın kendi sitesinden indirdim.

Şimdi programı kurmak için `dpkg -i paket_adı.deb` şeklinde komutumu giriyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/7.gif" width="875">

Ve programım kurulmuş oldu.

**Kurduğumuz programı kaldırmak** istersek komutumuzu `dpkg -r program_adı` şeklinde yani `-r` parametresini ekleyerek kullanıyoruz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/8.gif" width="875">

Program otomatik olarak kaldırılmış oldu. Ancak <kbd>/etc</kbd> dizini altındaki konfigürasyon dosyaları silinmedi. Eğer bu dosyaları da kaldırmak istersek `-P` parametresini kullanabiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/9.gif" width="875">

Bu sayede programa ait konfigürasyon dosyaları da tamamen kaldırılmış oldu.

Konfigürasyondan bahsetmişken aklınızda bulunsun eğer yüklediğimiz paketin konfigürasyon ayarlarını tekrar yapılandırmamız gerekirse `dpkg-reconfigure paket_adı` şeklinde komutumuzu kullanabiliriz.

Kurulu olan tüm paketler hakkında bilgi almak için `-l` parametresi kullanılabilir.(Çıktı uzun olduğundan kısa kesilmiştir.)

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/10.png" width="875">

Çıktıda yer alan paketlerin sol tarafındaki ifadelerin anlamı:

**ii :** paket normal olarak sisteme yüklendi.

**rc :** paket yüklendikten sonra silindi ancak konfigürasyon dosyaları halen mevcut.

**pn :** paket konfigürasyon dosyaları ile birlikte sistemden kaldırıldı.

Kurulu paketin durumunu öğrenmek için `-s` parametresini kullanabiliriz. Ben örnek olması açısında *leafpad* programı hakkında bilgi almak için komut satırına `dpkg -s leafpad` komutunu giriyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/11.png" width="875">

Kurulu paketin içeriğini öğrenmek istersek `-L` parametresini kullanırız.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/12.png" width="875">

Eğer indirmiş olduğumuz <kbd>.deb</kbd> uzantılı dosyanın içeriğini henüz kurmadan görmek istersek `-c` parametresini kullanabiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/13.png" width="875">

Sistemde kurulmuş ve kaldırılmış tüm paketleri görmek istersek `dpkg --get-selections` komutunu kullanabiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/14.png" width="875">

Bu paket listesini daha sonra kullanmak üzere bir dosya içerisine yedeklemek istersek komutumuzu `dpkg --get-selections >dosya_adı.txt` şeklinde kullanmamız yeterli olacaktır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/15.png" width="875">

Yedeklediğimiz bu program listeleri sayesinde başka bir sisteme aynı paketleri tek seferde yüklememiz mümkün. Bunun için komutlar aşağıdaki şekildedir.


    dpkg --set-selections > yedek_dosya_adı.txt
    
Daha sonra tanıma işlemi bittikten sonra eksik olanların yüklenmesi için konsola aşağıdaki komutu giriyoruz.

    apt-get deselect-upgrade
    
Ayrıca bu işlemin uzun süreceğini unutmayın. Yani çok fazla spesifik programlarınız yoksa, bu yöntemi kullanmanızı tavsiye etmem. Bunun yerine kendiniz de pekâla elle kurulumları gerçekleştirebilirsiniz.

Şimdi sıra geldi ikinci yol olan yardımcı paket yöneticisi programı aracılığı ile program kurma-kaldırma-güncelleme işlemlerini yapmaya. Bunun için ilk olarak paket yönetim programı olan **synaptic** programını kurmamız gerek. Komut satırına `apt-get install synaptic` yazarak yardımcı programı depolardan indiriyoruz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/16.gif" width="875">

Evet "<kbd>y</kbd>" diyerek kuruluma onay veriyoruz ve programımız kurulmuş oluyor. Programı açmak için komut satırına `synaptic` komutunu vermemiz yeterli. Bu program(synaptic) sayesinde depolarda yer alan programları çok kolay şekilde kurup kaldırabilir ve programlar için diğer gerekli işlemleri yerine getirebiliriz. Programın kullanımı oldukça kolay olduğundan keşfini sizlere bırakarak anlatıma devam ediyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/14-%20G%C3%BCncelleme%20Kurma%20Kald%C4%B1rma%20%C4%B0%C5%9Flemleri/17.png" width="875">

Kaynak Koddan Derleyerek Kurulum
-

Linux'a uyumlu sürümü bulunan açık kaynak kodlu yazılımların kaynak kod paketleri bu yazılımların internet sitelerinde, genellikle <kbd>tar.gz </kbd> biçiminde arşivlenmiş olarak indirilmeye sunulurlar. Bu arşivlenmiş olan kaynak kod paketi daha önce gördüğümüz <kbd>.deb</kbd> uzantılı paketlerin aksine ham şekilde yani derlenmemiş (kuruluma hazır olmayan) şekilde gelirler. Bu derleme işlemini bizim yaparak kurulumu gerçekleştirmemiz gerekir. Ancak her kurulum aynı olmayabilir. <kbd>tar.gz</kbd> veya <kbd>tar.bz2</kbd> benzeri uzantılı paketlerde genellikle programın nasıl kurulacağına dair "***install***", "***readme***", "***configure***" ve benzeri isimlerde yönergeler bulunur. Bu dosyalar okunarak yükleme işlemi gerçekleştirilmelidir. Çünkü her programın gereksinimleri birbirinden farklıdır, yani kurulum için geliştirici ekibin verdiği kurulum yönergesini takip etmek en doğru tercih olacaktır. Ancak biz şimdi burada genel kurulum hakkında bilgi edinelim. Kaynak koddan derleyerek kurulum işleme genel olarak aşağıdaki şekildedir:

İndirdiğimiz program arşivini klasöre çıkartırız.

Ve arşiv içeriğini çıkarmış olduğumuz klasörden komut satırımızı çalıştırırız.
İlgili konumda olduğumuzdan emin olduktan sonra;

Programı derlemeden önce gerekli kütüphaneler ve bağımlılıkları kontrol etmek için aşağıdaki komutu kullanırız.

`./configure`

Bu işlemin sonunda eksik paketler ve bağımlılıklar çıkarsa bunları tek tek kurmamız gerekecek.

Eğer bu aşamada;

`bash: ./configure: Böyle bir dosya ya da dizin yok`

gibi bir hata çıktısı alıyorsanız:

O program <kbd>configure</kbd> dosyası içermiyordur yani o program için `./configure` aşamasına gerek yoktur. Böyle bir durumla karşılaştığınızda bu aşamayı atlayarak direk `make` aşamasına geçin. Ancak <kbd>configure</kbd> dosyası varsa mutlaka `./configure` diyerek programın ihtiyacı olan bağımlılıkları kontrol edip eksik olanları yükleyin. Aksi halde program kurulum işlemi başarısız olacaktır. Şimdi devam edelim.

Gerekli kütüphaneler ve bağımlılıkları kontrol edip varsa eksik olanların kurulumlarını yaptıktan sonra, `make` aşaması için derleme yapacak paketleri `apt-get install build-essential` komutu ile kuruyoruz.

Daha sonra `make` diyerek programımızı derlemiş oluyoruz.

Son olarak `make install` komutu ile programı sistemimize kuruyoruz.

Silme işlemleri için de programa göre farklı durumlar ve dosyalar oluşabildiği için; kurulum yaparken olduğu gibi silme işlemi için de aynı şekilde programla birlikte gelen yönergeleri okumanız en doğru silme yönetimini size gösterecektir.

----------



Joker Karakterler(wildcards)
=

Bu kavram sizlere kesinlikle yabancı değil, daha önceki kısımlarda defaatle kullanmış ve **joker(wildcard) karakterlerinin** az da olsa işlevini görmüştük. Bu kısımda da bu konu hakkında bilgi sahibi olacağız.

joker (wildcard)
-
Linux kullanımında işimizi konsoldan yürüteceğimiz zaman bir komutun tek seferde birden fazla nesneyi etkilemesini yani kapsamasını isteyebiliriz. Örneğin bir dizindeki dosyaların tamamını silmek istiyoruz diyelim; bu iş için aşağıdaki gibi tüm dosya adlarını komut satırına yazmak çok zahmetli ve gereksiz olacaktır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/1.png" width="875">


Yukarıdaki kullanımın yerine joker karakter(wildcard) desteğini kullanmak bizlere çok fazla avantaj sağlar. Ayrıca gördüğünüzde şaşırmayın, kimi kaynaklarda **joker karakterler(wildcards)** "**globbing**" olarak da adlandırılmaktadır.

Bahsi geçen joker karakterler ve kullanım alanları aşağıdaki gibidir;

**`*`** : Anlamı `*` olan yere herhangi bir şey gelebileceğidir.

Örneğin "**dosya**" ismiyle başlayan tüm belgeleri tek seferde silmek için komutu `rm  dosya*` şeklinde kullanabilirim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/2.png" width="875">

Ayrıca bu yıldız (asterix)<kbd>*</kbd> işaretinin farklı kullanım şekilleri de var. Farklı kullanımların açıklaması ile devam edelim.

Herhangi bir komutu, örneğin listeleme işlevinde olan `ls` komutunu `ls dosya*` şeklinde kullanırsak komut yıldız (asterix) `*` işaretinden önce yazmış olduğumuz "**dosya**" ismi ile başlayan tüm her şeyi kapsar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/3.png" width="875">

Aynı şekilde yıldız (asterix) <kbd>*</kbd> işaretinden sonra bir ifade belirtirsek de komut o ifade ile bitenleri kapsayacak şekilde çalışır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/4.png" width="875">

**? :** Herhangi bir tek karakterle eşleşir.

Karakterin kullanımına örnek olarak. Diyelim ki dizin içerisinde hem "**index_page**" hem de "**index-page**" şeklinde birbirine yakın yazılışlara sahip iki dosyamız var. Yani başlangıç ve bitiş isimleri aynı ancak aradaki işaretler farklı. İşte böyle bir durumda hem <kbd> _ </kbd> işaretini hem de <kbd> - </kbd> işaretini karşılayacak olan soru işareti <kbd>?</kbd> joker karakterini kullanabiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/5.png" width="875">

Çıktılarda da görüldüğü gibi <kbd>?</kbd> karakteri dosya isimlerinin arasında yer alan <kbd>-</kbd> ve <kbd>_</kbd> işaretini de karşılayarak `ls -l index?page` şeklindeki komut ile çıktıya her ikisini de basmış oldu.

**[] :** <kbd>?</kbd> karakterine benzer olmakla birlikte daha çok hedefe odaklı çalışır.

<kbd>[]</kbd> karakterinin kullanımı, iki köşeli parantez arasına ulaşmak istediğiniz hedefteki ayırt edici karakterli yazmak üzerinedir.

Örnek olması açısında "**dosya**" isimli belgelerden sadece sonunda **2,3,4** olanları kapsayacak bir komut olması için konsola `ls -l [234]` komutunu verdim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/6.png" width="875">

Bir örnek daha verelim.

**[Dd]osya[Aa]dı** şeklinde bir belirtme; **DosyaAdı, Dosyaadı, dosyaAdı, dosyaadı** şeklindeki bütün isimleri kapsayacaktır. Bu sayede ilgili dosyalar için tüm küçük büyük harf kombinasyonu kolaylıkla sağlanmış olur.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/7.png" width="875">

Ayrıca kullanım şekillerine çok fazla örnek verilebilir ancak burada birkaç örnek daha vererek keşfi size bırakıyorum.

**Not** : Burada belirtilen **x y z** temsili değerleri ifade etmektedir !

**[0-9] :** 0'dan 9'a kadar olan rakamları kapsar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/8.png" width="875">

**[x,y,z] :** belirtilen değerlerle eşleşenleri basar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/9.png" width="875">

**[x-z] :** x ile z değerleri arasındaki karakterlerle eşleşir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/10.png" width="875">

**[xyz] :** belirtilen değerlerle eşleşenleri basar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/11.png" width="875">

**[!xyz] :** Belirtilen karakterlerin dışındakileri diğer tüm karakterleri basar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/12.png" width="875">

**[!x-z] :** Verilen x ile z değeri arasındaki değerler haricindeki karakterler basar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/13.png" width="875">

Temel ve en çok başvurulan joker karakterler bu şekildedir. Sizler de joker karakterler sayesinde konsoldan çalışırken oldukça pratik şekilde işlemlerinizi yerine getirebilirsiniz. Konuyu daha iyi anlamak adına mutlaka ama mutlaka kendiniz de örnek denemeler yapın.

----------



Ağ(Network) Komutları
=
Ağ ve komutları başlı başına bir kitap konusu o yüzden burada sadece sıkça veya gerekli durumda işimize yarayacak belli başlı komutları ele alacağız. Eğer detaylı bilgi edinmek istiyorsanız internet aracılığı ile network(ağ) hakkında bir çok güncel kaynağa ulaşabilirsiniz. Lafı daha fazla uzatmadan anlatıma `ifconfig` komutu ile başlayalım.

ifconfig
-

Sistemde bulunan ağ bağlantı ve IP yapılandırması ayarlarını inceleyip değiştirmemize olanak tanır.

Ağ bağlantı kartlarını listelemek için `ifconfig` komutu kullanılır.(Bu çıktıda ip, mac ve broadcats adresi gibi bilgiler yer alıyor.)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/1.png)

Çıktıda yer alan **eth0** **ethernet** kartımızı ifade ediyor. Başka **ethernet** kartları olması durumunda diğer kartlar da **eth1** ..**eth2** şeklinde belirtilir.

**lo** bilgisayarın kendisini yani **localhost**'u ifade ediyor.

**wlan0** ise **kablosuz ağ kartını** ifade eder. Yine başka kartlar olması durumunda **wlan1** ..**wlan2** şeklide belirtilir.

Ayrıca bütün kart bilgilerini listelemek yerine teker teker de listelemek mümkün. Bunun için komutumuzu `ifconfig kart_adı` şeklinde girmemiz yeterli.

Örneğin yalnızca **kablosuz kart bilgilerini listelemek** istersem `ifconfig wlan0` komutunu vermem yeterli olacaktır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/2.png" width="875" >

Yukarıdaki çıktıda yer alan ayarlarda değişiklik yapmamız mümkün. Örneğin kablosuz ağ bağlantısının **yerel ip adresini** değiştirmek istersek komutumuzu `ifconfig wlan0 yeni_ip_adresi` şeklinde kullanabiliriz.

Ben kablosuz bağlantımın **192.168.1.9** olan adresi **192.168.1.10** olarak değiştirmek istiyorum bunun için `ifconfig wlan0 192.168.1.10` komutunu vermem yeterli.

Gelin bu durumu çıktıları karşılaştırarak test edelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/3.png" width="875" >

Ve son duruma bakarak ip adresimizin istediğimiz şekilde değiştiğini görmüş olduk. Aynı şekilde **ağ maskesini(netmask)** ve **broadcast** adreslerini dilediğimiz gibi düzenleyebiliriz. Hatta bu işlemi hepsi birlikte olacak şekilde bile yapabiliriz. Bunun için komutumuzu `ifconfig wlan0 yeni_ip_adresi netmask yeni_ağ_maskesi broadcast yeni_broadcast_adresi`  şeklinde kullanmamız yeterli olacaktır.

Bu durumu bir örnek ile açıklayalım.
Değişiklik yapmak üzere konsola `ifconfig wlan0 192.168.1.15 netmask 255.255.255.255 broadcast 192.168.2.255` komutunu girerek bir önceki durumu ile karşılaştıralım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/4.png" width="875" >

Çıktıları incelediğimizde istediğimiz doğrultuda değişikliklerin yapılmış olduğunu gördük.

`ifconfig` komutu kullanımı ile ilgili son olarak mevcut kartları açma ve kapatma işlemi görelim.

Örnek olarak kablosuz kartı ele alalım:

**Kablosuz kartı kapatmak** istersek; `ifconfig wlan0 down` komutunu kullanırız.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/5.png" width="875" >

**Kapalı kablosuz kartı açmak istersek** ise; `ifconfig wlan0 up` komutunu kullanırız.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/6.png" width="875" >

Ayrıca diğer kartlar için de açama-kapama işleminde aynı şekilde komutumuzu `ifconfig kart_adı down` ve `ifconfig kart_adı up` şeklinde kullanabiliriz.


ping
-
Hedef ile bizim sistemimiz arasında iletişimin sağlanıp sağlanmadığını kontrol ederek hedef sunucunun çalışıp çalışmadığını veya aktarım hızının ne kadar olduğunu öğrenmemizi sağlar. Bir tür kontrol mekanizması da diyebiliriz. Komutun kullanımı `ping hedef_adresi` şeklindedir.

Örneğin biz `www.google.com` adresi ile aramızdaki iletişimin hızını sorgulayalım. Bunun için komut satırına `ping www.google.com` yazıyorum. Ancak burada önemli bir nokta var, o da bu işlemin biz <kbd>Ctrl + C</kbd> tuş kombinasyonu ile durdurana kadar devam edecek olmasıdır. 

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/7.gif" width="875" >

Eğer direk olarak sınırlama getirmek isterseniz komutu `ping -c 4 www.google.com` şeklinde kullanabilirsiniz. Bu sayede `www.google.com` adresine yalnızca **4 sorgu paketi** gönderilir. Elbette buradaki sayı sizin belirlemeniz ile değişebilir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/8.png" width="875" >


route
-
Sistemimizdeki IP yönlendirme tablosunun içeriğini görmemizi sağlar. IP yönlendirme tablosunun içeriğini görmek için konsola `route -n` komutunu yazalım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/9.png" width="875" >

Burada yer alan gateway(ağ geçidi adresi) yerel ağdan internet ağına geçerken kullanılan yönlendirme adresidir.


traceroute
-
Bir önceki kısımda `route` komutu ile gördüğümüz yerel ağda geçerli olan yönlendirme takibini, belirli bir hedef adrese yapabilmemize olanak sağlayan komut `traceroute` komutudur. Yani komutumuz belirli bir hedefe gönderilen paketin hangi host'lardan geçtiğini bizlere gösterir. Bir nevi izlediği yolu yani adımlarını takip etmemizi sağlar. Komutun kullanımı `traceroute hedef_adresi` şeklindedir. Bu sefer hedef adres olarak `www.offensive-security.com` adresini örnek verelim. Bunun için konsola `traceroute www.offensive-security.com` yazıyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/10.png" width="875" >

Çıktı ile birlikte adresin yönlendirme rotasını görmüş olduk.

whois
-
**Whois** kavramını bilmeyenler için **whois**, genel olarak domain bilgilerini içeren bir mekanizmadır. Yani **whois**; domain ne zaman kurulmuş, ne zamana kadar geçerli, kimin üzerine kayıtlı ve bunun gibi diğer tüm bilgileri tutar. Bizler de bu bilgileri konsol ekranından `whois hedef_adresi` şeklinde kullandığımız komut bütünü ile sorgulayabiliriz.

Whois sorgusuna örnek olarak yine `www.offensive-security.com` adresini hedef alalım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/11.png" width="875" >


host
-
Hedef adres hakkında bilgi almanızı sağlar.`host` komutu ile IP adresinden alan adı(domain name) ve alan adından(domain name) IP adresine ulaşabiliriz. Bu komutun alabildiği farklı parametreleri bulunmaktadır. Ancak ben bu kısımda bunlara değinmeden yalnızca temel kullanımına örnek veriyorum. Kullanımı `host adres_adı` şeklindedir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/12.png" width="875" >

Bu komut hakkında ufak bir araştırma ile çok fazla Türkçe de dahil olmak üzere kaynağa ulaşabilirsiniz.


dig
-

**dig(domain information groper/domain bilgi çukuru)** DNS kayıtlarına bakmak için kullanımı oldukça kolay olduğundan yaygın olarak kullanılmaktadır.

Bu komutumuz da parametreler alabilmektedir, ancak ben burada sizlere yine temel işlevinden bahsederek geriye kalan parametrelerini araştırmayı sizlere bırakıyorum. DNS sorgulaması yapmak istediğimiz adresi konsoldan `dig hedef_adresi` şeklinde belirtiyoruz.

Örnek olması açısından ben tekrar `www.offensive-security.com` adresini hedef alıyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/13.png" width="875" >


arp
-
**IP-MAC Adresi** eşleştirmelerinin tutulduğu tablolardır. Kullanımı `arp` şeklindedir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/14.png" width="875" >


tcpdump
-
Sistemimizin yaptığı bağlantıları ve sistemimize yapılan bağlantıları anlık olarak görüntülememize olanak sağlar. Kullanımı `tcpdump` şeklindedir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/15.png" width="875" >

Ayrıca adres çözümlemesi yapmadan direk olarak bağlantıları takip etmek istersek `tcpdump -n` komutunu kullanabiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/16.png" width="875" >


DNS Ayarları
-
Komut satırından DNS ayarlarımızı değiştirmek istersek DNS bilgilerinin tutulduğu <kbd>/etc/resolv.conf/</kbd> dosyasında değişiklik yapmamız gerekiyor. İşlemeleri adım adım açıklayarak ilerleyelim.

İlk olarak DNS ayarlarının bulunduğu dosya içeriğine göz atıyorum. Çünkü daha sonra değişiklik yaptığımızda ilk hali ile kıyaslamamız gerekecek. Bu işlemi `cat` komutu yardımı ile gerçekleştireceğiz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/17.png" width="875" >


Şimdi eski DNS(nameserver) yerine bizim eklemek istediğimiz adresleri `echo` komutu yardımı ile girelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/18.png" width="875" >

Komutları kısaca açıklayacak olursak ilk olarak `echo "nameserver 8.8.8.8" > resolv.conf` komut bütününde `>` karakteri ile birlikte dosya içerisinde var olan ifadeleri sildik ve dosya içerisine `nameserver 8.8.8.8` ifadesini ekledik.

Daha sonra `echo "nameserver 8.8.4.4" >> resolv.conf` komut bütünü ile de daha önce eklediğimiz ifadeye ek olarak diğer bir DNS adresi olan **8.8.4.4** adresini `>>` karakteri yardımı ile ekledik.

Son olarak da eklediğimiz yeni DNS adreslerinin belgeye eklenme durumunu `cat /etc/resolv.conf` komutu ile teyit ettik.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/19.png" width="875" >

hosts Dosyası
-
Yerel bir alan adı sunucusu işlevindedir. Sistemde alan adı çözümlemesi yapılırken bu dosyaya bakılır. Dosyanın konumu <kbd>/etc/hosts</kbd> şeklindedir. Hemen dosya içeriğine `cat` komutu yardımı ile bir göz atalım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/20.png" width="875" >

Böylelikle en sık kullanılan ağ komutları hakkında genel bilgi sahibi olmuş olduk. Artık daha fazla bilgi için network konusunda detaylı araştırma yapmak sizlere kalıyor.


----------



  
Vim Editörü
=

Vim Editörü Terminalden kullanılabilen ve komut alabilen yaygın kullanıma sahip bir editördür. Vim editörü kullanımının yaygın olmasının nedeni çok hafif bir editör olmasından kaynaklanmaktadır. Uzaktan erişim durumunda bağlantı(ağ/network) üzerinde fazlaca yük bindirmeden kolayca efektif şekilde gerekli işlemleri yerine getirir. Günümüzde daha yetenekli editörler de vardır ancak biraz eski alışkanlıklardan biraz da hafif şekilde çalışmasından dolayı hala tercih edilen bir editördür. Genelde öğrenmek isteyen kişilere ilk öğrenim aşamasında fazlaca karışık gelse de sonraları kullandıkça benimsenir. Bu durumu ileride sizler de gözlemleyeceksiniz. Ayrıca önceki adı `vi` olan editörün günümüzde gelişmiş versiyonu, `vim` ismini almış ve görsel arayüze sahip versiyonu ise `gvim` adıyla isimlendirilmiştir.

vi-vim-gvim
-

Editörü konsoldan açmak istersek `vim` komutu yeterli olacaktır. Ayrıca görsel arayüze sahip versiyonu olan `gvim` editörünü açmak için de `gvim` şeklinde komut kullanımı yeterli olacaktır. Ancak yeri gelmişken belirteyim görsel arayüz genel olarak pek tercih edilmiyor. Kullanıcılar terminal üzerinden tek pencerede hızlı işlem yapmak adına ve biraz da geçmişten gelen alışkanlıklarından dolayı editörü terminal üzerinden kullanmayı tercih ediyorlar.

Konsola `vim` komutunu vererek editörümüzü açalım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/1.png" width="875" >

Editörle çalışmak için <kbd>i</kbd> tuşuna basıyoruz ve editör sol alt köşede <kbd>--INSERT--</kbd> yazısı ile içerik almaya hazır olduğunu belirtiyor.

Örnek olması açısından editöre aşağıdaki şekilde birkaç dize yazı ekledim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/2.png" width="875" >


Gerekli ifadeleri girdikten sonra komut vermek istersek <kbd>ESC</kbd> tuşuna bastıktan sonra komutları `:` karakteri başta olacak şekilde vermemiz gerekiyor. Kullanabileceğimiz bazı komutlar aşağıdaki şekildedir.

**:q =** Eğer yapılan değişiklikler kayıt edilmişse Vim editörünü kapatır. Aksi durumda uyarı verecektir.

**:q! =** Editörü kaydetmeden direk olarak kapatır.

**:w =** Yapılan değişiklikleri kaydeder.

**:wq =** Yapılan değişiklikleri kaydeder ve çıkar. Daha önce isim verilmemiş bir dosya ise **:wq dosya_ismi** şeklinde kullanılmalıdır.

Dosya oluşturmak üzere vi editöründe <kbd>ESC</kbd> tuşuna basıp `:wq vi_dosyasi` komutunu girelim.

Dosyamız oluştu, hemen bu durumu teyit etmek için `ls -l` komutunu kullanalım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/3.gif" width="875" >

<kbd>vi_dosyasi </kbd> isimli dosyanın oluşturulduğunu teyit ettikten sonra tekrar `vim` editörü ile açmak için `vim vi_dosyasi` şeklinde komutumuzu kullanıyoruz.

Dosya oluşturup tekrar açtığımıza göre artık daha farklı komutlara ve diğer konsol komutlarını vim editörü aracılığı ile nasıl kullanacağımıza bakalım.

**:x =** Editörü kapatır ve değişiklikleri kaydeder.

**:r dosya_adı** = Hedef dosyayı okur ve içeriği mevcut dosyaya aktarır. Daha iyi anlaşılması için örneği inceleyin.

Adım adım açıklayalım:

İlk önce vim editörü ile <kbd>x_dosyasi</kbd> ve <kbd>y_dosyasi</kbd> isminde iki dosya oluşturuyorum ve bu dosyaların içerisine:

<kbd>x_dosyasi</kbd> için ; "*Bu dosya x dosyasının içeriğini temsil ediyor*".

<kbd>y_dosyasi</kbd> için ; "*Bu dosya ise y dosyasının içeriğini temsil etmekte..*"

İfadelerini ekliyorum daha sonra dosya içeriklerini `cat` komutu yardımı ile inceleyerek teyit ediyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/4.png" width="875" >

Şimdi Vim editörü ile oluşturulan bu dosyalardan birini diğerine eklemeye geldi sıra; Ben <kbd>x_dosyasi</kbd>'na <kbd>y_dosyasi</kbd> içeriğini eklemek üzere, <kbd>x_dosyasi</kbd>'nı `vim x_dosyasi` komutu ile açıyorum.

Vim editörü içerisinde açılan <kbd>x_dosyası</kbd>'ndayken `:r y_dosyasi` komutunu veriyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/5.gif" width="875" >

Böylelikle <kbd>y_dosyasi</kbd> içerisinde yer alan ifadeler <kbd>x_dosyasi</kbd> içerisine eklenmiş oldu.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/6.png" width="875" >

Bu durumu hemen `cat` komutu yardımı ile teyit ettik zaten.


Konsol komutlarını vim editörü içerisinde kullanabileceğimizden bahsetmiştik. Bunu yapabilmemiz için komuttan önce **iki nokta üst üste ve ünlem** karakterlerini kullanmalıyız yani örnek kullanımı `:!komut` şeklindedir. Hemen bu durumu `ls` komutu için deneyelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/7.gif" width="875" >

Vim editörü içerisinde `:!ls` komutunu verdiğimizde sistem otomatik olarak vim editöründen çıkarak konsolda bize `ls` komutunun çıktılarını bastı. Eğer bu durumda tekrar vim editörüne dönmek istersek <kbd>enter</kbd> tuşuna basmamız yeterli olacaktır.

Şimdi biz neden konsol varken bu editörden komut vermekle uğraşalım diye düşünmüş olabilirsiniz sizlere bu durumu örnek ile açıklayalım.

Örnek olması açısından `ls` komutunun çıktılarını bir dosyaya kaydetmek isteyelim.

Bunun için vim editörü ile bir dosya oluşturuyorum.

`vim dizinler` komutu ile vim editörü içerisinde boş bir dosya açıyorum ve bu dosya içerisindeyken `:r !ls` komutunu veriyorum.

Komut sonucunda oluşturmuş olduğum <kbd>dizinler</kbd> dosyası içeriği aşağıdaki şekilde oluyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/8.gif" width="875" >

Kullandığımız komut bütününü açıklayacak olursak(aslında bunları zaten biliyorsunuz ama ben yine de açıklama gereksinimi duydum) `:r` komutu içerik aktarma işlevinde `!ls` komutu ise dizin altındaki dosya-klasörleri listelemekle görevli.

Dosyayı `:x` komutu ile kaydettik ve ayrıca teyit etmek için `cat dizinler` komutunu kullandık.


Vim editörü ile birden fazla dosya ile işlem yapmamız mümkün bunun için komutu `vim dosya1 dosya2 dosya3` şeklinde kullanabiliriz.

Komutumuzu verdikten sonra <kbd>dosya1</kbd> vim editöründe açılacaktır. Gerekli değişiklikleri yaptıktan sonra eğer diğer dosyalara geçiş yapmak istersek çalıştığımız dosyayı kaydettikten sonra `:next` komutu ile <kbd>dosya2</kbd>'ye geçiş sağlanacaktır. Aynı şekilde <kbd>dosya3</kbd> dosyasına da geçmek mümkün olacaktır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/9.gif" width="875" >

Eğer geçiş yaptığımız dosyadan bir öncekine dönmek istersek de  `:previous` komutunu kullanmamız yeterli olacaktır.

Ayrıca kaç dosyanın vim editöründe çalıştığını pencere ekranının üst bilgi kısmından öğrenebiliriz. Örneğin ben 3 dosya ile çalıştığım için üst kısımda bulunduğum dosya bilgisi ile beraber **dosya1 (~) (1 of 3) - VIM** şeklinde bir üst bilgi yazısı bulunuyor.

Dosyada bulunan ifadeleri değiştirmek istersek `:satır_sayısı s/eski_ifade/yeni_ifade/g` şeklinde bir komut bütünümüz bulunuyor. Bu gösterim ile anlamamış olabilirsiniz o yüzden hemen birkaç örnek ile konuyu açıklayalım.

<kbd>linux</kbd> isimli bir dosya oluşturuyorum ve içerisine aşağıdaki ifadeleri ekliyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/10.gif" width="875" >

İlk önce burada yer alan 1. ve 2. satırdaki **linux** ifadelerini **LİNUX** ile değiştirmek üzere vim editörü içerisinde iken `:1,2s/linux/LİNUX/g` komutunu veriyorum. Daha sonra `:x` komutu ile dosyayı kaydederek vim editörünü kapatıyorum.
Ve dosya içeriğini `cat` komutu ile sorguladık.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/11.gif" width="875" >

Görüldüğü gibi 1. ve 2. satırdaki **linux** ifadeleri **LİNUX** şeklinde değişmiş oldu.

Eğer tüm satırlardaki **linux** ifadelerini **LİNUX** olarak değiştirmek istersek komutu başına yüzde işaretini ekleyerek `:%s/linux/LİNUX/g` şeklinde kullanmamız yeterli olacaktır.

Komutumuzu verdikten sonraki çıktı ile bu durumu teyit ettik.

## .

Vim editörü çok güçlü bir araç ve gerçekten çok farklı kullanım şekilleri-özellikleri var. Yani bu editörün kendisini anlatmak zaten başlı başına koca bir kaynak oluşturmakla eşdeğer. Hatta bu durumu vim editörünün kendi [wiki kaynağından](http://vim.wikia.com/wiki/Vim_Tips_Wiki) da teyit edebilirsiniz.

Biz yine de birkaç kısa kullanım şeklini daha görelim.

Eğer direk olarak konsol üzerinden veri girişi yapmak istersek konsola `vim -` komutunu girmeliyiz.

Böylelikle konsol bize **Vim: Reading from stdin...** çıktısını verecek ve bizden veri girişi bekleyecektir.

Ben örnek olması açısından konsoldan vim editörüne birkaç ifade ekliyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/12.gif" width="875" >

İfade giriş işlemim tamamlandığında <kbd>Ctrl + D</kbd> tuş kombinasyonunu uygulayarak, vim editörü ekranına yazdığım ifadeler ile birlikte dönmüş oluyorum.

Ayrıca vim editörü ile oluşturduğumuz dosyaları şifreleyerek koruma imkanımız da var. Bu durumu bir örnek üzerinden anlatalım.

`vim vim_metni` komutu ile bir belge açıyorum ve içerisini bazı ifadeler ekleyerek belgeyi kaydediyorum.

Dosyamızın özelliklerini `file vim_metni` komutu ile öğrenip, dosyanın içeriğini ise `cat vim_metni` komutu ile okuyalım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/13.gif" width="875" >

İstediğimiz bilgilere kolayca ulaşabildik. Bu durumu birde dosyamızı şifreleyerek test edelim. Bunun için konsola `vim -x vim_metni` şeklinde komut veriyoruz ve konsol bizden şifre belirlememizi istiyor.

Dosyamıza birkaç veri daha ekledikten sonra dosyamızı `:w` komutu ile kaydettik. Ve sonuç olarak vim editörü alt bilgi çubuğunda bize dosyanın şifrelendiğini aşağıdaki çıktıda yer alan **"vim_metni" [crypted]** şekilde ifade ederek belirtti.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/14.png" width="875" >

Daha sonra dosyamızı tekrar `file` ve `cat` komutları ile sınadık.
Çıktı da görüldüğü üzere dosyamız artık şifrelenmiş durumda. Yani dosyayı tekrar okunaklı şekilde açabilmemiz için şifresini girmemiz gerekecek. Bu durumu hemen <kbd>vim_metni</kbd> isimli dosyamızı açmaya çalışarak test edelim. Bunun için konsola `vim vim_metni` komutunu giriyoruz. Ve konsol bize aşağıdaki çıktıyı veriyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/15.png" width="875" >

Konsol çıktısında da görüldüğü gibi bizden bir parola isteniyor. Eğer parolayı doğru girersek dosyamız açılacaktır.

**Ancak sizlere önemli bir uyarı;**

Bu dosya şifreleme olayı iyi hoş ancak çok çok önemli bir nokta var o da belirlediğiniz şifre. Eğer uzun, karmaşık yazarsanız bu şifreyi unutma riskiniz yüksek olacağından daha sonra bulmanız veya bir şekilde kırmanız da bir o kadar zor olacaktır. Ayrıca kısa ve kolay şifreler de kolayca kırılabileceğinden pek güvenli bir yol sayılmaz. Yani anlayacağınız ne unutacağınız kadar uzun veya karmaşık ne de kolay kırılabilecek kadar kısa olsun. Şimdiden sizleri uyarıyorum sonradan bu durum yüzünden aman başınız ağrımasın.

Vim editörü konusunu yavaş yavaş bitirmek üzere devam edecek olursak.

Örneğin vim editöründe kod yazıyordunuz ve kod 101. satırda hata verdi. Bu durumda 101. satırı aramak yerine editöre `:101` şeklinde yazarak hatalı kodun bulunduğu satıra ulaşabiliyoruz. Yani direk olarak atlamak istediğimiz satırı vim editörüne `:satır_numarası` şeklinde girerek bu işlemi gerçekleştirebiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/16.gif" width="875" >

Eğer yazdığınız ifadeler içerisinden herhangi bir ifadeyi bulmak isterseniz `/aranacak_ifade` şeklinde yazarsanız ilgili ifadeye ulaşmış olursunuz. Ve aynı ifadenin başka yerlerde geçmesi durumunda bir sonraki ifadeye gitmek için `:/` komutu, bir önceki aynı ifadeye dönmek için ise `:?` komutunu kullanıyoruz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/17-%20Vim%20Edit%C3%B6r%C3%BC/17.gif" width="875" >

Eğer aradığımız ifadede büyük küçük harf duyarlılığı olmadan hedefteki aranan ifadenin aynısı olan bütün ifadeleri bulmak istersek `:set ic` komutunu verdikten sonra ifademizi `/ARNACAK_İFADE` şeklinde ya da `/aranacak_ifade` hatta `ArAnAcAk_İfAdE` şeklinde dahi belirtebiliriz. Sonuçta aynı karakter bütününü içeren ifadeler karşımıza gelecektir.


Vim editörü anlatımının burada sonuna geliyoruz. Ancak dediğim gibi zaten vim editörü başlı başına bir dokümantasyon konusu ki bu bilgileri burada izah etsek bile fazlaca gereksiz ayrıntıya değinmiş, sizlere boş yere yormuş olurduk. Vim editörü ancak baştan beri bahsi geçen kendi kendine öğrenme, deneme, alıştırma yapma ve özümseme ile öğrenilecek bir konudur. Kullanmanız şart değil kimisi çok sever kullanır kimisi ayrıntılarından nefret eder bırakır.

Neticede internette yer alan tüm zengin kaynaklar ile birlikte man kılavuz sayfasından, vim editörü içerisinde iken `:help` komutundan ve daha önce verdiğim vim editörü [wiki kaynağından](http://vim.wikia.com/wiki/Vim_Tips_Wiki) diğer tüm bilgilere ulaşabilirsiniz.(Benim önerim ilk başlarda ayrıntıları kolay kavramak adına vim editörü için geniş çaplı Türkçe kaynak sağlayan [bu adresi](http://www.omeroner.com/vim-nedir-ve-nasil-kullanilir/) kullanmanızdır.) 

Ve unutmayın bu araç ancak ve ancak, öğrenmek isteyen kişinin kendi kendine kurcalaması ve bolca alıştırmalar yapmasıyla öğrenilebilir.

----------


Konsol Üzerinden Dosya İndirmek
=

İndirmek istediğimiz dosyanın direk indirme linkini biliyorsak bu dosyamızı herhangi bir ekstra program kullanmadan veya tarayıcıya ihtiyaç duymadan konsol üzerinden `wget` komutu yardımı ile indirmemiz mümkün. Gelin anlatıma `wget` komutunu ve kullanım şekillerini açıklayarak devam edelim.

wget
-

Eğer daha önce linux ile ilgili yönergeler okuduysanız veya videolar izlediyseniz `wget` komutuna mutlaka denk gelmişsinizdir. Kullanımı oldukça kolaydır ve parametreler alarak çalışır. Birkaç kullanım şekline değinecek olursak:

**Tekil Dosya İndirmek :**

`wget` komutunun en temel kullanım şeklidir. Hedef link aracılığı ile tekil dosya indirme işlevinde kullanılır.

Kullanımı: `wget indirilecek_dosya_linki`

Örnek olarak aircrack-ng aracını indirdim. Ve indirme işlemini `ls -l`
komutu ile teyit ettim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/18-%20Konsol%20%C3%9Czerinden%20Dosya%20%C4%B0ndirmek/1.gif)

Ve.. bulunduğum dizin içerisine istediğim dosya(aircrack-ng) indirilmiş oldu. 

**Toplu Dosya İndirmek :**

Bir metin belgesinin içerisine kayıt ettiğimiz linklerde yer alan dosyaları tek seferde `wget` komutu ile beraber `-i` parametresi kullanarak indirmemiz mümkün. Hemen örnek üzerinden bu durumu görelim.

Örneğin ben T.C Resmi Gazetesi pdflerinden 5 tanesini aynı anda indirmek istiyorum diyelim. Bunun için bu pdflerin indirme linklerini bir metin belgesine kaydetmem gerekiyor. Ben bu işlemi `leafpad resmi_gazeteler` komutu ile "resmi_gazeteler" isimli bir dosya oluşturarak ve içerisine gerekli linkleri ekleyerek gerçekleştiriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/18-%20Konsol%20%C3%9Czerinden%20Dosya%20%C4%B0ndirmek/2.png)

Artık sıra geldi toplu indirmelere. Bu işlem için konsola `wget -i resmi_gazeteler` komutumu giriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/18-%20Konsol%20%C3%9Czerinden%20Dosya%20%C4%B0ndirmek/3.gif)

PDF belgelerimiz toplu şekilde indirilmiş oldu şimdi de bu dosyaların varlığını teyit etmek için konsola `ls -l` komutunu verdim.


**Özel Konum Belirterek İndirmek :**
Eğer dosyanın konsolun üzerinde çalıştığı konuma değil de bizim istediğimiz özel bir konuma indirilmesini istersek bunun için `wget -P kaydedilecek_dizin_yolu dosya_linki` şeklinde komut vermemiz gerekiyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/18-%20Konsol%20%C3%9Czerinden%20Dosya%20%C4%B0ndirmek/4.gif)

Dosyamızı istediğimiz konuma indirmek için indireceğimiz dizin adresinin tam yolunu belirtmemiz gerekiyordu bu nedenle buradaki `~/Desktop` kullanımı sizi şaşırtmasın <kbd>~</kbd> işareti ana dizini temsil ediyor.

Ve sonuç olarak indirdiğimiz konuma gelerek dosyanın varlığını teyit etmiş olduk.

**Özel Konum Ve İsim Belirterek İndirmek :**
İndirilecek dosyanın adını değiştirerek istediğimiz konuma indirmesini istersek `wget` komutumuzu `-O` parametresi ile birlikte `wget -O kaydedilecek_dizin_yolu/dosyanın_yeni_adı indirme_linki` şeklinde kullanıyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/18-%20Konsol%20%C3%9Czerinden%20Dosya%20%C4%B0ndirmek/5.gif)

Dosyamızı "aircrack" ismi ile indirip <kbd>/Desktop</kbd> dizinine kaydettik bu durumu da `ls -l` komutu ile teyit ettik.

Ayrıca indirilen dosyanın konumunu değiştirmeden yalnızca ismini değiştirmek isterseniz de herhangi bir konum belirtmeden yalnızca yeni dosya ismini belirtmeniz yeterli olacaktır. Örneğin `wget yeni_isim dosya_link` şeklinde bir kullanım indirilen dosyanın isminde değişiklik yapılarak indirilmesini sağlar.

**Kesintiye Uğrayan İndirmenin Devam Ettirilmesi :**
Bir şekilde dosyanın indirme süreci kesilirse yani dosya tam olarak indirilemez ise dosyanın geri kalanının daha sonra indirilmesi mümkündür. Kesintiye uğrayan dosyayı tekrar indirmek için `wget` komutuna ek olarak `-c` parametresi eklenmelidir. Böylelikle `wget -c indirme_linki` şeklinde bir kullanım sonucunda eğer dosya tam olarak indirilemezse sonradan dosyayı tekrar baştan indirmek yerine kaldığı yerden devam ettirme şansımız olur. Bu durum özellikle de büyük dosyalar için gerçekten çok büyük kolaylık sağlıyor.
Adım adım yaptığım işlemleri inceleyelim.

İlk olarak içi tamamen boş olan <kbd>/Documents</kbd> dizinine `cd /Documents` komutu ile ulaştım. Bu dizinin içerisinin boş olduğunu `ls -l` komutu ile teyit ettim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/18-%20Konsol%20%C3%9Czerinden%20Dosya%20%C4%B0ndirmek/6.png)

<kbd>/Documents</kbd> dizini içerisinde iken `wget` komutu ile dosyamı indirmeye başladım. Daha sonra indirme işlemini <kbd>Ctrl + Z</kbd> tuş kombinasyonu ile durdurdum. Durdurmamdaki amaç daha sonra devam ettirebilme özelliğini test etmekti.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/18-%20Konsol%20%C3%9Czerinden%20Dosya%20%C4%B0ndirmek/7.gif)

İndirme işlemi durdurduktan sonra <kbd>/Documents</kbd> dizinini kontrol etmek için `ls -l` komutunu kullandım. Ve dosyamın **638681** bayt kadarının inmiş olduğunu gördüm.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/18-%20Konsol%20%C3%9Czerinden%20Dosya%20%C4%B0ndirmek/8.png)

Durdurmuş olduğum indirme işlemine devam etmek üzere `wget` komutu ile beraber `-c` parametresini de kullanarak dosya indirme işlemini kaldığı yerden devam ettirdim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/18-%20Konsol%20%C3%9Czerinden%20Dosya%20%C4%B0ndirmek/9.gif)

Ve son olarak dosyamın başarılı ve tam bir şekilde indirildiğini `ls -l` komutu ile teyit ettim.

Çıktıları karşılaştıracak olursanız başta **638681** bayt'ta kalan indirme sonuç itibari ile **4379880** bayt yani dosyanın tamamı şeklinde indirilmiş oldu. Yani dosya indirme işlemi yarıda dahi kesilse en baştan indirmemize gerek kalmadan `wget` komutunun `-c` parametresi sayesinde kaldığı yerden indirme işlemini devam ettirebiliyoruz.

**İndirme Hızını Belirlemek :**
Eğer istersek indireceğimiz dosyanın ne kadarlık internet hızında ineceğini belirleyebiliriz. Bu limitleme işlemi için komutumuzu `wget --limit-rate=indirme_limitiK indirme_linki` şeklinde kullanıyoruz.

Örnek olması açısından ben dosyayı indirirken 300KB/s hızında indirme limiti koyuyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/18-%20Konsol%20%C3%9Czerinden%20Dosya%20%C4%B0ndirmek/10.gif)

Zaten üst kısımda yer alan çıktının sonucunda da bu hız sınırlamasının sonucu olarak ortalama indirme hızı (300 KB/s) olarak gözüküyor.

**Arka Planda İndirmek :**
İndirmek istediğimiz dosyanın arka planda inmesini `-b` parametresi ile sağlarız. İndirme işleminin sonuçlarını öğrenmek istersek indirilen dosya ile aynı konumda yer alan <kbd>wget-log</kbd> dosyasını incelememiz yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/18-%20Konsol%20%C3%9Czerinden%20Dosya%20%C4%B0ndirmek/11.gif)

Dosyamızı arka planda indiriyoruz ve konsol çıktıda bize indirme detaylarının <kbd>wget-log</kbd> dosyasında olduğunu bildiriyor. Bu indirme kayıtlarına göz atmak istersek `cat wget-log` komutu ile kayıt dosyasına bakabiliriz.


----------


Zamanlanmış Görevler
=

Sistemde yapılması gereken rutin işlerin zamanı geldiğinde otomatik olarak yapılması işine zamanlanmış görevler deniyor. Bu rutin işlere örnek söylemek gerekirse; benim her pazartesi sistemi yedeklemem gerekiyor diyelim, bunu her pazartesi elle yapmak yerine bu işi zamanlanmış görevlere ekleyerek otomatiğe bağlayabilirim. İşte zamanlanmış görevler bu ve bunun gibi durumlarda sıkça kullanılıyor.

cron
-
Rutin tekrarları sağlayan zamanlanmış görevleri yerine getirmemizi sağlayan servisimizin adı `cron`'dur.

Anlatıma `cron` servisinin çalışma durumunu kontrol ederek başlayalım. Bunun için konsola `service cron status` komutunu verelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/1.png" width="875">


Cron servisimizin çalıştığını teyit etmiş olduk. Cron servisinin yapılandırma dosyası <kbd>/etc/crontab</kbd> konumunda yer alıyor göz atmak için konsola `cat /etc/crontab` komutunu verebiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/2.png" width="875">

Şimdi de düzenleme yapmak adına konsola `crontab -e` komutunu verelim. Burada yer alan `-e` parametresi "**edit**" kelimesini yani "**düzenleme**" ifadesini temsil ediyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/3.png" width="875">

Konsol bize düzenleme yaparken hangi aracı kullanmak istediğimizi soruyor. Ben **nano** aracını seçiyorum yani konsola **2** rakamını giriyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/4.png" width="875">

Çıktıda bize bir örnek kullanım gösterilmiş biz bu kullanımı ele alarak servisin kullanım şeklini görelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/5.png" width="875">

Yukarıdaki şema yeterince açıklayıcı olmadıysa endişelenmenize gerek yok. Örnekler üzerinden yapacağımız anlatım ile **cron** servisimizin kullanımını rahat şekilde anlamış olacağınıza inanıyorum.

Zamanlanmış görevleri yerine getiren servis **cron** ve bu servisin yerine getirdiği işlere de **cron job** deniliyor. Bu tanımın çok da önemi yok ancak bunu böyle bilseniz daha iyi olur. Bizler de kendi zamanlanmış görevlerimizi (cron jobs) atamak istersek `crontab -e` komutu ile açtığımız dosyanın son satırına yapmak istediğimiz işi ve tam tarih düzenini girmemiz gerekiyor. Bu görevleri nasıl oluşturacağımızı konunun devamında örnekler üzerinden öğreniyor olacağız.

# *Örnekler*

Kullanımın anlaşılması amacıyla örnekleri olabildiğince basit tuttum.

Sizlere vereceğim örnekler ne kadar gereksiz gelse de örneği konuyu anlamak adına kullandığımızı unutmayın ve asıl anlatılmak istenen noktaya odaklanın lütfen.

O anın tarihi detaylarını bir dosyaya kaydetmek istiyorum diyelim.
Tarihi detayları <kbd>zamanlar.txt</kbd> isimli klasöre kaydetmek için 
``` * * * * * echo `date` >> ~/Desktop/zamanlar.txt ``` komutunu kullanacağım.

Bütün yıl boyunca her dakikanın çıktılarını kaydetmesini istersem aşağıdaki şekilde bir kullanım işimizi görür.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/6.png" width="875">
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/7.png" width="875">

Yıldız işareti (<kbd>*</kbd>) olan kısımlar hepsini kapsamaktadır yani haftanın bütün günleri, ayın bütün günleri ve saatin bütün dakikaları.. gibi.

Komutun düzenli hali ```* * * * * echo `date` >> ~/Desktop/zamanlar.txt ``` şeklindedir.

Bir süre geçtikten sonra masaüstünde(Desktop dizininde) yer alan <kbd>zamanlar.txt</kbd> dosyasını `cat zamanlar.txt` komutu ile kontrol ediyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/8.png" width="875">

Görev istediğimiz şekilde yani her dakikada yazılacak şekilde otomatik olarak gerçekleşmiş oldu.

Şimdi spesifik bir zaman belirleyerek görevin yerine getirilme durumunu ele alalım.

Her gün 10:25 da otomatik olarak <kbd>test.txt</kbd> isimli belgeye "test yazısı" yazdırmak için kalıbı **crontab** dosyasına aşağıdaki şekilde yazmalıyız.(Ayrıca başta hangi ifadenin neyin karşılığı olduğunu belirttiğim için tekrar tekrar üzerlerine yazmıyorum. Eğer şaşırırsanız yukarıdaki kısımları tekrar gözden geçirebilirsiniz.)

```bash
25 10 * * * echo "test yazısı" >> ~/Desktop/test.txt
```
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/9.png" width="875">


`ls -l` komutu ile de dosyamızın üretildiği tarihi sorguladık ve çıktıdan da anladığımız üzere verdiğimiz görev zamanında yerine getirilmiş.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/10.png" width="875">


### Eğer belirli bir saat-tarih arasında belirli kere tekrar eden görev atamak istersek kullanım şekilleri aşağıdaki örneklerdeki gibi olacaktır.

Belirli aralıklar ile olacaksa aralıkları **-**(**kısa çizgi**) işareti ile ayırarak belirtmemiz gerekiyor. Yani örneğin;

Her saatin ilk 5 ile 20 dakikası arasında komutum çalışsın istersem:

```bash
5-20 * * * * komut
```

Her gün saat 3 ile 5 arasında her dakika komutum çalışsın istersem:

```bash
* 3-5 * * * komut
```

Her ayın 5 ile 15. günleri arasında saat 16 ile 22 arasındaki her saatin ilk 20 dakikası komutum çalışsın istersem.

```bash
0-20 16-22 5-15 * * komut
```

Haziran ayında ilk 20 gününün her cuma günü saat 12 ile 15 arasındaki 35 ile 55 dakikaları arasında komutum çalışsın istersem:

```bash
35-55 12-15 1-20 6 5 komut 
```
_______
Belirli gün ve tarihlerde olacaksa o tarihleri **,**(**virgül**) işareti ile ayırarak tek tek belirtmemiz gerekiyor. Yani örneğin;

Her saatin 5 10 15 ve 20. dakikalarında komutum çalışsın istersem:

```bash
5,10,15,20 * * * * komut
```

Her gün saat 3 5 ve 7 de komutum çalışsın istesem:

```bash
0 3,5,7 * * * komut
```

Her ayın 20 22 24 ve 26. günleri 2 4 6 ve 8 saatlerinin 5. ve 10. dakikalarında komutum çalışsın istersem:

```bash
5,10 2,4,6,8 20,22,24,26 * * komut
```
_______

Belirli süre içinde belirli kez çalışmasını istersek **/**(**taksim**) işareti ile kaç kez olacağını belirtebiliyoruz. Yani örneğin;

5 dakikada bir çalışmasını istersem:

```bash
*/5 * * * * komut
```
    
10 saatte bir komutumun çalışmasını istersem:

```bash
* */10 * * * komut
```    
    
Elbette örnekleri çoğaltmak mümkün ancak daha fazlası gereksiz olacaktır. Ayrıca atadığınız zamanlanmış görevlerin doğruluğunu kontrol etmek isterseniz [bu adresten](https://crontab.guru) verdiğiniz zaman aralığının karşılığını görebilir ve hata yapmaktan kaçınabilirsiniz. 

Yani bu konu sizlerin de biraz kurcaladıktan sonra anlayacağı kolay bir konudur.

Eğer belirlenen zamanlanmış görevleri listelemek istersek `crontab -l` komutunu kullanabiliriz. Buradaki `-l` parametresi "**list**" kelimesini yani "**listeleme**" işlevini temsil ediyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/11.png" width="875">

Şayet oluşturduğumuz tüm zamanlanmış görevleri silmek istersek `crontab -r` komutunu kullanmalıyız. Buradaki `-r` parametresi "**remove**" kelimesini yani "**silme**" işlevini temsil ediyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/19-%20Zamanlanm%C4%B1%C5%9F%20G%C3%B6revler/12.png" width="875">


----------



Log Kayıtları
-
Sistemde meydana gelen hatalar, sorunlar, işlemler, değişiklikler ve neredeyse her şey kayıt altına alınarak saklanır. Bu kayıt altına alınan bilgilere **log** deniyor. Neden **log**(**kayıt**) tutulmak zorunda diye soracak olursanız; kısaca sistemin olumsuz bir durumla karşılaşması halinde sorunun yaşanma nedeninin belirlenmesi, sistem güvenliğini sağlama, gerektiğinde veri kurtarma ve adli bilişim gibi alanlarda başvurmamız gereken yegane kaynaklardır **log** dosyaları. Anlayacağınız **log**(kayıt) dosyaları sistem bütünü için çok önemli yer tutmaktadır.

Log Dosyaları
-
Linux sisteminde **log** dosyalarının çok büyük kısmı <kbd>/var</kbd> dizini altında <kbd>log</kbd> klasörü içerisinde tutuluyor. Ayrıca <kbd>log</kbd> dizini içerisinde de belli başlı programlara ve servislere ait logları bulunduran başka alt dizinler bulunuyor. Bu durumu gözlemlemek için komut satırına `cd /var/log` yazarak **log** dosyalarının tutulduğu dizine gidip dizin içerisinde iken `ls` komutu ile dizin içeriğini listeleyelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/1.png" width="875" >

Bir çok kayıt dosyası listelenmiş oldu.
Örneğin ben buradan, oturum açma işlemlerini ve detaylarını tutan <kbd>auth.log</kbd> dosyasını açarak sistemde yapılmış olan oturum açma işlemlerini ve detaylarını inceleyebilirim. Ancak bu noktada bir kısa bilgi Linux sistemi **log** dosyalarının çok fazla yer kaplamasını önlemek için üzerine yazma metodunu kullanıyor. Bu noktada **cron** servisi ile **log** kayıtları her hafta eklenerek maksimum 1 ay kadar eskiyi yani 4 haftayı kayıt altında tutuyor. Bu tutulan kayıtlar 4 hafta sonunda; "*log_dosyası.1.gz*", "*log_dosyası.2.gz*", "*log_dosyası.3.gz*" şeklinde arşivlenerek saklanıyor. Yani örneğin siz eğer <kbd>auth.log</kbd> dosyasının bu ay değil de geçmişteki aylardaki kayıtlarına bakmak isterseniz. Arşivlenmiş olan "*auth.log.1.gz*", "*auth.log.2.gz*", "*auth.log.3.gz"* şeklindeki dosyalara bakmanız gerekir.

**Log** dosyalarını incelerken kolaylık olması açısından daha önce de kullanmış olduğumuz ve dosyanın alt(tail/kuyruk) kısımlarını listeleyen `tail` komutundan yararlanacağız. Bu sayede uzun uzadıya dosyanın tamamına bakmak yerine son eklenen bilgileri inceleyebileceğiz.

Hemen örnek olması açısından oturum açma işlemlerini ve detaylarını tutan <kbd>auth.log</kbd> kayıt dosyasını açalım. Bu açma işlemini de yalnızca dosyada en son yapılmış 5 değişikliği gösterecek şekilde yapalım. Bunun için konsola `tail -n 5 auth.log` komutumuzu giriyoruz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/2.png" width="875" >

Komutumuzu girmemizle birlikte konsol bize son 5 oturum açma işlemlerini ve detaylarını listelemiş oldu.

Hazır yeri gelmişken `tail` komutuyla sistemdeki olayların anlık olarak takibini yapalım. Bunun için sistemdeki olayların kaydını tutan <kbd>messages</kbd> dosyasını okumalıyız. Bu okuma işlemini sistemdeki anlık hareketleri takip etmek için yaptığımızdan, okuduğumuz dosyaya yeni eklenen her veriyi anlık görmek için `tail -f messages` komutunu kullanıyoruz. Buradaki `tail -f` komutunu açıklayacak olursam; biliyorsunuz `tail` komutu dosyanın alt satırlarını görüntülememize olanak tanıyan bir komut. Ve bu komutun `-f ` parametresi de bu görüntülenecek kısım için dosyayı sürekli yeniden tarayarak dosyaya en son eklenen verileri bize göstermekle mükellef. Yani `tail` komutunun `f` parametresi bize yalnızca dosyaya en son eklenen ifadeleri güncel şekilde listeliyor.
 
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/3.png" width="875" > 
 
dmesg
-
Sistem açılışından itibaren çekirdek tarafından üretilen tüm iletiler ve kernel hakkındaki kayıtlar <kbd>/proc/kmsg</kbd> dizininde tutuluyor. Ancak biz bütün kernel kayıtları yerine, sistem açılışında yazan açılış notlarını `dmesg` komutu ile görüntüleyebiliriz. Yani `dmesg` komutu sadece tampondaki son iletileri gösterir. Bu komutun kullanımına genelde sistem açılışında bildirilen problemlerin tespiti ve diğer sistem uyarılarını saptamak için başvurulur. 

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/4.png" width="875" >

Elbetteki çıktı çok daha uzun ancak ben örnek olması açısından çıktıları kısaca verdim. Eğer siz bu çıktıları filtrelemek isterseniz `grep` komutunu kullanarak ilgili çıktılara rahatlıkla ulaşabileceğinizi biliyorsunuz. Örneğin yalnızca hataları görüntülemek istersek konsola `dmesg | grep "fail" ` şeklinde yazdığımızda, konsol bize yalnızca sistem açılışında belirtilen hataları basacaktır.
 
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/5.png" width="875" >

Gördüğünüz gibi "**fail**" ifadesinin geçtiği, yani **hataların** belirtildiği tüm iletiler karşımıza gelmiş oldu.


last
-
Komutumuzun isminden de az çok anlaşılacağı gibi; en son oturum açan kullanıcıları listelemek için `last` komutunu kullanabiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/6.png" width="875" >

`last` komutuyla en son oturum açan kullanıcılar uzunca listelenmiş oldu.

Eğer uzunca liste almak istemezsek komutumuzu en son listelemek istediğimiz satır sayısını belirterek `last -satır_sayısı` şeklinde belirterek istediğimiz uzunlukta çıktı elde edebiliriz.

Örneğin ben sadece son 2 oturum hareketini görüntülemek istersem komutumu `last -2` şeklinde belirtmem yeterli.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/7.png" width="875" >

Veya sondan 4 oturuma bakmak istersem komutumuzu `last -4` şeklinde kullanırım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/8.png" width="875" >

Ayrıca kullanıcı adına göre oturum açma bilgisi sorgulayabiliriz. Örneğin ben yalnızca "**burak**" isimli kullanıcı hesabının oturum hareketlerini görmek istersem, konsola `last burak` şeklinde yazdığımda karşıma yalnızca "**burak**" kullanıcı hesabının oturum hareketleri gelir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/9.png" width="875" >

Gördüğünüz gibi yalnızca "**burak**" kullanıcı hesabının oturum açma bilgileri listelenmiş oldu. Yani kullanıcıya göre oturum bilgilerini öğrenmek için, komutu `last kullanıcı_adı` şeklinde kullanabilirsiniz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/10.png" width="875" >

----------



  
# Linux Arayüzünü Özelleştirmek
Bu bölümde Linux'un en sevilen yanlarından olan grafiksel arayüzü özelleştirmeyi öğreneceğiz. Sizlerin de bildiği gibi Linux dışındaki işletim sistemlerinde bu grafiksel özelleştirme oldukça sınırlıdır. Windows ve macOS gibi dağıtımlarda sistem belirli bir arayüz ile gelir ve sizlere yalnızca bir kaç özelleştirme imkanı sunar. 

Ancak Linux'ta durum böyle değildir. **Linux, kullanıcısına bir çok konuda olduğu gibi grafiksel arayüz konusunda da tam özelleştirme imkanı tanır.** Zaten Linux'un en sevilen yanlarından biri de bu sınırsız müdahale ve özelleştirme imkanıdır. Burada bahsedilen grafiksel arayüze müdahalenin kullanıcıya sağladığı imkanlar kullanıcının ihtiyaçlarına göre değişmektedir. 

Şöyle ki; örneğin kullanıcı göze hitap eden bir sistem görünümü istiyorsa kendi zevklerine göre arayüzde özelleştirmeler yaparak severek kullanacağı bir sistem görünümü ortaya çıkarabilir. Ya da kullanıcı için sistem performansı daha ön plandaysa, buna uygun arayüzü de tercih edebilir. Yani kısacası bu özelleştirme imkanı kullanıcıyı belirli bir arayüz kalıbına zorlamadan ihtiyaçlarına göre bir arayüz kullanma imkanı tanır.
İşte Linux'un kullanıcıları tarafından çok sevilmesinin ardında sistem ile ilgili herhangi bir sınırlamanın olmaması ve kullanıcının ihtiyacına göre sistemin baştan aşağı tıpkı bir hamur gibi şekil alması yatmaktadır. 
Kısacası Linux ne eksiği ne de fazlalığı olan bir işletim sistemidir. Linux sizin neye ihtiyacınız varsa size onu sunabilecek potansiyelde bir sistemdir. Bu da size bilgisayara gerçek anlamda hükmetme imkanı tanır.

İşte tüm bu esneklik sayesinde Linux kullanıcıları diğer işletim sistemlerine oranla Linux'u çok daha efektif şekilde kullanabiliyorlar. Aslında bu özelleştirme imkanı ve avantajları konusunda çok daha fazla şey söylenebilir ancak Linux'un sağladığı tüm bu güzellikleri anlamanın en iyi yolu bizzat sizlerin de deneyimleyip görmesidir. Tüm bu söylediklerimizden yola çıkacak olursak; sonuçta, Linux'u özelleştirmenin bir sınırı bulunmuyor ancak biz bu kısımda genel olarak özelleştirme imkanlarının neler olduğunu kısaca görmüş olacağız.

# Arayüz Değişimi İle İlgili Kavramlar
Evet, özelleştirmenin sınırsız olduğundan ve bizim ihtiyaçlarımıza göre değişebileceğinden bahsettik. Bu durumda özelleştirme yapmadan önce bizim ihtiyacımızın ne olduğunu belirlememiz gerekiyor. İhtiyacımızı belirlerken oldukça fazla etmen olduğundan ben burada başlıca etmenlerden olan performans ve güzel görünüm etmenlerini kısaca ele alıp örneklendirmeye çalışacağım.

Ancak örnek vermeden önce grafiksel arayüzü değiştirme hakkında öğrenmemiz gereken iki kavram bulunuyor. Bu kavramlardan biri **masaüstü ortamı** değiştirmek diğeri ise yalnızca **pencere yöneticisi** değiştirmektir. Hangi işlemin bizim için daha uygun olduğuna karar verebilmemiz için öncelikle bu seçeneklerin neleri ifade ettiğini kısaca ele alalım.

**Masaüstü ortamı** dediğimiz şey, grafiksel arayüzün tamamını kapsayan arayüz paketi bütününe deniyor. Burada kast edilen arayüz bütünü; sistemde yer alan simgeleri, araç çubuklarını, duvar kağıtlarını, pencere yöneticisini ve sürükle bırak gibi kolaylaştırıcı imkanları kapsayan kısımlardır. Yani masaüstü ortamı dediğimiz şey bizlere kapsamlı grafiksel arayüz sunar.

Diğer bir seçeneğimiz olan **pencere yöneticisi** ise bizlere yalnızca pencereler üzerinden çalışma imkanı sunar. Yani pencere yöneticisi içerisinde, masaüstü ortamında olduğu gibi  araç çubukları, animasyonlu menüleri ve bunun gibi kapsamlı grafiksel arayüz ögelerini barındırmaz. Böylelikle kullanıcının sistemi daha performanslı kullanabilmesi için yalnızca pencereler üzerinden sistemin yönetilebilmesini sağlar. Örnek olması açısından yalnızca pencere yöneticisini kullandığınızda sistemin nasıl gözükeceğini, aşağıdaki ***openbox*** pencere yöneticisi ekran görüntüsüne bakarak görebilirsiniz.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/openbox.png)

Şimdi hangi seçeneği hangi durumda seçmemiz gerektiği konusuna değinecek olursak;
Masaüstü ortamı, içerisinde tüm grafiksel arayüz araçlarını barındıracağı için eğer sistemi kullanırken çok fazla grafiksel öge olduğunu ve bunların da sisteminizi yavaşlattığını düşünüyorsanız masaüstü ortamını kaldırarak sistemi yalnızca pencereler ile de yönetebilirsiniz.
Buradaki açıklama sizi tam olarak yönlendirmemiş olabilir ancak ileri ki kısımlarda hem yeni masaüstü ortamı kurulumunu hem de pencere yöneticisi kurulumunu göreceğiniz için hangisinin sizin için uygun olacağına kendiniz karar verebiliyor olacaksınız. Yani buradaki açıklamalar sizin için yeterli gelmediyse endişelenmeniz gerek yok. Şimdi devam edelim.

## Masaüstü ortamını nasıl değiştirebiliriz ?

Masaüstü ortamı dediğimiz şeyin grafiksel arayüz içerisindeki ögelerin tamamına yakınını kapsadığını daha önceki kısımda belirtmiştik. Yani  arkaplan, menü çubuğu, araç çubuğu, gösterge paneli ve bunlar gibi her şey masaüstü ortamını kapsıyor. 
![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/desktop-env.png?raw=true)
Yani biz yeni bir masaüstü ortamı kurduğumuzda tüm bu ögeler de yeni masaüstü ortamı ile birlikte değişiyor. Eğer şu anda kullanmakta olduğunuz mevcut masaüstü ortamını değiştirmek isterseniz birbirinden farklı bir çok masaüstü ortamı seçeneğiniz bulunuyor. Ben başlıca masaüstü ortamlarının genel özelliklerinden bahsedeceğim ancak ondan önce mevcut masaüstü ortamımızı nasıl kendimize göre düzenleyip özelleştirebiliriz onu öğrenelim.

### Gnome3 Masaüstü Ortamını Özelleştirmek
Kullanmakta olduğumuz Kali Linux dağıtımı varsayılan olarak en çok kullanılan masaüstü ortamlarından olan **Gnome 3** masaüstü ortamı ile birlikte geliyor. **Gnome 3** masaüstü ortamı oldukça yaygın şekilde kullanılmakta ve grafiksel arayüz bakımından bir çok kolaylık sunmaktadır. Ancak son dönemlerde geliştirici ekibin almış olduğu radikal kararlar doğrultusunda; masaüstünde yer alan kısayolların ve bazı önemli grafiksel arayüz araçlarının kaldırılması ile birlikte bir çok kullanıcı tarafından **Gnome 3** masaüstü ortamı kullanışsız bulunmaktadır. Ayrıca **Gnome 3** çok fazla grafiksel öge ve gereğinden fazla animasyonlu içerik barındırdığından sistem performansını da diğer masaüstü ortamlarına göre oldukça fazla olumsuz etkilemektedir. Bu noktada belirtmeliyim ki **Gnome 3** masaüstü ortamını kötülemek gibi bir niyetim yok, dileyen arkadaşlar elbette severek kullanmaya devam edebilir. Ancak son dönemlerde edindiğim tecrübeler ve bana yapılan geri bildirimler ile birlikte artık **Gnome 3** masaüstü ortamının pek de verimli çalışmadığı kanaatine varmış bulunuyorum. 
Fakat yine de **Gnome 3** masaüstü ortamını kullanmaya devam edecek olan arkadaşlar için **Gnome 3** temasında nasıl değişiklik yapabileceğimizi ele almak istiyorum.

Öncelikle belirtmek isterim ki; bu tema değişikliklerinin bir sınırının olmadığı için bu özelleştirmelerin tamamını kapsamlı şekilde anlatmam mümkün değil. Ancak ben bu kısımda sizlere genel olarak, yeni bir temayı nereden bulabileceğinizi ve bulduğunuz bu temayı sisteme nasıl geçirebileceğinizi göstereceğim.

**Gnome 3** masaüstü arayüzünü kullanıyorken genel tema değişimlerini **ince ayarlar(tweaks)** menüsü üzerinden gerçekleştiriyoruz. Bu nedenle öncelikle ince ayarlar menümüzden ne gibi değişiklikler yapabileceğimizi öğrenmek için ince ayarlar menüsünü açalım.
İnce ayarlar menüsü açıldıktan sonra "**Görünüm**" sekmesine gelelim.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/tweaks.gif)
Burada yer alan seçenekler sistem arayüzünde yapabileceğimiz temasal değişiklikleri gösteriyor. Görünüm sekmesinde yer alan seçenekleri sırasıyla ele alacak olursak;

**Uygulamalar;** Sistemdeki pencerelerin görünümünü değiştiriyor. Herhangi bir uygulama çalıştığında uygulamayı çevreleyen çerçevelere pencere deniyor. Örnek için aşağıdaki "***Uygulamalar***" kısmı değiştirilmiş görsele bakabilirsiniz.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/1.png)

**İmleç;** İmlecin görünümünü sağlayan kısım. Aşağıdaki görselde değiştirilmiş hali verilmiştir.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/2.png)

**Simgeler;** Sistemde yer alan simgelerin görünümünden sorumlu kısım. Aşağıda değiştirilmiş halleri verilmiştir.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/3.png)
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/4.png)

**Kabuk;** Sistem genelindeki panelleri kapsayan kısımı ifade ediyor. Aşağıdaki görselde panelleri değiştirilmiş görüntü verilmiştir. 
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/5.jpg)

**Ses;** Sistem seslerini kapsayan kısımdır, değiştirilmesi önerilmez.

Geri kalan kısımlar da zaten bildiğimiz masaüstü arkaplanı ve kilit ekranı görünümünü ifade ediyor.

Artık **Gnome 3** masaüstü ortamında değiştirebileceğimiz kısımlara göz attığımıza göre sırası ile nasıl değiştirebiliriz görelim.
Tema kurulumunu yapmak için öncelikle hoşumuza gidecek bir tema edinmemiz gerekiyor. 
Bunun için https://www.gnome-look.org/ adresine girelim. Bu site Gnome ile ilgili temasal değişiklikleri içeren oldukça geniş çaplı bir platform. Ama ben şimdi örnek olması için çok detaya girmeden yalnızca genel temayı değiştirmeyi ele alacağım. 

***Uygulamalar Kısmını Değiştirmek***

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/6.png)
Tema değişimi için ***GTK3 Themes*** yazan sekmeye tıklayalım.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/7.png)
Buradan gözünüze hitap eden bir tema belirleyebilirsiniz ben şimdi örnek olması açısından ilk temayı seçiyorum. Açılan tema sayfasından tema ile ilgili detaylı bilgi alabilir ve ekran görüntüleri ile tema hakkında fikir sahibi olabilirsiniz. 
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/8.gif)
Temayı indirmek için **Download** butonuna basalım ve buradan istediğimiz içeriği indirelim. Gördüğünüz gibi bu temanın bir çok farklı varyasyonu bulunuyormuş, ben herhangi birini seçiyorum.  Ve ***Save File*** diyerek dosyanın inmesini sağlıyorum. 

Bu arada ben burada sizlere yol göstermek amacıyla örnekler verdiğim için çok fazla tema içeriğini karıştırmıyorum ancak sizler elbette deneye deneye hoşunuza gidecek temayı bulabilirsiniz. Zaten kurulum işlemi de oldukça basit olduğundan çok çabucak bir sürü tema deneyebilirsiniz. 

Neyse dosyamız da inmiş oldu. Şimdi dosyamızı sistemin görebilmesi için ***/usr/share/themes/*** klasörüne çıkarmamız gerekiyor. 
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/9.png)

Evet dosyamı ilgili konuma çıkardım. Artık böylelikle sistem yeni eklediğimiz tema içeriğini görebilecek. 
Hemen yeni temayı kurmak için ince ayarları açalım. İnce ayar menüsüne arama çubuğuna ***"tweaks"*** yazarak da ulaşabilirsiniz. 
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/10.gif)
Evet ince ayar menüsünü açtık, buradan görünüm sekmesine tıklayalım. Ve buradan ***Uygulamalar *** kısmından indirdiğimiz temayı seçerek kurulması sağlayalım. İşte yeni bir tema kurulum işlemi bu kadar kolay. Diğer temasal değişim işlemleri de aynı şekilde gerçekleşiyor. Hemen kısaca diğer değişimleri de yapalım.

***İmleç Kısmını Değiştirmek***

İmleci değiştirmek için öncelikle yeni bir imleç paketi indirmemiz gerekiyor. Paketi indirdikten sonra imleç dosyasını ***/usr/share/icons/*** konumuna atmamız gerekiyor. Böylelikle sistem yeni imlecimizi tanıyabilecek. İndirdiğimiz imleç dosyasını ilgili konuma attıktan sonra yine ince ayar menüsünden ***Görünüm*** sekmesine gerek buradan **imleç** değişimi yapılabilir. Tüm işlemi aşağıdaki gif resmine bakarak takip edebilirsiniz.
![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/imlec.gif?raw=true)

***Simgeler Kısmını Değiştirmek***

Simgeler kısmını değiştirmek için tıpkı imleç değiştirirken yaptığımız gibi, indirdiğimiz simge dosyalarını ***/usr/share/icons/*** konumuna taşımamız gerekiyor. Hem imlecin hem de simgelerin aynı konumda bulunması kafanızı karıştırmasın. Zaten dosya yapıları farklı olduğundan sistem kolayca ayırt edebiliyor. Siz sadece beğendiğiniz simge paketini ***/usr/share/icons/*** konumuna atın ve ince ayar menüsünden ***Görünüm*** sekmesine gelerek **simgeler** kısmından indirdiğiniz simgeyi bularak seçin. Tüm işlemi aşağıdaki gif resmine bakarak takip edebilirsiniz.
![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/simgeler.gif?raw=true)

***Kabuk Kısmını Değiştirmek***

Kabuk diye bahsedilen kısmın sistemdeki genel arayüz içerisinde bulunan panelleri karşıladığını daha önce söylemiştik. Şimdi değişimi için yeni bir arayüz paketi indirelim ve bu paketi ***/usr/share/themes/*** konumuna çıkaralım. Ve daha sonra ince ayar menüsünden ***Görünüm*** sekmesine gelerek **kabuk** kısmından indirdiğiniz kabuk temasını bularak seçelim. Ve işlem bu kadar ! Tüm işlemi aşağıdaki gif resmine bakarak takip edebilirsiniz.
![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/kabuk.gif?raw=true)

Benim **Gnome 3** ile ilgili göstereceğim temasal değişiklikler bu kadar, dileyen arkadaşlar çok daha fazla kurcalayarak çok daha fazla seçeneğe ulaşabilir. Şimdi **Gnome 3** masaüstü ortamını bir kenara bırakarak yeni masaüstü ortamlarını tanıyalım.

# Masaüstü Ortamları ve Kısaca Özellikleri

Baştan belirtmek isterim ki benim burada yazacağım şeyler kendi deneyimlerim ve genel gözlemlerimdir. Yani tam anlamıyla sizi yönlendirmeyebilir. Ben burada sizlerin kurulum yapmadan önce daha iyi fikir sahibi olabilmeniz için Kali Linux dağıtımında kullanılabilen masaüstü ortamlarının başlıca özeliklerini kısaca açıklamaya çalıştım. Ancak burada belirttiğim özellikler bir çok faktöre göre değişmektedir, yani siz buradan fikir sahibi olun ancak kesinlikle ve kesinlikle kendiniz deneyerek hangisinin sizin için en ideali olduğuna kendiniz karar verin. Uyarımı peşin peşin yaptıktan sonra hadi artık lafı daha fazla uzatmadan Kali Linux'a uygun olan masaüstü ortamlarının genel özelliklerini tanımaya başlayalım.

## **XFCE Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/xfce.png)
Görsel olarak oldukça yalındır ve hiç bir gereksiz görsel arayüz ögesi kullanmaz. Önceliği sistemin maksimum verimde çalışmasıdır, minimal bir sistemdir. Çok hafif olduğundan sistemi yormadan oldukça hızlı şekilde çalışır.  Eğer benim işim performans görsellik önemli değil diyorsanız tercih edebilirsiniz.

## **KDE Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/kde.png)
Daha çok Windows'u andırır, asıl hedefi grafiksel arayüz kullanıcılarıdır. Yani konsoldan ziyade kullanıcının her işi grafiksel arayüzde yapabilmesi üzerine dizayn edilmiştir. İlk defa Linux kullanmaya başlayacak kullanıcılar için geçiş evresinde sıklıkla tercih edilen bir temadır. Ancak ben yine de kullanıcıyı konsoldan uzaklaştırdığı ve bu sebeple Linux' un gerçek gücünü ortaya koyamadığı için pek de önermiyorum. Bu söylediklerimden bu ortam kötüdür anlamı çıkmasın, sadece konsol üzerine yoğunlaşacak arkadaşlara öneri olarak belirtiyorum. Geçiş evresinde kullanılabilir ancak aman ha bağımlılık yapmasın yoksa konsol hakimliği, sisteme hükmetmek falan yalan olur söyleyeyim :)

## **LXDE Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/lxde.png)
Az bir donanım gücü ile çok iyi işler çıkarabileceğiniz oldukça yalın masaüstü ortamıdır. Dolayısı ile grafiksel arayüz kısmında pek bir şey beklememek lazım. Amacınız sistemi verimli şekilde kullanmaksa ve elinizde güçlü bir donanım yoksa tercih edebilirsiniz. 

## **Cinnamon Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/cinnamon.jpg)
Cinnamon Gnome baz alınarak alınarak geliştirildiği için en çok tercih edilen masaüstü ortamıdır. Hatta son zamanlarda bir çok kullanıcıya göre kötüye giden Gnome3 için harika bir alternatiftir. Grafiksel arayüzünün kullanıcı dostu olması ve sistemi de çok fazla yormaması Cinnamon'u normal kullanıcılar arasında popüler yapmıştır. Hatta en çok kullanılan Linux dağıtımı olan Linux Mint' de varsayılan olarak Cinnamon kullanmaktadır. Ve Mint' in bu başarısı Cinnamon'un kullanışlı yapısına bağlanmaktadır.

## **Mate Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/mate.png)
Mate masaüstü ortamı da Gnome3'ün hantallığından bunalan kullanıcılar için harika bir alternatiftir. Bir zamanlar bir çok kullanıcı tarafından oldukça sevilen [Gnome2'nin çatallamasıdır](https://mate-desktop.org/tr/), ve özlem duyulan Gnome2'nin temsilcisidir. Sistem çok fazla kaynak tüketmez ayrıca sizleri grafiksel olarak da yormaz. Günlük rutin işlerinizi de çok rahat şekilde yerine getirebilirsiniz.

## **e17 Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/e17.png)
Güçlüdür, aynı zamanda gayet de şıktır. Hani olağanüstü görsel bir arayüz sunmaz ama sunduğu performansın yanında içinizi daraltacak bir görünüme de sahip değildir. Birçok cihazda oldukça verimli şekilde çalışmaktadır. Deneyimlemenizde fayda var derim :)

# Kali Linux için Masaüstü Ortamları Kurma-Kaldırma İşlemleri

> **Hatırlatma;** Bu işlemleri yapmadan önce **sisteminizin güncel olduğunda emin olun**, aksi takdirde sisteminiz güncel değilse kurulum gerçekleşmeyecektir.

>  **Bilgilendirme;** Sisteminize birden fazla masaüstü ortamı kurabilir ve dilediğiniz zaman bu ortamlara geçiş yapabilirsiniz. Yani aşağıdaki tüm masaüstü ortamlarını kurup tüm bu ortamlar arasında dilediğiniz zaman kolayca geçiş yapabilirsiniz. 

## **XFCE Masaüstü Ortamı**

**XFCE Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies

**Kurulu Olan XFCE Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove xfce4 xfce4-places-plugin xfce4-goodies

## **KDE Masaüstü Ortamı**
 
**Debian için Standart KDE Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install kali-defaults kali-root-login desktop-base kde-standard
**KDE Full Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install kali-defaults kali-root-login desktop-base kde-full

**Kurulu Olan KDE Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove kde-plasma-desktop kde-plasma-netbook kde-standard

## **LXDE Masaüstü Ortamı**
 
**LXDE Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install lxde-core lxde kali-defaults kali-root-login desktop-base

**Kurulu Olan LXDE Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove lxde-core lxde

## **Cinnamon Masaüstü Ortamı**
 
**Cinnamon Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install kali-defaults kali-root-login desktop-base cinnamon

**Kurulu Olan Cinnamon Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove cinnamon

## **Mate Masaüstü Ortamı**
 
**Mate Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install kali-defaults kali-root-login desktop-base mate-desktop-environment-extra

**Kurulu Olan Mate Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove mate-core
	
## **e17(Enlightenment) Masaüstü Ortamı**
 
**e17 Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install e17

**Kurulu Olan e17 Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove e17

# Masaüstü Ortamını Aktif Hale Getirmek
İlgili masaüstü ortamını kurduktan sonra kullanabilmeniz için ilgili ortamı seçip aktif hale getirmemiz gerekiyor. Öncelikle kurduğumuz masaüstü ortamının sistem tarafından tanınması için **kurulum işlemi bittikten sonra bilgisayarımızı yeniden başlatıyoruz**. Sistem yeniden başlatıldıktan sonra karşımıza aşağıdaki gibi giriş(login) ekranı geliyor. Bu ekrana kullanıcı adımızı giriyoruz. Ve daha sonra dişli-çark simgesine tıklayarak buradan dilediğimiz masaüstü ortamını seçiyoruz. Ve parolamızı girerek sistemi açıyoruz. 
![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/ortm_1.gif?raw=true)
İşte bu kadar yeni masaüstü ortamı karşımızda! 

**Eğer herhangi bir zaman masaüstü ortamını değiştirmek isterseniz de sadece oturumu kapatın(logout) ve yine kullanıcı adınızı girdikten sonra dişli-çark simgesinden kullanmak istediğiniz masaüstü ortamını seçin.** Bu şekilde dilediğiniz zaman masaüstü ortamları arasında geçiş yapabilirsiniz. Geçiş işlemi gif resmi ile aşağıda açıklanmıştır.
![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/ortm_2.gif?raw=true)


Yeni bir masaüstü ortamı seçtik ve kurduk diyelim. Peki bu ortamlara nasıl yeni tema yüklemesi yapacağım diyorsanız; 

Öncelikle yapmanız gereken ilk şey kullanmakta olduğunuz masaüstü ortamına uygun tema paketlerine ulaşmak. Bunun için de örneğin **XFCE** kullanıyorsanız internette "***xfce themes***" şeklinde arama yaptığınızda karşınıza bir çok kaynaktan bir çok kullanışlı tema paketleri çıkacaktır. Diğer ortamlar için de elbette isimlerine göre ***kde themes***, ***cinnamon themes***, ***mate themes ..***  şeklinde araştırma yapmanız yeterli olacaktır. 

Daha sonra da bu temaların nasıl kurulduğunu sistemi kurcalayarak oldukça rahat şekilde bulabilirsiniz. Şimdi sen neden burada tek tek açıklamıyorsun diyecek olursanız; ben zaten **Gnome 3** üzerinden detaylıca tema kurulumunu sizlere örnek olması açısından gösterdim. Ancak bu noktadan sonra sizlerin de yeni kullanacağınız sistemi daha iyi tanıyabilmeniz için biraz kurcalamanız ve kendi kendinize bu değişimin nasıl yapıldığını keşfetmeniz gerekiyor. Neticede bu sistemi kullanacak olan kişiler sizlersiniz ve dolayısıyla gerçekten verimli bir sistem olup olmadığını ancak detaylıca araştırma ve deneme yanılma yolu ile öğrenebilirsiniz. Yeni bir tema kurmak vesilesiyle; bakın bakalım bu ortamlarda çalışmak aradığını bulmak sizin için ne kadar kolay, hangi masaüstü ortamı size daha konforlu geliyor. 

# Pencere Yöneticisi Kurulumu Ve Kullanımı

Sistemi yalnızca pencere yöneticisi ile yönetmek performans açısından oldukça verimlidir. Zira bir çok masaüstü ortamında gördüğümüz fazladan grafiksel ögeler ve animasyonlu içerikler sistemi boş yere yorarak bizlere düşük verimli işlem gücü sağlıyorlar. Eğer amacınız işlerinizi en kısa sürede en verimli şekilde halletmekse ve elinizdeki cihaz güçlü bir donanıma sahip değilse sistemi, pencere yöneticisinden kullanmak sizin için en ideal tercih olabilir. Sistemi yalnızca pencere yöneticisi ile yönetmek, kullanıcılar tarafından başlarda biraz garipsense de zamanla bu yönetim formuna tüm kullanıcılar adapte olur. Yani eğer başlarda kullanımı biraz alışılmadık gelirse anlayın ki yalnız değilsiniz, olay alışkanlık meselesi rahat olun.. :)

Şimdi de Kali Linux Dağıtımında kullanabileceğimiz pencere yöneticilerine göz atalım.

Pencere yöneticisi konusunda kullanabileceğiniz çok fazla alternatif bulunuyor. Bu sebepten burada hepsine değinmemiz mümkün değil. O yüzden biz de bu kısımda [buradaki listede](https://www.slant.co/topics/390/~best-window-managers-for-linux) yer alan başlıca 5 pencere yöneticisi kurulumunu ele alacağız.  Benim bu listedeki favorim **openbox** ancak siz kendiniz deneyimleyerek kendiniz için ideal olana karar verebilirsiniz.

## **i3 Pencere Yöneticisi**
 ![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/i3.png?raw=true)
**i3 Pencere Yöneticisini Kali Linux'a Kurmak İçin:**

	apt-get install i3-wm

**Kurulu Olan i3 Pencere Yöneticisini Kali Linux'tan Kaldırmak İçin**

	apt-get remove i3-wm
	
>**i3 Pencere Yöneticisi Temel Kullanım Kılavuzu İçin [Bu Kaynağa](https://i3wm.org/docs/userguide.html) Bakabilirsiniz:**

## **awesome WM Pencere Yöneticisi**
![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/awesome.png?raw=true) 
**awesome WM  Pencere Yöneticisini Kali Linux'a Kurmak İçin:**

	apt-get install awesome

**Kurulu Olan awesome WM  Pencere Yöneticisini Kali Linux'tan Kaldırmak İçin**

	apt-get remove awesome
>**awesome WM Pencere Yöneticisi Temel Kullanım Kılavuzu İçin [Bu Kaynağa](https://awesomewm.org/doc/manpages/awesome.1.html) Bakabilirsiniz:**
	
## **Xmonad Pencere Yöneticisi**
 ![](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/xmonad.png?raw=true)
**Xmonad Pencere Yöneticisini Kali Linux'a Kurmak İçin:**

	apt-get install xmonad

**Kurulu Olan Xmonad Pencere Yöneticisini Kali Linux'tan Kaldırmak İçin**

	apt-get remove xmonad
>**Xmonad Pencere Yöneticisi Temel Kullanım Kılavuzu İçin [Bu Kaynağa](https://xmonad.org/manpage.html) Bakabilirsiniz:**

## **Openbox Pencere Yöneticisi**
 ![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/openbox-1.png?raw=true)
**Openbox Pencere Yöneticisini Kali Linux'a Kurmak İçin:**

	apt-get install openbox

**Kurulu Olan Openbox Pencere Yöneticisini Kali Linux'tan Kaldırmak İçin**

	apt-get remove openbox
	
## **dwm Pencere Yöneticisi**
 ![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/dwm.png?raw=true)
**dwm Pencere Yöneticisini Kali Linux'a Kurmak İçin:**

	apt-get install dwm

**Kurulu Olan dwm Pencere Yöneticisini Kali Linux'tan Kaldırmak İçin**

	apt-get remove dwm
>**dwm Pencere Yöneticisi Temel Kullanım Kılavuzu İçin [Bu Kaynağa](https://dwm.suckless.org/tutorial/) Bakabilirsiniz:**
---
Başlıca pencere yöneticilerinin kurulumlarını ele aldık. Ancak bu anlattıklarım dışındaki pencere yöneticileri için de [bu adreste](https://www.slant.co/topics/390/~best-window-managers-for-linux) yer alan listeye bakıp, listede yer alan pencere yöneticisinin kali depolarında yer alıp almadığını [bu adresten](http://pkg.kali.org/) teyit ederek kurulumunu yapabilirsiniz.
Ben örnek olması açısından listede yer alan ***fluxbox*** isimli pencere yöneticisini sorgulayıp, eğer depolarda mevcutsa kurulumunu yapmak istiyorum. İşlemleri aşağıdaki gif resiminden takip edebilirsiniz.
![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/fluxbox.gif?raw=true)
Tekrar belirteyim verdiğim adreste yer alan linkteki her pencere yöneticisi Kali Linux için uygun olmayabilir, o yüzden mutlaka depolarda olup olmadığını teyit edin.

**Son olarak;** pencere yöneticisinin temasını nasıl değiştirebiliriz diyecek olursanız, bu indireceğiniz pencere yöneticisine göre değişir dolayısıyla bu tema değişimini bireysel olarak internetten araştırarak ve sistemi kurcalayarak bulmanız gerekiyor. Üstelik bu araştırma süreci içerisinde pencere yöneticisini daha yakında tanıyıp, size uygunluğunu anlayabilirsiniz. Eğer bu işlem bile sizlere zor geliyorsa, muhtemelen pencere yöneticisi kullanmak sizi mutlu etmeyecektir. Tek başınıza tema değiştirme olayını sakın gözünüzde büyütmeyin bu işlem oldukça kolay, tıpkı masaüstü ortamını değiştirmek gibi. Sadece araştırın ve deneyin.
