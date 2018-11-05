

# Linux Arayüzünü Özelleştirmek
Bu bölümde Linux un en sevilen yanlarından olan grafiksel arayüzü özelleştirmeyi öğreneceğiz. Sizlerin de bildiği gibi Linux dışındaki işletim sistemlerinde bu grafiksel özelleştirme oldukça sınırlıdır. Windows ve macOS gibi dağıtımlarda sistem belirli bir arayüz ile gelir ve sizlere yalnızca bir kaç özelleştirme imkanı sunar. 

Ancak Linux'ta durum böyle değildir. Linux, kullanıcısına bir çok konuda olduğu gibi grafiksel arayüz konusunda da tam özelleştirme imkanı tanır. Zaten Linux un en sevilen yanlarından biri de bu sınırsız müdahale ve özelleştirme imkanıdır. Buara bahsedilen grafiksel arayüze müdahalenin kullanıcıya sağladığı imkanlar kullanıcının ihtiyaçlarına göre değişmektedir. 

Şöyle ki örneğin kullanıcı göze hitap eden bir sistem görünümü istiyorsa kendi zevklerine göre arayüzde özelleştirmeler yaparak severek kullanacağı bir sistem görünümü ortaya çıkarabilir. Ya da kullanıcı için sistem performansı daha ön plandaysa buna uygun arayüzü de tercih edebilir. Yani kısacası bu özelleştirme imkanı kullanıcıyı belirli bir arayüz kalıbına zorlamadan ihtiyaçlarına göre bir arayüz kullanma imkanı tanır.
İşte Linux'un kullanıcıları tarafından çok sevilmesinin ardında sistem ile ilgili herhangi bir sınırlamanın olmaması ve kullanıcının ihtiyacına göre sistemin baştan aşağı tıpkı bir hamur gibi şekil alması yatmaktadır. 
Kısacası Linux ne eksiği ne de fazlalığı olan bir işletim sistemidir. Linux sizin neye ihtiyacınız varsa size onu sunabilecek potansiyelde bir sistemdir. Bu da size bilgisayara gerçek anlamda hükmetme imkanı tanır.

İşte tüm bu esneklik sayesinde Linux kullanıcıları diğer işletim sistemlerine oranla Linux'u çok daha efektif şekilde kullanabiliyorlar. Aslında bu özelleştirme imkanı ve avantajları konusunda çok daha fazla şey söylenebilir ancak Linux'un sağladığı tüm bu güzellikleri anlamanın en iyi yolu bizzat sizlerin de deneyimleyip görmesidir. Tüm bu söylediklerimizden yola çıkacak olursak sonuçta, Linux'u özelleştirmenin bir sınırı bulunmuyor ancak biz bu kısımda genel olarak özelleştirme imkanlarının neler olduğunu kısaca görmüş olacağız.

Evet, özelleştirmenin sınırsız olduğundan ve bizim ihtiyaçlarımıza göre değişebileceğinden bahsettik. Bu durumda özelleştirme yapmadan önce bizim ihtiyacımızın ne olduğunu belirlememiz gerekiyor. İhtiyacımızı belirlerken oldukça fazla etmen olduğundan ben burada başlıca etmenlerden olan performans ve güzel görünüm etmenlerini kısaca ele alıp örneklendirmeye çalışacağım.

Ancak örnek vermeden önce grafiksel arayüzü değiştirme hakkında öğrenmemiz gereken iki kavram bulunuyor. Bu kavramlardan biri masaüstü ortamını değiştirmek diğeri ise yalnızca pencere yöneticisini değiştirmektir. Hangi işlemin bizim için daha uygun olduğuna karar verebilmemiz için öncelikle bu seçeneklerin neleri ifade ettiğini kısaca el alalım.

**Masaüstü ortamı** dediğimiz şey, grafiksel arayüzün tamamını kapsayan arayüz paketi bütününe deniyor. Burada kast edilen arayüz bütünü; sistemde yer alan simgeleri, araç çubuklarını, duvar kağıtlarını, pencere yöneticisini ve sürükle bırak gibi kolaylaştırıcı imkanları kapsayan kısımlardır. Yani masaüstü ortamı dediğimiz şey bizlere kapsamlı grafiksel arayüz sunar.

