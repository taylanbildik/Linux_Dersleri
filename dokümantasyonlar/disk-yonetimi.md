# Disk Yönetimi

Söz konusu sistemi yönetmek olduğunda disk yönetimi önemli konuların başında geliyor. Tüm disk işlemlerini bilinçli şekilde gerçekleştirebilmemiz için de neyi neden yaptığımızın farkında olmamız gerekiyor. Bu sebeple öncelikle uygulamalar sırasında bahsi geçecek olan bazı kavramları temel düzeyde açıklamak istiyorum. Mevcut eğitimin hedefi temel düzey olduğu için elbette çok teknik detaylara giremeyeceğiz. 

En temelden başlayacak olursak verilerin nasıl ele alındığıyla başlayabiliriz. 

# Veri Nedir ve Nasıl Ölçülür ?

Bilgisayarların yalnızca 0 ve 1’lerden anladığını mutlaka duymuşsunuzdur. Düşük akım “0” iken yüksek akım “1” olarak kabul ediliyor. Bu elektrik sinyallerinin uygun şekilde sıralanması ile bilgisayar, verileri işleyip sonuçlarını sunabiliyor. Tüm veri aktarımı bu ikili sayı sistemi üzerinden yapılıyor. Bu ikili sayı sistemine yani 0 ve 1’lerden oluşan veri kümesine de “ikili kod” yani “binary code” deniyor. 

Bu 0 ve 1 sinyalleri de bilgisayarlar üzerindeki en küçük veri birimi olan **bit** kelimesi ile ifade ediliyor. **Bit** ifadesi küçük **b** ile temsil ediliyor. 

**8 tane bit** yan yana getirilerek de bir **bayt** oluşturuluyor. Baytlar da büyük **B** ile ifade ediliyor. Bir bayt 2^8 den tam 256 farklı değeri temsil edebiliyor. Bu baytlar da **ascii** gibi standartlarca belirlenmiş olan özel karaktere karşılık geliyor. Örneğin büyük **A** harfinin ikili sayı sistemindeki karşılığı **0 1 0 0 0 0 0 1** olup **ascii** kodu **65’**tir. Bizi şu an doğrudan ilgilendirmediği için **ascii** kodunun nasıl hesaplandığına değinmek istemiyorum. Kısa bir ek araştırma ile ulaşabilirsiniz.

![aschii.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/aschii.webp)
Neticede burada esas vurgulamak istediğim, biz tek bir karakteri kullandığımızda örneğin klavyemizden “a” tuşuna bastığımızda bu karakter toplam 8 bitten 1 bayta karşılık geliyor ve bilgisayar bu “a” karakterini ikili kod olarak ele alıp işliyor. Elbette sizlerin de bildiği gibi büyüklük birimleri bitlerden ve baytlardan ibaret değil. Aşağıdaki tabloya bakarak diğer büyüklük birimlerini de görebiliriz. Normalde bizler hep ondalık sayı sistemine göre karşılıklarını telaffuz ediyoruz ancak bazı komut çıktılarında da karşılaşabileceğimiz gibi büyüklük birimlerinin ikili gösterimi de bulunuyor. 

