# Kabuk Üzerinde Genişletme

Bash kabuğunun nasıl çalıştığından bahsettiğimiz bölümde, kabuğa girdiğimiz komutların öncelikle kabuk tarafından anlamlandırılmak üzere metinsel olarak işlendiğinden bahsetmiştik. Kabuk, girilen komutları inceleyip kendi üzerine düşen bir görev varsa bunları yapmak istiyor. Bu işleme de **genişletme** deniyor.

Aslında kabuğun teknik olarak nasıl çalıştığının detaylarına girip kafamızın karışmasını istemiyorum ancak bu bölümde anlatacaklarımızın daha net olması için çok çok basit düzeyde haberdar olmamız gereken bir işleyiş var. 

Kabuğa bir komut girdiğimizde girdiğimiz komut “**lexical analysis & parsing”** yani sözcük “analizi ve ayrıştırma” olarak geçen ilk aşamadan geçiriliyor. Daha sonra anlamlandırılan ve ayrıştırılan komuttaki genişletilmesi gereken bölümler buradaki genişletme kuralları dahilinde sıraya uygun şekilde genişletilme adımlarından geçiriliyor. Son olarak ayrıştırıp genişletilmiş olan yani son halini almış olan bu komut da çalıştırılıp, işlem sonlandıktan sonra durum hakkında olumlu olumsuz bilgi sunan çıkış kodu üretiliyor.

 

![diagram.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/genisletme/diagram.webp)