Diğer bir seçeneğimiz olan **pencere yöneticisi** ise bizlere yalnızca pencereler üzerinden çalışma imkanı sunar. Yani pencere yöneticisi içerisinde, masaüstü ortamında olduğu gibi  araç çubukları, animasyonlu menüleri ve bunun gibi kapsamlı grafiksel arayüz ögelerini barındırmaz. Böylelikle kullanıcının sistemi daha performanslı kullanabilmesi için yalnızca pencereler üzerinden sistemin yönetilebilmesini sağlar. Örnek olması açısından yalnızca pencere yöneticisini kullandığınızda sistemin nasıl gözükeceğini aşağıdaki ***openbox*** pencere yöneticisi ekran görüntüsüne bakarak görebilirsiniz.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/openbox.png)

Şimdi hangi seçeneği hangi durumda seçmemiz gerektiği konusuna değinecek olursak;
Masaüstü ortamı içerisinde tüm grafiksel arayüz araçlarını barındıracağı için eğer sistemi kullanırken çok fazla grafiksel öge olduğunu ve bunların da sisteminizi yavaşlattığını düşünüyorsanız masaüstü ortamını kaldırarak sistemi yalnızca pencereler ile de yönetebilirsiniz.
Buradaki açıklama sizi tam olarak yönlendirmemiş olabilir ancak ileri ki kısımlarda hem yeni masaüstü ortamı kurulumunu hem de pencere yöneticisi kurulumunu göreceğiniz için hangisinin sizin için uygun olacağına kendiniz karar verebiliyor olacaksınız. Yani buradaki açıklamalar sizin için yeterli gelmediyse endişelenmeniz gerek yok.

## Masaüstü ortamını nasıl değiştirebiliriz ?

Masaüstü ortamı dediğimiz şeyin grafiksel arayüz içerisindeki ögelerin tamamına yakınını kapsadığını daha önceki kısımda belirtmiştik. Yani  arkaplan, menü çubuğu, araç çubuğu, gösterge paneli ve bunlar gibi her şey masaüstü ortamını kapsıyor. 
![enter image description here](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/desktop-env.png?raw=true)
Yani biz yeni bir masaüstü ortamı kurduğumuzda tüm bu ögeler de yeni masaüstü ortamı ile birlikte değişiyor. Eğer şu anda kullanmakta olduğunuz mevcut masaüstü ortamını değiştirmek isterseniz birbirinden farklı bir çok masaüstü ortamı seçeneğiniz bulunuyor. Ben başlıca masaüstü ortamlarının genel özelliklerinden bahsedeceğim ancak ondan önce mevcut masaüstü ortamımızı nasıl kendimize göre düzenleyip özelleştirebiliriz onu öğrenelim.

### Gnome3 Masaüstü Ortamını Özelleştirmek
Kullanmakta olduğumuz Kali Linux dağıtımı varsayılan olarak en çok kullanılan masaüstü ortamlarından olan Gnome3 masaüstü ortamı ile birlikte geliyor. Gnome3 masaüstü ortamı oldukça yaygın şekilde kullanılmakta ve grafiksel arayüz bakımından bir çok kolaylık sunmaktadır. Ancak son dönemlerde geliştirici ekibin almış olduğu radikal kararlar doğrultusunda; masaüstünde yer alan kısayolların ve bazı önemli grafiksel arayüz araçlarının kaldırılması ile birlikte bir çok kullanıcı tarafından Gnome3 masaüstü ortamı kullanışsız bulunmaktadır. Ayrıca Gnome3 çok fazla grafiksel öge ve gereğinden fazla animasyonlu içerik barındırdığından sistem performansını da diğer masaüstü ortamlarına göre oldukça fazla olumsuz etkilemektedir. Bu noktada belirtmeliyim ki Gnome3 masaüstü ortamını kötülemek gibi bir niyetim yok, dileyen arkadaşlar elbette severek kullanmaya devam edebilir. Ancak son dönemlerde edindiğim tecrübeler ve bana yapılan geri bildirimler ile birlikte artık Gnome3 masaüstü ortamının pek de verimli çalışmadığı kanaatine varmış bulunuyorum. 
Fakat yine de Gnome3 masaüstü ortamını kullanmaya devam edecek olan arkadaşlar için Gnome3 temasında nasıl değişiklik yapabileceğimizi ele almak istiyorum.
Öncelikle bu tema değişikliklerinin bir sınırının olmadığı için bu özelleştirmelerin tamamını kapsamlı şekilde anlatmam mümkün değil. Ancak ben bu kısımda sizlere genel olarak yeni bir temayı nasıl edinebileceğinizi ve bu temanızı nasıl sisteme geçirebileceğinizi göstereceğim.

