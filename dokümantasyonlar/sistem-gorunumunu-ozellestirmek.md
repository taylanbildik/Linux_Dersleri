
  
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