![decimal-binary-table](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/decimal-binary.webp)[Tablo Kaynağı](https://en.wikipedia.org/wiki/Byte#Multiple-byte_units)
**Ondalık(Decimal) Gösterim:**

1000 bayt = 1 kilobayt, 

1000 kilobayt =  1 megabayt, 

1000 megabayt = 1 gigabayt ediyor. 

**İkili(Binary) Gösterim:**

1024 bayt = 1 kibibyte, 

1024 kibibayt = 1 mebibyte, 

1024 mebibyte = 1 gibibyte ediyor. 

Bu sebeple özellikle disk yönetimiyle ilgili kullandığımız komutların sonucunda, ikili gösterimin kısaltması olan **KiB MiB GiB** gibi kısaltmalarla karşılaşıyor olacağız. Disklerle ilgili uygulamalar yaparken zaten bu gösterimlerle karşılaşacağımız için şimdiden açıklamak istedim. Bizler yaygın olarak ondalık gösterimi kullanıyor olsak da aslında bilgisayarların ikili sayı sisteminden anladığını biraz önce belirttik. Yani aslında bilgisayarlar için ikili sayı sistemini temsil eden büyüklük değerleri(Kib, MiB, GiB) geçerlidir. 

Yine de ikili sayı sistemine oranla ticari olarak, ondalık gösterim daha büyük alan vaat ediyor gibi göründüğü için depolama birimlerinin büyüklüklerini tanımlamada çok daha yaygın kullanılıyor. Zaten bu sebeple bizler de yaygın olarak ondalık(MB, KB, GB) gösterimin büyüklük karşılığına aşina oluyoruz.

Normalde karıştırılanın aksine örneğin 1 gigabayt 1024 megabayt değildir. Hatta teyit etmek için Google’a “**1 gb to mb**” şeklinde yazıp aratabiliriz. 

![gb-to-mb.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/gb-to-mb.webp)
Bakın **1 gigabyte**’ın **1000 megabyte** olduğu belirtiliyor. Zaten bu sebeple satın aldığımız diskler sisteme bağladığımızda bizim beklediğimizden daha az depolama alanına sahip gözüküyor. 

Örneğin **1 terabayt**lık disk, sistem üzerinde yaklaşık **931 gibibyte** olarak gözüküyor. Çünkü depolama alanının büyüklük birimi **terabayttan gibibyte** dönüştürülüyor. Yine Google üzerinden de bu durumu teyit edebiliriz. 

![tb-to-gib.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/tb-to-gib.webp)
Bakın **1 terabayt** aslında yaklaşık olarak **931 gibibayt**. Bilgisayar, ikili sayı sistemi üzerinden hesaplama yaptığı için onluktan ikili düzene geçişte bu farklar ortaya çıkıyor. Bizler de işletim sistemleri üzerinde bu büyüklük farklarını görebiliyoruz.

En genel haliyle büyüklük birimleri hakkında bilmemiz gerekenler bunlar. 

# Veriler Diskte Nasıl Depolanır ?

Büyüklük birimlerinden bahsettiğimize göre verilerin diskte nasıl depolandığından da kısaca bahsedebiliriz. Elbette fiziksel olarak disklerin nasıl çalıştığına değinmeyeceğiz. Ama merak ediyorsanız Youtube üzerinde animasyonlu şekilde diske nasıl veriler yazıldığı ve verilerin nasıl okunduğunu açıklayan pek çok video var. Bunları izleyerek tam olarak nasıl çalıştığını kavrayabilirsiniz. Biz şimdi diskteki verilerin, birimlerinden bahsedelim.

## Sektör

**8 bit’**in **1 byte** ettiğini öğrendik. Baytlar da disk üzerindeki en küçük birim olan **sektörler** üzerinde barındırılıyor. Sektör dediğimiz kavram, diskteki verileri tutan fiziksel bir noktadır. Standart bir sabit diskte de her bir sektör 512 bayt veri tutabiliyor.

![sector.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/sector.webp)
## Blok

Sektör birimi dışında bir de blok olarak isimlendirilen işletim sistemleri için gruplanmış birimler vardır. Bloklar, en genel tanımıyla işletim sisteminin adresleyebileceği yani işaret edebileceği bir sektör grubudur. Bir blok yalnızca tek bir sektörden ibaret olabilir, ya da 2'li 4'lü 8'li 16'lı gibi birden çok sektörün bir araya gelmesiyle de oluşturulabilir.

![block.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/block.webp)
Blok olarak ifade ettiğimiz birim, aslında dosya sisteminin adresleyebileceği en küçük depolama birimini temsil eden bir soyutlamadır. Hatırlıyorsanız inode kavramından bahsederken, inode’un aslında disk üzerindeki verilerin hangi bloklarda olduğunu söyleyen yapı olduğunu öğrenmiştik. Yani aslında verilerin disk üzerinde bloklar halinde tutulduğunu daha önce de üstü kapalı şekilde görmüştük. Verilerin disk üzerinde bloklar halinde tutulmasının nedeni, diskin en verimli şekilde işletim sistemi tarafından yönetilebilmesini sağlamaktır. Ama şu an bu konunun detaylarına girmek istemiyorum. Anlatımın devamında neden blok yaklaşımın kullanıldığından zaten bahsedeceğiz. Şimdi blok kavramının tam olarak neyi ifade ettiği üzerinde biraz daha duralım. 

İşletim sisteminin ana yapısı olan çekirdek, tüm dosya sistemi işlemlerini blok birimleri üzerinden ele alınır. Burada depolama bağlamında kullandığımız "blok" ifadesi, disk donanımı ile sistemin kaynaklarını yönetmekten sorumlu olan çekirdek arasında arabirim oluşturabilen en küçük boyuttur. Yani fiziksel olarak böyle bir gruplama söz konusu değil. Yalnızca soyut olarak sektörlerin gruplanmış haline blok diyoruz. Dolayısıyla işletim sisteminin emirleri doğrultusunda bir diskten veri okunurken veya bir diske veri yazılırken, veriler bloklar halinde okunur veya yazılır. Örneğin Linux sisteminin varsayılan dosya sistemi formatı olan **ext4**’ün, standart blok boyutu **4096 byte**dir. Disk üzerindeki en küçük birim olan tek bir sektör **512 byte** veri tutabildiği için bize soyutlama katmanı sunan ext4’ün varsayılan olarak ele aldığı en küçük disk birimi **8 sektörden meydana gelmiş tek bir bloktur**. Yani **ext4** dosya sistemine sahip disk bölümlerine veriler yazılırken veya okunurken disk üzerinde **4096 byte** karşılık gelen 8’er sektörlük birimler kullanılır. Bu da her veri kümesi için 4096 baytlık veri bloklarının kullanılacağı anlamına geliyor. 

![ext4-sector.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/ext4-sector.webp)
Belki buradaki açıklamalarım yeterince anlaşılır gelmemiş olabilir. Hemen somut bir örnek üzerinden açıklamalarımızı pekiştirelim.

Örneğin bir metin belgesi oluşturup içerisine tek bir karakter girersek, bu karakter 1 byte veriye karşılık gelecektir. Zaten tek bir karakterin 1 byte karşılık(~çoğunlukla) geldiğinden anlatımın başında bahsetmiştik. Bu karakter 1 byte karşılık geliyor ancak, bizim kullandığımız dosya sisteminin en küçük birimi olan blok boyutu 4096 byte olduğu için dosya içerisine yazdığımız 1 baytlık veri de olsa, disk üzerinde bu veri 4096 baytlık disk bölümü işgal edecek. Çünkü mevcut dosya sisteminin ele alabileceği yani kontrol edebileceği en küçük birim bu 4096 baytlık bloktur. Hemen uygulamalı şekilde bu durumu gözlemleyelim. 

Ben `cat > test` komutunu girip “**1**” yazıyorum ve alt satıra geçmeden <kbd>Ctrl</kbd> + <kbd>d</kbd> ile veri girişini sonlandırıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat > test                                                                                                                                              
1
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat test                                                                                                                                                
1
```

Gördüğünüz gibi içerisinde yalnızca 1 rakamı bulunuyor. Şimdi dosya hakkında daha detaylı bilgi almak için `stat test` komutunu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ stat test                                                                                                                                               
  File: test
  Size: 1               Blocks: 8          IO Block: 4096   regular file
Device: 801h/2049d      Inode: 2891462     Links: 1
Access: (0644/-rw-r--r--)  Uid: ( 1000/  taylan)   Gid: ( 1000/  taylan)
Access: 2023-07-09 05:09:17.715076334 -0400
Modify: 2023-07-09 05:09:15.184342332 -0400
Change: 2023-07-09 05:09:15.184342332 -0400
 Birth: 2023-07-09 05:08:20.403746381 -0400
```

Tüm bu çıktılardan biz şimdilik yalnızca büyüklükler hakkında bilgi sunan bu satıra odaklanacağız. 

```bash
  Size: 1               Blocks: 8          IO Block: 4096   regular file
```

Bakın dosyanın gerçek boyutu(Size:) **1** bayt olarak gözüküyor. Blocks ifadesinin karşısında da kaç tane sektörü işgal ettiği yazıyor. Hemen yanında da bloğun boyutu yazıyor. Buradaki “io” ifadesi “**i**nput **o**utput” ifadesinden geliyor. Bu bilgi de mevcut dosya sisteminin tek bir blok boyutunu belirtiyor. Neticede 1 baytlık bu dosyanın 4096 baytlık bir blok üzerinde 8 sektörlük disk alanını işgal ettiğini bu çıktılara bakarak teyit edebiliyoruz. Bizim örneğimizdeki tek bir karakterin diskte barındırılması için; bir sektör 512 bayt olduğu için tek bir blok için 8 sektör yani 4096 baytlık alan kullanılmış oldu.

![1byte.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/1byte.webp)
Emin olmak için dosya boyutunu bir blok boyutunu aşacak şekilde revize edebiliriz. Ben örnek olarak `echo {1..1045} > test2` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ echo {1..1045} > test2
```

Bu sayede 1’den 1045’e kadar olan tüm sayılar dosyaya yazılmış oldu. Şimdi `stat` komutu ile tekrar dosyanın özelliklerini görüntüleyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ stat test2
  File: test2
  Size: 4118            Blocks: 16         IO Block: 4096   regular file
Device: 801h/2049d      Inode: 2891462     Links: 1
Access: (0644/-rw-r--r--)  Uid: ( 1000/  taylan)   Gid: ( 1000/  taylan)
Access: 2023-07-09 05:09:17.715076334 -0400
Modify: 2023-07-09 05:12:35.272248119 -0400
Change: 2023-07-09 05:12:35.272248119 -0400
 Birth: 2023-07-09 05:08:20.403746381 -0400
```

Bakın dosyanın boyutu 4096 byte'ı sadece biraz geçmiş olmasına rağmen 16 sektörü yani toplam iki blokluk 8192 byte alanı işgal ediyor.

![4118byte.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/4118byte.webp)
İşte bizzat teyit edebildiğimiz gibi dosya sisteminin sahip olduğu blok boyutuna göre veriler, bloklar halinde diskte depolanıyor ve tekrar bu bloklar üzerinden okunuyor. Tam da bu noktada muhtemelen, bu yaklaşımla depolama biriminin tam olarak verimli kullanılamadığını yani bloklardaki boş disk alanlarının kullanılması gerektiğini düşünmüş olabilirsiniz. Ancak bu tam olarak doğru bir yaklaşım sayılmaz.

İşletim sistemi çekirdeğinin kontrolündeki dosya sistemine göre en küçük birim blok olduğu için bir bloğun kısmi bir bölümünü kullanamayız. Çünkü dosya sistemi bloktan daha küçük bir alana adresleme yapamaz. Yani ilk örneğimizde olduğu gibi 1 baytlık dosya için 4096 baytlık blok kullanılmak zorunda. Eğer bu dosyaya yeni veri eklenmezse başka bir dosyayla ilişkili olan herhangi bir veri bu bloğa yazılamaz. Çünkü dosya sistemi bloğun bir kısmına adresleme yapamaz. Yalnızca bloğun bütününe adresleme yapabilir. Zaten inode kavramını ele alırken bu durumdan da bahsetmiştik hatırlarsanız. Yani örneğin bir bloğun bir kısmında X dosyasının verileri bir kısmında da Y dosyasının verileri barındırılamaz. Çünkü barındırılsa bile dosya sistemi, bloktan daha küçük birimleri kontrol edemediği için X ve Y dosyası gibi bir ayrım gözetmeden yalnızca tüm bloğu işaret edebilir. Zaten hatırlarsanız inode değeri de dosyanın içindeki verilerin hangi bloklarda olduğunu söylüyordu. İlgili verilerin, bloğun tam olarak neresinde olduğuna bakılmıyor, komple bloğun kendisi ele alınıyor. Yani özetle veriler dosya sistemi tarafından blok blok ele alınıyor. Bu nedenle bir dosya aslında tüm bloğu tüketmese bile yani tüm bloğu doldurmasa bile, disk üzerindeki bloğa ayrılmış olan sektörlerin bir kısmı boş kalabilir. Dolayısıyla sistemde barındırılacak dosyaların genel boyutlarına göre blok boyutlarının belirlenmesi önemlidir. Eğer çoğunlukla büyük boyutlu dosyalar barındırılacaksa blok boyutları büyük olabilir. Ya da küçük boyutlu dosyalar bulunacaksa da blok boyutları küçük şekilde konfigüre edilebilir.

Ne kadar çok blok olursa, ilgili verilere ulaşması o kadar zaman alırken, disk alanı daha tasarruflu kullanılmış olur. Tersi şekilde blok sayısı az olduğunda da verileri ulaşım hızlıyken, alan tasarrufu mümkün olmayabilir. Bu sebeple aksini gerektiren özel bir durum olmadığı sürece kullanılan dosya sisteminin varsayılan blok boyutu tercih edilmedir. Bu varsayılan değer, ilgili dosya sistemi üzerindeki optimum değer olduğu için çoğunlukla en doğru tercihtir. 

Şimdilik daha fazla detaya gerek yok. Temel büyüklük ve blok gibi kavramları ele aldığımıza göre artık disk bölümleri hakkında da konuşabiliriz.

# Disk Bölümleri ve Bölümlendirme Tablosu

Fiziksel diskimizi yazılımsal olarak bölümlere ayırıp farklı amaçlar için kullanabiliyoruz. Hangi disk bölümünün nerede başlayıp nerede bittiğinin bilgisi de “bölümlendirme tablosu” olarak isimlendirilen MBR ya da GPT tablolarında tutuluyor. Aslında alternatif tablolar da var ancak şu an için bizi yalnızca MBR ve GPT ilgilendiriyor. 

## MBR

MBR, artık eskimiş olan ancak hala çok sık karşılaştığımız ve karşılaşmaya devam edeceğimiz disk bölümleme tablosudur. MBR disk bölümleme tablosu maksimum 2 TB'a kadar olan disk boyutlarını destekliyor. Ve MBR disk bölümleme tablosu kullanılarak disk yalnızca 4 birincil bölüme ayrılabiliyor. Yine de birincil bölüm sınırlamasını aşmak için, birincil bölümlerden birini mantıksal bölümlere ayrılan genişletilmiş bölüm olarak da kullanabiliyoruz. Yani MBR bölümleme tablosunda maksimum 3 birincil ve 1 genişletilmiş bölüm üzerinden 12 mantıksal olmak üzere toplam 15 tane bölüm oluşturabiliyoruz. 

![mbr-max.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/mbr-max.webp)
## GPT

**GPT**, zaman içinde disk kapasitelerinin artması ve diskleri daha fazla alana bölümlenebilmesi ihtiyaçları doğrultusunda **MBR**'ın yetersiz kaldığı noktada geliştirilmiş olan yeni nesil disk bölümleme tablosudur. GPT maksimum 8 [ZiB](https://en.wikipedia.org/wiki/ZiB)'a kadar olan disk boyutlarını destekliyor. Yani eski nesil bölümleme tablosu olan MBR'a oranla günümüz şartları için gereken büyüklükleri destekliyor. Ayrıca GPT sayesinde diski 128 bölüme ayırmamız da mümkündür. Hatta bu sayı bölümleme tablosunda daha fazla alan ayrılarak genişletilebilir ancak bizim için 128 bölüm bile son derece yeterli. Üstelik GPT disk bölümleme tablosunda “**primary**” ve “**extended**” yani “**birincil**” ve “**genişletilmiş**” diye bir ayrım da bulunmuyor. Tüm bölümler birincil olarak ayrılıyor. MBR üzerinde ise mantıksal bölümlerle birlikte maksimum 15 bölüm oluşturulabiliyor. 

Yani özetle MBR'a oranla GPT hem maksimum boyut hem de bölüm sayısı ile çok daha kullanışlı bir bölümleme tablosudur.

Aslında MBR ve GPT hakkında bahsedilebilecek pek çok ek detay daha bulunuyor ancak konuyu çok dağıtmak istemiyorum. Merak ediyorsanız tüm detaylarına kısa bir araştırma ile ulaşabilirsiniz. Neticede her iki bölümleme tablosu hakkında genel bilgi sahibi olduk. Şimdi bu bölümleme tablolarının nerede nasıl kullanıldığından bahsederek devam edelim.

# BIOS ve UEFI

Daha önce herhangi bir işletim sisteminin kurulumunu gerçekleştirdiyseniz, mutlaka BIOS ve UEFI kavramları ile karşılaşmışsınızdır. En genel haliyle bu kavramlar, bilgisayarın başlangıç aşamasından sorumlu olan yapıları ifade ediyor. BIOS daha eski bir yaklaşımken, UEFI yeni dönemin ihtiyaçlarına yanıt vermek üzere geliştirilmiş yeni bir çözümdür. 

En temel sorumlulukları, bilgisayar açılırken donanımların kontrolü gerçekleştirip, uygun olan diski başlatmaktır. Bu sayede disk içerisindeki işletim sistemi başlatılmış oluyor.

Yani aslında biz cihazımızı başlattığımızda BIOS veya UEFI (modern sistemlerde), öncelikle sistem donanımlarını kontrol ediyor. Eğer donanımlar sorunsuzsa, belirlenen öncelik sırasına göre ilk diski başlatıyor. Zaten daha önce işletim sistemi kurulumu yaptıysanız mutlaka BIOS veya UEFI ayarlarında, başlatmak istediğiniz diski ilk sıraya getirmişsinizdir. İlk sıradaki disk BIOS veya UEFI sayesinde başlatıldıktan sonra bu diskteki bölümlendirme tablosu kontrol ediliyor. Bölümlendirme tablosunda hangi bölüm "boot" edilecek yani "önyüklenecek" bölüm olarak işaretlendi ise o bölümün önyüklenmesi sağlanıyor. Zaten bu bölümde de genellikle "boot loader" olarak geçen, işletim sisteminin başlatılmasını için gerekli olan(çekirdek gibi) yapıları yükleyen bir araç vardır. Bu sayede boot loader üzerinden ilgili işletim sistemi başlatılmış olur. Örneğin diskinizde birden fazla işletim sistemi kurulu ise, boot loader yazılımı üzerinden istediğiniz işletim sisteminin başlatılmasını da sağlayabilirsiniz. Linux üzerinde boot loader olarak genellikle GRUB kullanılıyor fakat biz bu eğitimde bu konudan bahsetmeyeceğiz.

Özetle, eğer sizin cihazınızda BIOS kullanılıyorsa MBR disk bölümleme tablosunu kullanabiliyorsunuz. UEFI varsa, GPT bölümleme tablosunu kullanmanız mümkün oluyor.


BIOS genel işlem akışı.

![bios.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/bios.webp)
UEFI genel işlem akışı.

![uefi.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/uefi.webp)
Esasen bu konu pek çok detayı barındırıyor, fakat temel seviye için bu başlangıç yeterli. Netleştirmek için mutlaka ek olarak araştırmanızı öneririm. Yine de bu bölümdeki anlatımları takip etmek için şimdilik bu kadarlık bilgi yeterli.

# Dosya Sistemi Nedir ?

Dosya sistemi, en genel haliyle disk bölümündeki verilerin nasıl ele alınacağını belirleyen yapıdır. Dosya sistemi ifadesi, isminde de yer aldığı şekilde dosyaların diskteki veri karşılıklarının nasıl depolanıp ne şekilde ele alınacağını belirleyen sistematik bir metodolojiyi temsil eder. Dosya sistemi olmadan diskteki veriler yalnızca yığınlardan ibarettir. Dosya sistemi olmadan diskteki verilere erişip onları yönetemeyiz. 

![file-systemd-vs.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/file-systemd-vs.webp)
Tek bir diski birden fazla bölüme ayırabildiğimiz için de esasen aynı fiziksel diskteki farklı bölümlerde birbirinden farklı dosya sistemlerini kullanmamız da mümkündür. 

![multi-filesystem](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/multi-filesystem.webp)
Bu sayede aynı disk aygıtı üzerinden, ihtiyaca yönelik farklı dosya sistemleri kullanılabilir. Yani diski bölümledikten sonra işiniz bitmiyor aslında. Bu disk bölümü için bir de dosya sistemi tanımlaması yapmanız gerekiyor. Aksi halde işletim sistemi üzerinden disk bölümündeki verilere ulaşılması mümkün olmuyor. Çünkü dosya sistemleri, verilerin diskte nasıl depolandığı ve tekrar nasıl erişilebileceğini işletim sistemine izah ediyor. 

Dizinlerde gezintiyi ele aldığımız bölümde Linux sisteminin "**dosya sistemi hiyerarşisini**" de kısaca açıklamıştık. Linux sisteminde tüm dosyalar “**kök dizin**” olarak ifade edilen “**/**“ dizininden başlayıp alt klasörlerde hiyerarşik düzende tutuluyor. Linux, farklı dizinlere farklı disk bölümlerini bağlamayı da mümkün kıldığı için kök dizin altında gözüken ancak birbirinden farklı disk bölümlerinde birbirinden farklı dosya sistemlerine sahip klasörler tek bir dizin hiyerarşisi içerisinde gözükebiliyor.

![file-systemd-hierarchy](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/file-systemd-hierarchy.webp)
Normalde Windows sisteminden bildiğimiz üzere işletim sisteminin kurulu olduğu disk “**C:**” olarak isimlendirilir ve ek disk aygıtları ya da bölümleri de **D:** **E:** **F:** gibi isimler ile ayrı olarak bağlanıp kullanılır. Linux'ta ise tüm disk aygıtları kök dizin altındaki uygun klasöre bağlanarak kullanılıyor. Yani ayrı olarak ele alınmıyor, tekil hiyerarşi olduğu için bu hiyerarşiye dahil ediliyor. 

Linux sistemi pek çok farklı dosya sistemini destekliyor. Bunları görmek için `cat /proc/filesystem` komutunu girebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /proc/filesystems 
nodev   sysfs
nodev   tmpfs
nodev   bdev
nodev   proc
nodev   cgroup
nodev   cgroup2
nodev   cpuset
nodev   devtmpfs
nodev   debugfs
nodev   tracefs
nodev   securityfs
nodev   sockfs
nodev   bpf
nodev   pipefs
nodev   ramfs
nodev   hugetlbfs
nodev   devpts
nodev   mqueue
nodev   pstore
        ext3
        ext2
        ext4
nodev   autofs
nodev   configfs
        fuseblk
nodev   fuse
nodev   fusectl
nodev   rpc_pipefs
nodev   vboxsf
```

Linux çekirdeğin desteklediği dosya sistemleri konsola bastırıldı. Aslında hepsi burada yazmıyor fakat bu noktada tüm detaylara hakim olmamız şart değil. Birden fazla dosya sistemi olduğunu bilmemiz yeterli. Elbette her bir dosya sisteminin avantajları ve dezavantajları birbirinden farklı. Dolayısıyla farklı amaçlar için farklı dosya sistemleri kullanılabiliyor. Bunların detayları için ekstra araştırma yapabilirsiniz. Ben anlatımlar sırasında Linux üzerinde yaygın kullanıma sahip olan **ext4** dosya sistemini kullanıyor olacağım. 

# Hazırlık

Diskler üzerinde uygulamalar yapabilmek için öncelikle uygun ortamı hazırlamamız gerekiyor. Merak etmeyin disk işlemleri için birden fazla diske veya büyük disk kapasitelerine sahip olmanız gerekmiyor. Sanal makine üzerinden de istediğimiz biçimde sanal disk oluşturup bunlar üzerinden uygulama yapabiliriz. Üstelik sanal ortamda çalıştığımız için, mevcut disklerimizdeki verileri kaybetmekten korkmadan disk yönetimi konusunda pratik yapabiliriz.

Disk üzerinde yapılan işlemler normal şartlarda çok risklidir. Eğer yedeği yoksa yaptığınız hataları telafi etmeniz mümkün olmayabilir. Bu sebeple öğrenme aşaması için sanal sistem üzerinde kurcalamaktan korkmadan tüm işlemleri ve sonuçlarını deneyimlemek en mantıklı yaklaşım olacaktır. Yani eğer eğitimi sanal makine üzerinden takip etmiyorsanız size önerim en azından disk yönetimi bölümünü yani bu bölümdeki uygulamaları sanal makineniz üzerinden takip etmenizdir. 

Ben kurulum rehberini herkes için ulaşılabilir olması açısından ücretsiz virtualbox sanallaştırma yazılımı üzerinden ele alacağım. Siz dilediğiniz bir sanallaştırma çözümünü kullanabilirsiniz elbette.

Ayrıca zaman içinde arayüz değişiminden dolayı, buradaki sanal disk ekleme rehberi eskimiş olabilir. Bu durumda sezgisel olarak ya da kısa internet araştırması ile nasıl sanal disk ekleyebileceğinizi keşfedebilirsiniz.

## Virtualbox Üzerinden Sanal Disk Eklemek

Öncelikle sanal makinenizi kapatmanız gerekiyor. Çünkü makine açıkken ayarlarını değiştirmemiz mümkün değil.

![close-virtualbox.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/close-virtualbox.webp)
Sanal makinenizin üzerine sağ tıklayıp ayarları açın.

![virtualbox-settings.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-settings.webp)
Ayar penceresindeki “**Depolama**” sekmesine tıklayın.

![virtualbox-settings-storage.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-settings-storage.webp)
Denetleyici üzerindeki disk ekleme ikonuna tıklayın.

![virtualbox-controller.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-controller.webp)
Yeni disk oluşturmak üzere “**Oluştur**” butonuna basın.

![virtualbox-add-disk.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-add-disk.webp)
Bu pencerede bize oluşturmak istediğimiz sanal diskin türü soruluyor. Standart olan seçenekle devam edebiliriz. Merak ediyorsanız diğer seçenekleri araştırabilirsiniz.

![virtualbox-add-disk2.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-add-disk2.webp)
İlgili disk bölümü sanal makinede doldurulmadığı sürece gerçek diskteki alan dolmayacağı için varsayılan seçenekle devam edebilirsiniz. Eğer burada “Tam boyutu önceden ayır” seçeneğini seçerseniz, ilgili disk sanal sistemde kullanılsa da kullanılmasa da mevcut diskinizden sizin belirlediğiniz disk boyutu kadar alan ayrılacaktır. Bu yöntem sanal diskin hızlı çalışmasını sağlasa da eğer diskinizde çok alan yoksa bu seçeneği seçmenizi önermem. Bırakın, sanal disk kullanıldıkça fiziksel diskinizden alan ayrılsın.

![virtualbox-add-disk3.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-add-disk3.webp)
Sanal diskin boyutunu ve nerede barındırılması gerektiğini belirlememiz gerekiyor. Ben açıklamalar sırasında vereceğim örnekler için yeterli olacağından, yalnızca 2GB boyutunda disk oluşturuyorum. 

![virtualbox-add-disk4.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-add-disk4.webp)
Son olarak oluşturduğunuz yeni sanal diski makineye eklemek için buradan seçmemiz gerek.

![virtualbox-add-disk5.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-add-disk5.webp)
Gördüğünüz gibi disk bölümü sanal makineye eklenmiş bulunuyor.

![virtualbox-add-disk-final.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-add-disk-final.webp)
Bu şekilde sanal makinenize sanal diskler ekleyebilirsiniz. Ben tıpkı burada ele aldığım şekilde örnekler sırasında kullanmak üzere 2 tane daha 1GB’lık disk ekleyeceğim.

![virtualbox-add-disk-final2.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-add-disk-final2.webp)
Sanal SATA disklerini oluşturdum.

Örnek için yalnızca SATA denetleyicisi üzerinden disk oluşturdum ama farklı disk biçimlerini de kullanabiliriz. Pratikler sırasında farklı disk biçimlerini de görebilmek adına oluşturduğumuz sanal disklere ek olarak bir de sanal `NVMe` disk de eklesek iyi olabilir. Bunun için öncelikle uygun denetleyiciyi eklememiz gerekiyor.

![virtualbox-add-controller.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-add-controller.webp)
![virtualbox-controller-nvme.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-controller-nvme.webp)
Tıpkı daha önce SATA denetleyicisi üzerinden yaptığımız gibi, şimdi de bu denetleyici üzerinden aynı şekilde yeni disk ekleyebiliriz.

![virtualbox-controller-nvme2.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-controller-nvme2.webp)
Ben 10GB ve 1GB olmak üzere iki tane NVMe disk eklemek istiyorum.

![virtualbox-controller-nvme3.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/virtualbox-controller-nvme3.webp)
Ben örnek olarak anlatım sırasında bu diskleri kullanıyor olacağım. Sizler bu kadar disk oluşturmak zorunda değilsiniz. Ben sadece birden fazla diskin nasıl görüneceği hakkında fikir sahibi olabilmemiz için birden fazla ve farklı türde disk ekledim sadece. Hepsini doğrudan kullanmayacağım. Sizler dilediğiniz boyutta dilediğiniz kadar disk oluşturabilirsiniz. Yani fiziksel diskinizde uygun alan yoksa benimle aynı şekilde ve sayıda disk oluşturmak zorunda değilsiniz. 1 veya 2 disk oluşturabiliyorsanız da beni rahatlıkla takip edebilirsiniz. Yalnızca açıklamalarımı dikkatlice takip etmeniz yeterli. Şimdi sanal makinemizi çalıştırıp diskler üzerinde pratik yapmaya başlayabiliriz.

# Blok Aygıtlarını Listelemek | `lsblk`

Diskler, Linux üzerinde blok aygıtları olarak anıldıkları için “**l**i**s**t **bl**oc**k** devices” ifadesinin kısaltmasından gelen `lsblk` komutu ile disk aygıtlarının ve bölümlerinin sistem üzerindeki isimlerini öğrenebiliyoruz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk 
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda       8:0    0   80G  0 disk 
├─sda1    8:1    0   79G  0 part /
├─sda2    8:2    0    1K  0 part 
└─sda5    8:5    0  975M  0 part [SWAP]
sdb       8:16   0    2G  0 disk 
sdc       8:32   0    1G  0 disk 
sdd       8:48   0    1G  0 disk 
sr0      11:0    1 1024M  0 rom  
nvme0n1 259:0    0    1G  0 disk 
nvme0n2 259:1    0   10G  0 disk
```

Aldığımız çıktıda **sda** diski bu diskin altında **sda1** **sda2** **sda5** şeklinde birden fazla disk bölümü yer alıyor. Çıktılara dikkatlice bakacak olursak **sda** aslında mevcut sistemimizin kurulu olduğu diski temsil eden sanal dosyadır. Sistemin kurulu olduğu disk, bağlanan ilk disk olduğu için **sda** şeklinde isimlendirilmiş. 

Sisteme birden fazla disk takılı olduğunda, görebildiğiniz gibi **sdb sdc sdd** gibi sıralı şekilde isimlendiriliyor. Elbette **sd** ifadesi de olmak zorunda değil. Örneğin benzer şekilde **nvme** diskleri **nvme0n1** ve **nvme0n2** olarak isimlendiriliyor. Ayrıca ben sanal makineme misafir eklentisini kurarken sanal optik disk kullandığım için burada **sr0** olarak gözüküyor. Birden fazla optik disk olsaydı, **sr1 sr2** şeklinde sıralı olarak isimlendirileceklerdi. Yani aygıtların dosya karşılıklarının isimlendirilmesi çekirdek tarafından, kullanılan disk türüne göre belirleniyor. Ayrıca sisteme bağlanma sıralarına göre "**a b c**" veya "**1 2 3**" şeklinde isimlerinin sonuna, sırayı belirten kısaltmalar da ekleniyor.

Bu noktada tekrar dikkatinizi çekmek istediğim nokta, bir diski birden fazla bölüme ayırılabiliyor olmamızdır. Buradaki çıktılardan da **sda** diski altında sıralı şekilde disk bölümlerini görebiliyoruz. 

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code>┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk 
NAME    MAJ:MIN RM  SIZE RO <span class="mavi">TYPE</span> <span class="yesil">MOUNTPOINTS</span>
sda       8:0    0   80G  0 <span class="mavi">disk</span> 
├─sda1    8:1    0   79G  0 <span class="mavi">part</span> <span class="yesil">/</span>
├─sda2    8:2    0    1K  0 <span class="mavi">part</span> 
└─sda5    8:5    0  975M  0 <span class="mavi">part</span> <span class="yesil">[SWAP]</span>
sdb       8:16   0    2G  0 <span class="mavi">disk</span> 
sdc       8:32   0    1G  0 <span class="mavi">disk</span> 
sdd       8:48   0    1G  0 <span class="mavi">disk</span> 
sr0      11:0    1 1024M  0 <span class="mavi">rom </span> 
nvme0n1 259:0    0    1G  0 <span class="mavi">disk</span> 
nvme0n2 259:1    0   10G  0 <span class="mavi">disk</span>
</code></pre></div></div>

<p class="mavi">Zaten altığımız çıktıdaki sütunların başlıklarına baktığımızda “<strong>type</strong>” yani “tip” kısmında da hangisinin "<strong>disk</strong>" hangisinin "<strong>disk bölümü(part)</strong>" olduğu açıkça belirtiliyor. İşte disk bölümleri de ilgili diskin aygıt isminin sonuna numaralar getirilerek bu şekilde otomatik olarak isimlendiriliyor.</p>

<p class="yesil">Ayrıca “<strong>mountpoint</strong>” yani bağlanma noktası sütunundan, disk bölümlerinin <strong>dosya sistemi hiyerarşisinde hangi klasöre bağlı olduğunu</strong> da görebiliyoruz. Buradaki bağlamaktan kasıt, bu disk bölümüne hangi konumdan erişebileceğimizin belirtilmesidir. Örneğin Windows üzerinde yeni disk bölümü oluşturduğumuzda bu disk <strong>D</strong> veya <strong>E</strong> gibi bir isme sahip olur ve diskler bölümünden üzerine tıklayarak ilgili disk bölümündeki verilere erişebiliriz. İşte Linux üzerinde de disk bölümlerini bir klasöre bağlamamız ve bu klasör üzerinden disk bölümündeki verilere erişmemiz gerekiyor. Disk bölümlerinin dosya sistemi hiyerarşisindeki uygun bir klasöre bağlanmasına da “<strong>mounting</strong>” deniyor. Örneğin kök dizin(<strong>/</strong>) <strong>sda1</strong>’e bağlı iken <strong>sda5</strong> bölümü de <strong>SWAP</strong> olarak bağlı.</p>

Bu durumda ben kök dizin(**/**) altında işlem yapıyorken aslında kök dizini aracılığı ile bu disk bölümünde(**sda1**) işlem yapıyorum. 

