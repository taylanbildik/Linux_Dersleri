# Metin Editörü Kullanımı | Nano - vim

Konsol üzerinden dosya içeriklerini görüntüleyebileceğimiz ve farklı biçimlerde manipüle edebileceğimiz pek çok araçtan söz ettik. Şimdi de konsol üzerinden kullanabileceğimiz metin editörlerinden söz edelim.

Grafiksel arayüzde çalışırken kullanabileceğimiz bir çok metin editörü bulunuyor. Zaten hepsinin kullanımı da hemen hemen benzer. Neticede bunlar grafiksel arayüzlü araçlar, yani üzerine ekstra konuşmamızı gerektirecek bir durum yok. Kullanmakta olduğunuz sistemde hangisi varsa, ya da siz özellikle hangisini tercih ediyorsanız onu kullanabilirsiniz.

Bizim asıl ihtiyacımız olan, grafiksel arayüzün bulunmadığı komut satırı arayüzündeyken de metinlerimizi görüntüleyip gerektiğinde düzenleyebileceğimiz bir araç. Aslında komut satırı arayüzü için de pek çok alternatif araç bulunuyor ama bizler en yaygın kullanıma sahip iki araçtan bahsedeceğiz. Bu sayede farklı sistemlerde de bu metin editörleri kuvvetle muhtemel yüklü olacağı için işlerinizi aksamadan yerine getirme yetkinliğine sahip olacaksınız. Bu durumu, tıpkı pek çok kabuk içinden bash kabuğunu tercih etmemiz gibi düşünebilirsiniz. Yaygın kullanıma sahip olması ilgili aracı öğrenmek için geçerli bir sebep.

Anlatımın devamında sırasıyla `nano` ve `vi`-`vim` araçlarının kullanımlarına kısaca değineceğiz. Ama fark ettiyseniz kısaca diyorum, çünkü özellikle `vim` aracının tüm özelliklerinden bahsetmek için ayrıca bir eğitim hazırlamamız gerekir. Ki ben de yalnızca temel düzeyde biliyorum. Yani anlatımlar sırasında çok kısaca temel kullanımlarından ve bilmemiz gerekenlerden bahsedeceğiz.

Anlatımlara başlamadan önce temel düzeyde metin editörlerini kullanabilmenin gerçekten çok önemli olduğunu vurgulamak istiyorum. Belki metin editörü kullanımını pek önemli bulmuyor olabilirsiniz ancak aslında metin editörleri, söz konusu sistemi komut satırından yönetmek olduğunda, komut satırındaki işlerimizi etkili şekilde halledebilmemiz için gereken en temel araçların başında geliyor. Çünkü şimdiye kadar açıkça fark ettiğimiz gibi, sistemi komut satırından yönetirken metinsel tabanlı bir arayüzde çalışıyoruz ve yönetim esnasında da sürekli olarak metinsel verileri yazıp, düzenleyip kullanıyoruz. Bu bağlamda metin editörü anlatımlarına da gereken özeni göstermenizi rica ediyorum. Zira sıklıkla ihtiyaç duyacaksınız.

Tamamdır artık lafı daha fazla uzatmadan öncelikle `nano` aracını ele alarak başlayabiliriz.

# Nano

Nano aracı ileride ele alacağımız “`vi`” aracına oranla yeni başlayan kullanıcılar için çok daha kolay kullanıma sahip olan popüler bir metin editörüdür. Temel olarak bir metin editöründen beklediğimiz ve metin editörü ile yapmak istediğimiz işlemleri sorunsuzca yerine getiriyor. Zaten bu sebeple son derece yaygın kullanıma sahip.

Bir dosyayı `nano` metin editöründe açmak için `nano dosya_adı` şeklinde komut girmemiz yeterli. Ben denemek için `nano yeni-metin` şeklinde komutumu giriyorum. Eğer çalışmakta olduğumuz dizinde bu isimde bir dosya yoksa, yeni bir metin editörü penceresi açılacak. Eğer bu isimde bir dosya varsa da o dosya içeriği karşımıza gelecek.

```bash
GNU nano 6.0                yeni-metin









                          [ New File ]
^G Help      ^O Write Out ^W Where Is  ^K Cut       ^T Execute
^X Exit      ^R Read File ^\\ Replace   ^U Paste     ^J Justify

```

Bakın bu isimde bir dosya olmadığı için anında yeni bir sayfa `nano` metin editörü içinde açıldı. Ve bakın başlık olarak da açtığımız dosyanın ismi burada yer alıyor. İşte `nano` metin aracı bu. Bizler bu araç üzerinden kolayca dosya oluşturup, var olan dosya içeriklerini düzenleyebiliyoruz.

Şimdi kısaca editörü tanıyacak olursak, pencerenin altında, kullanabileceğimiz en temel kısayollar açıkça yazıyor.

![nano-shortcuts](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-shortcuts.webp)