Gnome3 masaüstü arayüzünü kullanıyorken genel tema değişimlerini ince ayarlar menüsü üzerinden gerçekleştiriyoruz. Bu nedenle öncelikle ince ayarlar menümüzden ne gibi değişiklikler yapabileceğimizi öğrenmek için ince ayarlar menüsünü açalım.
İnce ayarlar menüsü açıldıktan sonra "**Görünüm**" sekmesine gelelim.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/tweaks.gif)
Burada yer alan seçenekler sistem arayüzünde yapabileceğimiz temasal değişiklikleri gösteriyor. Görünüm sekmesinde yer alan seçenekleri sırasıyla ele alacak olursak;

**Uygulamalar;** Sistemdeki pencerelerin görünümünü değiştiriyor. Herhangi bir uygulama çalıştığında uygulamayı çevreleyen çerçevelere pencere deniyor. Örnek için aşağıdaki görsele bakabilirsiniz.
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

Artık Gnome3 masaüstü ortamında değiştirebileceğimiz kısımlara göz attığımıza göre sırası ile nasıl değiştirebiliriz görelim.

Tema kurulumunu yapmak için öncelikle hoşumuza gidecek bir tema edinmemiz gerekiyor. 
Bunun için https://www.gnome-look.org/ adresine girelim. Bu site gnome ile ilgili temasal değişiklikleri içeren oldukça geniş çaplı bir platform. Ama ben şimdi örnek olası için çok detaya girmeden yalnızca genel temayı değiştirmeyi ele alacağım. 

***Uygulamalar Kısmını Değiştirmek***

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/6.png)
Tema değişimi için ***GTK3 Themes*** yazan sekmeye tıklayalım.
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/7.png)
Buradan gözünüze hitap eden bir tema belirleyebilirsiniz ben şimdi örnek olması açısından ilk temayı seçiyorum. Açılan tema sayfasından tema ile ilgili detaylı bilgi alabilir ve ekran görüntüleri ile tema hakkında fikir sahibi olabilirsiniz. 
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/8.gif)
Temayı indirmek için **Download** butonuna basalım ve buradan istediğimiz içeriği indirelim. Gördüğünüz gibi bu temanın bir çok farklı varyasyonu bulunuyormuş, ben herhangi birini seçiyorum.  Ve ***Save File*** diyerek dosyanın inmesini sağlıyorum. 

Bu arada ben burada sizlere yol göstermek amacıyla örnekler verdiğim için çok fazla tema içeriğini karıştırmıyorum ancak sizler elbette deneye deneye hoşunuza gidecek temayı bulabilirsiniz. Zaten kurulum işlemi de oldukça basit olduğundan çok çabucak bir sürü tema deneyebilirsiniz. 

Neyse dosyamız da inmiş oldu. Şimdi dosyamızı sistemin görebilmesi için ***usr/share/themes*** klasörüne çıkarmamız gerekiyor. 
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

Benim Gnome3 ile ilgili göstereceğim temasal değişiklikler bu kadar, dileyen arkadaşlar çok daha fazla kurcalayarak çok daha fazla seçeneğe ulaşabilir. Şimdi Gnome3 masaüstü ortamını bir kenara bırakarak yeni masaüstü ortamlarını tanıyalım.

# Masaüstü Ortamları ve Kısaca Özellikleri

Baştan belirtmek isterim ki benim burada yazacağım şeyler kendi deneyimlerim ve genel gözlemlerimdir. Yani tam anlamıyla sizi yönlendirmeyebilir. Ben burada sizlerin kurulum yapmadan önce daha iyi fikir sahibi olabilmeniz için Kali Linux dağıtımında kullanılabilen masaüstü ortamlarının başlıca özeliklerini kısaca açıklamaya çalıştım. Ancak burada belirttiğim özellikler bir çok faktöre göre değişmektedir, yani siz buradan fikir sahibi olun ancak kesinlikle ve kesinlikle kendiniz deneyerek hangisinin sizin için en ideali olduğuna kendiniz karar verin. Uyarımı peşin peşin yaptıktan sonra hadi artık lafı daha fazla uzatmadan Kali Linux'a uygun olan masaüstü ortamlarının genel özelliklerini tanımaya başlayalım.

### XFCE
Görsel olarak oldukça yalındır ve hiç bir gereksiz görsel arayüz ögesi kullanmaz. Önceliği sistemin maksimum verimde çalışmasıdır, minimal bir sistemdir. Çok hafif olduğundan sistemi yormadan oldukça hızlı şekilde çalışır.  Eğer benim işim performans görsellik önemli değil diyorsanız tercih edebilirsiniz.