Ayrıca aldığımız çıktılardaki diğer detayları merak ettiyseniz burada bizi ilgilendiren detay “**rm**” ve “**ro**” olarak geçen sütunlar. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk 
NAME    MAJ:MIN RM  SIZE RO <span TYPE MOUNTPOINTS
sda       8:0    0   80G  0 <span disk
├─sda1    8:1    0   79G  0 <span part /
├─sda2    8:2    0    1K  0 <span part
└─sda5    8:5    0  975M  0 <span part [SWAP]
sdb       8:16   0    2G  0 <span disk 
sdc       8:32   0    1G  0 <span disk 
sdd       8:48   0    1G  0 <span disk 
sr0      11:0    1 1024M  0 <span rom  
nvme0n1 259:0    0    1G  0 <span disk 
nvme0n2 259:1    0   10G  0 <span disk
```

**rm** sütunu blok aygıtının çıkarılabilir olup olmadığını belirtiyor. Zaten “**r**e**m**ovable” yani Türkçe "çıkarılabilir" ifadesinin kısalmasından geliyor. Aldığımız tabloda, blok aygıtına karşılık gelen bu sütun **0** ise o aygıt **çıkarılabilir biçimde değildir**. Eğer **1** rakamı varsa o **aygıt çıkabilir biçimdedir**. Örneğin tabloya dönüp bakın, optik disk(sr0) çıkarılabilir biçimde olduğu için **1** olarak gözüküyor. Ayrıca sisteme takılı ise USB flash disk olsaydı bu da çıkarılabilir biçimde olduğu için 1 olarak gözükecekti. **Çıkarılabilir olmayanlar** tabloda da gördüğünüz gibi **0** değerine sahip.

**ro** olarak geçen sütun ise ilgili blok aygıtının “**r**ead **o**nly” yani “yalnızca okuma” modunda olup olmadığını gösteriyor. Eğer buradaki değer **1** ise ilgili blok aygıtı **yalnızca okunabilir** biçimdedir. Eğer **0** ise ilgili blok aygıtının içine **veri de eklenebilir**. 

Hazır `lsblk` komutunu ele almışken son olarak `-f` seçeneğinden de kısaca bahsetmek istiyorum. Eğer aygıt dosyalarının sahip olduğu "dosya sistemleri" hakkında bilgi almak istersek `lsblk -f` komutunu kullanabiliyoruz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk -f
NAME    FSTYPE FSVER LABEL UUID                                 FSAVAIL FSUSE% MOUNTPOINTS
sda                                                                            
├─sda1  ext4   1.0         491d3534-b3d9-47af-ad63-66b0e72fe8dd   61.6G    15% /
├─sda2                                                                         
└─sda5  swap   1           00253fba-ff78-4f04-b189-fbc974082345                [SWAP]
sdb                                                                            
sdc                                                                            
sdd                                                                            
sr0                                                                            
nvme0n1                                                                        
nvme0n2
```

Kurulum aşamasında oluşturulan diskler **ext4** ve **swap** dosya sistemlerine sahipler, bu bilgiyi **FSTYPE** sütununa bakarak teyit edebiliyoruz. Buradaki **LABEL** sütunu da bu disk bölümlerine tanımlanan **etiketlerin** gözüktüğü bölüm. Ben herhangi bir etiket tanımlamadığım için şu an boş gözüküyor. **UUID** ise ilgili disk aygıtının **benzersiz kimlik** numarasıdır. Ayrıca dosya sistemlerinin sahip olduğu toplam boyut ve ne kadarının kullanıldığı da buradaki sütunlarda belirtiliyor. Ve elbette ilgili dosya sisteminin hangi dizine bağlı olduğu da “**MOUNTPOINTS**” sütunu altında tam dizin adresi olacak şekilde yazıyor. 

Şimdi burada benim dikkatimi çeken detay, yeni eklediğimiz disklerle ilgili hiç bir çıktının bastırılmamış olması. Aslında bu çok normal çünkü bu diskler üzerinde hiç bir ayarlama yapmadık tamamen tanımsız haldeler. `lsblk` komutunun `f` seçeneği yalnızca blok aygıtlarının dosya sistemleri hakkında bilgi almak için kullanılıyor. Bu yeni disk aygıtlarında da henüz dosya sistemi tanımlı olmadığı için doğal olarak hiç bir çıktı bastırılamadı. Anlatımın devamında disklerimize dosya sistemi eklediğimizde burada görebiliyor olacağız. Diskler üzerinde yönetim gerçekleştirmeye, öncelikle diskleri nasıl bölümleyebileceğimizden bahsederek başlayabiliriz. 

Bölümleme işlemine geçmeden önce komut satırı üzerinden gerçekleştireceğimiz işlemleri aslında grafiksel arayüzlü çeşitli yazılımlar ile yerine getirebileceğimizi de belirtmek istiyorum. Yine de her zaman grafiksel arayüze erişimimiz olmayabileceği veya kabuk programlama gibi otomatik çözümler için komut satırı araçlarını kullanmamız gerekeceği için öncelikle temel disk yönetim işlerimizi komut satırı üzerinden nasıl gerçekleştirebileceğimizi öğrenmemiz önemli. Zaten temel kavramları komut satırı üzerinden öğrendikten sonra grafiksel arayüze sahip araçları ekstra bir eğitime ihtiyaç duymadan kendi başınıza öğrenip rahatlıkla kullanabilirsiniz.

Gelin diskleri nasıl bölümleyebileceğimizi ele alarak devam edelim.

# Diskleri Bölümlemek | `fdisk`

Disk bölümleme için alternatif pek çok araç olsa da ben `fdisk` aracını kullanıyor olacağım. `fdisk` aracının kullanımı son derece basit. `fdisk` komutunun ardından, üzerinde işlem yapmak istediğimiz diskin adını belirtmemiz yeterli. Eğer diskin sistem üzerindeki ismini bilmiyorsak `fdisk -l` komutu ile mevcut tüm diskleri özellikleriyle birlikte detaylıca listeleyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ fdisk -l
fdisk: cannot open /dev/nvme0n1: Permission denied
fdisk: cannot open /dev/nvme0n2: Permission denied
fdisk: cannot open /dev/sdd: Permission denied
fdisk: cannot open /dev/sdb: Permission denied
fdisk: cannot open /dev/sdc: Permission denied
fdisk: cannot open /dev/sda: Permission denied
```

Elbette diskler üzerinde işlem yapacağımız için `fdisk` aracını `sudo` komutu ile root yetkileri dahilinde çalıştırmamız gerekiyor. Eğer `sudo` komutu olmadan kullanırsak görebildiğiniz gibi erişim yetkisi hatası alıyoruz. Ben diskleri listelemek için komutumu `sudo fdisk -l` şeklinde giriyorum.

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code>
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo fdisk -l
[sudo] password for taylan: 
Disk /dev/nvme0n1: 1 GiB, 1073741824 bytes, 2097152 sectors
Disk model: ORCL-VBOX-NVME-VER12                    
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

Disk /dev/nvme0n2: 10 GiB, 10737418240 bytes, 20971520 sectors
Disk model: ORCL-VBOX-NVME-VER12                    
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

Disk /dev/sdd: 2 GiB, 2147483648 bytes, 4194304 sectors                      
Disk model: VBOX HARDDISK                                                    
Units: sectors of 1 * 512 = 512 bytes                                        
Sector size (logical/physical): 512 bytes / 512 bytes                        
I/O size (minimum/optimal): 512 bytes / 512 bytes                            
                                                                             
                                                                             
Disk /dev/sdb: 1 GiB, 1073741824 bytes, 2097152 sectors                      
Disk model: VBOX HARDDISK                                                    
Units: sectors of 1 * 512 = 512 bytes                                        
Sector size (logical/physical): 512 bytes / 512 bytes                        
I/O size (minimum/optimal): 512 bytes / 512 bytes                            
                                                                             

Disk /dev/sdc: 1 GiB, 1073741824 bytes, 2097152 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

Disk <span class="mavi">/dev/sda</span>: <span class="kirmizi">80 GiB</span>, <span class="turuncu">85899345920 bytes</span>, <span class="mor">167772160 sectors</span>
<span class="yesil">Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xd562e290</span>

Device     Boot     Start       End   Sectors  Size Id Type
/dev/sda1  *         2048 165771263 165769216   79G 83 Linux
/dev/sda2       165773310 167770111   1996802  975M  5 Extended
/dev/sda5       165773312 167770111   1996800  975M 82 Linux swap / Solaris
</code></pre></div></div>


Bakın tüm diskler ve disk bölümleri listelenmiş oldu. Örneğin mevcut sistemin kurulu olduğu disk ve diskin bölümleri **/dev/sda** adı altında yer alıyor. Burada <span class="mavi">diskin ismi</span>, <span class="kirmizi">boyutu</span>, <span class="turuncu">toplam byte kapasitesi</span>, <span class="mor">toplam sektör sayısı</span> yazıyor. <span class="yesil">Diskin modeli ve bir sektörün kaç byte olduğu gibi çeşitli bilgiler de burada yazıyor.</span>

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code>
Disk /dev/sda: 80 GiB, 85899345920 bytes, 167772160 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xd562e290

<span class="mavi">Device   </span>  <span class="kirmizi">Boot</span> <span class="turuncu">    Start</span> <span class="mor">      End</span> <span class="yesil">  Sectors</span>  <span class="sari">Size</span> <span class="gri">Id</span> <span class="pembe">Type</span> 
<span class="mavi">/dev/sda1</span>  <span class="kirmizi">*   </span> <span class="turuncu">     2048</span> <span class="mor">165771263</span> <span class="yesil">165769216</span>  <span class="sari"> 79G</span> <span class="gri">83</span> <span class="pembe">Linux</span> 
<span class="mavi">/dev/sda2</span>  <span class="kirmizi">    </span> <span class="turuncu">165773310</span> <span class="mor">167770111</span> <span class="yesil">  1996802</span>  <span class="sari">975M</span> <span class="gri"> 5</span> <span class="pembe">Extended</span> 
<span class="mavi">/dev/sda5</span>  <span class="kirmizi">    </span> <span class="turuncu">165773312</span> <span class="mor">167770111</span> <span class="yesil">  1996800</span>  <span class="sari">975M</span> <span class="gri">82</span> <span class="pembe">Linux swap / Solaris</span> 
</code></pre></div></div>

Eğer disk bölümlerine bakacak olursak, ilk sütunda ilgili bölümlerin sistemdeki <span class="mavi">aygıt isimlerini</span> görebiliyoruz. Boot sütununda ise ilgili bölümün <span class="kirmizi">boot edilebilir olup olmadığı</span> belirtiliyor. Yıldız işareti, bu bölümün önyükleme sırasında kullanılabileceğini belirtiyor. Sistemin önyüklenemesi için gereken çekirdek dosyaları gibi dosyaları barındıran ***boot*** dizini, kök dizin altında olduğu için kök dizini boot edilebilir gözüküyor. Bu "boot" edilebilir işareti sayesinde sistem başlangıcında bu diskin "önyükleme" işlemi için kullanılması gerektiğini belirtmiş oluyoruz. Eğer boot dizinini farklı bir disk bölümüne bağlamış olsaydım, o dizin "boot" edilebilir olarak gözükecekti.

Start, ve end sütunları ilgili bölümün diskin <span class="turuncu">kaçıncı sektöründe başlayıp</span> <span class="mor">kaçıncı sektöründe sonlandığını</span> yani diskin ne kadarlık bölümünü kapladığını belirleyen sınırdır. Diskleri bölümlerken başlangıç ve bitiş sektörlerini tanımlayarak birden fazla bölüme ayırıyoruz. Buradaki **Start** ve **End** de bunu belirtiyor. **Sectors** sütunu da bu bölümdeki <span class="yesil">toplam sektör sayısını</span> belirtiyor. Başlangıç ve son sektör sayılarını çıkardığımızda zaten buradaki sayıyı elde ediyoruz. **Size** sütunu da <span class="sari">diskin toplam boyutunu</span> okunaklı şekilde belirtiyor. **Id** sütunu da <span class="gri">dosya sistemini temsil eden kimliktir</span>. Bu disk bölümleri **ext4** dosya sistemini kullandığı için **83** numaralı id ye karşılık geliyor. **Type** kısmından da <span class="pembe">dosya sisteminin türü</span> hakkında bilgi alabiliyoruz.

Tamamdır `fdisk` aracının çıktılarını açıklığa kavuşturduğumuza göre artık bir diski istediğimiz şekilde bölümlemeyi deneyebiliriz. Ben bölümlemek için 2 GB'lık alana sahip olan **sdd** diskimi kullanmak istiyorum. 

```bash
Disk /dev/sdd: 2 GiB, 2147483648 bytes, 4194304 sectors                      
Disk model: VBOX HARDDISK                                                    
Units: sectors of 1 * 512 = 512 bytes                                        
Sector size (logical/physical): 512 bytes / 512 bytes                        
I/O size (minimum/optimal): 512 bytes / 512 bytes         
```

Zaten içerisi bomboş yani ne bir dosya sistemi tanımlı ne de bir dosya mevcut. Eğer bu diski bölümlemeden dosya sistemi tanımlarsam daha sonra diskteki mevcut verileri kaybetmeden diski tekrar bölümleyemem. Bu sebeple ben dosya sistemi tanımlamadan önce 1 GB’lık yeni bir disk bölümü oluşturmak istiyorum. Bu disk üzerinde işlem yapabilmem için diskin aygıt adını `fdisk  /dev/sdd` şeklinde girmem gerek. Elbette disk ile ilgili işlem yaparken yetki gerektiği için tüm komutlarımızı `sudo` ile yetkili şekilde girmemiz gerekiyor. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo fdisk /dev/sdd

Welcome to fdisk (util-linux 2.37.3).                                                                                                                       
Changes will remain in memory only, until you decide to write them.                                                                                         
Be careful before using the write command.

Device does not contain a recognized partition table.
Created a new DOS disklabel with disk identifier 0xbaecfcb8.

Command (m for help):
```