Pencere boyutuna göre ekran sığacak kadar olan kısayollar burada gözüküyor olacak. Yani aslında nano aracının tüm kısayolları bunlardan ibaret değil ancak pencere boyutuna göre hatırlatma amaçlı bunlar gösteriliyor. Örneğin ben pencereyi biraz daha genişletip tekrar alt çubuğa bakıyorum.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-shortcuts2.webp)

Buradaki kısayol açıklamalarına bakarak yani bu alt çubuğa bakarak `nano` metin editöründe yapabileceklerimizi kolayca takip ediyor olacağız.

Hepsini olmasa da en temel kısayollarından bahsederek devam edecek olursak. Buralarda bulunan şapka **^** sembolleri <kbd>Ctrl</kbd> tuşunu temsil ediyor. Kısayolların kullanımı da son derece kolay. Tek yapmanız gereken alt çubuğu okuyup yönergeler göre hareket etmek. Zaten size sorular sorulup, yapmak istediğiniz işlemler için onay alınacaktır.

## Nano Aracını Kapatmak

Metin editöründen çıkıp komut satırına dönmek istersek burada da belirtildiği şekilde <kbd>Ctrl</kbd> + <kbd>X</kbd> kısayolunu uygulayabiliriz. Zaten dosya içerisine herhangi bir ekleme yapmadığım için editörü kapatırken bana dosyayı kaydetmekle ilgili hiç bir soru sorulmadan `nano` aracı kapanacaktır.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-close.gif)

Normalde dosya içerisine yeni veri eklendiğinde çıkmadan önce kaydetmek istiyor muyuz diye soruyor. Denemek için yine aynı dosyamızı açıp içerisine yeni veriler ekleyelim ve <kbd>Ctrl</kbd> + <kbd>X</kbd> kısayolu ile çıkış yapalım. Çıkarken bize "değişiklikler kaydedilsin mi?" diye soracak “**y**” ile onay verip <kbd>enter</kbd> ile işlemi bitirelim.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-save.gif)

Böylelikle `nano` aracı ile istediğimiz isimde yeni bir dosya açıp içerisine istediğimiz verileri ekledik ve başarıyla kaydettik.

## Değişiklikleri Kaydetmek

Gerçekleştirdiğimiz değişiklikleri kaydetmek için <kbd>Ctrl</kbd> + <kbd>O</kbd> kısayolunu kullanıp “y” tuşu ile kaydetmeyi onaylayabiliriz.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-save.webp)

Kaydetme kısayolunu kullandıktan sonra bu verilerin mevcut dosya üzerine mi yoksa başka bir dosya olarak mı kaydedilmesi gerektiğini soruluyor.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-save2.webp)

Eğer başka bir dosya olarak kaydetmek isterseniz buradaki dosya ismini değiştirip <kbd>enter</kbd> ile onaylayabilirsiniz. Eğer değiştirmeyecekseniz de dosya ismini aynen bırakıp <kbd>enter</kbd> ile üzerine yazmayı onaylayabilirsiniz. Ben değiştirmeden <kbd>enter</kbd> ile onaylıyorum.

### Farklı Dosya Olarak Kaydetmek

Farklı bir dosya olarak kaydetmeye örnek vermek için öncelikle dosyama “bu farklı bir dosya” verisini ekliyorum ve <kbd>Ctrl</kbd> + <kbd>O</kbd> ile dosyayı kaydediyorum. Şimdi bana sorulan dosya ismini dilediğim gibi belirtebilirim. Ben örnek olması için ***Documents*** dizini altında farklı-dosya ismi şeklinde kaydetmek istiyorum.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/save-different.webp)

Farklı kaydetme işlemini de “y” ile onaylayalım.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/save-different2.webp)

Tamamdır, en son eklemiş olduğum verilerin farklı bir dosya olarak kaydedildiğini teyit etmek için `paste` komutunu kullanabilirim.

```bash
└─$ paste yeni-metin ~/Documents/farklı-dosya
bu bir metindir bu bir metindir
ekleme  ekleme
ekleme2 ekleme2
        bu farklı bir dosya

```

Gördüğünüz gibi farklı olarak kaydettiğim dosya tam olarak istediğim dizinde ilgili değişikliklerle birlikte kaydedilmiş.

## Dizinlerde Gezinmek

Nano aracından çıkmadan dosyayı kaydedeceğimiz dizini belirlemek için dosya sistemi hiyerarşisinde <kbd>Ctrl</kbd> + <kbd>T</kbd> tuşuna basıp gezinebiliriz. Bunun için öncelikle dosyayı kaydetmek istediğimizi <kbd>Ctrl</kbd> + <kbd>O</kbd> tuşu ile belirtmemiz gerek.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-save2.webp)

Bize dosyayı hangi isimde kaydetmek istediğimiz sorulurken, <kbd>Ctrl</kbd> + <kbd>T</kbd> tuşu ile dosya sistemi üzerinde gezinebiliriz.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-browse.webp)