Yani sırasıyla burada görselleştirmeye çalıştığım şemaya benzer bir işleyiş söz konusu. Fakat tabii ki temel düzey için buradaki tüm kavramlar fazla gelebilir. Bu sebeple biz bu eğitimde yalnızca en yaygın kullanıma sahip birkaç genişletmeyi ele alacağız. Yine de daha fazla detay almak isterseniz, GNU dokümanları içinde yer alan bu [bash dokümantasyonu](https://www.gnu.org/software/bash/manual/bash.html) ihtiyacınız olan tüm bilgileri size sağlayacaktır. 

Ben burada bahsi geçen “genişletme” özelliğini basit bir örnek üzerinden açıklayarak devam etmek istiyorum.

Örneğin konsolumuzu açıp, daha önce de yaptığımız gibi `echo merhaba` yazarsak ne olur ? 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ echo merhaba
merhaba
```

Bakın `echo` aracı kendisine argüman olarak verilmiş olan “**merhaba**” ifadesini konsola bastırdı. Bu sayede bu çıktıyı almış olduk. Şimdi bir de `echo` komutunun ardından yalnızca `*` yıldız karakterini girmeyi deneyelim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ echo *
bu bir deneme metnidir Desktop Documents DOSYA_ADI dosya_adı Dosya_adı Downloads klasor Music Pictures Public Templates test-dosyası Videos yeni yeni klasor yeni-klasor
```

Bakın yıldız karakteri yerine, konsolun çalışmakta olduğu mevcut dizindeki dosya ve klasörlerin isimleri bastırıldı. Peki ama niye böyle oldu ?

Bu durumun nedeni ikinci örneğimizde kullanmış olduğumuz `*` yıldız(asterix) işaretinin bash üzerinde özel bir anlam taşıyor olması. Yıldız işareti bash kabuğuna göre özel anlam taşıdığı için bash kabuğu burada yıldız karakterini doğrudan `echo` aracına argüman olarak iletip konsola bastırtmak yerine, `echo` aracını çalıştırmadan önce yıldız karakterini genişletip, genişletme sonucu ortaya çıkan argümanları `echo` aracına iletiyor. Normalde buradaki yıldız joker karakteri mevcut dosya ve klasör isimlerindeki olası tüm karakterleri kapsama işlevinde. Bizim örneğimizde kabuk `echo` komutundan sonra yıldız karakterini gördüğünde, bu özel karakterin mevcut bulunduğumuz dizindeki tüm dosya ve klasörlerin isimlerini temsil etmek için konulduğunu düşünüyor ve bu doğrultuda yıldız karakterini dosya ve dizin isimleri olarak genişletiyor. Neticede bizim `echo *` olarak girdiğimiz komut kabuk tarafından `echo dosya ve dizin isimleri` olarak genişletilmiş oluyor. `echo` aracı da kendisine argüman olarak verilmiş olan dosya ve dizin isimlerini konsola bastırıyor.

![2.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/genisletme/2.webp)

İşte tıpkı bu örneğimizde de deneyimlediğimiz gibi kabuk, bizim yazılı şekilde verdiğimiz emirleri doğru şekilde algılayabilmek için komutları çalıştırmadan önce komut metni içerisindeki özel anlam taşıyan ifadeleri bulup gerçekte neyin kast edildiğini anlayabilmek için çeşitli bağlamlara göre değerlendiriyor. Bu değerlendirme işini de tıpkı şemada açıkladığımız gibi adım adım gerçekleştiriyor. Yani kabuk kendisinde tanımlı olan görevler dahilinde, girdiğimiz komutta kendisinin yapması gereken işlemler varsa ilk olarak bunları yapıyor. Girilen komutlar yani argümanlar kabuk tarafından işlenip uygun şekilde genişletildikten sonra da zaten ilgili araca bu argümanlar aktarılıyor. 

İşte "**genişletme**" olarak bahsettiğimiz durum, kabuğa girilen yazılı ifadelerin bağlamına göre değerlendirilip uygun değerlere dönüştürülmesi yani genişletilmesidir.

Anlatım devamında kabuk üzerinde geçerli olan genişletme kurallarının detaylarına ve gerektiğinde bu genişletmeden nasıl kaçınabileceğimize uygulamalı olarak değiniyor olacağız. Eğer kabuğun genişletmeleri nasıl ele aldığını bilirsek, çok daha az eforla kabuğa çok daha fazla iş yaptırabiliriz. 

# Süslü(Kıvırcık) Parantez-Küme Ayracı Genişletmesi

Kıvırcık parantez genişletmesi sayesinde sayılar ve karakterlerle istediğimiz aralıklarda verilerin oluşturulmasını sağlayabiliriz. Yani kendi ihtiyaçlarımıza göre örüntüler oluşturabiliriz. Hatırlıyorsanız komut satırının ne kadar işlevsel olabileceğinden bahsederken 1’den 100’e kadar isimlendirilmiş klasör oluşturmak için de kıvırcık parantez genişletmesini kullanmıştık. 

Yine benzer örneği ele alabiliriz. Normalde 1’den 5’e kadar isimlendirilmiş klasörler oluşturmak için `mkdir 1 2 3 4 5` şeklinde tek tek elimizle klasör isimlerini belirtmemiz gerek. Bunun yerine aralığı kıvırcık parantez içinde `mkdir {1..5}` şeklinde yazabiliriz. Yani benim `mkdir 1 2 3 4 5` şeklinde yazmamla aslında `mkdir {1..5}` yazmam en nihayetinde `mkdir` aracı için aynı oluyor çünkü kıvırcık parantez içindeki **1..5** ifadesi 1’den 5’e kadar olan sayılara genişletiliyor.

```bash
┌──(taylan@linuxdersleri)-[~/yeni klasor]
└─$ mkdir {1..5}

┌──(taylan@linuxdersleri)-[~/yeni klasor]
└─$ ls
1  2  3  4  5
```

Neticede işte bu yaklaşım sayesinde argüman alarak çalışan tüm araçlarda genişletme özelliklerinin nimetlerinden faydalanmamız mümkün. Örneklerimizi pek çok farklı araç üzerinde uygulayabiliriz ancak, kolayca takip edilebilir olması için konsola çıktı bastıran `echo` aracını kullanacağız. Bu sayede genişletme sonucunda üretilen tüm argümanları doğrudan konsol üzerinden çıktı olarak görebiliyor olacağız. 

Basit bir örnekle başlayacak olursak `echo a{d,l,t}a` komutunu girebiliriz.

```bash
└─$ echo a{d,l,t}a
ada  ala  ata
```

İşte buradaki kıvırcık parantezin içindeki virgülle ayrılmış olan karakterler, kabuk tarafından sırasıyla genişletilerek baştaki ve sonraki **a** karakterleri ile birleştirilip **ada ala** ve **ata** argümanlarına dönüştürüldü. `echo` aracı da bu argümanları konsolumuza bastırdı. İşte en basit hali ile genişletme dediğimiz kavram bu. Kıvırcık parantez içine virgüller ayırarak yazdığımız tüm karakterler soldan sağa doğru sırasıyla parantezin dışındaki karakterlerle birleştirilerek her biri için birer argüman üretiliyor. Yani belirttiğimiz şablona göre istediğimiz çeşitlilikte argüman üretebiliyoruz. 

Ben yalnızca birer karakter ekledim ancak kıvırcık parantez içerisine istediğimiz uzunlukta istediğimiz kadar karakteri ekleyebiliyoruz.  Ben bu kez `echo a{bbb,dd,l,tttt}a` şeklinde komutumuzu girelim.

```bash
└─$ echo a{bbb,dd,l,tttt}a
abbba adda ala atttta
```

Bakın her koşulda parantez içinde virgülle ayırarak verdiğimiz tüm karakterler, peşi sıra kaç karakter kullanıldığına bakılmaksızın kabuk tarafından genişletiliyor. Çıktıyı incelediğimizde virgülle ayırmış olduğumuz karakterlerin tıpkı tanımlandıkları sıralamaya yani soldan sağa doğru genişletildiğini teyit edebiliyoruz. Siz de elde etmek istediğiniz argümanlar için bu sıraya dikkat ederek şablonunuzu tanımayabilirsiniz. Yalnız, bu şekilde şablon tanımı üzerinden örüntüler oluştururken boşluk karakterini kaçış karakteriyle birlikte kullanmanız gerektiğine de dikkat edin lütfen. Aksi halde kabuk genişletme uygulanamaz. 

Boşluk karakterinin genişletmeye engel olduğunu kanıtlamak için aynı komutumuzu bu kez içinde boşluk karakteri ile tekrar girebiliriz. 

```bash
└─$ echo a{b b,d,l,t}a
a{b b,d,l,t}a
```

Bakın boşluk karakteri olduğu için genişletme gerçekleştirilmedi dolayısıyla köşeli parantez ve içindeki tüm karakterler olduğu gibi konsola bastırıldı. Çünkü kabuk burada bir karakter boşluk olduğunu gördüğünde burada bu boşluk karakterinin kelimeleri bölümlemek için bulunduğunu düşünüyor. Dolayısıyla genişletme yerine kelime bölümlemesi yapılıp, genişletme yapısı kabuk tarafından görmezden geliniyor. Bizim bu boşluğun bu amaçla eklenmediğini yani sıradan bir karakter olduğunu kabuğa belirtmek için özellikle kaçış karakterini kullanmanız gerekiyor. Denemek için boşluk karakterinden hemen önce kaçış karakterini ekleyelim. 

```bash
└─$ echo a{b\ b,d,l,t}a                                          
ab ba ada ala ata
```

Böylece, ne zaman bir karakterin kabuk tarafından standart olarak algılanmasını istersek kaçış karakterini tıpkı bu örneğimizde olduğu şekilde kullanabileceğimizi bir kez daha teyit etmiş olduk.

Tekrar kıvırcık parantez genişletmesine dönecek olursak burada biz doğrudan genişletilecek tüm karakterleri belirttik. Eğer genişletilecek karakterlerin hepsini yazmak yerine bir aralık belirtmek istersek; iki nokta yan yana olacak şekilde `{başlangıç..bitiş..artış_oranı}` yapısını da kullanabiliyoruz. 

Ben a'dan z ye kadar olan tüm karakterleri bastırmak için `{a..z}` şeklinde komutumu giriyorum. 

```bash
└─$ echo {a..z}
a b c d e f g h i j k l m n o p q r s t u v w x y z
```

Bakın a’dan z’ye kadar olan tüm alfabetik karakterler sırasıyla tek tek bastırıldı. Linux üzerinde küçük büyük harf duyarlılığı olduğundan daha önce bahsetmiştik. Küçük büyük harf duyarlılığı sebebiyle eğer büyük karakterler bastırılsın istersem `A..Z` şeklinde özellikle büyük harfleri kullanmam gerekiyor. 

```bash
└─$ echo {A..Z}                                                
A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
```

Bakın A’dan Z’ye hepsi büyük harfli şekilde bastırıldı. İstersem aynı şekilde sayı aralığı da belirtebilirim. 

```bash
└─$ echo {1..10}                                                 
1 2 3 4 5 6 7 8 9 10
```

Gördüğünüz gibi tüm sayılar sırasıyla bastırıldı. Ayrıca genişletmeler sırasında üretilen örüntünün sıralı şekilde teker teker ilerlemesi de şart değil. İstersek kaçar kaçar ilerlemesi gerektiğini örüntünün sonuna iki nokta koyduktan sonra belirtebiliriz. Örneğin 1’den 20’ye kadar olan sayıların 2 şer 2 şer genişletilmesini istersek `{1..20..2}` şeklinde belirtebiliriz. 

```bash
└─$ echo {1..20..2}                                            
1 3 5 7 9 11 13 15 17 19
```

Bakın tüm sayılar birden başlayıp ikişer ikişer arttırılarak yani 1 3 5 7.. şeklinde iki sayı aralıkla genişletildi. Sayılar dışında bu aralığı harfler üzerinde de benzer şekilde kullanabiliriz. 

```bash
└─$ echo {a..z..2}                                            
a c e g i k m o q s u w y
```

Bakın tüm harfler alfabetik olarak a’dan başlayıp ikişer sıra kaymış şekilde tek tek bastırıldı.

İşte sizler de bu şekilde ihtiyaçlarınıza uygun olan örüntüleri oluşturmak için kıvırcık parantez kullanabilirsiniz. Şimdiye kadar verdiğim basit örneklerden belki anlaşılamamış olabilir ancak buradaki genişletmelerin her biri ayrı ayrı birer argüman olarak genişletiliyorlar. Eğer genişletilecek argüman bir önceki argümandan ayrılmadıysa yani bitişik yazıldıysa, genişletme bu argüman da dikkate alınarak gerçekleştiriliyor.

Ne demek istediğimi daha net anlayabilmek için `echo deneme{1..5}` şeklinde komutumuzu girelim.

```bash
└─$ echo deneme{1..5}                                           
deneme1 deneme2 deneme3 deneme4 deneme5
```

Bakın aldığımız çıktıda deneme ifadesinin sonuna 1’den 5’a kadar rakamlar eklendi ve neticede 5 farklı argüman üretilmiş oldu. Bu çıktıyı elde ettik çünkü **deneme** argümanından sonra boşluk bırakmadan kıvırcık parantez içinde genişletme karakterlerini belirttik. Kabuk, girdiğimiz komutu anlamlandırmak için öncelikle boşluklarından parçalara ayırdığı için bizim **girdiğimiz genişletme karakterleri** ve “**deneme**” argümanı aynı bütünün parçaları olarak değerlendirildi. Ve genişletme karakteri de olduğu için kabuk, `deneme{1..5}` komutunun aslında **deneme1 deneme2.. deneme5** olarak genişletilmesi için eklendiğini anlayıp buna göre muamele etti. 

Aynı örneği bu kez genişletme karakteri ile önceki argüman arasında bir boşluk olacak şekilde yani `echo deneme {1..5}` şeklinde girelim. 

```bash
└─$ echo deneme {1..5}                                           
deneme 1 2 3 4 5
```

Bakın gördüğünüz gibi **deneme** ve 1’den 5’e kadar olan sayılar argüman olarak üretildi. Çünkü kabuk girmiş olduğumuz komutu boşluklarından parçalara ayırdı dolayısıyla **deneme** argümanını ve genişletilecek karakterleri ayrı ayrı ele aldı.

Bizim kabuğa verdiğimiz komutların kabuk tarafından nasıl ele alındığını aşağı yukarı bildiğimizde işte tıpkı burada olduğu gibi girdiğimiz komutların kabuk tarafında ne anlam ifade ettiğini de çok daha iyi anlayabiliyoruz. Yani daha önce açıklamış olduğumuz kabuk nasıl çalışır bölümünü gereksiz yere ele almadık. Kabuğun komutları algılayışını bildiğimizde çok daha etkili şekilde emirler verebiliyoruz.

Tekrar örüntü oluşturmaya dönecek olursak, farklı türde örüntüler elde etmek isterseniz birden fazla genişletme karakterini peş peşe de kullanabilirsiniz. Denemek için `echo {1..3}{a..c}` şeklinde komutumuzu girelim. 

```bash
└─$ echo {1..3}{a..c}                                            
1a 1b 1c 2a 2b 2c 3a 3b 3c
```

Bakın, iki genişletme karakteri bitişik şekilde kullanıldığı için 1’den 3’e kadar olan tüm rakamlar ve a’dan c’ye kadar olan karakterleri de içeren argümanlar üretmiş oldu. Bu örnek kabuğun genişletmeleri nasıl yaptığını gayet iyi özetliyor bence. Kabuk sırasıyla genişletme yaptığı için soldan sağa doğru genişletilecek karakterleri arıyor. En soldaki karakteri genişlettikten sonra ileride genişletilecek karakter var mı diye bakıyor. Eğer varsa bunları da genişletiyor. İşte buradaki örnekte kabuk ilk olarak 1 rakamına genişletti ve devamında ikinci genişletmeye geçip a’dan c’ye kadar olan genişletmeyi uyguladı. Daha sonra 2 rakamına genişletti ve aynı şekilde a’dan c’ye kadar olan genişletmeleri sırasıyla tek tek uyguladı. Yani genişletmenin uygulanış biçim ve sırası oldukça düzenli. Hatta bu düzeni daha net görebilmek adına bir adet daha genişletme ekleyebiliriz. Bunun için `echo {1..3}{a..c}{A..C}` komutunu girelim. 

```bash
└─$ echo {1..3}{a..c}{A..C}
1aA 1aB 1aC 1bA 1bB 1bC 1cA 1cB 1cC 2aA 2aB 2aC 2bA 2bB 2bC 2cA 2cB 2cC 3aA 3aB 3aC 3bA 3bB 3bC 3cA 3cB 3cC
```

Çıktıları inceleyecek olursak, sırasıyla ilk genişletmenin uygulanıp sonraki genişletmenin ilk basamağının da uygulandıktan sonra bir sonraki genişletmenin uygulandığını görebiliyoruz. İlk genişletme basamağı 1 ve a olduğu için 1aA 1aB 1aC şeklinde genişletmeler uygulanmış. Geri kalan genişletmeler de benzer şekilde soldan sağa doğru adım adım uygulanmış. Aslında burada aldığımız çıktılar `deneme{1..5}` örneğini ile birebir benzer. Tek fark, biz burada birden fazla genişletme karakterini bitişik olarak kullandığımız için üretilen örüntüler de bu doğrultuda çok çeşitli oldu. Yoksa tüm işleyiş aynı.

Belki bu noktada aldığımız çıktılar sizlere biraz karmaşık gelmiş olabilir, ancak merak etmeyin aslında son derece kolay. Tek yapmanız gereken çıktıları biraz dikkatlice izleyip, genişletmelerin soldan sağa doğru adım adım gerçekleştirildiğini fark etmektir. **Ayrıca zaten genelde bu örneklerdeki gibi karmaşık veya anlamsız örüntüler oluşturmanız da gerekmeyecek.** Ben sadece örüntü oluşturmanın temel yapısından bahsetmek için bu şekilde örnekler veriyorum. Kendiniz de farklı örnekler üzerinden farklı desenler üreterek genişletmenin tam olarak nasıl çalıştığını rahatlıkla kavrayabilirsiniz. Örneğin bu son girdiğim komutta genişletme karakteri arasında boşluk bırakırsam, genişletmeler birbirinden bağımsız olacağı için ayrı ayrı sıralı çıktıları alacağız. 

```bash
└─$ echo {1..3} {a..c} {A..C}                                    
1 2 3 a b c A B C
```

Bakın boşluk bırakınca, genişletmeler birbirinden bağımsız olduğu için argümanlarda birbirinden bağımsız oldu.

Neticede kıvırcık parantez genişletmeleri sayesinde çok çeşitli argüman örüntüleri oluşturabileceğimizi `echo` komutu üzerinden ele aldık. `echo` komutu üretilen argümanları gözlemleyebilmemiz için harika olsa da ben basit bir gerçek dünya örneği de vermek istiyorum.

Örneğin diyelim ki kendi ev dizininiz içindeki ***Desktop*** klasörü altında birbirinden farklı isimlerde yeni 5 tane klasör oluşturmak istiyorsunuz. Bunun için ne yapabilirsiniz ? Örneğin komutunuzu `mkdir ~/Desktop/bir ~/Desktop/iki ~/Desktop/uc` ve benzeri şeklinde uzun uzadıya girebilirsiniz. Ama buna gerek yok çünkü artık siz genişletmeden yararlanıp örüntü oluşturmayı biliyorsunuz. Yani tüm komutu tekrar tekrar yazmak yerine isterseniz kıvırcık parantez genişletmesi ile `mkdir ~/Desktop/{bir,iki,uc,dort,bes}` şeklinde tek seferde istediğiniz isimlerde klasörlerin oluşturmasın da sağlayabilirsiniz. 

```bash
└─$ mkdir ~/Desktop/{bir,iki,uc,dort,bes}                    

┌──(taylan@linuxdersleri)-[~/yeni klasor]
└─$ ls ~/Desktop/                        
bes  bir  dort  iki  test.txt  uc  yeni-dizin
```

Bakın tek bir komutla istediğim örüntüye uyulması sayesinde birden fazla klasörü kolayca oluşturabildim. İşte bu ve bunun gibi sizlere pratiklik sağlayacak durumlarda kıvırcık parantez genişletmesini kullanabilirsiniz.

# Dosya İsmi Genişletme

Bash kabuğu girmiş olduğumuz her bir argümana bakıp '*', '**?**' ve '**[**' karakterleri var mı diye kontrol ediyor. Bu karakterlerden biri görünüyorsa, bu argüman bir **dosya ismi genişletmesi** kalıbı olarak kabul ediliyor ve kalıpla eşleşen dosya ve klasör isimleri alfabetik olarak genişletiliyor. Yani dosya ismi genişletmesi aslında **var olan dosya ve klasör isimleri ile eşleşecek kalıplar** oluşturmamızı sağlıyor. Örneğin a ile başlayan veya .txt ile biten tüm dosya ve klasörler gibi özel karakter kalıpları belirtip var olan dosya ve dizinlerin bu kalıba göre filtrelenmesini sağlayabiliyoruz.

Bash kabuğuna dosya ismi genişletmesini belirtmek için başta da söylediğim gibi “yıldız”, “soru işareti” ve “köşeli parantez” joker karakterinden uygun olan bir karakteri kullanmamız gerekiyor. Fark ettiyseniz kabuk için özel anlam ifade eden bu karakterlere “**joker karakterler**” dedim. Buradaki **joker karakter** ifadesi önemli çünkü isminden de anlaşılabileceği gibi bu karakterler herhangi bir karakter ile eşleşebildikleri için bu isme sahipler. Türkçe “joker karakterler” olarak ifade ettiğim bu karakterlere İngilizce “wildcards” olarak geçiyor.

“wildcards” ifadesine, komut satırı üzerindeki çeşitli araçları kullanırken veya harici olarak İngilizce yardım sayfalarında sıklıkla rast geliyor olacağımız için joker karakterin wildcards olarak geçtiğini bilmeniz önemli. Örneğin kullanacağınız bir araç, bu “yıldız” “soru işareti” ve “köşeli parantez” karakterlerini özel anlamları ile ele almak için sizden wildcards seçeneğiyle bunu özellikle belirtmenizi bekleyebilir. Özellikle belirtmediğiniz durumda size hata çıktısında “wildcards kullanmalısınız” diye uyarı verebilir. Şimdi kısaca bu joker karakterlerin kabuk için ifade ettiği anlamalara değinecek olursak;

**Yıldız karakteri:** sıfır veya sıfırdan daha fazla sayıda herhangi bir karakter ile eşleşebiliyor.

**Soru işareti:** tam olarak yalnızca herhangi bir tek karakterle eşleşiyor.

**Köşeli parantez:** ise köşeli parantez içinde belirten herhangi bir karakter ile eşleşebiliyor.

Bu joker karakterlerin kullanımlarına tek tek değineceğiz ancak ilk olarak dikkatinizi çekmek istediğim nokta bu karakterlerin **yalnızca var olan dosya ve klasör isimlerine genişletilmek için** kullanılabildikleridir. **Yeni dosya veya klasör oluşturmak gibi işlerde kullanamayız.** Çünkü var olan dosya ve klasörler içerisinden bizim belirttiğimiz kalıba uyan isimleri argüman olarak genişletmek için varlar. Zaten bu karakterler “pattern matching” yani “desen eşleştirme” karakteri olarak da geçiyor. Yani var olan dosya dizin isimleri ile eşleşecek karakter desenleri oluşturmamızı sağlıyorlar.

Teorik açıklamanın anlamalı hale gelmesi için tabii ki örnekler yapmamız gerekiyor. Örnekler yapmak için öncelikle ***/etc*** dizinine geçiş yapalım. ***etc*** dizini altında pek çok farklı dosya ve klasör bulunduğu için örnekler sırasında alıştırmalar yapabileceğimiz çeşitlilikte dosya ve klasör ismi mevcut. 

Daha önce süslü parantez genişletmesinde olduğu gibi bu genişletmelerin sonuçlarını rahat gözlemleyebilmek adına yine `echo` komutunu kullanabiliriz.

## Yıldız Karakteri

Eğer `echo` komutumun ardından **yıldız joker karakterini** eklersem, bu var olan tüm dosya ve klasörlerin bastırılması demek oluyor. 

Hemen denemek için `echo *` komutunu girelim. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo *
adduser.conf adjtime alsa alternatives apache2 apparmor apparmor.d apt avahi bash.bashrc bash.bashrc.save bash.bashrc.save.1 bash_completion bash_completion.d bindresvport.blacklist binfmt.d bluetooth ca-certificates ca-certificates.conf chatscripts cifs-utils cloud console-setup cron.d cron.daily cron.hourly cron.monthly crontab cron.weekly cryptsetup-initramfs cryptsetup-nuke-password crypttab dbus-1 dconf debconf.conf debian_version debtags default deluser.conf dhcp dictionaries-common dns2tcpd.conf dpkg e2scrub.conf emacs environment environment.d ethertypes ettercap firebird firefox-esr fonts freetds fstab fuse.conf gai.conf geoclue ghostscript glvnd gprofng.rc groff group group- grub.d gshadow gshadow- gss gtk-2.0 gtk-3.0 guymager hdparm.conf host.conf hostname hosts hosts.allow hosts.deny idmapd.conf ifplugd ImageMagick-6 inetsim init.d initramfs-tools inputrc insserv.conf.d ipp-usb iproute2 ipsec.conf ipsec.d ipsec.secrets issue issue.net java-11-openjdk john kernel kernel-img.conf king-phisher kismet ld.so.cache ld.so.conf ld.so.conf.d libao.conf libaudit.conf libblockdev libnl-3 libpaper.d lightdm lighttpd locale.alias locale.gen localtime logcheck login.defs logrotate.conf logrotate.d macchanger machine-id magic magic.mime mailcap mailcap.order manpath.config matplotlibrc mime.types minicom miredo miredo.conf mke2fs.conf ModemManager modprobe.d modules modules-load.d motd mtab mysql nanorc netconfig netsniff-ng network NetworkManager networks nftables.conf nginx nikto.conf nsswitch.conf ODBCDataSources odbc.ini odbcinst.ini openal OpenCL openfortivpn openni2 openvpn opt os-release pam.conf pam.d papersize passwd passwd- perl php plymouth polkit-1 postgresql postgresql-common powershell-empire ppp profile profile.d protocols proxychains4.conf pulse python2.7 python3 python3.10 python3.9 rarfiles.lst rc0.d rc1.d rc2.d rc3.d rc4.d rc5.d rc6.d rcS.d rearj.cfg redsocks.conf request-key.conf request-key.d resolv.conf responder rmt rpc rsyslog.conf rsyslog.d runit samba sane.d scalpel screenrc sddm.conf.d searchsploit_rc security selinux sensors3.conf sensors.d services shadow shadow- shells skel smartd.conf smartmontools smi.conf snmp speech-dispatcher sqlmap ssh ssl sslsplit strongswan.conf strongswan.d stunnel subgid subgid- subuid subuid- subversion sudo.conf sudoers sudoers.d sudoers.save sudo_logsrvd.conf sv sysctl.conf sysctl.d sysstat systemd terminfo theHarvester tightvncserver.conf timezone timidity tmpfiles.d ucf.conf udev udisks2 ufw updatedb.conf update-motd.d UPower vdpau_wrapper.cfg vim vpnc vulkan wgetrc wireshark wpa_supplicant X11 xattr.conf xdg xfce4 xl2tpd zsh zsh_command_not_found
```

Bakın tıpkı `ls` çıktısında olduğu gibi mevcut dizindeki tüm dosya ve klasörlerin isimleri konsola bastırıldı. Tabii ki `ls` komutunda olduğu gibi renkli ve düzenli bir çıktı olmadı ancak gizli dosya ve dizinler hariç tüm içerikler `echo` komutuna argüman olarak iletildiği için `echo` komutu tarafından konsola batırıldı. 

Belirttiğim gibi yıldız işareti tüm dosyaları ve klasörleri kapsıyor olsa da gizli dosya ve klasörleri kapsamıyor. Yani başında nokta işareti ile gizlenmiş olan dosya ve klasörlerin isimlerini yıldız genişletme karakterini kapsamıyor. Gizli olanları özellikle kapsaması için yıldız işaretinden önce nokta karakterini de ekleyip gizli isimleri özellikle kapsayabiliriz. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo .*                                                      
. .. .java .pwd.lock
```

Ben bu girmiş olduğum komutta; yıldız karakterinden önce nokta işaretini koyduğum için başlangıcı nokta olan ve devamında herhangi bir karakter olan tüm dosya ve dizinlerin kapsanması sağlanıyor. Benim çalıştığım ***etc*** dizini altında da bu biçimde olan yani gizli olan içerikler bunlarmış.

Ayrıca bu aldığımız çıktılarda yer alan tek nokta `.` mevcut dizini temsil ediyorken, iki nokta `..` da bir üst dizini temsil eden klasörler. Örneğin biz `cd ..` şeklinde komut girip bir üst dizine dönerken, aslında üst dizini temsil eden bu iki nokta klasörüne geçiş yaptığımız için bir üst dizine dönebiliyorduk. Veya daha önce betik dosyalarımızı çalıştırırken de gördüğümüz gibi bir dosyaya çalıştırırken `./dosya-ismi` şeklinde komut girdiğimizde de mevcut dizini temsil eden bu dizin sayesinde bu dosya kabuk tarafından çalıştırılabiliyordu. Nokta işareti kabuğa bu dizinin tam adresini verdiği için mevcut dizin içinde olan dosyanın tam konumunu kolayca belirtebiliyorduk. 

Her neyse bakın başında nokta bulunan dosya ve klasör isimlerini kapsayabilmek için nokta ve yıldız karakterlerini bir arada kullandık. Bu kullandığımız karakterler de mevcut bulunduğumuz dizinde yer alan bu dosya ve klasörlerin isimlerine genişletilip `echo` aracına argüman olarak verildi, dolayısıyla konsolumuza bu çıktıları bastırabildik.

Normalde yıldız işaretinin gizli içerikleri kapsamıyor olmasının nedeni farkında olmadan önemli dosyalar üzerinde yanlış işlem yapmamızı önlemektir. Zaten klasör veya dosyaların gizli olmasının amacı göz önünden uzak tutularak korunmalarını sağlamak. Bash kabuğunun joker karakteri olan yıldız işareti her şeyi kapsamasına rağmen gizli dosya ve klasörleri bilerek dışarıda tutuyor. 

Tamamdır, temel olgulardan da bahsettiğimize göre şimdi yıldız joker karakterini ihtiyacımıza göre nasıl kullanabileceğimize dair birkaç farklı örnek uygulama yapabiliriz.

Gizli içerikleri görmek için başı nokta ile başlayanları listeledik. Nokra yerine dilediğimiz herhangi bir karakteri de belirtebilirdik. Hatta dilersek tersi şekilde sonu belirli bir karakter veya karakterler ile bitenleri de listeleyebiliriz. Örneğin ben sonu “**i”** ile biten her şeyi bastırmak istersem `echo *i` şeklinde komutumu kullanabilirim. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo *i
avahi odbc.ini odbcinst.ini
```

Bakın buradaki tüm dosya ve dizin isimlerinin sonunda “i” harfi var.

Benzer şekilde birden fazla karakteri de spesifik olarak belirtebiliriz. Örneğin sonu “**.d”** ile biten içerikleri bastırmak için de benzer şekilde `echo *.d` komutunu girebiliriz. 

```bash
└─$ echo *.d
apparmor.d bash_completion.d binfmt.d cron.d environment.d grub.d init.d insserv.conf.d ipsec.d ld.so.conf.d libpaper.d logrotate.d modprobe.d modules-load.d pam.d profile.d rc0.d rc1.d rc2.d rc3.d rc4.d rc5.d rc6.d rcS.d request-key.d rsyslog.d sane.d sddm.conf.d sensors.d strongswan.d sudoers.d sysctl.d tmpfiles.d update-motd.d
```

Bakın yalnızca sonu “**.d”** ile bitenler listelenmiş oldu.

Görebildiğiniz gibi kullanımı son derece kolay. Spesifik olarak eşleşmesini istediğim bir veya birden fazla karakter varsa onları komutumda uygun şekilde belirttiğim sürece dosya ve dizin isimleri içinden tam olarak aradığım isimlerdekilere genişletiliyor. 

Ben yine örnek olması için başlangıcı “**in**” ile başlayan tüm dosya ve dizin isimlerinin genişletilerek `echo` aracına iletilmesini istiyorum. Bunun için `echo in*` komutunu girebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo in*
inetsim init.d initramfs-tools inputrc insserv.conf.d
```

Bakın başlangıcı “**in**” olan tüm dosya veya klasör isimleri karakter uzunlukları fark etmeksizin bastırılmış oldu.

Başlangıç veya son yerine eğer herhangi bir yerinde “**in**” karakteri geçen tüm içerikleri bastırmak istersem `echo *in*` komutunu kullanabilirim. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo *in*                                                    
bindresvport.blacklist binfmt.d cryptsetup-initramfs inetsim init.d initramfs-tools inputrc insserv.conf.d king-phisher login.defs machine-id minicom nginx odbc.ini odbcinst.ini proxychains4.conf selinux terminfo
```

Bakın bu girdiğimiz genişletme tanımı sayesinde dosya veya klasör isimlerinin herhangi bir yerinde “in” geçen tüm içerikler bastırılmış oldu. Yıldız işareti sıfır veya herhangi bir karakter anlamın geldiği için bu kadar geniş bir eşleşeme imkanı sağlamış oldu. Yani biz bu genişletme karakteri tanımı ile, başlangıcında sıfır veya sıfırdan başka herhangi bir uzunlukta karakter olan daha sonra “in” karakterinin geçtiği ve yine sonunda sıfır veya sıfırdan başka herhangi bir uzunlukta karakter olan tüm dosya ve dizin isimlerinin genişletilmesini sağladık. Bu sayede başında sonunda veya ortasında “**in**” ifadesi geçen tüm içerikler de bastırıldı.

İşte sizler de sıfır veya daha fazla sayıda herhangi bir karakter ile eşleşecek bir düzende dosya veya dizin ismi genişletmesi yapılsın istiyorsanız yıldız joker karakterini uygun biçimde, genişletmenin başında sonunda veya her ikisinde de birden ihtiyacınıza uygun şekilde kullanabilirsiniz. 

## Soru İşareti

Daha önce soru işareti karakterinin herhangi bir tek karakter yerine geçtiğini belirtmiştik. Burada dikkat etmeniz gereken detay soru işareti joker karakterinin sıfır değil her zaman **tam olarak tek bir** karakteri temsil ettiği. 

Örneğin ben başlangıcı “**ss**” olan ancak devamındaki karakterin herhangi bir karakter olduğu dosya ve klasörleri `echo` aracına argüman olarak vermek istiyorum. Bunun için `echo ss?` komutunu girmem yeterli. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo ss?                                                     
ssh ssl
```

Bakın “**ss**h” ve “**ss**l” çıktılarını aldım. Bu çıktılarda yalnızca başlangıcı “**ss**” olan ve sonundaki tek bir karakteri herhangi bir karakter olan dosya ve klasörler yer alıyor. Yani fark ettiyseniz soru işareti yalnızca tek bir karakteri kapsıyor. 

Hatta bu durumu teyit etmek için bir veya birden fazla kez soru işareti kullandığımızda ne olacağına göz atabiliriz. Ben örnek için öncelikle echo s? şeklinde yazıyorum. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo s?                                                     
sv
```

Bakın tek bir karakter ile eşleştirildiği için ben “**s**v” çıktısını aldım. Şimdi bir de komutumuzu `echo s??` şeklinde tekrar girelim. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo s??                                                     
ssh ssl
```

Bakın bu kez “sv” çıktısı yok, onun yerine “s” karakterinden sonra herhangi iki karakter bulunan “ssh” ve “ssl” çıktılarını almış olduk. Yani bakın kaç tane soru işareti varsa yalnızca o sayı adedince karakter ile eşleşme yapılıyor. Ayrıca dikkat ettiyseniz daha önce de söylediğim gibi soru işareti karakteri 0 karakter ile eşleşme yapmıyor. Eğer soru işareti sıfır karakteri de kapsıyor olsaydı “sv” çıktısını da yine almamız gerekiyordu. Çünkü ben çift soru işareti kullandığımda ilk soru işareti “sv” için “v” karakterini tamamladıktan sonra “sv” isminin devamında başka bir karakter olmadığı için yani sıfır karakter bulunduğu için ikinci soru işareti sıfır karakteri kapsayıp bize “sv” çıktısını vermeliydi. Ancak soru işareti sıfırdan farklı yalnızca tek bir karakteri kapsıyor. İşte siz de dilediğiniz **tek bir karakteri** kapsaması için istediğiniz gibi **soru işaretini** kullanabilirsiniz. Örneğin isim ortasında kullanımına dair bir örnek olması için `echo rc?.d` komutu ile farklı rakamlarla temsil edilen klasörleri konsola bastırabiliriz. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo rc?.d
rc0.d rc1.d rc2.d rc3.d rc4.d rc5.d rc6.d rcS.d
```

Bakın buradaki soru işareti rakamların ve “S” karakterinin yerini alıp bize bu klasörlerin isimlerini verdi. Bir diğer örnek olarak üç karakterden oluşan tüm içerikleri listelemek için `echo ???` komutumuzu girebiliriz.

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo ???
apt gss opt php ppp rmt rpc ssh ssl ufw vim X11 xdg zsh
```

Bakın tam olarak isminde 3 karakter bulunan içerikler konsolumuza bastırılmış oldu.

Yani özetle tekrar tekrar teyit ettiğimiz gibi buradaki soru işareti mutlaka tek bir karakter ile eşleşecek şekilde genişletiliyor. Kaç tane soru işareti kullanıldıysa o kadar sayıda herhangi bir karakter ile eşleşme sağlanabiliyor. 

## Köşeli Parantez

Köşeli parantez içerisine yazdığımız karakterler soldan sağa doğru genişletiliyor. Örneğin başlangıcında **a c z** ve **d** karakterlerinden herhangi biri olan tüm içerikleri bastırmak istersem komutumu `echo [aczd]*` şeklinde girebilirim. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo [aczd]*
adduser.conf adjtime alsa alternatives apache2 apparmor apparmor.d apt avahi ca-certificates ca-certificates.conf chatscripts cifs-utils cloud console-setup cron.d cron.daily cron.hourly cron.monthly crontab cron.weekly cryptsetup-initramfs cryptsetup-nuke-password crypttab dbus-1 dconf debconf.conf debian_version debtags default deluser.conf dhcp dictionaries-common dns2tcpd.conf dpkg zsh zsh_command_not_found
```

Bu komut sayesinde köşeli parantez içindeki tüm karakterler soldan sağa doğru tek tek genişletiliyor ve yıldız karakteri sayesinde de devamında herhangi bir uzunlukta karakterler olan tüm dosya ve dizineler kapsanmış oluyor. Yani neticede köşeli parantez içinde belirttiğimiz karakterlerden biri ile başlayan tüm içerikler bastırılıyor.

Eğer burada olduğu şekilde tek tek spesifik olarak karakterleri girmek yerine aralık belirtmek istersek tire işaretini kullanabiliriz. Örneğin a’da d’ye tüm karakteri kapsamak için [a-d] şeklinde komut girebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo [a-d]*                                                
adduser.conf adjtime alsa alternatives apache2 apparmor apparmor.d apt avahi bash.bashrc bash.bashrc.save bash.bashrc.save.1 bash_completion bash_completion.d bindresvport.blacklist binfmt.d bluetooth ca-certificates ca-certificates.conf chatscripts cifs-utils cloud console-setup cron.d cron.daily cron.hourly cron.monthly crontab cron.weekly cryptsetup-initramfs cryptsetup-nuke-password crypttab dbus-1 dconf debconf.conf debian_version debtags default deluser.conf dhcp dictionaries-common dns2tcpd.conf dpkg
```

Bakın başlangıç harfi a’dan d’ye kadar olan yani **a b c d** karakterlerinden biri ile başlayan tüm dosya ve dizinler konsola bastırıldı. 

Benzer şekilde sayılar için de aralık belirtebiliriz. Örneğin ben isminde 1’den 5’e kadar olan rakamlardan birini barındıran tüm dosya ve klasörleri listelemek istersem komutumu `echo *[1-5]*` şeklinde girebilirim. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo *[1-5]*                                                 
apache2 bash.bashrc.save.1 dbus-1 dns2tcpd.conf e2scrub.conf gtk-2.0 gtk-3.0 iproute2 java-11-openjdk libnl-3 mke2fs.conf openni2 polkit-1 proxychains4.conf python2.7 python3 python3.10 python3.9 rc1.d rc2.d rc3.d rc4.d rc5.d sensors3.conf udisks2 X11 xfce4 xl2tpd
```

Bakın isminin herhangi bir yerinde 1’den 5’e kadar olan rakamlardan birini barından tüm dosya ve klasörler listelendi. Yani sayısal olarak aralık belirtebildiğimizi de bu örnekle teyit etmiş olduk. 

Ayrıca birkaç örnektir bizzat yaptığımız gibi farkındaysanız genişletme karakterlerini bir arada kullanabiliyoruz. Yani ben burada köşeli parantez genişletmesiyle birlikte yıldız joker karakterini de kullanıp istediğim dosya ve dizin isimlerini elde ettim. Benzer şekilde tabii ki soru işaretini de dilediğiniz gibi yıldız veya köşeli parantez genişletmesiyle birlikte kullanabilirsiniz. Mesela `echo [a-l]??` şeklinde komutumuzu girersek, buradaki köşeli parantez genişletmesi a’dan l’ye kadar olan karakterlerin hepsini kapsayacak, buradaki çift soru işareti de bu a’dan l’ye kadar olan karakterlerle başlayan ve devamında **tam olarak iki tane rastgele karakter** bulunduran dosya ve klasör isimlerine genişletmeyi sağlayacak. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo [a-l]??
apt gss
```

Bakın başlangıç harfi a’dan l’ye kadar olan karakteri kapsarken, bu karakterin devamında soru işaretleri sayesinde tam olarak 2 rastgele karakter bulunuyor. İşte tıpkı bu örneğimizde olduğu gibi joker karakterleri, ihtiyaç duyduğunuz çözüm için istediğiniz gibi düzenleyip tanımlayabilirsiniz. 

Bölüm sonunda bu karakterlerin bir arada kullanımını daha net anlayabilmek için zaten sizlere birkaç alıştırma bırakmış olacağım. Şimdi tekrar köşeli parantez genişletmesine dönecek olursak.

Linux üzerinde küçük büyük harf duyarlılığı olduğundan daha önce bahsetmiştik. Bu doğrultuda eğer genişletilecek dosya veya klasör ismi olarak büyük harfleri belirtmek istiyorsak özellikle büyük harfleri yazmamız gerekiyor. Örneğin büyük N ile başlayan içerikleri listelemek için komutumu `echo N*` şeklinde girmem gerekir. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo N*
NetworkManager
```

Bakın bende bir tane isim eşleşmesi var ve gördüğünüz gibi isim başlangıcındaki karakter de büyük harfli. Bu dizinde başlangıç harfi büyük olan tüm içerikleri öğrenmek istersem `echo [A-Z]*` şeklinde büyük karakterlerle aralık da belirtebilirim.

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo [A-Z]*                                                
ImageMagick-6 ModemManager NetworkManager ODBCDataSources OpenCL UPower X11
```

Bakın başlangıç karakteri büyük olan tüm içerikler listelendi. 

Hatta eğer `echo [A-z]*` şeklinde belirtirsek büyük küçük harfler de dahil başlangıcında a’dan z’ye kadar olan büyük küçük herhangi bir karakter bulunan tüm içerikler listelenecektir. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo [A-z]*                                                
adduser.conf adjtime alsa alternatives apache2 apparmor apparmor.d apt avahi bash.bashrc bash.bashrc.save bash.bashrc.save.1 bash_completion bash_completion.d bindresvport.blacklist binfmt.d bluetooth ca-certificates ca-certificates.conf chatscripts cifs-utils cloud console-setup cron.d cron.daily cron.hourly cron.monthly crontab cron.weekly cryptsetup-initramfs cryptsetup-nuke-password crypttab dbus-1 dconf debconf.conf debian_version debtags default deluser.conf dhcp dictionaries-common dns2tcpd.conf dpkg e2scrub.conf emacs environment environment.d ethertypes ettercap firebird firefox-esr fonts freetds fstab fuse.conf gai.conf geoclue ghostscript glvnd groff group group- grub.d gshadow gshadow- gss gtk-2.0 gtk-3.0 guymager hdparm.conf host.conf hostname hosts hosts.allow hosts.deny idmapd.conf ifplugd ImageMagick-6 inetsim init.d initramfs-tools inputrc insserv.conf.d ipp-usb iproute2 ipsec.conf ipsec.d ipsec.secrets issue issue.net java-11-openjdk john kernel kernel-img.conf king-phisher kismet ld.so.cache ld.so.conf ld.so.conf.d libao.conf libaudit.conf libblockdev libnl-3 libpaper.d lightdm lighttpd locale.alias locale.gen localtime logcheck login.defs logrotate.conf logrotate.d macchanger machine-id magic magic.mime mailcap mailcap.order manpath.config matplotlibrc mime.types minicom miredo miredo.conf mke2fs.conf ModemManager modprobe.d modules modules-load.d motd mtab mysql nanorc netconfig netsniff-ng network NetworkManager networks nftables.conf nginx nikto.conf nsswitch.conf ODBCDataSources odbc.ini odbcinst.ini openal OpenCL openfortivpn openni2 openvpn opt os-release pam.conf pam.d papersize passwd passwd- perl php plymouth polkit-1 postgresql postgresql-common powershell-empire ppp profile profile.d protocols proxychains4.conf pulse python2.7 python3 python3.10 python3.9 rc0.d rc1.d rc2.d rc3.d rc4.d rc5.d rc6.d rcS.d rearj.cfg redsocks.conf request-key.conf request-key.d resolv.conf responder rmt rpc rsyslog.conf rsyslog.d runit samba sane.d scalpel screenrc sddm.conf.d searchsploit_rc security selinux sensors3.conf sensors.d services shadow shadow- shells skel smartd.conf smartmontools smi.conf snmp speech-dispatcher sqlmap ssh ssl sslsplit strongswan.conf strongswan.d stunnel subgid subgid- subuid subuid- subversion sudo.conf sudoers sudoers.d sudo_logsrvd.conf sv sysctl.conf sysctl.d sysstat systemd terminfo theHarvester tightvncserver.conf timezone timidity tmpfiles.d ucf.conf udev udisks2 ufw updatedb.conf update-motd.d UPower vdpau_wrapper.cfg vim vpnc vulkan wgetrc wireshark wpa_supplicant X11 xattr.conf xdg xfce4 xl2tpd zsh zsh_command_not_found
```

Bakın tam da söylediğim gibi, belirttiğimiz bu aralık sayesinde başlangıç karakterinde küçük büyük harf olması fark etmeksizin tüm içerikler listelendi. 

Ben örnek olarak hep başlangıçtaki karakterler üzerinden çalıştım ancak siz yıldız işaretinin ve soru işaretinin işlevini öğrendiğiniz için istediğiniz şekilde çıktıları sınırlayabilirsiniz. Genişletme karakterlerini istediğiniz sonuçları elde etmek için özelleştirebileceğiniz kadar detay öğrendik. Zaten temel dosya ismi genişletmeleri için 3 joker karakter(`*`,`?`,`[]`) kullanıyoruz hepsi bu. 

## Hariç Tutmak

Biz şu ana kadar hep belirttiğimiz karakterler ile eşleşecek şekilde komut girdik. Dilersek köşeli parantez genişletmesini kullanırken, belirttiğimiz karakterler dışındakileri kapsayacak şekilde de komut girebiliriz. Yani hariç tutulacak karakterleri özellikle belirtip, geri kalan karakteri barındıran dosya ve dizinlerin genişletilmesini sağlayabiliriz. Bunun için tek yapmamız gereken ünlem `!` işaretini kullanmak. Örneğin başlangıcında a’dan y’ye kadar olan herhangi bir karakter geçmeyen içerikleri bastırmak istersek komutumuzu `echo [!a-y]*`  şeklinde girebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo [!a-y]*                                                 
ImageMagick-6 ModemManager NetworkManager ODBCDataSources OpenCL UPower X11 zsh zsh_command_not_found
```

Bakın belirttiğim karakterler hariç tüm eşleşenler bastırıldı. **z** karakterinden hemen önce **y** geldiği için aslında ben girdiğim bu genişletme tanımı ile **z** karakteri ve büyük karakterlerle başlayanları bastır demiş oldum. Çünkü küçük harflerle a’dan y’ye kadar olan tüm karakterlerle başlayanları elediğimde geriye bunlar kalıyor. Emin olmak için ünlem işaretini kaldırıp komutumuzu tekrar girebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo [!a-y]*                                                 
ImageMagick-6 ModemManager NetworkManager ODBCDataSources OpenCL UPower X11 zsh zsh_command_not_found

┌──(taylan@linuxdersleri)-[/etc]
└─$ echo [a-y]*                                                 
adduser.conf adjtime alsa alternatives apache2 apparmor apparmor.d apt avahi bash.bashrc bash.bashrc.save bash.bashrc.save.1 bash_completion bash_completion.d bindresvport.blacklist binfmt.d bluetooth ca-certificates ca-certificates.conf chatscripts cifs-utils cloud console-setup cron.d cron.daily cron.hourly cron.monthly crontab cron.weekly cryptsetup-initramfs cryptsetup-nuke-password crypttab dbus-1 dconf debconf.conf debian_version debtags default deluser.conf dhcp dictionaries-common dns2tcpd.conf dpkg e2scrub.conf emacs environment environment.d ethertypes ettercap firebird firefox-esr fonts freetds fstab fuse.conf gai.conf geoclue ghostscript glvnd gprofng.rc groff group group- grub.d gshadow gshadow- gss gtk-2.0 gtk-3.0 guymager hdparm.conf host.conf hostname hosts hosts.allow hosts.deny idmapd.conf ifplugd inetsim init.d initramfs-tools inputrc insserv.conf.d ipp-usb iproute2 ipsec.conf ipsec.d ipsec.secrets issue issue.net java-11-openjdk john kernel kernel-img.conf king-phisher kismet ld.so.cache ld.so.conf ld.so.conf.d libao.conf libaudit.conf libblockdev libnl-3 libpaper.d lightdm lighttpd locale.alias locale.gen localtime logcheck login.defs logrotate.conf logrotate.d macchanger machine-id magic magic.mime mailcap mailcap.order manpath.config matplotlibrc mime.types minicom miredo miredo.conf mke2fs.conf modprobe.d modules modules-load.d motd mtab mysql nanorc netconfig netsniff-ng network networks nftables.conf nginx nikto.conf nsswitch.conf odbc.ini odbcinst.ini openal openfortivpn openni2 openvpn opt os-release pam.conf pam.d papersize passwd passwd- perl php plymouth polkit-1 postgresql postgresql-common powershell-empire ppp profile profile.d protocols proxychains4.conf pulse python2.7 python3 python3.10 python3.9 rarfiles.lst rc0.d rc1.d rc2.d rc3.d rc4.d rc5.d rc6.d rcS.d rearj.cfg redsocks.conf request-key.conf request-key.d resolv.conf responder rmt rpc rsyslog.conf rsyslog.d runit samba sane.d scalpel screenrc sddm.conf.d searchsploit_rc security selinux sensors3.conf sensors.d services shadow shadow- shells skel smartd.conf smartmontools smi.conf snmp speech-dispatcher sqlmap ssh ssl sslsplit strongswan.conf strongswan.d stunnel subgid subgid- subuid subuid- subversion sudo.conf sudoers sudoers.d sudoers.save sudo_logsrvd.conf sv sysctl.conf sysctl.d sysstat systemd terminfo theHarvester tightvncserver.conf timezone timidity tmpfiles.d ucf.conf udev udisks2 ufw updatedb.conf update-motd.d vdpau_wrapper.cfg vim vpnc vulkan wgetrc wireshark wpa_supplicant xattr.conf xdg xfce4 xl2tpd
```

Bakın bu kez tersi şekilde başlangıç harfinde z karakteri bulunan veya başlangıç harfi büyük olan hiç bir içerik bastırılmadı çünkü bunları genişletme kapsamına dahil etmedik. Bu iki çıktıyı kıyaslarsanız, ünlem işaretinin hariç tutma görevinde olduğunu net biçimde görebilirsiniz.

Ben anlatımlar sırasında mümkün oldukça temel işleyişi anlamamıza yetecek kadar örnek verdim ama yapısı gereği joker karakterleri kullanarak sınırsız sayıda örüntü oluşturabiliriz. Yani temelde nasıl çalıştığını bildiğiniz zaman ihtiyaçlarınıza göre istediğiniz kalıbı oluşturabilirsiniz. Zaten bu karakterlerin amacı da dosya isimleri ile eşleşecek desenler oluşturabilmek. Burada ele aldıklarımız joker karakterleri etkili kullanmanın tek yolu da bolca pratik yapmanızdır. Pratik yaptıkça tam mantığını kavrayıp aslında ne kadar işlevsel ve kolay kullanılabilir olduğunu bizzat deneyimlemiş olacaksınız.

Ayrıca ben anlatımlar sırasında hep `echo` komutunu kullandım ancak sizler dilediğiniz bir araca argüman vermek için dosya ismi genişletmesini kullanabilirsiniz. Örneğin sonu “**.txt**” ile biten tüm dosyaları silmek istediğinizde `rm *.txt` komutunu kullanmanız yeterli olacaktır. Denemek için öncelikle kıvırcık parantez genişletmesinden de faydalanarak `sudo touch {1..9}.txt` komutu ile 1’den 9’a kadar isimlendirilmiş sonu “**.txt**” ile biten dosyalarımızı oluşturalım. `sudo` komutunu kullanıyorum çünkü ***etc*** dizini atlında çalıştığımız için dosya oluşturma ve silme gibi işlemler için yetki gerekiyor. İleride bu konuya ayıraca değineceğiz. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ sudo touch {1..9}.txt
[sudo] password for taylan: 
```

Dosyaların durumunu teyit etmek için `ls *.txt` komutu ile listeleyelim.

```bash

┌──(taylan@linuxdersleri)-[/etc]
└─$ ls *.txt
1.txt  2.txt  3.txt  4.txt  5.txt  6.txt  7.txt  8.txt  9.txt
```

Bakın dosyalar oluşturulmuş. Şimdi sonu “**.txt**” ile biten tüm dosyaları silmek için `sudo rm *.txt` şeklinde komutumuzu girelim. 

<p class="kirmizi"><strong>!! Dikkat:</strong> Çalıştığınız dizinde, içerisinde önemli veriler bulunan ve sonu ".txt" ile biten dosyalarınız varsa bu komutu girmeyin! Benim çalıştığım dizinde sonu “.txt” ile biten önemli bir dosya olmadığı için yeni oluşturduğum dosyaları silmek üzere ben bu komutumu giriyorum.</p> 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ sudo rm *.txt

┌──(taylan@linuxdersleri)-[/etc]
└─$ ls *.txt
ls: cannot access '*.txt': No such file or directory
```

Bakın sonu “**.txt**” ile biten tüm dosyalar buradaki dosya ismi genişletmesi sayesinde `rm` komutuna argüman olarak aktarıldı, dolayısıyla `rm` aracı da bu dosyaların hepsini sildi. Bu sebeple `ls *.txt` komutunun neticesinde herhangi bir çıktı da alamadık çünkü hepsi silinmişti. 

Tüm bu yaklaşımları ele aldıktan sonra, anlatımın başında değinmiş olduğum “dosya ismi genişletmeleri yalnızca mevcut dosya ve dizin isimlerine genişleyebilir” açıklaması üzerinde özellikle durmak istiyorum. Bu açıklama “dosya ismi genişletmesi” kullanarak önceden var olamayan metinsel bir veri üretemeyeceğimiz anlamına geliyor. Yani örneğin ben 1’den 5’e kadar isimlendirilmiş yeni klasörler oluşturmak için `mkdir [1-5]` şeklinde komut giremem.

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ sudo mkdir [1-5]
[sudo] password for taylan: 

┌──(taylan@linuxdersleri)-[/etc]
└─$ ls [1-5]
```

Bakın ilgili klasörler oluşturulmamış çünkü köşeli parantez karakteri dosya ismi genişletmesi olduğu için yalnızca var olan dosya ve dizin isimlerinden eşleşebilecek örüntüler oluşturuyor. Yani dosya ismi genişletmelerini yeni veriler üretmek için kullanamazsınız. Bunun yerine örneğin süslü parantez genişletmesini kullanabilirsiniz.

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ sudo mkdir {1..5}

┌──(taylan@linuxdersleri)-[/etc]
└─$ ls [1-5]                                            
1:

2:

3:

4:

5:
```

Bakın süslü parantez kullandığımızda dosya ismi genişletmesi karakteri olan köşeli parantezin aksine yeni klasör isimleri üretmeyi başardık.

Dosya ismi genişletmesini anlatımlarını noktalamadan önce, “dosya ismi” genişletmesi ile sıklıkla karıştırılan “regex” kavramından da bahsetmek istiyorum. Bu sayede dosya ismi genişletmelerini daha net anlamış olacağız. 

# Regex

Eğer daha önce herhangi bir programlama dili ile ilgilendiyseniz “**regex**” yani “**reg**ular **ex**pression” kavramıyla mutlaka karşılaşmışsınızdır. Regex en özet haliyle, spesifik olarak belirli bir karakter kalıbı ile eşleşecek desenler oluşturmamıza izin veren özel karaktere verilen isimdir. Regex doğru şekilde kullanıldığında her türlü metinsel ifadenin aranması bulunması ve ayrıştırılması konusunda inanılmaz kolaylık sağlıyor. Biz regex ile aradığımız karakter kalıbını belirtip metinsel veri girişi sağladığımızda regex, metinsel verideki kalıba uyan tüm karakterleri sorunsuzca ayrıştırıp bize iletiyor. Yani regex kullanırken dosya ismi genişletmesinde olduğu gibi yalnızca mevcut dosya veya dizin isimleri ile sınırlı değiliz. Regex’e istediğimiz metinsel veriyi girdi olarak verip bu verilerden istediklerimizi ayrıştırabiliyoruz.

Ben özellikle dosya ismi genişletmesinden hemen sonra regex kavramından bahsetmek istiyorum çünkü regex için kullanılan karakterle kabuk genişletmelerinde kullanılan karakterler ile aynı görünümde olup biraz daha farklı şekilde çalıştıkları için genellikle regex ile kabuk genişletmeleri karıştırılabiliyor.

Regex için “`+`, `*`, `?`, `^`, `$`, `(`, `)`, `[`, `]`, `{`, `}`, `|`, `\`” karakterleri özel anlama geliyor. Biz bu karakterleri kullanarak desenler üretip tüm metinsel verileri istediğimiz gibi filtreleyebiliyoruz. Regex inanılmaz derecede esnek ve kullanışlı olmasının yanında sizin de fark edebileceğiniz gibi bash kabuğu tarafından kullanılan bazı genişletme karakterlerini regex de kullanıyor. Üstelik regex için kullanılan bu özel karakterler bash kabuğundakilere benzer özellikler sergiliyor olsalar da aslında tam olarak bash kabuğundaki gibi çalışmıyorlar. Örneğin bash kabuğunda “?” karakteri **yalnızca herhangi tek bir karakteri** kapsamak için kullanıyorken, regex üzerinde soru işareti **sıfır veya bir tane karakteri** kapsamak için kullanılıyor. Belki size önemli bir fark gibi gelmemiş olabilir fakat bu gibi detaylar üretilecek örüntüleri tamamen değiştireceği için aslında çok önemli. 

Genelde modern programlama dillerinin hepsinde regex kullanmak mümkün ancak bash kabuğu programlanabilir yapıda olmasına karşın doğrudan kendi içinde regex kullanmıyor. Bunun yerine bir önceki kısımda da ele aldığımız şekilde mevcut dosya ve klasörlerin isimlerine genişletilmek üzere “dosya ismi genişletmesi” ya da diğer adıyla “globbing” olarak geçen kabuğun sağladığı “yıldız” “soru işareti” ve “köşeli parantez” joker karakterlerini kullanıyor. **Bash kabuğu yalnızca kendi bünyesindeki genişletmeleri kullanıyor.** Çünkü bash kabuğu, kullanıcılara sistem üzerindeki araçları bulma ve çalıştırma için bir ortam sağlamak amacında. Bu amacı doğrultusunda da kendisine ait olan bu özel genişletme karakterleriyle bazı kolaylıklar sunuyor, hepsi bu. Zaten regex ile bash kabuğunun genişletmeler için kullandığı karakterler benzer olduğu için bash kabuğunun aynı karakterler ile hem genişletme sunup hem de aynı anda regex desteklemesi pek makul değil.

Peki bash kabuğu üzerinde regex’in imkanlarından faydalanmamız mümkün değil mi ? Elbette mümkün.

Bash kabuğu dahili olarak regex desteklemediği için kabuğun genişletmelerini kullanmak yerine regex kullanarak metinlerdeki örüntüleri bulmamız gerektiğinde de, `sed` `awk` veya `grep` gibi regex destekleyen araçlar ile işimizi halledebiliyoruz. 

Yani kabuğun genişletme özellikleri kabuğun kendisine ait olan gömülü özellikler. Dolayısıyla bash kabuğu üzerinde doğrudan yalın şekilde bu özel karakterleri kullandığımızda kabuk her zaman bunları genişletme karakteri olarak yorumluyor olacak. 

Eğer harici olarak regex kullanmamız gerekiyorsa, regex yeteneğine sahip olan `grep` `sed` `awk` gibi araçları kullanarak metinsel verileri istediğimiz biçimde işleyebiliyoruz. Zaten kabuğun amacının bize komut satırında çalışma ortamı sağlamak olduğundan daha önce tekrar tekrar bahsettik. Dolayısıyla zaten kabuğun doğrudan kendi içinde regex desteklemesi gerekmiyor çünkü kabuğun asıl görevi bizim ihtiyacımız olan araçları bulup bu araçları konsol üzerinden rahat yönetebilmemiz. Biz istediğimiz aracı kabuk sayesinde çalıştırdıktan sonra zaten o aracın tüm özelliklerini kabuktan bağımsız olarak kullanabiliyoruz. 

Yani kabuğun regex desteklememesi bir eksiklik değil, kabuğun yapısının bir parçasıdır. Kabuk tüm bölüm boyunca bahsettiğimiz gibi bize gerekli çalışma ortamını sağlayacak genişletme özelliklerine zaten sahip. Eğer regex gibi ek özellikler gerekiyorsa, bu özellikleri destekleyen harici araçları kullanarak işlerimizi halledebiliyoruz.

Regex ile kabuğa ait genişletmeler arasındaki farkı iyi anlamamız, kabuğa vereceğimiz komutların sonuçları üzerinde çok etkili. 

Ben kabuğa ait genişletme karakterleri ile regex in farkını size göstermek için çok basit bir örnek ele almak istiyorum. Ancak vereceğim örneğin net biçimde anlaşılabilmesi için de öncelikle alıntı karakteri olarak geçen tek ve çift tırnak kullanımına da çok kısaca değinmemiz gerekiyor.

# Alıntı Karakterleri

Kabuk için özel anlam ifade eden metakarakterlerin(`? { } $ ; & | < > ( ) ' " \ # ~ ! ^ = + - _ . , : % @ / *`) kabuk tarafından özel anlamlarına genişletildiğini tüm bu bölüm boyunca adım adım ele aldık. Eğer kabuk için özel anlamı olan karakterlerin kabuğun genişletmesinden muaf tutulmasını istersek bu karakterleri tırnak içinde yazarak kabuk için sıradan karakterler olarak görülmelerini sağlayabiliyoruz. 

Eğer hatırlıyorsanız, `mkdir yeni klasor` şeklinde komut girdiğimizde aradaki boşluktan dolayı “yeni” ve “klasor” isimli iki ayrı klasör oluşturulmuştu. Çünkü kabuk buradaki boşluk karakterini, komutu argümanlara ayırmak için koyduğumuzu düşünüyordu. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ ls
Desktop    Downloads  Pictures  Templates
Documents  Music      Public    Videos

┌──(taylan@linuxdersleri)-[~]
└─$ mkdir yeni klasor

┌──(taylan@linuxdersleri)-[~]
└─$ ls
Desktop    Downloads  Music     Public     Videos
Documents  klasor     Pictures  Templates  yeni
```

Bakın burada yine iki ayrı klasör oluşturuldu. Bu duruma çözüm olarak da klasör ismini tırnak içinde yazmıştık. Tekrar deneyelim.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ mkdir 'yeni klasor'

┌──(taylan@linuxdersleri)-[~]
└─$ ls
 Desktop     klasor     Public      yeni
 Documents   Music      Templates  'yeni klasor'
 Downloads   Pictures   Videos
```

Bakın bu kez tırnak içinde yazdığımız için buradaki boşluk karakteri klasörün ismine dahil edildi ve bu isimde tek bir klasör oluşturuldu. İşte bizzat bu örnek üzerinden ele aldığımız durum burada bahsi geçen **alıntılama** kavramının ta kendisi. Tırnak içinde yazmaya alıntılama deniyor ve tırnak içindeki karakterler kabuk için ifade ettikleri özel anlamlardan muaf tutuluyorlar.

Söz konusu alıntılama olduğunda tek ve çift tırnak kullanabileceğimiz iki alternatif yöntem bulunuyor. 

Bash kabuğu için tek tırnak en katı alıntılama biçimi. Bu sebeple tek tırnak içindeki hiç bir karakter kabuk tarafından özel anlamaları dahilinde ele alınmıyor. 

Hemen denemek için şu ana kadar ele aldığımız genişletme karakterlerini tek tırnak içinde yazıp `echo` aracı ile konsola bastırmayı deneyelim. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo '{1..5} [a-z]* ~ $SHELL' 
{1..5} [a-z]* ~ $SHELL
```

Bakın tek tırnak içinde yazmış olduğum hiç bir genişletme karakteri kabuk tarafından genişletilmedi. Nasıl yazdıysam aynen `echo` aracına standart karakterler olarak iletilip konsola bastırılması sağlandı. 

Şimdi aynı örneği çift tırnak içinde tekrar deneyebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[/etc]
└─$ echo "{1..5} [a-z]* ~ $SHELL"
{1..5} [a-z]* ~ /usr/bin/bash
```

Değişken genişletmesinin uygulanıp diğerlerinin uygulanmadığı bir çıktı aldık. Çok fazla detaylarına girmeyeceğiz ancak çıktılarda görebildiğiniz gibi **değişken** olarak da bilinen buradaki **parametre genişletmesi** çift tırnak içinde geçerliliğini korumaya devam ediyor.

**Kıvırcık parantez genişletmesi, tilde genişletmesi ve dosya ismi genişletmeleri ise çift tırnak içinde geçerliliğini yitiriyor**. Çünkü bash kabuğu çift tırnak içindeki dolar işaretini ve ters slash karakterleri istisna olarak görüp özel işlevlerini yerine getirmelerini sağlıyor.

Aslında başka genişletme kuralları ve detayları da var ancak konuyu detaylandırıp kafamızı karıştırmayalım. Burada dikkatinizi çekmek istediğim asıl nokta, kıvırcık parantez tilde ve dosya ismi genişletmesi gibi bazı özel karakterlerin kullanıldığı bu genişletmelerin çift veya tek tırnak içinde geçerli olmadığı. 

Genişletmeler tırnaklar içinde geçerli olmadığı için bizler de regex destekleyen araçlara komut girerken regex karakterlerinin kabuk tarafından yanlış anlaşılmasını önlemek için tırnak içinde yazıyoruz. Çünkü regex karakterleri ile kabuğun kullandığı metakarakterler birbirine benziyor. Örneğin regex de kıvırcık ve köşeli parantezleri kullanıyor. Ayrıca nokta soru işareti yıldız gibi özel karakterleri de kullanıyor. İşte regex ile kabuğun kullandığı aynı karakterlerin karıştırılmaması için regex kullanmak istediğimizde tırnaklardan faydalanabiliyoruz.

Söylediklerim yeterince anlaşılır olmadıysa hemen basit bir örnek üzerinden somut şekilde açıklamaya çalışalım. Örnek için de ileride ayrıca ele alacağımız `grep` aracını kullanabiliriz. `grep` aracı filtreleme yapmamızı sağlayan bir araç.

Öncelikle test edebilmemiz için bir test ortamı oluşturalım. Ben mevcut bulunduğum dizinine `mkdir ada` komutu ile ismi “ada” olan bir klasör oluşturuyorum. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ mkdir ada
```

Şimdi bir de içerisinde “**a**” ile başlayıp “**a**” ile biten birkaç kelime bulunan birkaç dosya oluşturalım. Bunun için `echo a{b..e}a > metin1.txt` şeklinde komutumuzu girip  `cat` ile dosya içeriğini teyit edebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ echo a{b..e}a > metin1.txt

┌──(taylan@linuxdersleri)-[~]
└─$ cat metin1.txt 
aba aca ada aea
```

Bakın “aba aca ada aea” şeklinde yeni kelimeler bu dosyaya eklenmiş. Şimdi yeni bir tane dosya oluşturmak için `echo a{f..k}a > metin2.txt` şeklinde komutumuzu girelim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ echo a{f..k}a > metin2.txt

┌──(taylan@linuxdersleri)-[~]
└─$ cat metin2.txt                       
afa aga aha aia aja aka
```

Bakın bu dosyada da “**a**” ile başlayıp “**a**” ile biten çeşitli ifadeler var. Tamamdır şimdi testimize geçebiliriz.

`grep` aracı ile araştırma yaparken `grep` komutundan sonra araştırmak istediğimiz karakter kalıbını yazıp daha sonra bu kalıbın araştırılacağı metinleri de argüman olarak eklememiz gerekiyor. 

Şimdi ben `grep 'a*a' metin*.txt` şeklinde komutumu giriyorum.

![3.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/genisletme/3.webp)

Bakın içerisinde “a” ile başlayıp “a” ile biten bütün kelimelerdeki “a” karakterleri renkli şekilde bize sunuldu. Yani filtrelemiş olduk. Şimdi aynı komutu tırnak işaretleri olmadan tekrar girmeyi deneyebiliriz. 

![4.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/genisletme/4.webp)

Bakın bu kez yalnızca “ada” ifadesini içeren satırın filtrelendiğini ve “ada” ifadesinin renklendirildiğini görüyoruz. Şimdi neden bu iki çıktının birbirinden farklı olduğunu açıklayacak olursak. 

Burada tırnak işareti kullanarak girdiğimiz komuttaki bu asterix yani yıldız karakteri tırnak içinde olduğu için kabuk tarafından genişletilmedi. Yani görmezden gelindi fakat sondaki `metin*` argümanı tırnak içinde olmadığı için dosya ismi genişletmesi dolayısıyla “***metin1.txt***” ve “***metin2.txt***” argümanlarına dönüştürülmüş oldu. Ve en nihayetinde genişletmeler uygulandıktan sonra en son halini alan bu argümanlar `grep` aracına iletildi. `grep` aracı da regex’i desteklediği için bu kalıbı regex kalıbı olarak dikkate alıp ***metin1.txt*** ve ***metin2.txt*** dosyaları içinden bu kalıpla eşleşenleri bize çıktı olarak sunmuş oldu. 

Tırnak işareti kullanmadığımız komuttaysa, kabuğumuz tırnak içinde olmadığı için bu kalıbı dosya ismi genişletmesi olarak görüp, `grep` aracını çalıştırmadan önce bu genişletmeyi uyguladı. Benim bulunduğum dizinde “***ada***” isimli bir klasör olduğu için buradaki “`a*a`” ifadesi de kabuk tarafından dosya ismi genişletmesi dolayısıyla `ada` argümanına dönüştürüldü. Ayrıca sondaki “`metin*`” ifadesi de dosya genişletmesi ile metin ifadesiyle başlayan “***metin1.txt***” ve “***metin2.txt***” dosyalarına genişletildiği için komutumuz `grep ada metin1.txt metin2.txt` halini almış oluyor. `grep` aracına da bu argümanlar iletildi. Dolayısıyla `grep` aracı bu dosyalar içinde “**ada**” ifadesini arayıp filtrelemiş oldu.

İşte bakın bizzat örnekler üzerinden de teyit ettiğimiz gibi regex karakterlerini çift tırnak içinde yazmadığımızda kabuk bu karakteri görmezden gelmediği için kabuğun kendine ait olan genişletme karakterleri olduğunu düşünüp genişletmeyi uyguluyor. 

Kabuğa girdimiz komutlar öncelikle kabuk tarafından anlamlandırıldığı için kabuk örneğin `grep` aracını çalıştırmadan önce kendi üzerine düşen görevi yerine getirip varsa genişletmeleri uyguluyor. Genişletmelerden sonra komutumuzdaki argümanlar son halini aldığında `grep` aracı çalıştırılıp bu argümanlar `grep` aracına iletiliyor. 

Bu sebeple kabuğun genişletmesinden kaçıp, girdiğimiz bu argümanın `grep` aracına bu şekilde ulaşması için de tırnak içinde yazmamız gerekti. Hatta tırnak içinde yazmadan kaçış karakteri sayesinde yine bu asterix karakterinin özel anlamının kabuk tarafından görmezden gelinmesini de sağlayabiliriz. Ben denemek için komutumu `grep a\*a metin*` şeklinde giriyorum. 

![5.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/genisletme/5.webp)

Bakın tıpkı tırnak içinde yazdığımızdaki gibi buradaki ifade dosya ismi genişletmesi olarak sayılmadan `grep` aracına iletildiği için bu kalıp da regex dahilinde değerlendirildi. Buradaki ters slash `\` kaçış karakteri, kendisinden sonra gelen karakterin özel anlamının görmezden gelinmesini sağladığı için ben asterix karakterinden hemen önce kullanarak kabuğun dosya ismi genişletmesini önlemiş oldum.

Böylelikle regex ile kabuk genişletmelerinin benzer gözüküyor olmalarına karşın farklı çalışma yapıları olduğunu bu örnekle ele almış olduk. Genellikle önemsiz gözüken bu gibi detaylar girdiğimiz komutların bambaşka sonuçlar üretmesine neden olduğu için aslında çok önemli. Bu sebeple zaten tek tek tüm temel detaylardan bahsetmeye gayret ediyoruz. Regex kullanımından da eğitimin devamında yeri geldiğinde çok kısaca bahsediyor olacağız. 

Ben şimdi son olarak çok kısaca komut ikamesi genişletmesinden de bahsedip genişletme anlatımlarını sonlandırmak istiyorum. 

# Komut İkamesi Genişletmesi

Esasen temel eğitimde bu genişletmeden bahsetmeyi düşünmüyordum fakat, sık karşılaşabileceğiniz ve gerektiğinde işinize yarayabileceği için çok kısaca ele almak istiyorum.

Komut ikamesi kavramı, ikame kelimesinin de yardımıyla çıkarım yapabileceğimiz gibi, komutların ürettiği sonuçların bu genişletmenin kullanıldığı tanımlamanın yeri almasından ibaret. Biliyorum ilk kez duyduğunuz bu tanımlama hiç bir şey ifade etmiyor. Hemen daha anlamlı hale getirmek için örnekler üzerinden ele almaya çalışalım.

Normalde komut ikamesi daha çok kabuk programlamada kullanılıyor o yüzden size şimdi çok mantıklı gelmese de birkaç örnek vermek istiyorum. Ancak merak etmeyin eğitimin devamında biraz daha fazla detay öğrendikten sonra daha makul bir kullanım örneğini ele alırız mutlaka. Siz şimdi yalnızca komut ikamesi genişletmesinin nasıl çalıştığına odaklanın lütfen.

Ben “mevcut dizin” ifadesinden sonra konsola bulunduğum dizinin bastırılmasını istiyorum. Bunun için `echo “mevcut dizin $(pwd)”` şeklinde komutumu girebilirim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ echo "mevcut dizin $(pwd)"
mevcut dizin /home/taylan
```

Bakın mevcut dizin ifadesinden sonra `pwd` komutunun çıktısı argüman olarak genişletildiği için buradaki çıktıya bastırılmış oldu. Buradaki dolar işaretinden sonra parantez içinde yazmış olduğum tanımlama aslında **komut ikamesi genişletmesi** olarak geçiyor. Ben parantez içinde `pwd` komutunu girdiğim için bu `pwd` komutu alt kabukta çalıştırıp bu komutun sonucu bu tanımlamanın yerine argüman olarak genişletilmiş oldu.

Ek bir örnek olarak bir dosya içindeki ifadeleri, yeni oluşturulacak klasör isimleri üzerinde kullanabiliriz. Öncelikle `echo “birinci ikinci ucuncu” > dosya.txt` komutu ile içerisinde “birinci ikinci ucuncu” ifadeleri bulunan dosyamızı oluşturalım.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ echo "birinci ikinci ucuncu" > dosya.txt

┌──(taylan@linuxdersleri)-[~]
└─$ cat dosya.txt 
birinci ikinci ucuncu
```

Tamamdır dosyamızı oluşturduk. Şimdi bu dosyanın içeriğindeki isimlerin alınıp okunması ve bu isimlerle yeni klasörler oluşturulmasını için `mkdir $(cat dosya.txt)` şeklinde komutumuzu girelim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ mkdir $(cat dosya.txt)

┌──(taylan@linuxdersleri)-[~]
└─$ ls                                   
 ada         ikinci       Public
 birinci     klasor       Templates
 Desktop     metin1.txt   ucuncu
 Documents   metin2.txt   Videos
 dosya.txt   Music        yeni
 Downloads   Pictures    'yeni klasor'
```

Bakın tam olarak dosyanın içerisine yazdığımız ifadeler klasör isimleri olarak kullanılmış. Yani dosya içeriğinin okunup bu dosya içeriği üzerinden `mkdir` aracına iş yaptırmış olduk. Normalde `mkdir` aracı kendisi bu şekilde dosyadan okuyup klasör oluşturmayı desteklemiyor ancak biz komut ikamesi sayesinde dosya içeriğini `cat` aracı ile okuyup bu çıktıları bu `mkdir` aracına argüman olarak iletmeyi başardık.

Tıpkı bu örneğimizde olduğu gibi siz de komut ikamesinden farklı durumlarda faydalanabilirsiniz. Mesela aynı şekilde oluşturduğumuz dizinleri silmek için de `rmdir $(cat dosya.txt)` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ rmdir $(cat dosya.txt)               

┌──(taylan@linuxdersleri)-[~]
└─$ ls                                   
 ada         klasor       Public
 Desktop     metin1.txt   Templates
 Documents   metin2.txt   Videos
 dosya.txt   Music        yeni
 Downloads   Pictures    'yeni klasor'
```

Bakın dosyadaki isimlerden oluşturulmuş olan klasörler yine aynı şekilde dosyadaki isimler sayesinde silinmiş oldu. `mkdir` ve `rmdir` aracı normalde bu şekilde dosyadan içerik okuyarak çalışmıyorlar ama biz komut ikamesi yardımıyla gereken çözümü üretmeyi başardık. 

Benim ele aldığım bu örnekler komut ikamesinin kullanımına dair son derece basit örnekler ama bence komut ikamesi genişletmesinin nasıl çalıştığını anlamamız için yeterli. Örneğin biz komut ikamesini `$(komut)` şeklinde tanımladık ama alternatif olarak ters tırnak `'` içinde(Türkçe klavyemizden <kbd>AltGr</kbd> + <kbd>,</kbd> tuşlaması ile ters tırnak üretebilirsiniz) yazdığımız komutlar da komut ikamesi olarak görülüyor. 

Örneğin ben denemek için `echo “burası 'pwd' "` şeklinde ters tırnak içinde komutumu giriyorum.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ echo "burası `pwd`"                  
burası /home/taylan

┌──(taylan@linuxdersleri)-[~]
└─$ echo "burası $(pwd)"                 
burası /home/taylan
```

Bakın ters tırnak içine aldığımız komut çalıştırıldı ve çıktısı bu komutun bulunduğu yere genişletilerek `echo` aracına argüman olarak verildi. Dolayısıyla bu çıktıyı da alabildik. Yani komut ikamesi genişletmesi için ters tırnak veya dolar işaretinden sonra parantez içinde komut girebilirsiniz. Ben dolar işaretinden sonra parantez içinde yazma kuralını öneriyor olsam da siz her iki kullanımla da karşılaşıyor olacaksınız. Bu sebeple özellikle ters tırnak kullanımından da bahsetmek istedim.

En nihayetinde bu bölüm içerisinde kabuk üzerinde yer alan en sık kullanılan birkaç genişletme türlerinden bahsedip, gerektiğine nasıl faydalanabileceğimizi öğrenmiş olduk. Daha fazlası için bash kabuğunun [dokümantasyonlarına](https://www.gnu.org/software/bash/manual/html_node/Shell-Expansions.html) göz atabilirsiniz fakat giriş seviyesi temel eğitim için yani bence mevcut eğitimi takip etmek için bahsettiklerimiz yeterli.

Genişletmeleri daha iyi anlamak için tek yapmanız gereken burada bahsetmiş olduğumuz genişletmelere dair bol bol pratik yapmak. Pratik yaptıkça aslında ne kadar basit ve kullanışlı bir yapı olduğunu fark edeceksiniz.

# Alıştırmalar

Alıştırmaları gerçekleştirebilmek için dilerseniz çalışma ortamı oluşturabilirsiniz. Bunun için aşağıdaki adımları takip etmeniz yeterli.

Öncelikle test ortamı için yeni bir klasör oluşturup bu dizine geçiş yapalım.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ mkdir test-ortami
┌──(taylan@linuxdersleri)-[~]
└─$ cd test-ortami
┌──(taylan@linuxdersleri)-[~/test-ortami]
└─$
```

Bu dizine, aşağıdaki betik dosyasını `cat > betik.sh` komutunun ardından <kbd>Ctrl</kbd> + <kbd>D</kbd> tuşlaması ile kaydedip `chmod +x betik.sh` ile yetki verelim ve `./betik.sh` komutu ile dosyayı çalıştıralım.

```bash
┌──(taylan@linuxdersleri)-[~/test-ortami]
└─$ cat > betik.sh
#!/bin/bash

# Dosya isimlerini oluşturmak için kullanılacak karakterler
characters=("a" "b" "c" "x" "y" "t" "1" "2" "3" "4" "5" "6" "7" "8" "9")

# Dosya isimlerinin uzantıları
extensions=("txt" "pdf" "docx" "jpg" "csv")

# Oluşturulacak dosya sayısı
count=25

# Tur sayısı
rounds=3

# Dosya isimlerini oluştur
for ((r=0; r<$rounds; r++))
do
    for ((i=0; i<$count; i++))
    do
        # Rastgele karakterleri seç
        random_character1=${characters[$((RANDOM % ${#characters[@]}))]}
        random_character2=${characters[$((RANDOM % ${#characters[@]}))]}
        random_character3=${characters[$((RANDOM % ${#characters[@]}))]}

        # Rastgele uzantıyı seç
        random_extension=${extensions[$((RANDOM % ${#extensions[@]}))]}

        # Dosya ismini oluştur
        filename="$random_character1$random_character2$random_character3.$random_extension"

        # Dosya oluştur
        touch "$filename"
    done
done

ls # Üretilen mevcut dizindeki dosyaları yazdırmak için

┌──(taylan@linuxdersleri)-[~/test-oratami]
└─$ chmod +x betik.sh
```

Bu betik mevcut bulunduğunuz dizine 75 rastgele dosya oluşturacaktır. Bu sayede bu dizinde her türlü genişletme alıştırması yapmak için yeterli örneğe sahip olabilirsiniz. Gerekli çalışma ortamını kurduktan sonra aşağıdaki alıştırmaları pratiğe dökmeyi deneyebilirsiniz.

<p class="mavi"><strong>ℹ️ Not:</strong> Buradaki betik dosyası her seferinde rastgele veriler ürettiği için aşağıdaki alıştırmalarda yer alan örüntülere tamamen uyacak dosya isimleri oluşturulmamış olabilir. Bu durumda soruya uygun olan dosya veya klasör isimlerini kendiniz oluşturup genişletme kurallarını test edebilirsiniz.</p> 

## Sorular

1. Başlangıcında herhangi tek bir karakter olan ve devamındaki karakterler "**x**", "**y**" veya "**t**" olup sonraki karakterleri de herhangi türden karakter olan dosya ismi genişletmesini nasıl tanımlarsınız?

2. Başlangıcında "**a**" olan ve sonu "**.txt**" veya "**.pdf**" veya "**.webp**" ile biten dosya ve dizinleri nasıl filtreleyebilirsiniz?

3. "**a**" ile başlayıp "**g**" ile biten tüm dosya ve klasörleri kapsamak için genişletmeyi nasıl tanımlarsınız?

4. İlk harfi herhangi tek bir karakter olan ve devamında "**x**" karakteri bulunan ve sonrasındaki karakter sayısı ve biçimi fark etmeyen bir dosya ismi genişletmesini nasıl tanımlarsınız?

5. Sonunda "**.txt**" uzantısı bulunanlar hariç tüm dosyaları nasıl filtrelersiniz ?

6. Başlangıcında 1'den 13'e kadar sayılardan biri olan ve devamında tam olarak herhangi 7 karakteri barındıranları nasıl filtrelersiniz ?

7. İsminin başında "**1**", "**4**", veya "**5**" rakamlarından birini barındıran ama sonunda "**a**", "**b**", "**t**" veya "**g**" karakterlerini barındırmayan dosya ismi genişletmesini nasıl tanımlarsınız?

8. İlk karakteri "**x**", "**y**" veya "**t**" olan ancak son karakteri "**x**", "**y**" veya "**t**" olmayan dosya ismi genişletmelerini nasıl tanımlarsınız?

9. İlk karakteri "**m**", "**n**" veya "**o**" olan ve son karakteri "**a**", "**b**" veya "**t**" olan dosya ismi genişletmelerini nasıl tanımlarsınız?

10. İlk karakteri "**a**" veya "**b**" olan ve içinde "**x**" veya "**y**" karakteri bulunan dosya ismi genişletmelerini nasıl tanımlarsınız?

11. İlk karakteri "**5**" rakamından küçük, son karakteri ise küçük bir harf olan dosya ismi genişletmelerini nasıl tanımlarsınız?

12. İlk karakteri "**p**" veya "**q**" olan ve içinde "**xyz**" karakter dizisi geçen dosya ismi genişletmelerini nasıl tanımlarsınız?

13. İsminin içinde "**linux**" geçen dosya ismi genişletmelerini nasıl tanımlarsınız?

14. İlk iki karakteri "**ab**" olan ve içinde "**123**" sayı dizisi geçen dosya ismi genişletmelerini nasıl tanımlarsınız?

15. İlk karakteri "**a**" olan ve en az beş karakter içeren dosya ismi genişletmelerini nasıl tanımlarsınız?

16. İlk karakteri "**x**" veya "**y**" olan ve son karakteri "**x**" olan dosya ismi genişletmelerini nasıl tanımlarsınız?

17. İsminin içinde "**abc**" geçmeyen dosya ismi genişletmelerini nasıl tanımlarsınız?

18. İlk karakteri bir büyük harf olan ve içinde en az iki sayı geçen dosya ismi genişletmelerini nasıl tanımlarsınız?

19. İlk iki karakteri bir harf olan ve son karakteri "**.txt**" olan dosya ismi genişletmelerini nasıl tanımlarsınız?

20. İlk karakteri bir sayı olan ve içinde en az üç harf bulunan dosya ismi genişletmelerini nasıl tanımlarsınız?


## Yanıtlar

1. `echo ?[xyt]*`
2. `echo a*.{txt,pdf,jpg}`
3. `echo a*g`
4. `echo ?x*`
5. `echo *[!.txt]`
6. `echo [1-13]???????`
7. `echo [145]*[!abtg]`
8. `echo [xyt]*[^xyt]` veya `echo [xyt]*[!xyt]`
9. `echo [mno]*[abt]`
10. `echo [ab]*[xy]*`
11. `echo [0-5]*[a-z]`
12. `echo [pq]*xyz*`
13. `echo *linux*`
14. `echo ab*123*`
15. `echo a????*`
16. `echo [xy]*x`
17. `echo *[!abc]*`
18. `echo [A-Z]*[0-9]*[0-9]*`
19. `echo [a-z][a-z]*.txt`
20. `echo [0-9][a-z][a-z][a-z]*`

Örnek alıştırmalar burada son buldu fakat elbette benzer şekilde daha fazlası için kendi kendinize olası filtreleme problemleri tasarlayabilirsiniz.