Bakın `fdisk` aracım açıldı ve şu an benden emir bekliyor. Eğer hangi işlemi nasıl yapacağımızı bilmiyorsak **m** tuşuna basarak yardım bilgisine ulaşabiliriz. 

```bash
Command (m for help): m

Help:

  DOS (MBR)
   a   toggle a bootable flag
   b   edit nested BSD disklabel
   c   toggle the dos compatibility flag

  Generic
   d   delete a partition
   F   list free unpartitioned space
   l   list known partition types
   n   add a new partition
   p   print the partition table
   t   change a partition type
   v   verify the partition table
   i   print information about a partition

  Misc
   m   print this menu
   u   change display/entry units
   x   extra functionality (experts only)

  Script
   I   load disk layout from sfdisk script file
   O   dump disk layout to sfdisk script file

  Save & Exit
   w   write table to disk and exit
   q   quit without saving changes

  Create a new label
   g   create a new empty GPT partition table
   G   create a new empty SGI (IRIX) partition table
   o   create a new empty DOS partition table
   s   create a new empty Sun partition table

Command (m for help):
```

Burada yapabileceğimiz tüm işlemlerin kısaltmaları ve açıklamaları yer alıyor. 

## Disk Bilgisini Bastırmak

Ben öncelikle mevcut disk hakkında bilgi almak istiyorum. Bunun için burada belirtildiği şekilde `p` seçeneğini kullanmam gerekiyor. 

```bash
Command (m for help): p
Disk /dev/sdd: 2 GiB, 2147483648 bytes, 4194304 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xbaecfcb8

Command (m for help):
```

Bakın mevcut disk hakkında pek çok detay bastırıldı. Boyutu ve bu diskin kullandığı bölümleme tablosu tipi de burada yazıyor. Hatta dikkatlice bakacak olursak, disk boyutu olarak **gib** yani **gibibyte** olarak büyüklüğün yazıldığını da görebiliyoruz. İşte daha önce de bahsetmiş olduğumuz şekilde, çeşitli disk yönetim araçlarında bu büyüklükler ile karşılaşıyor ve kullanıyor olacağız.

## Bölümlendirme Tablosunu Değiştirmek

Aldığımız çıktılara dikkatlice bakacak olursak "**Disklabel type: dos**" satırında, disk bölümleme tablosunun türü de belirtiliyor. Buradaki "**dos**” ifadesi “**MBR**” bölümleme tablosunu temsil ediyor. Yani bu diskimiz “MBR” bölümleme tablosunu kullanıyormuş. Eğer ben bu diskin bölümleme tablosunu değiştirmek istersem `fdisk` aracının yardım bilgisinde yer alan "**create a new label**" başlığı altındaki kısaltmalardan uygun bir tanesini kullanabilirim. Örneğin ben “MBR” yerine “GPT” disk bölümleme tablosunu kullanmak istersem `g` yazıp onaylamam yeterli. 

```bash
Command (m for help): g
Created a new GPT disklabel (GUID: B512C410-CD72-ED44-94A7-1D6328C959B6).

Command (m for help):
```

Şu an disk içeriği tamamen boş olduğu için yani henüz disk üzerinde hiç bölümleme veya veri aktarımı yapmadığım için disk tablosunu değiştirmem sorun olmayacak. **Ancak `fdisk` aracı ile bölümleme tablosunu değiştirirken dikkat edin çünkü içerisinde veri bulunan disklerin bölümleme tablosunu değiştirmek disk içerisindeki tüm bölümlerin tahrip olması yani disk verilerinin kaybedilmesiyle sonuçlanır.** Eğer bölümlendirme tablosunu değiştirmeniz gerekiyorsa bunun için alternatif yazılımlar ve yaklaşımlar mevcut fakat genellikle önerilen bir durum değil. Değişim için öncelikle yedek alınması her zaman tavsiye edilir. Bu sebeple diskte hangi tür bölümleme tablosunun kullanılacağını en başında belirlememiz gerekiyor. Yani bölümleme işleminden de önce, ne tür bir bölümleme tablosu kullanılacağını belirlememiz gerekiyor.

Tekrar `p` yazıp disk özelliklerini listelediğimde bölümleme türünün GPT olarak değişmiş olduğunu görebiliyorum. 

```bash
Command (m for help): p
Disk /dev/sdd: 2 GiB, 2147483648 bytes, 4194304 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: B512C410-CD72-ED44-94A7-1D6328C959B6

Command (m for help):
```

Eğer “gpt” olarak kullanmaktan vazgeçersek “mbr” için de "`o`" kısaltmasını kullanabiliriz. 

```bash
Command (m for help): o
Created a new DOS disklabel with disk identifier 0x0b09a6c1.

Command (m for help): p
Disk /dev/sdd: 2 GiB, 2147483648 bytes, 4194304 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x0b09a6c1
```

Tekrar `p` seçeneği ile kontrol ettiğimde tekrar “dos” yani “mbr” bölümleme tablosuna geçiş yapıldığını görebiliyorum.

İşte bu şekilde disk üzerinde istediğimiz konfigürasyonu gerçekleştirene kadar tekrar tekrar ayarlamalarda bulunabiliyoruz. **Çünkü biz nihai olarak onaylamadan, bu değişikler disk üzerinde geçerli olmuyor.** Anlatımın devamında, yaptığımız değişiklerin nasıl geçerli olacağından ayrıca bahsedeceğiz. Disk bölümleme tablosunu değiştirebileceğimizi söyledim ancak ben yine de sizlere MBR bölümleme tablosunu göstermek istediğim için yine MBR ile devam etmek istiyorum. Siz isterseniz `g` seçeneğini kullanarak diskinizde GPT bölümleme tablosunu da kullanabilirsiniz.

Disk için bölümleme tablosu tanımladıktan sonra, diski bölümlemeniz de artık mümkün.

## Yeni Disk Bölümü Oluşturmak

Diskin bölümleme tablosunu karar verdiğimize göre artık istediğimiz biçimde disk bölümü oluşturabiliriz. Yeni disk bölümü oluşturmak için yardım listesinden de görebildiğimiz üzere `n` seçeneğini kullanabiliyoruz.

```bash
Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p):
```

Bu diskte “MBR” disk bölümleme tablosunu kullandığım için, oluşturulacak disk bölümünün “primary” yani “birincil” mi yoksa “extended” yani “genişletilmiş” mi olması gerektiği soruluyor. Eğer "GPT" kullanıyor olsaydık bu ayrım olmadığı için bu soru sorulmayacaktı. Bu kavramlardan zaten bahsetmiştik hatırlarsanız. Aldığımız çıktılarda, birincil bölümde 4 tane sınır olduğu için kaç tane birincil disk bölümünün ve genişletilmiş disk bölümünün bulunduğu ve kaç bölümün birincil olarak kullanılabileceği de açıkça belirtiliyor. Ben birincil bölüm oluşturmak istediğim için `p` yazıp onaylıyorum. 

```bash
Select (default p): p
Partition number (1-4, default 1):
```

Kaçıncı sıradaki birincil bölüm olması gerektiğini soruyor. Ben ilk sırada olmasını istediğim için <kbd>enter</kbd> ile varsayılan değer olan 1’i onaylıyorum. 

```bash
Select (default p): p
Partition number (1-4, default 1): 
First sector (2048-4194303, default 2048):
```

Bakın şimdi de disk bölümünün hangi sektörden başlayacağını soruyor. Zaten ilk disk olduğu için burada belirtilen değer minimum başlangıç sektörüdür. Ben de varsayılan değer olan 2048’i seçmek için <kbd>enter</kbd> ile devam ediyorum. Eğer siz diskinizde boşta kullanılmayan bir alan bırakmak istiyorsanız başlangıç sektörünü daha yüksek belirtebilirsiniz. Ancak bunun yerine bitiş sektörünü daha küçük tutarak alan ayırmanız daha mantıklı olabilir.

```bash
Select (default p): p
Partition number (1-4, default 1): 
First sector (2048-4194303, default 2048): 
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-4194303, default 4194303):
```

Şimdi bizden en son sektörü girmemizi istiyor. Bu sayede başlangıç ve en son sektör arasındaki tüm sektörler bu disk bölümü için ayrılmış olacak. Yani burada disk bölümünün kapasitesini belirliyoruz aslında. Biraz önce de söylediğim şekilde sektör numarasını küçük tutarsak, bu bölümün ardından diskte kullanılmayan sektörler kalacağı için daha sonra kullanılmak üzere diskte boş alan bırakmış oluyoruz. Ayrıca burada son sektör deniyor ancak son sektörü sayısal olarak girmek zorunda da değiliz. Dilersek daha kolay şekilde disk bölümünün boyutunu doğrudan buradaki büyüklük(**K**,**M**,**G**,**T**,**P**) ifadeleri ile de belirtebiliriz. Bu sayede belirttiğimiz büyüklüğe göre `fdisk` aracı otomatik olarak son sektörü hesaplayıp kullanabilir. Yani biz zaten başlangıç sektörünü biraz önce girdiğimiz için istediğimiz boyuta uygun son sektör de otomatik olarak tanımlanacak. 

Eğer `+` işaretinden sonra bir büyüklük değeri yazarsak, örneğin `+512M` şeklinde yazarsak başlangıç sektörünün üstüne **512 mebibyte** kadar eklenip, en son sektör otomatik olarak hesaplanacak. Yani biz bu kullanımla ilk sektörden itibaren **512 mebibyte**'lık sektörü ayır demiş oluyoruz. 

Eğer eksi `-` işaretini kullanırsak da bu kez son sektörden geriye doğru gidilerek hesaplanır. Örneğin ben `-512 M` yazarsam son sektörden **512 mebibyte** kadar sektör geriye gidilerek, bizim oluşturmak istediğimiz disk bölümünün en son sektörü belirlenir. Yani toplam iki gibibayt'lık boyutu olan bu diskte **+512M** yazarsak yeni disk bölümü **512 mebibyte** alana sahip olur. Eğer **-512** yazarsak da son sektörden **512 mebibyte** kadar alan geri gidileceği için, oluşturulan yeni bölüm **1.5 gibibyte** kadarlık disk alanına sahip olur. Hazır yeri gelmişken buradaki artı ve eksi işaretlerinin işlevlerini paylaşmak istedim. Genelde artı işareti kullanılıyor ancak bizler artık eksi işaretinin işlevini de biliyoruz.

Ben 1 GiB bölüm oluşturmak istediğim için `+1G` şeklinde yazılıyorum. Ayrıca buradaki büyüklük birimlerine de değinmemiz gerekirse, kolayca tahmin edebileceğiz gibi buradaki **K kibibyte**, **M mebibyte,** **G gibibyte,** **T tebibyte,** **P** ise **pebibyte** anlamına geliyor. İstediğiniz büyüklüğü, bu karakterlerden uygun olanı kullanarak kolayca belirtebilirsiniz.

```bash
Select (default p): p
Partition number (1-4, default 1): 
First sector (2048-4194303, default 2048): 
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-4194303, default 4194303): +1G

Created a new partition 1 of type 'Linux' and of size 1 GiB.

Command (m for help):
```

İlgili değeri belirtip <kbd>enter</kbd> ile onayladığımızda, yeni bölüm oluşturulmuş oluyor. Ancak işimiz burada bitmedi. Çünkü değişikliklerin geçerli olabilmesi değişiklikleri kaydetmemiz gerekiyor.

## Değişiklikleri Kaydetmek

Şu ana kadar `fdisk` aracını kullanarak, yalnızca yapılması gereken değişiklikleri belirtmiş olduk. Eğer şimdiye kadar gerçekleştirmiş olduğumuz değişikliklerin disk üzerinde uygulanmasını istiyorsak `w` karakterini girip <kbd>enter</kbd> ile işlemi onaylamamız gerekiyor. Tersi şekilde, eğer değişiklikleri kaydetmek istemezsek `q` karakterini girip <kbd>enter</kbd> ile onaylayarak diskte hiç bir değişim olmadan `fdisk` aracından çıkabiliriz. Yani şimdiye kadar yaptığımız hiç bir işlem aslında disk üzerinde henüz uygulanmadı. Eğer yaptığınız işlemlerden vazgeçtiyseniz `q` yazıp <kbd>enter</kbd> ile `fdisk` aracını kapatabilirsiniz. 

Tersi şekilde yaptığınız değişiklikleri onaylamak isterseniz de `w` yazıp <kbd>enter</kbd> ile onaylayabilirsiniz.

```bash
Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
```

Bakın diskin bölümleme tablosunun değiştirildiğini bildiren çıktıyı aldık. Yeni oluşturduğumuz disk bölümü, bölümleme tablosuna eklendiği için bu çıktı bastırıldı. Yani yeni disk bölümü oluşturma işlemimiz başarıyla tamamlanmış oldu. 

Şimdi teyit etmek için tekrar `sudo fdisk -l` komutu ile diskleri listeleyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo fdisk -l
.
..
...