Bu sayede özellikle komut satırı arayüzünde çalışıyorken `nano` aracından çıkmadan dosya sisteminde nerede hangi dosya ve klasör var diye kontrol edip, mevcut dosyayı hangi isimde nereye kaydetmemiz gerektiğine karar verebiliyoruz.

Alt çubuğa bakacak olursanız gezinme işlemi sırasında da bu iş için kullanabileceğimiz özel kısayolların mevcut olduğunu görebilirsiniz. İşlevlerini anlamak için kısa açıklamalarına bakmanız yeterli.

Şu anda benden dosyayı nereye kaydetmem gerektiğini belirtmem isteniyor. Eğer ben herhangi bir dosyanın üzerine gelip <kbd>enter</kbd> ile onaylarsam gördüğünüz gibi bu dizindeki bu dosya zaten mevcut üzerine yazılmasını istiyor musunuz diye soruluyor.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/save-different2.webp)

Eğer “y” tuşuna basarsam şu an bu dosyada yazıklarım bu dizindeki bu dosyanın içeriğini silip üzerine yazılacak. Eğer istemezseniz <kbd>Ctrl</kbd> + <kbd>C</kbd> ile işlemi iptal edebilirsiniz.

Neticede dosya oluşturma, mevcut dosya içeriğini düzenleyip başka bir dosya olarak kaydetme ve `nano` üzerinden dizinlerde gezinme ve gerektiğinde var olan dosyaların üzerine yazma gibi ihtiyaç duyabileceğimiz temel kısayollardan bahsettik. Zaten bu alt çubuğa baktığınız sürece tüm işlemleri rahatlıkla yerine getirebilirsiniz. Çünkü tüm adımlarda burada temel işlemlerin kısayolları açıkça belirtiliyor. Şimdi editörün kullanımıyla ilgili diğer kısayollardan bahsederek devam edebiliriz.

## Dosya Okuyup İçeriğini Eklemek

Eğer mevcut dosyaya başka bir dosyanın içeriğini eklemek istersek <kbd>Ctrl</kbd> + <kbd>R</kbd> kısayolunu kullanabiliriz.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-insert.webp)

Bakın bize hangi dosyanın ekleneceğini soruyor. İçeri aktarmak istediğimiz dosyanın tam dizin adresini buraya eklememiz gerekiyor. Gördüğünüz gibi ilgili dosyanın tüm içeriği buraya kopyalandı. Bence yerine göre gayet kullanışlı bir kısayol.

## Dosya İçeriğinde Araştırma

Mevcut dosya içinde kelimeleri araştırmak için <kbd>Ctrl</kbd> + <kbd>W</kbd> kısayolunu kullanabiliyoruz.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-search.webp)

Ben örneğin içeri aktardığım bu kullanıcı listesinde yer alan “kali” ismini araştırmak istiyorum.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-search2.webp)

Bakın imlecim doğrudan ilgili kelimenin üstüne atlamış oldu. Özellikle büyük dosya içeriklerinde çalışıyorken bu arama özelliği kullanışlı olabiliyor.

## Bulup Değiştirme İşlemi

Eşleşme sağlanan kelimelerin değiştirilmesini sağlamak için <kbd>Ctrl</kbd> + <kbd>\</kbd> kısayolunu kullanabiliyoruz.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-replace.webp)

Bakın bana hangi kelimeyi değiştirmek istediğimi soruyor ben örnek olması için “**kali**” yazıyorum. Şimdi de bu kelimenin yerine hangi kelimenin yazılması gerektiğini soruyor örnek olarak “**taylan**” yazıp onaylayabiliriz mesela.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-replace2.webp)

Eğer değişimleri tek tek yapmak istiyorsanız her bir eşleşmede sizden onay istenecektir. “**yes**” ile onayabilir “**no**” ile değişimi reddedebilirsiniz. Ayrıca “**all**” seçeneği ile tüm eşleşmelerin tek seferde değiştirilmesini de sağlayabilirsiniz.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-replace3.webp)

## Metinleri Kesip Yapıştırmak

İmlecimizin üzerinde bulunduğu satırı kesmek için <kbd>Ctrl</kbd> + <kbd>K</kbd> yapıştırmak için de <kbd>Ctrl</kbd> + <kbd>U</kbd> kısayollarını kullanabiliyoruz. Ben örnek olarak birden fazla satırı <kbd>Ctrl</kbd> + <kbd>K</kbd> kısayolu ile kesip birden fazla kez <kbd>Ctrl</kbd> + <kbd>U</kbd> kısayolu ile yapıştırıyorum.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-copy-paste.gif)

## Değişiklikleri Geri ve İleri Sarmak

Şimdiye kadar dosya üzerinde pek çok değişiklik yaptık. Eğer yaptığımız değişiklikleri geri almak istersek <kbd>Alt</kbd> + <kbd>U</kbd> kısayolunu kullanabiliyoruz. Hatta geri aldığımız bir değişikliği tekrar ileri almak için <kbd>Alt</kbd> + <kbd>E</kbd> kısayoluna da sahibiz. Ben denemek için yaptığım tüm değişikleri geri alıp sonra geri aldıklarımı da tekrar ileri sarmak istiyorum.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-undo-redo.gif)