### KDE
Daha çok Windows'u andırır, asıl hedefi grafiksel arayüz kullanıcılarıdır. Yani konsoldan ziyade kullanıcının her işi grafiksel arayüzde yapabilmesi üzerine dizayn edilmiştir. İlk defa Linux kullanmaya başlayacak kullanıcılar için geçiş evresinde sıklıkla tercih edilen bir temadır. Ancak ben yine de kullanıcıyı konsoldan uzaklaştırdığı ve bu sebeple Linux' un gerçek gücünü ortaya koyamadığı için pek de önermiyorum. Bu söylediklerimden bu ortam kötüdür anlamı çıkmasın, sadece konsol üzerine yoğunlaşacak arkadaşlara öneri olarak belirtiyorum. Geçiş evresinde kullanılabilir ancak aman ha bağımlılık yapmasın yoksa konsol hakimliği, sisteme hükmetmek falan yalan olur söyleyeyim :)

### LXDE
Az bir donanım özelliği ile çok iyi işler çıkarabileceğiniz oldukça yalın masaüstü ortamıdır. Dolayısı ile grafiksel arayüz kısmında pek bir şey beklememek lazım. Amacınız sitemi verimli şekilde kullanmaksa ve elinizde güçlü bir donanım yoksa tercih edebilirsiniz. 

### Cinnamon
Cinnamon Gnome baz alınarak alınarak geliştirildiği için en çok tercih edilen masaüstü ortamıdır. Hatta son zamanlarda bir çok kullanıcıya göre kötüye giden Gnome3 için harika bir alternatiftir. Grafiksel arayüzünün kullanıcı dostu olması ve sistemi de çok fazla yormaması Cinnamon'u normal kullanıcılar arasında popüler yapmıştır. Hatta en çok kullanılan Linux dağıtımı olan Linux Mint' de varsayılan olarak Cinnamon kullanmaktadır. Ve Mint' in bu başarısı Cinnamon'un kullanışlı yapısına bağlanmaktadır.

### MATE
Mate masaüstü ortamı da Gnome3'ün hantallığından bunalan kullanıcılar için harika bir alternatiftir. Bir zamanlar bir çok kullanıcı tarafından oldukça sevilen Gnome2'nin çatallamasıdır, ve özlem duyulan Gnome2'nin temsilcisidir. Sistem çok fazla kaynak tüketmez ayrıca sizleri grafiksel olarak da yormaz. Günlük rutin işlerinizi de çok rahat şekilde yerine getirebilirsiniz.

### e17
Güçlüdür, aynı zamanda gayet de şıktır. Hani olağan üstü görsel bir arayüz sunmaz ama sunduğu performansın yanında içinizi daraltacak bir görünüme de sahip değildir. Bir çok cihazda oldukça verimli şekilde çalışmaktadır. Deneyimlemenizde fayda var derim :)

# Kali Linux için Masaüstü Ortamları Kurma-Kaldırma İşlemleri

## **XFCE Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/xfce.png)
**XFCE Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies

**Kurulu Olan XFCE Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove xfce4 xfce4-places-plugin xfce4-goodies

## **KDE Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/kde.png)
**Debian için Standart KDE Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install kali-defaults kali-root-login desktop-base kde-standard
**KDE Full Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install kali-defaults kali-root-login desktop-base kde-full

**Kurulu Olan KDE Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove kde-plasma-desktop kde-plasma-netbook kde-standard
## **LXDE Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/lxde.png)
**LXDE Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install lxde-core lxde kali-defaults kali-root-login desktop-base

**Kurulu Olan LXDE Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove lxde-core lxde
## **Cinnamon Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/cinnamon.jpg)
**Cinnamon Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install kali-defaults kali-root-login desktop-base cinnamon

**Kurulu Olan Cinnamon Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove cinnamon
## **Mate Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/mate.png)
**Mate Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install kali-defaults kali-root-login desktop-base mate-desktop-environment-extra

**Kurulu Olan Mate Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove mate-core
	
## **e17 Masaüstü Ortamı**
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/21-Sistem%20G%C3%B6r%C3%BCn%C3%BCm%C3%BCn%C3%BC%20%C3%96zelle%C5%9Ftirme/e17.png)
**e17 Masaüstü Ortamını Kali Linux'a Kurmak İçin:**

	apt-get install e17

**Kurulu Olan e17 Masaüstü Ortamını Kali Linux'tan Kaldırmak İçin**

	apt-get remove e17