Disk /dev/sdd: 2 GiB, 2147483648 bytes, 4194304 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x0b09a6c1

Device     Boot Start     End Sectors Size Id Type
/dev/sdd1        2048 2099199 2097152   1G  0 Empty

...
..
.
```

<p class="mavi"><strong>ℹ️ Not:</strong> Çıktıları kısaltarak ekledim. Ayrıca yalnızca ilgili disk aygıtı hakkında bilgi almak istiyorsanız <code class="language-plaintext highlighter-rouge">sudo fdisk -l /dev/aygıt-adı</code> şeklinde disk aygıtını argüman olarak da belirtebilirsiniz.</p>

Bakın yeni oluşturduğum disk bölümü burada yer alıyor. Yani `fdisk` aracını kullanarak diskimizi bölümlendirmeyi başarmış olduk. `fdisk` aracı her aşamada bizi yönlendirdiği ve `m` komutu ile her zaman yardım alabildiğimiz için kullanımı son derece kolay.

Şimdi bu disk bölümünü kullanabilmek için öncelikle bu disk bölümüne bir dosya sistemi tanımlamamız gerekiyor. Bu sayede işletim sistemimiz bu disk bölümünü tanıyıp veri alışverişi için kullanabiliyor olacak. Daha önce de dosya sisteminin hangi görevde olduğundan ve öneminden zaten bahsettik. Yani dosya sistemi olmadan işletim sistemi üzerinden disk bölümündeki verilere ulaşamayacağımızı biliyorsunuz. Bu sebeple mevcut bir disk bölümüne, istediğimiz bir dosya sistemini nasıl tanımlayabileceğimizi ele alalım.

# Dosya Sistemi Tanımlamak | `mkfs`

Dosya sistemi tanımlamak için, tanımlamak istediğimiz dosya sisteminin türüne göre kullanmamız gereken araç değişiyor. Fakat bu durum gözünüzü korkutmasın, çünkü `mkfs` yani “**m**a**k**e **f**ile**s**ystem” yazıp iki kez <kbd>Tab</kbd> tuşuna bastığımızda tanımlayabileceğimiz dosya sistemleri zaten listeleniyor.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ mkfs
mkfs         mkfs.cramfs  mkfs.ext2    mkfs.ext4    mkfs.jffs2   mkfs.msdos   mkfs.ubifs   
mkfs.bfs     mkfs.exfat   mkfs.ext3    mkfs.fat     mkfs.minix   mkfs.ntfs    mkfs.vfat
```

Çıktılardan görebildiğiniz gibi, noktadan sonra kullanmak istediğimiz dosya sisteminin adını girmemiz yeterli. Örneğin ben **ext4** dosya sistemini tanımlamak istediğim için `mkfs.ext4` komutunu kullanacağım. Bu komuta da argüman olarak hangi disk bölümü için bu dosya sistemini tanımlayacaksam onun aygıt adını girmem yeterli. Biz zaten `fdisk -l` komutu ile aygıtları listelemiştik. Yani ben dosya sistemi eklemek istediğim bölümün adının ***/dev/sdd1*** olduğunu bildiğim için `mkfs.ext4 /dev/sdd1` komutunu gireceğim. Elbette `sudo` komutu ile işlemi yetkili olarak gerçekleştirmemiz gerekiyor. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo mkfs.ext4 /dev/sdd1
mke2fs 1.46.5 (30-Dec-2021)
Creating filesystem with 262144 4k blocks and 65536 inodes
Filesystem UUID: e0b3196f-8180-476b-8041-081a3d016d0f
Superblock backups stored on blocks: 
        32768, 98304, 163840, 229376

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (8192 blocks): done
Writing superblocks and filesystem accounting information: done
```

Komutumu girdikten çok kısa bir süre sonra, dosya sistemi tanımladı ve dosya sisteminin çeşitli özellikleri de konsola bastırıldı. Dosya sisteminde toplam kaç blok olduğu, her bir bloğun boyutu ve toplam inode sayıları çıktıda görülebiliyor. Ayrıca diskin benzersiz UUID’si yani kimliği de bu çıktıda gözüküyor. Daha önce disk ve disk bölümlerinin isimlendirilmesinin çekirdek tarafından, sisteme bağlanma sıralarına göre sırasıyla belirlendiğinden bahsetmiştik. Dolayısıyla aslında disklerin bağlanma sıralaması değişirse bu "**/dev/sdd1**" gibi olan aygıt ismi de örneğin "**/dev/sdc1**" şeklinde değişebileceği için, benzersiz UUID değerini kullanmak çok daha doğru bir yaklaşım. İleride disklerimizi sistemimize bağlarken bu UUID konusundan tekrar bahsedeceğiz zaten.

İşte dosya sistemi tanımlamak bu kadar kolay. Tek yapmanız gereken hangi dosya sistemini kullanacaksanız ona uygun aracı ve doğru disk bölümünü belirtmeniz. 

Diskimizi nasıl bölümlere ayırabileceğimizden ve ayrıca disk bölümlerine istediğimiz dosya sistemini nasıl tanımlayabileceğimizden bahsettiğimize göre artık, disk bölümünü nasıl sistemimize bağlayabileceğimizden bahsederek devam edebiliriz.

# Disklerin Bağlanması | `mount`

Daha önce kısaca bahsettiğimiz "sisteme bağlama" kavramını tekrar tanımlayacak olursak. İngilizce “**mounting**” olarak geçen “bağlama” işlemi; mevcut sistem tarafından desteklenen dosya sistemine sahip olan disk bölümlerinin, işletim sistemine bağlanarak erişilebilir hale getirilmesidir. 

Bir "dosya sistemini" mevcut sistemimize bağlamak için “bağlama” anlamına gelen `mount` komutunun ardından, sisteme bağlamak istediğimiz disk bölümünün aygıt ismini ve bu bölümün dosya sistemi hiyerarşisinde hangi dizin altına bağlanacağını belirtmemiz gerekiyor.

Normalde USB Flash diskler gibi çıkarılabilir aygıtlar ***/media*** dizini altındaki bir klasöre bağlanırken, sabit disk gibi aygıtlar ***/mnt*** dizini altındaki klasörlere bağlanıyor. Bu şart olmamakla birlikte, Linux'un hiyerarşik yaklaşımı gereği bu şekilde bir sınıflandırma var. Ancak elbette yalnızca ***/mnt*** veya ***/media*** dizinlerine bağlamak zorunda da değiliz. İstediğimiz herhangi bir klasöre bağlayabiliriz. Örneğin ben istersem masaüstünde bir klasör oluşturup, disk bölümünü bu klasöre bağlayabilirim. Hatta hemen bizzat deneyelim.
 
Öncelikle bağlanacak dizini oluşturmak üzere `mkdir ~/Desktop/disk` komutu ile masaüstünde "***disk***" isminde bir klasör oluşturuyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ mkdir ~/Desktop/disk
```

Tamamdır, artık yeni oluşturduğum disk bölümünü buraya bağlayıp disk bölümüne buradan erişebilirim. 

Disk bölümünü bağlamak için ilgili disk aygıtının ismini biliyor olmamız gerek. Ben `sudo fdisk -l` komutu ile teyit ediyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo fdisk -l                                                                                                                                
Disk /dev/nvme0n1: 1 GiB, 1073741824 bytes, 2097152 sectors
Disk model: ORCL-VBOX-NVME-VER12                    
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

Disk /dev/nvme0n2: 10 GiB, 10737418240 bytes, 20971520 sectors
Disk model: ORCL-VBOX-NVME-VER12                    
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

Disk /dev/sdd: 1 GiB, 1073741824 bytes, 2097152 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

Disk /dev/sdc: 1 GiB, 1073741824 bytes, 2097152 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

Disk /dev/sda: 80 GiB, 85899345920 bytes, 167772160 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xd562e290

Device     Boot     Start       End   Sectors  Size Id Type
/dev/sda1  *         2048 165771263 165769216   79G 83 Linux
/dev/sda2       165773310 167770111   1996802  975M  5 Extended
/dev/sda5       165773312 167770111   1996800  975M 82 Linux swap / Solaris

Disk /dev/sdb: 2 GiB, 2147483648 bytes, 4194304 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xb2de8f5b

Device     Boot Start     End Sectors Size Id Type
/dev/sdb1        2048 2099199 2097152   1G 83 Linu
```

Bakın ben bu dokümanı yazarken kısa bir ara verip sistemi yeniden başlattığım için, daha önce üzerinde işlem yaptığım ***/dev/sdd*** olarak geçen disk artık ***/dev/sdb*** olarak isimlendirilmiş gözüküyor. Zaten bu sebeple işlem yapmadan önce disk isimlerini teyit etmek önemli.

Şimdi disk bölümünü bu klasöre bağlamak için sırasıyla hangi disk aygıtının hangi dizine bağlanacağını `sudo mount /dev/sdb1 ~/Desktop/disk` şeklinde belirtmemiz gerekiyor.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo mount /dev/sdb1 ~/Desktop/disk/

┌──(taylan㉿linuxdersleri)-[~]
└─$
```

Tamamdır artık ilgili disk bloğuna bu dizin altından erişebiliyor olacağım. Yani bu dizin içine bir dosya eklediğimde ya da buradaki bir dosyayı sildiğimde aslında o disk bölümündeki veriler üzerinde işlem yapmış olacağım. `mount` işleminin aslında disk bölümlerine bir nevi giriş kapısı görevi gördüğünü düşünebilirsiniz. Bağlama işlemi sayesinde bu disk bölümünün dosya sistemi hiyerarşisindeki karşılığı benim oluşturduğum bu dizin oldu. Ben bu dizin üzerinden disk bölümündeki verileri yönetiyor olacağım. `lsblk` komutu ile blok aygıtlarını tekrar listeleyip bağlı oldukları dizinlere de bakalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk 
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda       8:0    0   80G  0 disk 
├─sda1    8:1    0   79G  0 part /
├─sda2    8:2    0    1K  0 part 
└─sda5    8:5    0  975M  0 part [SWAP]
sdb       8:16   0    2G  0 disk 
└─sdb1    8:17   0    1G  0 part /home/taylan/Desktop/disk
sdc       8:32   0    1G  0 disk 
sdd       8:48   0    1G  0 disk 
sr0      11:0    1 1024M  0 rom  
nvme0n1 259:0    0    1G  0 disk 
nvme0n2 259:1    0   10G  0 disk
```

Bakın yeni oluşturduğum disk bölümü, masaüstündeki ***disk*** isimli dizine bağlı gözüküyor. Artık disk bölümünü bağladığımıza göre artık bu bölümü kullanabiliriz.

Basit bir test için bu disk bölümüne bir klasör eklemeyi deneyelim. Ben örnek olması için `mkdir ~/Desktop/disk/deneme` şeklinde yazıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ mkdir ~/Desktop/disk/deneme
mkdir: cannot create directory ‘/home/taylan/Desktop/disk/deneme’: Permission denied
```

Bakın yetki hatası aldım. Çünkü bu aygıtı sisteme root yetkileri ile bağladığımız için şu an bu aygıt üzerinde yalnızca root kullanıcısının tüm yetkileri bulunuyor. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld ~/Desktop/disk/
drwxr-xr-x 3 root root 4096 Jul 10 01:21 /home/taylan/Desktop/disk/
```

Diğer kullanıcıların yalnızca okuma ve çalıştırma yetkisi var. 

Eğer bu disk bölümüne erişim yetkilerini değiştirmek istiyorsak, bağladığımız dizin üzerinden erişim yetkilerini düzenleyebiliriz. Şu anda dizinin sahibi ve grubu root olarak gözüküyor. Ben kendi hesabımdan sorunsuzca erişmek istediğim için daha önce de öğrendiğimiz şekilde bu klasörün sahipliğini değiştirmek istiyorum. Bunun için `sudo chown taylan:taylan ~/Desktop/disk` şeklinde komutumu giriyorum. Bu komut sayesinde masaüstündeki ***disk*** dosyasının sahibi ve grubu **taylan** olarak değişmiş olacak. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo chown taylan:taylan ~/Desktop/disk

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld ~/Desktop/disk                                                                                                                                   
drwxr-xr-x 3 taylan taylan 4096 Jul 10 01:21 /home/taylan/Desktop/disk
```

Bakın artık dizinin sahibi şu an kullanmakta olduğum "taylan" kullanıcısı. Yani artık bu dizin üzerinde, dolayısıyla da bu dizine bağlı olan disk bölümü üzerinde burada belirtilen yetkilere sahibim. Ben bu durumu teyit etmek için tekrar klasör oluşturmayı denemek istiyorum. Bunun için `mkdir ~/Desktop/disk/yeni-klasor` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ mkdir ~/Desktop/disk/yeni-klasor                                                                                                                        

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l ~/Desktop/disk/
total 20
drwx------ 2 root   root   16384 Jul 10 01:21 lost+found
drwxr-xr-x 2 taylan taylan  4096 Jul 10 01:28 yeni-klasor
```

Bakın herhangi bir erişim yetkisi hatası almadım. `ls` komutu ile listelediğimizde de zaten ilgili klasörün disk bölümünde oluşturulduğunu teyit edebiliyoruz.

Oluşturduğumuz klasör dışında disk bölümü içinde listelenmiş olan **lost+found** dizinin neden bulunduğunu muhtemelen merak ediyorsunuz. Bu klasör, elektrik kesintisi gibi ani kesinti durumlarında diskteki adreslenemeyen verilerin tutulduğu dizindir. Ani kesinti sonrası, diski tekrar sistem bağladığımızda bu dizin içinde bazı dosya ve klasörler olabilir. Bunlar otomatik disk onarım aşamasından(modern dosya sistemleri başlangıçta disk onarımı yapmayı dener) sonra da nerede bulunmaları gerektiği belirlenmeyen verilerdi. Bunları kendiniz manuel olarak gerekli konumlarına taşıyabilirsiniz. Yine de her zaman mükemmel çalışmıyor elbette. Yani ani kesinti durumunda bazı verilerinizi kalıcı olarak kaybetme ihtimaliniz her zaman bulunuyor. 

## Birden Fazla Klasöre Bağlama

Dilersek tek bir disk bölümünü birden fazla klasöre de bağlayabiliriz. Ancak baştan belirteyim bu genelde karmaşaya sebep olabileceği için pek önerilen bir yaklaşım değildir. Yine örnek olarak göstermek için ben `mkdir ~/Desktop/disk2` komutu ile yeni bir klasör oluşturuyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ mkdir ~/Desktop/disk2
```

Şimdi bu klasöre aynı diski bağlayalım. Bunun için `sudo mount /dev/sdb1 ~/Desktop/disk2` şeklide komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo mount /dev/sdb1 ~/Desktop/disk2
```

Artık disk bölümü iki farklı dizine bağlı bulunuyor. Disk bölümünün bağlı olduğu dizin adreslerini öğrenmek için `lsblk` komutunu kullanabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk 
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda       8:0    0   80G  0 disk 
├─sda1    8:1    0   79G  0 part /
├─sda2    8:2    0    1K  0 part 
└─sda5    8:5    0  975M  0 part [SWAP]
sdb       8:16   0    2G  0 disk 
└─sdb1    8:17   0    1G  0 part /home/taylan/Desktop/disk2
                                 /home/taylan/Desktop/disk
sdc       8:32   0    1G  0 disk 
sdd       8:48   0    1G  0 disk 
sr0      11:0    1 1024M  0 rom  
nvme0n1 259:0    0    1G  0 disk 
nvme0n2 259:1    0   10G  0 disk
```