## İmlecin Konumun Öğrenmek

Eğer büyük dosyalarda çalışıyorsanız imlecin mevcut bulunduğu konum dosyanın tam olarak hangi satırında hangi sütununda hangi karakterinde gibi çeşitli bilgileri öğrenebilirsiniz. Bakın <kbd>Ctrl</kbd> + <kbd>C</kbd> kısayolunu kullandığımda benim imlecimin bulunduğu konum hakkında tüm bilgiler alt tarafta sırasıyla yazıyor.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-learn-line.webp)

Bu şekilde büyük dosya içeriklerinde kaybolmadan düzenlemelerinizi kontrollü şekilde yerine getirebilirsiniz.

## Satırlara Hızlı Geçiş

Ayrıca isterseniz dosya içerisindeki herhangi bir satıra atlamak için <kbd>Ctrl</kbd> + <kbd>_</kbd> kısayolunu kullanıp atlamak istediğiniz satır numarasını girebilirsiniz.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-jump-line.webp)

Bakın doğrudan istediğim satıra atlayabiliyorum.

## Satırları Numaralandırmak

Hangi satırda olduğumuzu teyit etmek istersek <kbd>Alt</kbd> + <kbd>N</kbd> kısayolu ile satır numaralarının gözükmesini de sağlayabiliriz.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-line-number.webp)

## Sayfada Hızlı Gezinti

<kbd>Ctrl</kbd> tuşuna basıp yukarı yön tuşuna basarsanız sayfanın en başına, aşağı yön tuşuna basarsanız da sayfanın en sonuna atlayabilirsiniz. Ya da kelime kelime atlamak için <kbd>Ctrl</kbd> tuşuna bastıktan sonra sağ sol yön tuşları ile hızlıca kelimler arasında atlayış yapabilirsiniz.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-navigate.gif)

Aslında yön tuşları yerine bu işlemler için 10 parmak klavyede daha ulaşılabilir kısayollar da bulunuyor. Örneğin bir üst satıra dönmek için “**p**revious” kısayolundan gelen <kbd>Ctrl</kbd> + <kbd>P</kbd> bir sonraki satıra geçmek için de “**n**ext” ifadesinden gelen <kbd>Ctrl</kbd> + <kbd>N</kbd> kısayolunu kullanabiliyoruz. Bunlar dışında bir kelime "ileri gitmek için “**f**orward” ifadesinden gelen <kbd>Ctrl</kbd> + <kbd>F</kbd> veya bir karakter geri gitmek için de “**b**ackward” ifadesinden gelen <kbd>Ctrl</kbd> + <kbd>B</kbd> kısayolunu kullanabiliyoruz.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-navigate2.gif)

Evet tüm bu bahsettiğimiz özellikler ve kısayollar konsol üzerinden metin düzenleme işlerinizde `nano` aracını rahatlıkla kullanabilmenizi sağlayacak temel kullanım bilgileridir. Tüm bunlar dışında aslında nano aracının pek çok ek özelliği yani dolayısıyla pek çok kısayolu bulunuyor. Ancak tabii ki hepsine değinmeyeceğiz. Tüm özelliklerini görmek için yardım sayfasına geçiş yapmak üzere <kbd>Ctrl</kbd> + <kbd>g</kbd> kısayolunu kullanabilirsiniz.

![ ](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/nano-help.webp)

Bakın burada pek çok özellik kısayol kullanımlarıyla birlikte gayet net biçimde izah edilmiş. Temelde benim bahsettiklerim neredeyse tüm temel metin düzenleme işlerinizi yapmanızı sağlayacağı için buradaki ek kısayolları ben ele almayacağım. Yine de sizler göz atıp kullanışlı bulduklarınızı uygulayarak test edebilirsiniz.

Evet `nano` aracından yeterince bahsettik. Nano aracı temel metin düzenleme işlerimizde kullanabileceğimiz yaygın kullanım sahip olan bir metin editörü. Kullanımı da son derece kolay. Özellikle alt çubukta sürekli olarak bize hangi işlem için hangi kısayolu kullanabileceğimizin bilgisi sunulduğu için kısayolları unutmak gibi bir endişemiz olmuyor. Tek yapmamız gereken yapmak istediğimiz işlemi temsil eden alt çubuktaki kısayolu kullanmak.

Nano editörü elbette çok sık kullanılan çok kullanışlı bir editör ancak yaygınlık ve sunulan güçlü özellikler bakımından vi kadar geniş kapsamlı değil. Nano editörü de hemen her dağıtımda varsayılan olarak yüklü bulunuyor veya kolayca yüklenebilir ancak vi editörü istisnalar hariç neredeyse tüm dağıtımlarda varsayılan olarak yüklü gelen yegane editör aslında. Bu sebeple söz konusu sistem yönetimi olduğunda siz yalnızca nano aracını kullanmayı tercih etseniz bile vi editörünü temel düzeyde kullanabilmeniz kesinlikle önemli bir yetkinlik.

Elbette biz bu eğitimde kapsamlı şekilde vi editörünü ele almayacağız ancak vi editörü son derece güçlü bir metin editörüdür. Yeni başlayan kullanıcılar pek sevmese de yaygınlığı ve sağladığı işlevler bakımından kesinlikle öğrenilmeye değerdir ve aslında ilk başta göründüğü kadar da zor değildir. Kullanmak istemeseniz bile en azından temel düzeyde tanımanız, kullanmak zorunda kaldığınızda yararınıza olacaktır. Zaten biz yalnızca en temel özelliklerinden bahsedeceğiz. Hadi anlatımlarımıza temel seviye vi editöründen bahsederek devam edelim.

# Vi

Vi editörü istisnai durumlar hariç kullanacağınız tüm Linux dağıtımlarında varsayılan olarak yüklü bulunan yegane metin editörüdür. Zaten ben de evrenselliği dolayısıyla `vi` editöründen haberdar olmanızı istiyorum. Bu sayede hangi Linux sistemini kullanırsanız kullanın en azından temel düzeyde metin düzenleme işleriniz için `vi` editörünü kullanabilme kabiliyetine sahip olacaksınız.

Aslında günümüzde doğrudan `vi` editörü yerine `vi` editörünün gelişmiş hali olan “**v**i **im**proved” yani kısaca `vim` editörü kullanılıyor. Dolayısıyla pek çok dağıtımda `vi` yerine `vim` editörünün çeşitli sürümleri bulunuyor. Fakat bizim için yalın kullanımda temel yaklaşımları öğrenmek kâfi gelecek. Öncelikle yalın `vim` editöründen yani `vi` editöründen bahsedelim ki, daha sonra herhangi bir sistemde karşımıza çıktığında en yalın halde bile olsa metin görüntüleme ve düzenleme işlerimizi sorunsuzca halledebilelim.

Lafı daha fazla uzatmadan temelde bilmemiz gerekenlerden bahsederek başlayabiliriz.

Şimdiden belirteyim, vi editörü daha önce kullandığınız diğer standart editörlerden biraz farklı çalışıyor ancak kullanımı kesinlikle zor değil. Zaten biz de temel işlevlerden bahsedip ihtiyacımız kadarlık kısmıyla ilgileneceğiz. Bazı kullanıcılar doğru şekilde öğrenmedikleri için `vi` editörünü pek sevmeyebiliyor hatta editörle ilk kez karşılaşıyorlarsa editörden çıkmak bile zor geldiği için nefret edip `vi` editörüne karşı bir önyargı geliştirebiliyor. Ancak editörü doğru şekilde tanıyıp biraz pratik yaparsanız hiç de zor olmadığını kendiniz de göreceksiniz.

**Letitia E. Landon'**ın da dediği gibi**, *"İnsanlar, anlamadıkları şeylerden nefret etmeye hazırdırlar."***

Bu sebeple önce anlamaya çalışalım sonra nefret edip etmeyeceğimize karar veririz :)

Vi editörünün "**komut**" ve "**ekleme**(**insert**)" olmak üzere temelde iki farklı çalışma modu bulunuyor. İlk kez vi editörünü açtığımızda "**komut modunda**" çalışmaya başlıyoruz. Bu moddayken yeni bir veri eklememiz yani metin dosyasına veri girişi yapmamız mümkün olmuyor. Veri girişi için “**insert**” olarak geçen “**ekleme**” moduna geçiş yapmamız gerekiyor. Merak etmeyin ne denemek istediğimi örnekler üzerinden net biçimde anlamış olacaksınız.

## Komut Modu

Hemen örnek üzerinden görmek için daha önce oluşturduğumuz bir metin dosyasını açmayı deneyebiliriz. İstediğimiz metin dosyasını vi editörü ile açmak için tek yapmamız gereken `vi` komutundan sonra açmak istediğimiz dosyasının ismini girmek. Ben `vi isimler.txt` komutuyla dosyamı açıyorum.

![vi](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi.webp)

Bakın dosya içeriği karşımıza geldi. Komut modundayken dosya içeriğinde gezinmek için kullanabileceğimiz bazı kısayollara sahibiz. Temel gezinti için imleci hareket ettirmek üzere aşağıdaki tuşlamaları bilmeniz yeterli.

<kbd>h</kbd> sola

<kbd>l</kbd> sağa

<kbd>k</kbd> yukarı

<kbd>j</kbd> aşağı 

<kbd>^</kbd> satır başına

<kbd>$</kbd> satır sonuna

<kbd>gg</kbd> dosyanın en başına

<kbd>shift</kbd> + <kbd>g</kbd> dosyanın sonuna