Ayrıca `lsblk` komutu yerine tüm dizinleri listelemek için `mount` komutunu da tek başına kullanabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ mount                                                                                                                                                   
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
udev on /dev type devtmpfs (rw,nosuid,relatime,size=5429020k,nr_inodes=1357255,mode=755,inode64)
devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000)
tmpfs on /run type tmpfs (rw,nosuid,nodev,noexec,relatime,size=1094516k,mode=755,inode64)
/dev/sda1 on / type ext4 (rw,relatime,errors=remount-ro)
securityfs on /sys/kernel/security type securityfs (rw,nosuid,nodev,noexec,relatime)
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev,inode64)
tmpfs on /run/lock type tmpfs (rw,nosuid,nodev,noexec,relatime,size=5120k,inode64)
cgroup2 on /sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)
pstore on /sys/fs/pstore type pstore (rw,nosuid,nodev,noexec,relatime)
none on /sys/fs/bpf type bpf (rw,nosuid,nodev,noexec,relatime,mode=700)
systemd-1 on /proc/sys/fs/binfmt_misc type autofs (rw,relatime,fd=29,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=12283)
mqueue on /dev/mqueue type mqueue (rw,nosuid,nodev,noexec,relatime)
hugetlbfs on /dev/hugepages type hugetlbfs (rw,relatime,pagesize=2M)
debugfs on /sys/kernel/debug type debugfs (rw,nosuid,nodev,noexec,relatime)
tracefs on /sys/kernel/tracing type tracefs (rw,nosuid,nodev,noexec,relatime)
fusectl on /sys/fs/fuse/connections type fusectl (rw,nosuid,nodev,noexec,relatime)
configfs on /sys/kernel/config type configfs (rw,nosuid,nodev,noexec,relatime)
none on /run/credentials/systemd-sysusers.service type ramfs (ro,nosuid,nodev,noexec,relatime,mode=700)
sunrpc on /run/rpc_pipefs type rpc_pipefs (rw,relatime)
tmpfs on /run/user/1000 type tmpfs (rw,nosuid,nodev,relatime,size=1094512k,nr_inodes=273628,mode=700,uid=1000,gid=1000,inode64)
gvfsd-fuse on /run/user/1000/gvfs type fuse.gvfsd-fuse (rw,nosuid,nodev,relatime,user_id=1000,group_id=1000)
/dev/sdb1 on /home/taylan/Desktop/disk type ext4 (rw,relatime)
/dev/sdb1 on /home/taylan/Desktop/disk2 type ext4 (rw,relatime)
```

Bakın pek çok disk için bilgiler bastırıldı. Sondaki satırlarda yeni bağladığımız disk bölümleri de açıkça görülebiliyor. 

Neticede birden fazla dizine bağlanmış olma durumunu da teyit ettik. Hatta her iki dizinin izinlerini kontrol ettiğimizde her ikisinin de aynı izinlere sahip olduğunu görebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -ld ~/Desktop/disk*
drwxr-xr-x 4 taylan taylan 4096 Jul 10 01:28 /home/taylan/Desktop/disk
drwxr-xr-x 4 taylan taylan 4096 Jul 10 01:28 /home/taylan/Desktop/disk2
```

Disk bölümünün ilk bağlandığı dizinin ayarları diğer tüm dizinlere de otomatik olarak geçerli oluyor. Çünkü aslında bu dizinler disk bölümüne bağlandığında, sıradan bir dizinden ziyade bu disk bölümüne giriş kapısı görevi görüyor. Dolayısıyla aslında disk bölümünün sahip olduğu yetkilere göre daha sonra bağlandığı dizinlerin yetkileri de aynı oluyor. Bağı kopardığımızda bu klasörler eski normal haline dönüyor. Ayrıca ben `mount` komutunun detaylarından bahsetmedim ancak yardım sayfasından da bizzat görebileceğiniz gibi pek çok seçeneği bulunuyor aslında. Örneğin henüz diski bağlarken yetkisini belirtmemiz de mümkündür. Ancak yetkilendirme gibi temel işlemleri zaten daha önceden sahip olduğumuz bilgilerle yerine getirebildiğimiz için `mount` komutunun diğer seçeneklerini tek tek ele alarak ekstra bilgi karmaşası yaşamayalım. Örneğin bağladığınız disk bölümü için erişim kısıtlaması mı getirmek istiyorsunuz, bağlı olduğu klasörün yetkilerini değiştirmeniz yeterli.

Tamamdır, artık “**mounting**” işleminin temellerini öğrendik. Ancak öğrendiğimiz temel bilgiler dışında bir de dikkat etmemiz gereken birkaç ek detay bulunuyor. 

Birincisi; eğer diski bağladığınız klasör içinde halihazırda dosya ve klasör gibi içerikler varsa, disk bölümünü bağladığınızda ilgili klasördeki önceki içerikler gizlenir. Çünkü aslında bu dizine yeni bir disk bölümü bağladığınızda, eski disk bölümü ile olan bağını geçici olarak kesmiş oluyorsunuz. Dolayısıyla son bağladığınız disk bölümünü, bu bağlandığı dizinden çıkarmadığınız sürece de diğer disk bölümündeki içeriklere bu dizin üzerinden erişemezsiniz.

Ayrıca bizim şimdiye kadar ele aldığımız `mount` aracı ile disk bağlama işlemi kalıcı değildir. Yani sistemi yeniden başlattığımızda ilgili disk bölümüne, bağladığımız dizinden tekrar erişemeyeceğiz. Hemen bu durumları deneyimlemek için basit bir test gerçekleştirelim. 

Ben denemek için yine masaüstü dizinime bir klasör oluşturmak ve içine de test etmek için bir klasör eklemek istiyorum. Bunun için `mkdir -p ~/Desktop/disk3/test` şeklinde komutumu giriyorum. Hatırlıyorsanız buradaki `p` seçeneği iç içe dizinler oluşturmamızı sağlıyor. Bu olmadan tek seferde iç içe yeni dizinler oluşturamayız. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ mkdir -p ~/Desktop/disk3/test                                                                                                                           

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -Rl ~/Desktop/disk3
/home/taylan/Desktop/disk3:
total 4
drwxr-xr-x 2 taylan taylan 4096 Jul 10 01:38 test

/home/taylan/Desktop/disk3/test:
total 0
```

`ls` komutu ile listelediğimde görebildiğiniz gibi ***disk3*** dizini altında ***test*** klasörü yer alıyor. Şimdi bu ***disk3*** dizinine disk bölümünü bağlayalım. Bağlamak için `sudo mount /dev/sdb1 ~/Desktop/disk3` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo mount /dev/sdb1 ~/Desktop/disk3/
```

Şimdi tekrar aynı dizinin içeriğini `ls` komutu ile listeleyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -Rl ~/Desktop/disk3                                                                                                                               
/home/taylan/Desktop/disk3:
total 20
drwx------ 2 root   root   16384 Jul 10 01:21 lost+found
drwxr-xr-x 2 taylan taylan  4096 Jul 10 01:28 yeni-klasor
ls: cannot open directory '/home/taylan/Desktop/disk3/lost+found': Permission denied

/home/taylan/Desktop/disk3/yeni-klasor:
total 0
```

Bakın, yalnızca bağladığımız disk bölümü içerisinde yer alan ***yeni-klasor*** bulunuyor. Önceki ***test*** klasörü hakkında bilgi edinemedik. Yani bizzat teyit ettiğimiz şekilde, eğer bağlanılan dizinde daha önceden dosya ve klasörler varsa bağlama işleminden sonra bunlara erişemiyoruz. İşte bu sebeple mümkünse disk bölümünü bağladığınız klasörün içinde başka içerikler olmadığından emin olun. Aksi halde disk bölümünü sistemden çıkarana kadar bu içeriklere erişemezsiniz.

Zaten bu gibi sebeplerle sabit diskleri ***/mnt*** dizini altında yeni klasör oluşturup saklamanız ve usb disk gibi çıkarılabilir aygıtları da ***/media*** dizini altında bir dizine bağlamanız önerilir. Ama bunun bir zorunluluk olmadığını da tekrar hatırlatıyorum. İlgili diske hangi dizinden ulaşmak istiyorsanız o dizine bağlayabilirsiniz.

Ayrıca yeniden başlatma aşamasında bu bağlantıların sıfırlandığından da bahsetmiştik. Şimdi bu durumu da gözlemleyebilmek için sistemimizi yeniden başlatalım. `reboot` komutu ile yeniden başlatabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ reboot
```

Evet sistemim açıldı. Şimdi konsolu açıp disk bölümünün bağlı olduğu tüm dizinleri bastırmayı deneyelim. Bunun için `lsblk` komutunu girebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda       8:0    0   80G  0 disk 
├─sda1    8:1    0   79G  0 part /
├─sda2    8:2    0    1K  0 part 
└─sda5    8:5    0  975M  0 part [SWAP]
sdb       8:16   0    2G  0 disk 
└─sdb1    8:17   0    1G  0 part 
sdc       8:32   0    1G  0 disk 
sdd       8:48   0    1G  0 disk 
sr0      11:0    1 1024M  0 rom  
nvme0n1 259:0    0    1G  0 disk 
nvme0n2 259:1    0   10G  0 disk
```

Bakın **sdb1** disk bölümü herhangi bir dizin adresine bağlı gözükmüyor. Şimdi ***disk3*** klasörünün içini `ls` komutu ile listeleyip bir bakalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -lR ~/Desktop/disk3
/home/taylan/Desktop/disk3:
total 4
drwxr-xr-x 2 taylan taylan 4096 Jul 10  2023 test

/home/taylan/Desktop/disk3/test:
total 0
```

Disk bölümü bağlıyken bu klasör gözükmüyordu, artık bağlı olmadığı için klasörün önceki içeriğine de tekrar ulaşabiliyoruz.

Böylelikle bağlamış olduğumuz disk bölümlerinin sistem başlangıcında tekrar otomatik olarak bağlanmadığını ve bağlı oldukları klasör içeriklerini gizlediklerini bizzat teyit etmiş olduk. 

Eğer bağlantıların kalıcı olmasını istersek, bağlama emrini ***/etc/fstab*** dosyasına eklemiz gerekiyor. 

# Dosya Sistemini Kalıcı Olarak Bağlamak | ***/etc/fstab***

Standart şekilde `mount` komutu ile bağladığımız disk bölümlerinin sistem yeniden başlatılırken otomatik olarak bağlanmadığını bizzat deneyimledik. Eğer her sistem başlangıcında otomatik olarak bağlanmasını istediğimiz diskler veya disk bölümleri varsa bunları ***/etc/fstab*** dosyası içerisinde uygun şekilde tanımlamamız gerekiyor. ***fstab*** dosyasının içeriğine göz atmak ve disk bölümünü kalıcı olarak eklemek için `sudo nano /etc/fstab` komutunu giriyorum. 

```bash
# /etc/fstab: static file system information.
#
# Use 'blkid' to print the universally unique identifier for a
# device; this may be used with UUID= as a more robust way to name devices
# that works even if disks are added and removed. See fstab(5).
#
# systemd generates mount units based on this file, see systemd.mount(5).
# Please run 'systemctl daemon-reload' after making changes here.
#
# <file system> <mount point>   <type>  <options>       <dump>  <pass>
# / was on /dev/sda1 during installation
UUID=491d3534-b3d9-47af-ad63-66b0e72fe8dd /               ext4    errors=remount-ro 0       1
# swap was on /dev/sda5 during installation
UUID=00253fba-ff78-4f04-b189-fbc974082345 none            swap    sw              0       0
/dev/sr0        /media/cdrom0   udf,iso9660 user,noauto     0       0
```

Zaten halihazırda burada sistemin standart disk bölümleri bulunuyor. Burada kimlik numaraları(UUID) ile tanımlanmış olan disk bölümleri sistem başlangıcında otomatik olarak bağlanıyor. Bizler de tıpkı buradaki diskler gibi uygun şekilde tanımlama yaparak, istediğimiz disk bölümünün istediğimiz biçimde sistem başlangıcında bağlanmasını sağlayabiliriz.

Konfigürasyon dosyası içerisinde, bağlanacak diski nasıl belirtmemiz gerektiği zaten sütun sütun açıklanmış. 

```bash
# <file system> <mount point>   <type>  <options>       <dump>  <pass>
```

Sırasıyla aygıt adını, bağlanacağı noktayı, dosya sistemi türünü, bağlanma seçeneklerini ve dump pass değerlerini belirtmemiz gerektiği yazılmış. Ben örnek olarak yeni oluşturduğum disk bölümünün sistem başlangıcında otomatik olarak bağlanması için tanımlamada bulunacağım.

Disk bölümü tanımlamak için öncelikle ilgili disk bölümünün aygıt adını ya da benzersiz kimlik numarasını buraya girmemiz gerekiyor. Bu sayede hangi disk aygıtını kaydettiğimiz anlaşılabilecek. Dosyadaki mevcut tanımlamalarda da ilgili disklerin benzersiz kimlik numaraları kullanılmış. Bunun yerine istersek doğrudan disklerin sistemdeki sanal dosya karşılığı olan aygıt adını da yani örneğin ***/dev/sdb1*** şeklinde de tanımlamada bulunabiliriz. Fakat daha önce deneyimlediğimiz gibi çeşitli sebeplerle aygıtların sanal dosya sisteminde isimleri değişebileceği için en doğru yol, benzersiz kimlik numaraları olan UUID değeri ile tanımlama yapmaktır. Bu değeri öğrenmek için de `lsblk -f` komutunu kullanabiliyoruz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk -f
NAME FSTYPE FSVER LABEL UUID                                 FSAVAIL FSUSE% MOUNTPOINTS
sda                                                                         
├─sda1
│    ext4   1.0         491d3534-b3d9-47af-ad63-66b0e72fe8dd   61.6G    15% /
├─sda2
│                                                                           
└─sda5
     swap   1           00253fba-ff78-4f04-b189-fbc974082345                [SWAP]
sdb                                                                         
└─sdb1
     ext4   1.0         e0b3196f-8180-476b-8041-081a3d016d0f                
sdc                                                                         
sdd                                                                         
sr0                                                                         
nvme0n1
                                                                            
nvme0n2
```

Benim bağlamak istediğim aygıtın UUID değeri “e0b3196f-8180-476b-8041-081a3d016d0f” olarak geçiyor. Ben bu tanımlamayı kullanacağım.

```bash
UUID=e0b3196f-8180-476b-8041-081a3d016d0f
```

Bağlanma noktası olarak da yine kendi masaüstü dizinimdeki ***disk*** isimli klasörü belirtmek istiyorum. Bunun için ***/home/taylan/Desktop/disk*** şekline yazıyorum. 

```bash
UUID=e0b3196f-8180-476b-8041-081a3d016d0f /home/taylan/Desktop/disk/
```

Burada tam dizini adresini girmeniz önemli. Örneğin ben kendi ev dizinimi **tilde ~** işareti ile belirtemem çünkü bu dosya sistem başlangıcında okunurken, tilde işareti benim ev dizinime genişletilmeyecek. Dolayısıyla tilde kullanırsam doğru bir dizin adresi belirtmiş olmam. 

Dosya sistemi ext4 olduğu için, ext4 şeklinde yazıyorum.

```bash
UUID=e0b3196f-8180-476b-8041-081a3d016d0f /home/taylan/Desktop/disk/ ext4
```

**options** yani seçenekler kısmından ise ilgili bölümün nasıl bağlanacağını belirtmemiz gerekiyor. Burada pek çok seçeneğimiz bulunuyor. Örneğin mevcut tanımlamaya bakacak olursak, ana dizin bağlanırken hata alınması durumunda tekrar “ro” “readonly” yani “okunabilir” biçimde bağlanması seçeneğine sahip. Mevcut seçenekleri ve açıklamalarını görmek için `man mount` komutu ile manuel sayfalarına göz atabiliriz. Burada bizim aradığımız bilgi, bağlama seçeneklerinin açıklamaları olduğu için `/` işareti ile örneğin dosyada da gördüğümüz "**errors**" ifadesini araştırabiliriz. Bu açıklamalar "FILESYSTEM-INDEPENDENT MOUNT OPTIONS" başlığı altındaki ele alınmış. 

```bash
FILESYSTEM-INDEPENDENT MOUNT OPTIONS
       Some of these options are only useful when they appear in the
       /etc/fstab file.

       Some of these options could be enabled or disabled by default in the
       system kernel. To check the current setting see the options in
       /proc/mounts. Note that filesystems also have per-filesystem
       specific default mount options (see for example tune2fs -l output
       for ext_N_ filesystems).

       The following options apply to any filesystem that is being mounted
       (but not every filesystem actually honors them - e.g., the sync
       option today has an effect only for ext2, ext3, ext4, fat, vfat, ufs
       and xfs):

       async
           All I/O to the filesystem should be done asynchronously. (See
           also the sync option.)

       atime
           Do not use the noatime feature, so the inode access time is
           controlled by kernel defaults. See also the descriptions of the
           relatime and strictatime mount options.

       noatime
           Do not update inode access times on this filesystem (e.g. for
           faster access on the news spool to speed up news servers). This
           works for all inode types (directories too), so it implies
           nodiratime.

       auto
           Can be mounted with the -a option.

       noauto
           Can only be mounted explicitly (i.e., the -a option will not
           cause the filesystem to be mounted).
....
...
..
.
```

Kullanabileceğimiz tüm özellikler sırasıyla burada açıklanmış. Ben tek tek hepsini ele almayacağım zaten görebildiğiniz gibi hangi özelliğin hangi amaçla kullanıldığı belirtiliyor. Genellikle spesifik durumlar hariç buradaki “**defaults**” seçeneğini bizim işimizi görüyor. 

```bash
defaults
           Use the default options: rw, suid, dev, exec, auto, nouser, and
           async.

           Note that the real set of all default mount options depends on
           the kernel and filesystem type. See the beginning of this
           section for more details.
```

Bu seçeneğin hangi özellikleri barındırdığı da burada yazıyor. Varsayılan seçenek haricinde başka özellikle ihtiyacınız olursa buradaki seçenekleri inceleyebilirsiniz. Ben diski bağlamak için **defaults** seçeneğini kullanıyorum.

```bash
UUID=e0b3196f-8180-476b-8041-081a3d016d0f /home/taylan/Desktop/disk/ ext4 defaults
```

**dump** seçeneği yedeklemeyle ilgili, **0** olarak kalabilir.

**pass** ise sistem başlangıcında ilgili disk üzerinde `fsck` aracının çalıştırılıp diskin kontrol edilip edilmeyeceğini belirtmemizi sağlıyor. Eğer ilgili disk bölümü kontrol edilsin istersek **1** veya **2** rakamlarından birini eklememiz gerekiyor. 1 rakamı öncelik belirttiği için kök dizin haricinde 1 numarasını kullanmanız önerilmez. **2** rakamı ile kök dizinin ardından bu bölümün de `fsck` kontrolünden geçmesini sağlayabilirsiniz.

Eğer ilgili disk bölümün her sistem başlangıcında kontrol edilmesini istemiyorsanız **0** olarak da bırakabilirsiniz. Hatta bu son iki sütun yani **dump** ve **pass 0** olarak kalacaksa bu iki sütunu doğrudan boş da bırakabilirsiniz. 

Ancak benim önerim önemli bir disk bölümü ise **2** rakamı ile `fsck` kontrolünü aktifleştirmenizdir. 

```bash
UUID=e0b3196f-8180-476b-8041-081a3d016d0f /home/taylan/Desktop/disk/ ext4 defaults 0 2
```

Tamamdır, ben diskim için gereken tüm ayarlamayı yaptım. Şimdi dosyayı kaydediyorum. Artık sistemi yeniden başlatıp diskin otomatik olarak bağlanıp bağlanmayacağını test edebiliriz. `reboot` komutu ile sistemi yeniden başlatıyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ reboot
```

Evet sistemim yeninden başlatıldı. Şimdi kontrol etmek için konsolu açıp `lsblk` komutu ile diskleri listeleyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda       8:0    0    2G  0 disk 
└─sda1    8:1    0    1G  0 part /home/taylan/Desktop/disk
sdb       8:16   0    1G  0 disk 
sdc       8:32   0    1G  0 disk 
sdd       8:48   0   80G  0 disk 
├─sdd1    8:49   0   79G  0 part /
├─sdd2    8:50   0    1K  0 part 
└─sdd5    8:53   0  975M  0 part [SWAP]
sr0      11:0    1 1024M  0 rom  
nvme0n1 259:0    0    1G  0 disk 
nvme0n2 259:1    0   10G  0 disk
```

Evet, **sda1** ismi altında **d**isk bölümüm ***fstab*** dosyasında belirttiğim şekilde masaüstümdeki ***disk*** klasörüne otomatik olarak sorunsuzca bağlanmış. Aygıtın isminin değişebileceğinden bahsetmiştik. Burada önemli olan **UUID** değeri olduğu için `lsblk -f` komutu ile tam olarak benim istediğim disk bölümünün bağlandığını da teyit edebilirim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk -f
NAME    FSTYPE FSVER LABEL UUID                                 FSAVAIL FSUSE% MOUNTPOINTS
sda                                                                            
└─sda1  ext4   1.0         e0b3196f-8180-476b-8041-081a3d016d0f  906.2M     0% /home/taylan/Desktop/disk
sdb                                                                            
sdc                                                                            
sdd                                                                            
├─sdd1  ext4   1.0         491d3534-b3d9-47af-ad63-66b0e72fe8dd   61.6G    15% /
├─sdd2                                                                         
└─sdd5  swap   1           00253fba-ff78-4f04-b189-fbc974082345                [SWAP]
sr0                                                                            
nvme0n1                                                                        
nvme0n2
```

Gördüğünüz gibi UUID ile belirttiğim disk bölümü tam olarak belirttiğim dizine bağlanmış. Ben ***/etc/fstab*** dosyasından eklediğim satırı silene kadar da bu disk her sistem başlangıcında otomatik olarak bağlanmaya devam edecek.

Sizler de bu şekilde disk bölümlerini sisteminize kalıcı olarak bağlayabilirsiniz. Tamamdır artık disk bölümlerini nasıl bağlayabileceğimizi öğrendiğimize göre şimdi de bağlı bulunanları nasıl çıkarabileceğimizden bahsederek devam edelim.

Ayrıca aklınızda bulunsun ***/etc/fstab*** dosyasının okunması için sistemi yeniden başlatmak zorunda da değiliz. Eğer `sudo mount -a` komutunu kullanırsak ***fstab*** dosyasında tanımlanan tüm diskler sisteme bağlanır. Yani `mount -a` komutu ***fstab*** dosyasını okuyup buradaki tanımlamaların geçerli olmasını sağlar. Hatta ***fstab*** dosyasındaki tüm diskleri değil de yalnızca spesifik olarak tek bir diskin bağlanmasını istersek `sudo mount /disk-adı` şeklinde de komut girebiliriz. Örneğin ben yalnızca  ***fstab*** dosyasında da tanımlı olan **sda1** diskini bağlamak istersem komutumu `sudo mount /dev/sda1` şeklinde girmem yeterli. Yani `mount` komutuna özellikle diskin bağlanacağı konumu belirttiğimiz ikincil parametreyi girmezsek, `mount` komutu ***fstab*** dosyasını okuyup buradaki tanımlamalara göre hareket ediyor. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo mount /dev/sda1
mount: /home/taylan/Desktop/disk: /dev/sda1 already mounted on /home/taylan/Desktop/disk.
```

Sistemimi yeniden başlattığım için zaten bu bağlama işlemi gerçekleştirilmişti, bu sebeple bu uyarıyı aldık.

Ben yeniden başlatma esnasında disklerin bağının geçersiz kaldığını ve ***fstab*** dosyasına ekleyerek kalıcı hale getirebildiğimizi daha net görebilmeniz için sistemi yeniden başlattım. Yoksa normalde yeniden başlatmamız gerekmiyor. Özellikle sistemimiz üzerinde sürekli çalışmasını beklediğimiz servisler varsa, sistemi zorunda kalmadıkça yeniden başlatmamız gerekmemeli. Linux da bu konuda son derece başarılı. Yani eğer doğru şekilde yönetiliyorsa Linux sunucuları üzerinde çok uzun **uptime** süreleri ile karşılaşmanız olasıdır. 

Neyse, lafı daha fazla uzatmadan bağlı disklerin sistemden çıkarılmasını yani `umount` işlemini ele alarak devam edelim.

# Bağlı Diski Sistemden Çıkarmak | `umount`

Tıpkı USB Flash disklerimizi çıkarmadan önce yaptığımız gibi disk bölümlerini de bağlı oldukları bölümlerden `umount` komutu ile çıkabiliyoruz. Bu sayede disk veya disk bölümü fiziksel olarak bilgisayara bağlı olsa da işletim sistemi katmanında hiç bir kullanıcı bu disk bölümüne ulaşamıyor. Örneğin USB diskinizi sistemden güvenli şekilde çıkarmak isterseniz USB diskin bağlı olduğu konumun tam dizin adresini `umount` komutuna argüman olarak girip, USB diskinizi güvenle sistemden ayırabilirsiniz. Ben denemek için sistem başlangıcında otomatik olarak bağlanmasını sağladığım yeni disk bölümünü çıkarmak istiyorum. Bunun için `sudo umount ~/Desktop/disk` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo umount ~/Desktop/disk 
                                                                             
┌──(taylan㉿linuxdersleri)-[~]                                               
└─$ lsblk                                                                    
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS                                 
sda       8:0    0    2G  0 disk                                             
└─sda1    8:1    0    1G  0 part                                             
sdb       8:16   0    1G  0 disk                                             
sdc       8:32   0    1G  0 disk                                             
sdd       8:48   0   80G  0 disk                                             
├─sdd1    8:49   0   79G  0 part /                                           
├─sdd2    8:50   0    1K  0 part                                             
└─sdd5    8:53   0  975M  0 part [SWAP]                                      
sr0      11:0    1 1024M  0 rom                                              
nvme0n1 259:0    0    1G  0 disk 
nvme0n2 259:1    0   10G  0 disk
```

Bakın disk bölümü, ilgili dizin adresine bağlı değil artık. İşte sizler de bu şekilde `umount` komutu ile disklerin mevcut bağlantılarını koparabilirsiniz. 

Bu `umount` komutunun en temel kullanımı. Bunun dışında `umount` komutunun pek çok farklı kullanım seçeneği daha bulunuyor. 

Örneğin eğer disk bölümü meşgul olduğu için bağını koparmamakta ısrar ediyorsa `f` yani `force` seçeneği ile çıkarmaya zorlayabiliriz. Bir disk bağını koparmama konusunda ısrarcı ise `sudo umount -f /dev/disk-adı` şeklinde zorla çıkarmayı deneyebilirsiniz. Yine de `force` yani “zorlama” seçeneği diskteki verilerin bozulmasına sebep olabileceği için zorunlu olmayan durumlar haricinde kullanmanızı kesinlikle önermem. 

Elbette benim bahsettiğim bu seçenekler dışında `umount` komutunun ekstra pek çok özelliği bulunuyor. Ancak zaten temelde bahsetmiş olduğum yalın kullanımı `force` seçeneği dışında diğer seçeneklere nadiren ihtiyaç duyarsınız. Elbette şöyle bir göz atıp ek özellikler hakkında bilgi edinmeniz de hiç fena olmaz. Ancak ben bu eğitimde bahsetmeyi gerekli bulmuyorum.

# LVM | Logical Volume Manager

Disk yönetimiyle ilgili temelde bilmemiz gerekenleri ele aldık. Fakat diski genişletme veya küçültme gibi işlemlerden hiç bahsetmedik. Çünkü standart yaklaşımlar kullanarak oluşturduğumuz disk bölümlerinin üzerinde işlemler yapmak zahmetli ve riskli olabiliyor. Bu sebeple daha modern yaklaşım olan LVM çözümünden çok kısaca bahsetmek istiyorum.

Söz konusu LVM olduğunda temelde üç katman bulunuyor.

**Physical Volume (PV) :** Fiziksel depolama cihazlarını temsil eden katman.

**Volume Group (VG):** Fiziksel disklerin birleştirilip sanal olarak temsil edildiği gruptur. 

**Logical Volume (LV):** Volume Group’u oluşturan sanal disk bölümleridir. 

Yapıyı en genel haliyle aşağıdaki şekilde soyutlayabiliriz.

![LVM-structure.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/disk/LVM-structure.webp)
Bu iş için tanımlanan fiziksel disklerdeki depolama alanları birleştirilip tek bir grup içerisinde toparlanıyor, daha sonra bu toplam disk kapasitesinden sanal olarak ihtiyaca yönelik disk bölümleri oluşturulabiliyor. Bu sayede disk alanlarını genişletip küçültme gibi işlevler, veri kayıpları olmadan kolayca ele alınabiliyor. Yani fiziksel olarak tek bir diskte sahip olmamız veya fiziksel sınırlara takılmamız gerekmiyor. Soyutlayarak çok daha pratik çözümler üretebiliyoruz. Bu yaklaşım sayesinde yedekleme, snapshot, ve diğer disk yönetimi sorunlarını kolayca idare edebiliyoruz.

# LVM Kurulumu

Öncelikle hangi fiziksel diski veya disk bölümünü kullanacaksak, o bölümü “physical volume” yani “fiziksel hacim” haline getirmemiz gerek. LVM yapısının genel şemasını açıkladığımız diyagrama dönüp bakacak olursanız bu durumu kendiniz de görebilirsiniz.

## Physical Volume Oluşturmak | `pvcreate`

Eğer fiziksel diskinizin tamamını kullanmak istemiyorsanız, öncelikle `fdisk` gibi bir araç yardımıyla ne kadarlık bölümünü kullanacaksanız o kadar bir disk bölümü oluşturun. Disk bölümü veya tüm diski kullanacaksanız ilgili diskiniz hazırsa, `pvcreate` komutunun ardından aygıt isimlerini girebilirsiniz. Komutun ismi de “**p**hysical **v**olume **create**” yani “fiziksel hacim oluştur” ifadesinin kısaltmasından geliyor. 

Ben öncelikle hangi diskleri veya disk bölümlerini dahil etmek istediğime karar vermek için `sudo fdisk -l` komutu ile listelemek istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo fdisk -l                                                                                                                                           
[sudo] password for taylan: 
Disk /dev/nvme0n1: 1 GiB, 1073741824 bytes, 2097152 sectors
Disk model: ORCL-VBOX-NVME-VER12                    
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

Disk /dev/nvme0n2: 10 GiB, 10737418240 bytes, 20971520 sectors
Disk model: ORCL-VBOX-NVME-VER12                    
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

Disk /dev/sdd: 80 GiB, 85899345920 bytes, 167772160 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xd562e290

Device     Boot     Start       End   Sectors  Size Id Type
/dev/sdd1  *         2048 165771263 165769216   79G 83 Linux
/dev/sdd2       165773310 167770111   1996802  975M  5 Extended
/dev/sdd5       165773312 167770111   1996800  975M 82 Linux swap / Solaris

Disk /dev/sda: 2 GiB, 2147483648 bytes, 4194304 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xb2de8f5b

Device     Boot Start     End Sectors Size Id Type
/dev/sda1        2048 2099199 2097152   1G 83 Linux

Disk /dev/sdc: 1 GiB, 1073741824 bytes, 2097152 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

Disk /dev/sdb: 1 GiB, 1073741824 bytes, 2097152 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
```

Ben örnek olması için ***/dev/nvme0n2*** diskinin tamamını ve ***/dev/sda1*** bölümünü dahil etmek istiyorum. Bunun için `pvcreate /dev/nvme0n2 /dev/sda1` şeklinde komutumuzu girebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ pvcreate /dev/nvme0n2 /dev/sda1
Command 'pvcreate' not found, but can be installed with:
sudo apt install lvm2
Do you want to install it? (N/y)
```

Benim sistemimde **lvm** aracı yüklü değil kurmak için benden onay isteniyor, ben kuruyorum.

Şimdi komutumuzu tekrar girebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo pvcreate /dev/nvme0n2 /dev/sda1                                                                                                                    
  Can't open /dev/sda1 exclusively.  Mounted filesystem?
  Can't open /dev/sda1 exclusively.  Mounted filesystem?
  Error opening device /dev/sda1 for reading at 0 length 4096.
  Cannot use /dev/sda1: device has a signature
  Physical volume "/dev/nvme0n2" successfully created.
```

***/dev/sda1*** disk bölümü halihazırda sisteme bağlı bulunduğu yani kullanıldığı için bu disk bölümü için fiziksel hacim oluşturulamadı. Bu durumda tek yapmamız gereken bu diski sistemden ayırıp aynı komutu tekrar girmek.

Ben ***/etc/fstab*** dosyasına eklemiş olduğum konfigürasyon satırını silip, ***/dev/sda1*** bölümünü `umount` ile sistemden ayırıyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo nano /etc/fstab                                                                                                                                    

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo mount -a

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo umount /dev/sda1                                                                                                                                   

┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk -f                                                                                                                                                
NAME    FSTYPE      FSVER    LABEL UUID                                   FSAVAIL FSUSE% MOUNTPOINTS
sda                                                                                      
└─sda1  ext4        1.0            e0b3196f-8180-476b-8041-081a3d016d0f                  
sdb                                                                                      
sdc                                                                                      
sdd                                                                                      
├─sdd1  ext4        1.0            491d3534-b3d9-47af-ad63-66b0e72fe8dd     61.6G    15% /
├─sdd2                                                                                   
└─sdd5  swap        1              00253fba-ff78-4f04-b189-fbc974082345                  [SWAP]
sr0                                                                                      
nvme0n1                                                                                  
nvme0n2 LVM2_member LVM2 001       5JMH8c-E6sH-CU8Q-ffxQ-M2Qf-ibd9-iwfl4z
```