Özellikle 10 parmak klavye kullanımında bu tuşları kullanarak komut modundayken dosya içeriğinde rahatlıkla gezinebiliyoruz. Elbette tüm kısayollar bunlar ile sınırlı değil ancak temel kullanım için bunlar yeterli.

Komut modundayken dikkat etmeniz gereken detay, dosya içeriğine yeni veri girişi yapamıyor olmamız. Bu durumu bizzat test etmek için komut moduna açılmış olan dosyanıza “deneme” yazabilirsiniz.

![vi-command](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-command.gif)

Eğer bu durumu test ettiyseniz, denemenizin ardından herhangi bir veri girişi yapamadığınızı hatta veri girişinin aksine bastığınız tuşların bazı kelimelerin silinmesine ve kelimeler arasında atlamanıza sebep olduğunu bizzat deneyimlemişsinizdir.

Veri girişi yerine mevcut veriler üzerinde değişiklik gerçekleşti çünkü biz şu anda `vi` editörünü komut modunda kullanıyoruz. Komut modunda olduğumuz için klavyemizden bastığımız tuşlar `vi` editörü tarafından çeşitli işlevleri yerine getiren komut kısayolları olarak algılanıyor. Dolayısıyla bu kısayollara göre mevcut metinde düzenlemeler yapılıyor. Peki metin içerisine yeni veri eklemek için ne yapmamız gerekiyor ? 

Tabii ki daha önce de bahsettiğim gibi “insert” yani “ekleme moduna” geçiş yapmalıyız. Ekleme modu İngilizce olarak “**i**nsert mod” olarak geçtiği için bu moda geçiş yapmak için de `i` tuşuna basmamız yeterli oluyor. Zaten şu anda komut modunda olduğumuz için `i` tuşuna bastığımızda bu `i` karakteri insert moduna geçmek için kullandığımız bir komut olarak algılanacak.

## Ekleme Modu | Insert Mode

Insert moduna geçiş yapmak için Komut modundayken `i` tuşuna basmamız yeterli.

![vi-insert](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-insert.webp)

Bakın “ekleme-insert” moduna geçiş yaptığım sol alt köşede açıkça belirtiliyor. Ekleme modunda olduğum için artık istediğim ifadeyi veri olarak metin dosyama ekleyebilirim. Ben denemek için “Linux bir çekirdektir” yazıyorum.

![vi-insert2](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-insert2.webp)

Veri girişimiz sonlandığında ekleme modundan çıkmamız gerek. Çünkü bu moddayken birkaç kısayol hariç bastığımız tüm tuşlar veri girişi olarak algılanacak. Yani imleci sağa sola veya yukarı aşağı hareket ettirmek için kullanacağımız bazı kısayollar da veri girişi olacak görülecektir. Denemek isterseniz bir üst bölümde bahsettiğimiz klavye kısayollarını tekrar kullanmayı deneyebilirsiniz. 

Yön tuşları bile yeni karakterler olarak ekleniyor çünkü şu anda ekleme modunda çalışıyoruz. Dolayısıyla istisnai birkaç tuş dışında bastığımız tüm tuşlar veri girişi olarak algılanıyor.

## Komut Moduna Geçiş

Eğer veri girişi yerine mevcut karakterler arasında gezinmek istersek bunun için komut moduna geçmemiz gerekiyor. Bunun için de <kbd>esc</kbd> tuşunu kullanmamız gerek. <kbd>esc</kbd> tuşuna bastıktan sonra, vi editörünün ilk açıldığında olduğu gibi komut moduna geçiş yaptığını ve burada kısayol tuşlarını kullanabileceğinizi görebilirsiniz. 

Hatta ekleme modundan komut moduna geçmek için <kbd>esc</kbd> tuşu uzak kaldığı için <kbd>alt</kbd> tuşuna basılı tutup <kbd>h</kbd> <kbd>l</kbd> <kbd>j</kbd> <kbd>k</kbd> gibi tuşları kullanarak da hızlıca komut moduna geçebiliyoruz. Komut modunda işimiz bittiğinde de <kbd>i</kbd> tuşuna basıp tekrar ekleme moduna dönebiliyoruz. 

## Sayfa Sayfa Gezinti

Şimdiye kadar bahsettiğimiz kısayollar dosya içeriği kısa olduğunda gezinti için yeterli. Fakat kimi zaman çok uzun içeriğe sahip dosya içeriklerinde gezinmemiz gerekebiliyor. Bu durumda dosya içeriğini sayfa sayfa atlamak için kullanabileceğimiz kısayollar da mevcut.

İmlecimizin bulunduğu satırdan itibaren ekranımıza sığacak kadarlık dosya içeriğinin devamına atlamak için yani bir sayfa ileri atlamak için “**f**orward” yani “ileri” ifadesinin kısaltmasından gelen <kbd>Ctrl</kbd> + <kbd>f</kbd> kısayolunu kullanabiliyoruz. Benzer şekilde birer sayfa geri atlamak için de “**b**ackward” yani “geri” ifadesinin kısaltmasından gelen <kbd>Ctrl</kbd> + <kbd>b</kbd> kısayolunu kullanabiliyoruz. 

## Silme, Kesme, Kopyalama, Yapıştırma

Silme, kopyalama, kesme ve yapıştırma gibi işlemleri komu modundayken gerçekleştiriyoruz.

### Silmek

İmlecin üzerinde bulunduğu tek bir karakteri silmek için <kbd>x</kbd> 
![vi-x](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-x.gif)

İmlecin sağında kalan kelimeyi veya kelime parçası silmek için “**d**elete **w**ord” ifadesinin kısalmasından gelen <kbd>dw</kbd> 
![vi-dw](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-dw.gif)

İmlecin üzerinde durduğu satırın tamamını silmek istersek <kbd>dd</kbd> kısayolunu kullanabiliyoruz. 
![vi-dd](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-dd.gif)

Ayrıca silinme sınırını belirtmemiz de mümkün. Örneğin imleçten sonraki 3 satırın silinmesi için <kbd>3dd</kbd> 

İmleçten itibaren 5 karakterin silinmesi için <kbd>5x</kbd>
![vi-5x](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-5x.gif)

İmleçten sonraki 2 kelimenin silinmesi için <kbd>2dw</kbd> şeklinde yazabiliriz. 
![vi-2dw](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-2dw.gif)

### Kopyalama Yapıştırma

Silme işleminden yeterince bahsettik. Şimdi kopyalama kesme ve yapıştırma işlemlerinden de bahsedelim.

Vi editörü üzerinde kopyalama ve yapıştırma işlemi için “**copy paste**” kavramları yerine “**yank put**” kavramları kullanıldığı için bir satırı kopyalamak için “**y**ank” ifadesinden gelen <kbd>y</kbd> kısayolu kullanılıyorken, kopyalanan veya kesilen satırın yapıştırılması için de “**p**ut” ifadesinin kısalmasından gelen <kbd>p</kbd> kısayolu kullanılıyor.
![vi-yp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-yp.gif)

### Kesme Yapıştırma

Kopyalama işlemi yerine kes yapıştır işlemi için de ilgili satırı önce <kbd>dw</kbd> veya <kbd>dd</kbd> ile silip daha sonra <kbd>p</kbd> ile istediğimiz yere yapıştırabiliyoruz. 
![vi-dd-dw-p](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-dd-dw-p.gif)

Tabii ki yapıştırma işleminde de istediğimiz sayıda kopyanın yapıştırılmasını spesifik olarak belirtebiliyoruz. Örneğin en son kestiğim satırın 3 kez yapıştırılmasını istersem <kbd>3p</kbd> şeklinde yazmam yeterli. 
![vi-3p](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-3p.gif)

### Spesifik Aralığı Kopyalama ve Kesme

Ben kopyalama veya kesme işleminde tek satır üzerinden gösterdim ancak istediğiniz kadar karakter veya kelimeyi nasıl kesebileceğinizi veya kopyalayabileceğinizi zaten biliyorsunuz. Örneğin ben imlecimden sonraki 3 kelimenin kopyalanmasını istersem <kbd>3yw</kbd> şeklinde komutumu girebilirim. Yani bu örnekler üzerinden de bizzat gördüğümüz gibi, öğrendiğimiz tüm kısayolları bir arada kullanabiliyoruz. Mesela 2 karakteri kesip başka bir yere 5 kez yapıştırmak istersek: öncelikle <kbd>2x</kbd> ile kesip daha sonra <kbd>5p</kbd> ile 5 kez yapıştırabiliyoruz. 

## Araştırma

Dosya içeriğinde araştırma yapmak için komut modundayken <kbd>/aranacak-veri</kbd> yazıp <kbd>enter</kbd> ile araştırma yapabiliyoruz. Bulunan eşleşmelerde ileri geri geçiş yapmak için de <kbd>n</kbd> ve <kbd>shift</kbd> + <kbd>N</kbd> tuşlarını kullanıyoruz. 
![vi-search](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-search.gif)