Şimdi `sudo pvcreate /dev/sda1` komutu ile “physical volume” oluşturmayı tekrar deneyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo pvcreate /dev/sda1
WARNING: ext4 signature detected on /dev/sda1 at offset 1080. Wipe it? [y/n]: y
```

Disk bölümünde daha önceden ext4 dosya sistemi tanımlandığı için bu tanımlamanın silinmesi için onay bekleniyor. Eğer onay verirsem, dosya sistemi tanımı silineceği için bu diskteki mevcut verilere ulaşamayacağım. Yani içerisinde veriler bulunan bir disk bölümünü fiziksel hacim olarak ayarlamaya çalışıyorsanız, bu diskteki verilere tekrar ulaşamayacağınızın bilincinde olun lütfen. Gerekiyorsa diskinizdeki verileri yedekleyin. Ben silinmesi için onay veriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo pvcreate /dev/sda1
WARNING: ext4 signature detected on /dev/sda1 at offset 1080. Wipe it? [y/n]: y
  Wiping ext4 signature on /dev/sda1.
  Physical volume "/dev/sda1" successfully created.
```

En nihayetinde ***/dev/sda1*** bölümünü “Physical volume-fiziksel hacim” haline dönüştürmüş olduk. Hatta teyit etmek istersek `sudo pvs` komutunu kullanabiliriz. Komutu “**p**hysical **v**olume **s**can” ifadesinin kısaltmasından aklınızda tutabilirsiniz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo pvs                                                                                                                                                
  PV           VG Fmt  Attr PSize  PFree 
  /dev/nvme0n2    lvm2 ---  10.00g 10.00g
  /dev/sda1       lvm2 ---   1.00g  1.00g
```

Tüm işlemler gördüğünüz gibi son derece kolay. Ben örnek olması için kasıtlı olarak içerisi dolu olan bir disk bölümünü de ele aldım. Bu sayede böyle bir disk bölümü üzerindeki olası etkileri de görmüş olduk.

Şimdi diskleri ve disk bölümlerini fiziksel hacim haline çevirdiğimize göre artık bunları ortak bir gruba alıp, ortak hacim havuzu oluşturabiliriz. Bu sayede iki farklı diskin toplam alanını tek bir diskmiş gibi kullanabiliyor olacağız. 

## Volume Group Oluşturmak | `vgcreate`

İstediğimiz “physical volume”’leri birleştirip ortak bir alan havuzu yapmak için “**v**olume **g**roup **create**” kısaltmasından gelen `vgcreate` komutunu kullanabiliyoruz. Komutun kullanımı `vgcreate grup-adı aygıt-adı` şeklindedir. Ben ***/dev/nvme0n2*** ve ***/dev/sda1*** “physical volume”’lerini eklemek istediğim için `sudo vgcreate disk-grubu /dev/nvme0n2 /dev/sda1` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo vgcreate disk-grubu /dev/nvme0n2 /dev/sda1
  Volume group "disk-grubu" successfully created
```

Bakın “disk-grubu” isimli yeni bir hacim grubu oluşturmuş olduk. Bu grupta ***/dev/nvme0n2*** ve ***/dev/sda1*** hacimlerinin toplamı yer alıyor. Grubu teyit etmek için “**v**olume **g**roup **s**can” ifadesinin kısaltmasından gelen `vgs` komutunu kullanabiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo vgs                                                                                                                                                
  VG         #PV #LV #SN Attr   VSize  VFree 
  disk-grubu   2   0   0 wz--n- 10.99g 10.99g
```

Bakın toplam boyut, her iki diskin toplamı kadar.

## Logical Volume Oluşturmak | `lvcreate`

Volume group oluşturduk. Artık bu grup içinden ihtiyacımıza göre birden fazla “mantıksal hacim” yani “logical volume” adı altında sanal disk bölümü oluşturabiliriz. Yani “volume group” tek bir diskmiş gibi davranıp bu disk alanını istediğimiz parçalara bölebiliriz. 

En temel kullanımı `lvcreate -L BOYUTU -n İSMİ VOLUME-GROUP` şeklindedir.

Örneğin ben “disk-grubu” isimli volume group üzerinde 3G boyutunda “test” isimli bir logical volume oluşturmak için `sudo lvcreate -L 3G -n test disk-grubu` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lvcreate -L 3G -n test disk-grubu                                                                                                                  
  Logical volume "test" created.
```

Bakın “**test**” isimli mantıksal hacim oluşturuldu. Teyit etmek için `lvs` komutunu girebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lvs                                                                                                                                                
  LV   VG         Attr       LSize Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  test disk-grubu -wi-a----- 3.00g
```

Logical volume oluşturduğumuzu teyit etmiş olduk. Artık bu mantıksal disk bölümünü kullanabilmemiz için tek yapmamız gereken bir dosya sistemi eklemek. Ben örnek olarak **ext4** dosya sistemi ekleyeceğim. Siz dilediğiniz bir dosya sistemi ekleyebilirsiniz. Üstelik birden fazla logical volume oluşturup her birine ayrı bir dosya sistemi de tanımlayabilirsiniz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo mkfs.ext4 /dev/mapper/disk--grubu-test 
mke2fs 1.46.5 (30-Dec-2021)
Creating filesystem with 786432 4k blocks and 196608 inodes
Filesystem UUID: fcfde6e1-c39e-4486-8c73-9e31f4fabde7
Superblock backups stored on blocks: 
        32768, 98304, 163840, 229376, 294912

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (16384 blocks): done
Writing superblocks and filesystem accounting information: done
```

Tamamdır artık dosya sistemi hiyerarşisindeki dilediğim bir dizine bağlayabilirim. Ben denemek için masaüstümdeki ***disk*** isimli klasöre bağlamak istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo mount /dev/mapper/disk--grubu-test ~/Desktop/disk

┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk
NAME               MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda                  8:0    0    2G  0 disk 
└─sda1               8:1    0    1G  0 part 
sdb                  8:16   0    1G  0 disk 
sdc                  8:32   0    1G  0 disk 
sdd                  8:48   0   80G  0 disk 
├─sdd1               8:49   0   79G  0 part /
├─sdd2               8:50   0    1K  0 part 
└─sdd5               8:53   0  975M  0 part [SWAP]
sr0                 11:0    1 1024M  0 rom  
nvme0n1            259:0    0    1G  0 disk 
nvme0n2            259:1    0   10G  0 disk 
└─disk--grubu-test 254:0    0    3G  0 lvm  /home/taylan/Desktop/disk
```

`lsblk` komutunun çıktılarından da görebildiğiniz gibi, istediğim konuma bağlamayı başardım. Eğer bu disk bölümünün sistem açılışında otomatik olarak bağlanmasını istiyorsanız, ***/etc/fstab*** dosyasına uygun şekilde ekleyebilirsiniz. Tıpkı daha önce gerçekleştirdiğimiz standart disk bölümleme ve bağlama işlemleri gibi son derece kolay. Tek fark **lvm** yaklaşımı sayesinde bu bölümleri yönetme noktasında çok daha fazla avantaja sahibiz.

### Logical Volume Türleri Hakkında | RAID

Ben örnek olması için en yalın haliyle nasıl “logical volume” oluşturabileceğimizi ele aldım. Ancak tek yaklaşım bundan ibaret değil. **RAID** olarak geçen ve verilerin amaçlara uygun şekilde farklı yaklaşımlarla depolanmasına olanak tanıyan çeşitli mantıksal hacimleme yöntemleri de var. Fakat ben temel eğitimde bunların detaylarına değinmeyeceğim. Buradan öğrendiğiniz temel bilginin üzerine biraz araştırma ile kendi kendinize de keşfedebilirsiniz.

# Boyutlandırma

Değişimleri gerçekleştirebilmek için öncelikle bu değişimlere uygun ortama sahip olup olmadığımızı öğrenmemiz gerek. Bu sebeple disk durumları hakkında aldığımız çıktıların ne anlama geldiğini biliyor olmalıyız.

## Volume Group’a Yeni Disk Eklemek | `vgextend`

Ben mevcut gruba yeni bir fiziksel disk eklemek istiyorum. Bunun için sizin de bildiğiniz gibi bu fiziksel diski öncelikle “physical volume” haline getirmemiz gerek.

Disklerimizi listeleyelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ lsblk 
NAME               MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda                  8:0    0   80G  0 disk 
├─sda1               8:1    0   79G  0 part /
├─sda2               8:2    0    1K  0 part 
└─sda5               8:5    0  975M  0 part [SWAP]
sdb                  8:16   0    2G  0 disk 
└─sdb1               8:17   0    1G  0 part 
sdc                  8:32   0    1G  0 disk 
sdd                  8:48   0    1G  0 disk 
sr0                 11:0    1 1024M  0 rom  
nvme0n1            259:0    0    1G  0 disk 
nvme0n2            259:1    0   10G  0 disk 
└─disk--grubu-test 254:0    0    3G  0 lvm
```

Ben ***/dev/sdc*** diskini "**p**hysical **v**olume" yani kısaca “**pv**” olarak değiştirmek için komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo pvcreate /dev/sdc
[sudo] password for taylan: 
  Physical volume "/dev/sdc" successfully created.
```

Tamamdır, artık bu pv’yi “volume group” içine dahil edebiliriz. Bunun için `vgextend` komutunu kullanıyoruz. “**extend”** ifadesi “genişletmek” anlamına geldiği için, aracın görevini net biçimde açıklıyor.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo vgextend disk-grubu /dev/sdc
  Volume group "disk-grubu" successfully extended

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo vgs
  VG         #PV #LV #SN Attr   VSize   VFree 
  disk-grubu   3   1   0 wz--n- <11.99g <8.99g
```

`vgs` komutunun çıktılarından bizzat teyit ettiğimiz gibi pv’yi vg’a ekleyip toplam disk hacmini genişletmiş olduk.

## Volume Group’dan Disk Çıkarmak | `vgreduce`

Halihazırda volume group’a dahil olan bir physical volume’ü çıkarmak için `vgreduce` komutunu kullanabiliyoruz. Buradaki “**reduce**” ifadesi “azaltmak” anlamına geliyor. Ben en son eklediğim pv’yi çıkarmak istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo vgreduce disk-grubu /dev/sdc
[sudo] password for taylan: 
  Removed "/dev/sdc" from volume group "disk-grubu"

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo vgs
  VG         #PV #LV #SN Attr   VSize  VFree
  disk-grubu   2   1   0 wz--n- 10.99g 7.99g
```

Gördüğünüz gibi gruptaki pv’ü çıkarmayı başardık.

## Logical Volume Alanını Genişletmek | `lvextend`

Daha önce 3G boyutunda bir logical volume oluşturmuştuk. Eğer bu lv’ü genişletmek istersek `lvextend` komutunu kullanabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lvextend -L +2G /dev/mapper/disk--grubu-test                                                                           
  Size of logical volume disk-grubu/test changed from 3.00 GiB (768 extents) to 5.00 GiB (1280 extents).
  Logical volume disk-grubu/test successfully resized.

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lvs                                                                                                                    
  LV   VG         Attr       LSize Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  test disk-grubu -wi-ao---- 5.00g
```

Gördüğünüz gibi 3G olan logical volume, 5G’ye genişletilmiş oldu.

## Logical Volume Alanını Küçültmek | `lvreduce`

**Azaltma işleminde mevcut disk üzerinde veri kayıpları yaşanabileceği için, elzem olmayan durumlar haricinde kullanmanızı önermiyorum.** 

Küçültmek için `lvreduce` komutunu kullanabiliyoruz. Ben 1G kadar küçültmek için komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lvreduce -L -1G /dev/mapper/disk--grubu-test
  WARNING: Reducing active and open logical volume to 4.00 GiB.
  THIS MAY DESTROY YOUR DATA (filesystem etc.)
Do you really want to reduce disk-grubu/test? [y/n]:
```

Bakın burada da disk üzerindeki verilerin yok edilebileceği uyarısı var. Eğer onay verirsem işleme devam edilecek. Bu lv’de benim önemli bir dosyam olmadığı için ben “**y**” ile onay veriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lvreduce -L -1G /dev/mapper/disk--grubu-test
  WARNING: Reducing active and open logical volume to 4.00 GiB.
  THIS MAY DESTROY YOUR DATA (filesystem etc.)
Do you really want to reduce disk-grubu/test? [y/n]: y
  Size of logical volume disk-grubu/test changed from 5.00 GiB (1280 extents) to 4.00 GiB (1024 extents).
  Logical volume disk-grubu/test successfully resized.

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lvs
  LV   VG         Attr       LSize Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  test disk-grubu -wi-ao---- 4.00g
```

Gördüğünüz gibi ilgili **lv**, 1G küçültülmüş oldu.

## Logical Volume Silinmesi | `lvremove`

Silmek için `lvremove` komutunu kullanabiliyoruz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lvremove /dev/mapper/disk--grubu-test
  Logical volume disk-grubu/test contains a filesystem in use.
```

Gördüğünüz gibi eğer ilgili lv sisteme bağlı ise öncelikle sistemden bağının `umount` komutu ile koparılması lazım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo umount /dev/mapper/disk--grubu-test

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lvremove /dev/mapper/disk--grubu-test                                                                                  
Do you really want to remove active logical volume disk-grubu/test? [y/n]: y
  Logical volume "test" successfully removed.
```

Sistemden bağlantısını kesip silmek üzere `lvremove` komutunu girdiğimizde gördüğünüz gibi “gerçekten silmek istediğinize emin misiniz?” diye bizden onay bekleniyor. Ben tüm verilerin silinmesini istediğim için onayı veriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lvremove /dev/mapper/disk--grubu-test                                                                                  
Do you really want to remove active logical volume disk-grubu/test? [y/n]: y
  Logical volume "test" successfully removed.

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lvs
```

Böylelikle logical volume’ü tamamen silmiş olduk.

## Physical Volume Silinmesi | `pvremove`

Physical volume haline dönüştürdüğümüz fiziksel diski veya disk bölümünü silip, eski standart fiziksel haline dönüştürmek istersek `pvremove` komutunu kullanabiliriz. Öncelikle bu türdeki diskleri listeleyelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo pvs
  PV           VG         Fmt  Attr PSize    PFree   
  /dev/nvme0n2 disk-grubu lvm2 a--   <10.00g  <10.00g
  /dev/sdb1    disk-grubu lvm2 a--  1020.00m 1020.00m
  /dev/sdc                lvm2 ---     1.00g    1.00g
```

Ben buradan ***/dev/sdc*** diskini eski haline çevirmek için silmek istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo pvremove /dev/sdc
  Labels on physical volume "/dev/sdc" successfully wiped.

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo pvs
  PV           VG         Fmt  Attr PSize    PFree   
  /dev/nvme0n2 disk-grubu lvm2 a--   <10.00g  <10.00g
  /dev/sdb1    disk-grubu lvm2 a--  1020.00m 1020.00m

┌──(taylan㉿linuxdersleri)-[~]
└─$
```

***/dev/sdc*** herhangi bir gruba dahil olmadığı veya herhangi bir veri barındırmadığı için anında silinmiş oldu.

## Volume Group Silinmesi | `vgremove`

Mevcut bir “volume group”u silmek için `vgremove` komutunu kullanabiliyoruz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo vgs
  VG         #PV #LV #SN Attr   VSize  VFree 
  disk-grubu   2   0   0 wz--n- 10.99g 10.99g

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo vgremove disk-grubu
  Volume group "disk-grubu" successfully removed

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo vgs

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo pvs
  PV           VG Fmt  Attr PSize  PFree 
  /dev/nvme0n2    lvm2 ---  10.00g 10.00g
  /dev/sdb1       lvm2 ---   1.00g  1.00g
```

Çıktılardan görebildiğiniz gibi grubu sildiğimizde, grupta bulunan pv de etkileniyor. Bu sebeple grup içindeki verileri silme istemediğiniz sürece doğrudan grubu asla silmeyin.

Böylelikle temel LVM anlatımlarının ve disk yönetimi bölümünün sonuna gelmiş olduk. Buradaki anlatımlar LVM için yüzeysel giriş seviyesi bilgilerdir. Kısa bir araştırma ile çok daha fazla detaya sahip olduğunu görebilirsiniz. 