Örnekleri inanılmaz esneklikte çoğaltmamız mümkün ama bence gerek yok. Çünkü temel kısayolları bildiğinizde geriye yalnızca pratik yapmak kalıyor. Size bahsettiğim manipülasyon kısayolları ile metin editöründe 10 parmak klavye kullanımı ile hızlıca tüm işlerinizi yerine getirebilirsiniz. Burada önemli olan bu kısayollara alışmak. Alışmak için de bir süre kullanmanız gerekiyor. Mesela 2 hafta boyunca her gün düzenli olarak kendi kendinize kısa kısa çalışırsanız ne kadar hızlandığınızı siz de fark edeceksiniz. Tabii ki ben tüm kısayollardan da bahsetmedim ancak zaten temel metin görüntüleme ve düzenleme işlemleriniz için öğrendiklerimiz fazlasıyla yeterli. Daha fazlası için çok kısa bir araştırma yapabilirsiniz. İnternette “[Vim Cheat Sheet](https://vim.rtorr.com/)” şeklinde araştırdığınızda neredeyse tüm kısayollar hakkında pratik bilgiler sunan yerli ve yabancı pek çok rehberi kolayca bulabilirsiniz.

## Kaydetme ve Çıkış

Mevcut dosyadaki değişiklikleri kaydetmek isterseniz komut modundayken “**w**rite” ifadesinden gelen <kbd>:w</kbd> yazıp <kbd>enter</kbd> ile onaylamanız yeterli.

Eğer değişiklikleri kaydedip editörden çıkış yapmak isterseniz “**w**rite **q**uit” ifadesinden gelen de <kbd>:wq</kbd> yazıp <kbd>enter</kbd> ile kaydedip çıkabilirsiniz.

Eğer değişiklikleri kaydetmeden çıkmak isterseniz <kbd>:q!</kbd> yazıp <kbd>enter</kbd> ile editörü kapatabilirsiniz.

![vi-save-exit](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin-editoru/vi-save-exit.gif)

Vi editöründen çıkmak son derece kolay ancak bilmeyenler için kesinlikle bir eziyete dönüşüyor. Biraz araştırırsanız, insanların “**vi**” veya “**vim**” hakkında en çok sorduğu sorunun, editörden nasıl çıkılacağı olduğunu görebilirsiniz. Dolayısıyla vi editörünü temel düzeyde bilmenin, hiç değilse çıkış yapabilmenin bir itibar meselesi olduğunu düşünüyorum :)

İşin şakası bir yana, eğer “vi” editörüne gereken fırsatı tanır ve özveriyi gösterirseniz ne kadar işlevsel olabileceğine kendiniz de şaşıracaksınız.

Benim vi editörü hakkında bahsetmek istediklerim bu kadar. Ancak elbette vi editörü benim anlattıklarımla kesinlikle sınırlı değil. Biraz araştırırsanız ne kadar çok özelliği olduğunu bizzat görebilirsiniz.

Ayrıca anlatımın başında **vi** editörü dışında “**vim**” ve “**gvim**” gibi alternatifler olduğundan kısaca bahsetmiştim. Hatta bunlar dışında “**neovim**” gibi alternatifler de var. Bu alternatiflerin hepsi, **vi** editörüne daha fazla fonksiyon ekleyen alternatiflerdir. Yani temelde burada vi hakkında konuştuklarımız aynen bu editörlerde de geçerli ancak bu editörlerde vi editöründen daha fazla özellik sunuyor. Biraz araştırırsanız ne gibi artıları olduğunu ve aralarındaki farkları kolayca öğrenebilirsiniz. Araştırdığınızda aslında ne kadar geniş çaplı ve esnek bir editör yapısı olduğuna eminim şaşıracaksınız. Hatta yaygınlığı dolayısıyla kullanmakta olduğunuz sistemde vim veya gvim araçları varsayılan olarak yüklü olabilir. Yüklü değilse bile zaten kolayca kurulumlarını yapabilirsiniz çünkü çok yaygın editörler. Mutlaka sizin kullandığınız işletim sisteminin paket depolarında da mevcuttur. 

Vi editörü anlatımının burada sonuna geliyoruz. Ancak dediğim gibi zaten “vi” ve özellikle “vim” editörü başlı başına bir dokümantasyon konusu ki bu bilgileri burada izah etsem bile fazlaca gereksiz ayrıntıya değinmiş, sizlere ve kendimi boş yere yormuş olurdum. Daha fazla bilgi için gerektiğinde ben de yardım sayfalarını kullanıyorum. Yani ben de yalnızca en temel işlevleri biliyorum. 

İnternette yer alan tüm zengin kaynaklar ile birlikte man kılavuz sayfasından veya doğrudan vim editörü içerisinde iken `:help` komutundan kolayca bilgi edinip öğrendiklerinizi pratiğe geçirebilirsiniz.

Ve unutmayın bu araç ancak ve ancak, öğrenmek isteyen kişinin kendi kendine kurcalaması ve bolca alıştırmalar yapmasıyla öğrenilebilir. Tek ihtiyacınız pratiklik kazanmak için vi editörünü bir süre boyunca kullanmak. Örneğin 1-2 hafta boyunca tüm metin düzenlemelerinizi “vi” üzerinden gerçekleştirmeye çalışırsanız zaten kısayollara kolayca alıştığınızı ve aslında editörün ne kadar etkili kullanılabileceğini bizzat görmüş olacaksınız. Hatta benim bahsettiğim kısayollar yetmediği durumda ekstra araştırma ile işlevsel olan kısayolları kendi kendinize keyfedebilirsiniz. Temel kısayolları öğrenmek için kendinize biraz fırsat tanıyın.

Ben yalnızca en temelde ihtiyaç duyabileceklerimizden bahsetmiş oldum. Benden şimdilik bu kadar. Geri kalan araştırma işini size bırakıyorum.
