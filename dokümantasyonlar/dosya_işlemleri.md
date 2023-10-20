# Kopyalama Taşıma Silme İşlemleri

Şimdiye kadar dosya oluşturma ve düzenlemeye dair pek çok araçtan söz etmiş olduk. Anlatımın devamında dosyalarla ilgili birkaç ayrıntıdan daha bahsediyor olacağız. Fakat diğer ayrıntılardan bahsetmeden önce belki de en temel işlevler olan kopyalama taşıma ve silme işlevlerini yerine getirebileceğimiz araçlarından bahsetmek istiyorum.

# `cp` Komutu

Komut satırı üzerinden dosya veya dizinleri kopyalamak istediğimizde “**c**o**p**y” ifadesinin kısaltmasından gelen `cp` aracını kullanabiliyoruz. 

Ben denemek için öncelikle “orijinal” isminde bir dosya oluşturup, içerisine "ben dosyayım" yazıp kaydediyorum. 

```bash
└─$ echo "ben dosyayım" > orijinal

└─$ cat orijinal 
ben dosyayım
```

Bakın dosyam sorunsuzca kaydedildi.

## Dosya İsmini Değiştirmek

Eğer bu dosyayı bulunduğum dizine farklı bir isimle kopyalamak istersem `cp orijinal dosya dosyanın_kopyası` şeklinde komut girebilirim. 

```bash
└─$ cp orijinal kopya

└─$ ls
kopya  orijinal

└─$ paste orijinal kopya 
ben dosyayım    ben dosyayım
```

Bakın orijinal dosya ile kopyalamış olduğum dosyanın içeriği birebir aynı. Tek fark kopyalanırken oluşturulan dosya isminin benim istediğim şekilde olması. `cp` komutunun en temel kullanımı bu şekilde.

Eğer mevcut bulunduğumuz dizine değil de istediğimiz farklı bir dizine dosya veya dizin kopyalamak istersek tek yapmamız gereken kopyanın tam olarak hangi dizine hangi isimle kaydolacağını belirtmek. Ben orijinal dosyasını, kendi ev dizinimdeki ***Documents*** klasörünün altına aynı isimde kopyalamak istiyorum. Bunun için `cp orijinal ~/Documents` şeklinde yazıyorum. 

```bash
└─$ cp orijinal ~/Documents/

└─$ ls ~/Documents/                                              
belgeler  bulbeni  metinler  metin.txt  orijinal
```

Bakın burada ilk olarak orijinal dosyanın yani kopyalanacak dosyanın ismini girip, daha sonra kopyanın tam olarak nereye kaydolması gerektiğini belirtebiliyoruz. Burada klasör isminden sonra özellikle bir dosya ismi belirtmediğim için orijinal dosyanın ismi de birebir kopyalanıp bu dizine kaydoldu. 

Eğer dosyayı farklı bir isimle kopyalamak isteseydim, dizin adresinden sonra dosyanın ismini belirtebilirdim. Örneğin `cp orijinal ~/Documents/kopya` şeklinde komut girebilirim. 

```bash
└─$ cp orijinal ~/Documents/kopya                                

└─$ ls ~/Documents/                                              
belgeler  bulbeni  kopya  metinler  metin.txt  orijinal
```

Bakın istediğim dizine tam olarak istediğim isimde dosyamı sorunsuzca kopyalayabildim. 

Tabii ki ben yalnızca mevcut bulunduğum dizindeki bir dosyayı başka bir dizine kopyalamak üzere örnekler gösterdim ama yetkiniz olduğu sürece istediğiniz dizindeki dosyayı istediğiniz başka bir konuma kopyalayabilirsiniz. Örneğin ben `cp ~/Documents/orijinal /tmp/` komutu ile ***Documents*** dizini altındaki “***orijinal***” isimli dosyayı ***/tmp*** dizini altında kopyalayabilirim. 

```bash
└─$ cp ~/Documents/orijinal /tmp/                                

└─$ cat /tmp/orijinal                                            
ben dosyayım
```

Bakın dosyam sorunsuzca kopyalanmış.

Şimdiye kadar tek bir dosayı kopyalamayı ele aldım ama aslında birden fazla dosyayı da aynı anda kopyalayabiliriz. Örnek olması için öncelikle `touch a b c d` komutu ile ***a b c*** ve ***d*** isimli dosyalar oluşturup bu dosyalarımı tek seferde ***Document*** klasörüne kopyalamak istersem komutumu `cp a b c d ~/Documents/` şeklinde girmem yeterli. 

```bash
└─$ touch a b c d

└─$ cp a b c d ~/Documents/

└─$ ls ~/Documents/
a  belgeler  c  kopya     metin.txt
b  bulbeni   d  metinler  orijinal
```

Bakın tek seferde birden fazla dosyamızı istediğimiz dizine kopyalamayı başarmışız.

Bu çoklu kopyalama işleminden sonra muhtemelen `cp` aracının girdiğimiz argümanlardan hangilerinin kopyalanacak dosyalar, hangisinin dosyaların kopyalanacağı dizin olduğunu nasıl anladığını merak etmiş olabilirsiniz. Aslında çok basit, birden fazla dosya ismi belirtildiği durumda en sondaki argümanın bu dosyaların kopyalanacağı adres olması zorunlu. Yani `cp` aracı bu beklenti ile komutumuzu okuyor. Dolayısıyla girdiğimiz komuttaki en son argüman `cp` aracı için, bu argümandan önceki tüm dosyaların kopyalanacağı dizini temsil ediyor.

Neticede birden fazla dosyamızı tek seferde başarılı şekilde kopyalamayı başardık. Bu harika fakat bazen kopyalama işlemini kontrollü şekilde gerçekleştirmek de isteyebiliriz. Çünkü özellikle çoklu şekilde dosyaları bir yerden başka bir yere kopyalarken, hedef gösterdiğimiz dizinde bizim kopyaladığımız dosyalar ile aynı isimde dosyalar bulunabiliyor. Eğer özellikle önlem almazsak, kopyalama emri verdiğimiz için kopyaladığımız dosyalar aynı isimli dosyaların üzerine yazılıyor. Yani ilgili dizindeki aynı isimli dosyaların içerikleri tahrip ediliyor. Bu duruma çözüm olarak, üzerine yazılma durumu varsa `cp` aracının bizi uyarıp bizden izin istemesini talep edebiliriz. Bunun için `-i` seçeneğini kullanmamız yeterli.

Ben aynı isimli dosyayı `cp` komutu ile ilgiliniz dizine taşıyacak olursak, herhangi bir uyarı vermeden yeni taşınan dosya eskisinin üzerine yazılacak. Yani eski dosyadaki veriler silinecek. 

```bash
└─$ cat yeni/dosya 
bu bir dosya

└─$ echo "bu yeni" > dosya                                       

└─$ cp dosya yeni/

└─$ cat yeni/dosya 
bu yeni
```

Bakın herhangi bir uyarı olmadan eski dosya silindi. Eğer biz üzerine yazma konusunda uyarılmak yani kontrollü şekilde kopyalamak yapmak istiyorsak `i` seçeneğini kullanabiliriz. 

```bash
└─$ echo "bu son" > dosya

└─$ cp -i dosya yeni/                                            
cp: overwrite 'yeni/dosya'? y
```

Aynı isimli dosya mevcut olduğu için kopyalamadan önce üzerine yazma için “**y**” yani “yes” ile onay alındı. Eğer üzerine yazmak istemeseydim “**n**” yani “no” ile reddedebilirdim.

## Klasörleri Kopyalamak

Şimdiye kadar hep dosyalar üzerinde çalıştık ancak dilersek dizinleri de kopyalayabiliyoruz. Fakat dizinler kendi içlerinde alt dizinler ve dosyalar barındırabileceği için bir dizini kopyalarken alt dizinlerin de kopyalanması için “recursive” yani “özyinelemeli” kopyalama seçeneğini de komutumuzu eklememiz gerekiyor. Buradaki “özyineleme” ifadesi, dizin altındaki tüm alt dizinlere teker teker bakıp, tüm dosya ve klasörlerin otomatik olarak seçilip kopyalanabilmesini sağlıyor. Zaten Linux üzerinde dizinlerle çalışırken içi dolu olan dizinler üzerinde işlem yapmak için istisnalar hariç hep “recursive” yani “özyineleme” seçeneğini özellikle aktifleştirmemiz gerekiyor. Şimdiye kadar bu durumu zaten bizzat tekrar tekrar deneyimledik. Şimdi tekrar `cp` aracına dönecek olursak, öncelikle herhangi bir seçenek belirtmeden bir dizini kopyalamayı deneyebiliriz. 

Ben denemek için kendi ev dizinimdeki “***yeni***” isimli klasörü “***Documents***” dizini altına taşımak üzere `cp ~/yeni/ ~/Documents/` şeklinde komutumu giriyorum. 

```bash
└─$ cp ~/yeni/ ~/Documents/
cp: -r not specified; omitting directory '/home/taylan/yeni/
```

Bakın komut hata verdi ve hata çıktısında `-r` seçeneğini kullanmadığım için dizinin kopyalanamadığı belirtilmiş. Şimdi aynı komutumuzu çağırıp bu kez `-r` seçeneğini de ekleyip tekrar deneyelim.

```bash
└─$ cp -r yeni/ Documents/

└─$ ls ~/Documents/
a  belgeler  c  kopya     metin.txt  yeni
b  bulbeni   d  metinler  orijinal
```

Bu kez herhangi bir hata almadık ve `ls` komutu ile de bu dizin taşınmış olduğunuz bizzat teyit etmiş olduk. 

Ben yalnızca en sık kullanacağımız yöntemleri ele aldım ancak `cp —help` komutu ile bizzat görebileceğiniz gibi `cp` aracının pek çok ek seçeneği mevcut. İhtiyaç duymanız halinde bu özelliklere göz atıp kullanabilirsiniz. 

# `mv` Komutu

Dosya veya dizinleri kopyalamak yerine taşımak yani yerini değiştirmek istediğimizde İngilizce “**m**o**v**e” yani “taşıma” ifadesinin kısaltmasından gelen `mv` aracını kullanabiliyoruz. `mv` aracının kullanımı da tıpkı `cp` aracı gibi oldukça kolay. Zaten her iki aracın da hemen hemen pek çok seçeneği ortak kısaltmalar ile tanımlandığı için rahatlıkla kullanabiliyoruz. Gelin örnekler üzerinden temel kullanımını ele alalım.

Taşımak istediğimiz dosyayı `mv dosya_adı tanışanacağı_yeni_konum` şeklinde belirtmemiz yeterli oluyor. Ben örnek olarak mevcut bulunduğum dizindeki “***dosya***” isimli dosyayı Documents dizini altında taşımak üzere `mv dosya Documents` şeklinde komutumu giriyorum.

```bash
└─$ mv dosya Documents/

└─$ ls Documents/                                                
a  belgeler  c  dosya  metinler   orijinal
b  bulbeni   d  kopya  metin.txt
```

Gördüğünüz gibi ilgili dosya taşınmış oldu. Benzer şekilde klasör de taşıyabiliriz. 

```bash
└─$ mv klasor/ Documents/                                        

└─$ ls Documents/                                                
a  belgeler  c  dosya   kopya     metin.txt
b  bulbeni   d  klasor  metinler  orijinal
```

Benzer şekilde istersek aynı anda birden fazla klasörü veya dosyayı da taşıyabiliriz. Ben denemek için genişletme karakterinin de yardımıyla “dosya” “kopya” ve “klasör” için komutumu giriyorum.

```bash
└─$ mv Documents/{dosya,kopya,klasor} Pictures/                

└─$ ls Pictures/                                                 
 bulbeni
 dosya
 klasor
 kopya
```

Gördüğünüz gibi aynı anda birden fazla dosya ve klasörü taşımamız da mümkün. Ben örnek sırasında kolaylık olsun diye köşeli parantez genişletmesini kullandım fakat çoklu taşıma için elbette genişletme kullanmak zorunda değilsiniz. Taşınması gerekenlerin dizinlerini ve isimlerini eksiksiz şekilde belirtmeniz yeterli.

Ben örnekler sırasında dosya veya klasörlerin isimlerini değiştirmek istemediğim için yalnızca taşınacakları adresleri belirttim. Bunun yerine taşındıkları konumda hangi isimle kaydedilmeleri gerektiğini de spesifik olarak belirtebiliyoruz aslında. Ben örnek olarak “***Pictures***” dizini altındaki “***dosya***” isimli dosyayı Desktop konumuna “***yepyeni-dosya***” ismiyle taşımak istiyorum.

```bash
└─$ mv Pictures/dosya Desktop/yepyeni-dosya                      

└─$ ls Desktop/
test.txt  yeni-dizin  yepyeni-dosya
```

Gördüğünüz gibi taşınacağı konumun ardından isim belirttiğimizde taşıma ile birlikte isim değişikliğini de gerçekleştirmiş oluyoruz. Bu yaklaşım herhangi bir dosya ve klasörün ismini değiştirmek için kullanılan temel yaklaşımdır. Yani örneğin ben mevcut bulunduğum dizindeki klasörün yalnızca ismini değiştirmek için kullanabilirim.

```bash
└─$ ls Pictures/
 bulbeni
 klasor
 kopya
'Yeni Klasor'

┌──(taylan@linuxdersleri)-[~]
└─$ mv Pictures/klasor/ Pictures/yeni-isim

┌──(taylan@linuxdersleri)-[~]
└─$ ls Pictures/                                                 
 bulbeni
 kopya
 yeni-isim
'Yeni Klasor'
```

Gördüğünüz gibi ilgili klasörün dizin adresini değiştirmeden yalnızca ismini değiştirmiş olduk. İsim değiştirebilme özelliği süper ama isim değiştirmek için `mv` komutunu kullanırken, **o dizinde daha önceden yeni tanımladığınız isimde bir klasör olmamasına mutlaka dikkat edin**. Aksi halde `mv` komutu isim değiştirmek yerine, o isimdeki klasörün içerisine taşır.

```bash

└─$ mv Pictures/yeni-isim/ Pictures/Yeni\ Klasor

└─$ ls -R Pictures/                 
Pictures/:
 bulbeni
 kopya
'Yeni Klasor'

Pictures/bulbeni:

'Pictures/Yeni Klasor':
yeni-isim

'Pictures/Yeni Klasor/yeni-isim':
deneme.txt  dosya1  dosya2  dosys3  liste  liste2  oku-beni
```

Gördüğünüz gibi ben klasör ismini daha önce var olan “***Yeni Klasor***” olarak değiştirmek üzere `mv` komutunu kullandığımda, `mv` aracı isim değişikliğinden ziyade bu klasörün hedef dizin adresi olduğunu düşündüğü için bu dizin altında taşıma yapıyor. Zaten bu durumu tahmin etmek zor değil ancak, yine de dikkat etmeniz için özellikle vurgulamak istedim.

Ayrıca olası veri kayıplarını önlemek adına daha önce `cp` aracını ele alırken de bahsetmiş olduğum üzerine yazma durumlarından da kısaca bahsetmek istiyorum. Örneğin çoklu şekilde dosya veya klasörleri taşıyorsak daha önce `cp` komutunda olduğu gibi her adımda bizden onay alınmasını talep edebiliriz. 

Örneğin benim bulunduğum dizinde a b c d isimli dosyalar var. Ayrıca yeni isimli klasör içinde de aynı isimli dosyalar mevcut. Eğer ben mevcut bulunduğum dizindeki dosyaları yeni klasörüne taşırsam, dosyalar bu klasörün içindekilerin üzerine yazılıyor olacak. 

```bash
└─$ ls yeni/                                                     
a  b  c  d  dosya  kopya  orijinal

┌──(taylan@linuxdersleri)-[~]
└─$ mv a b c d yeni

┌──(taylan@linuxdersleri)-[~]
└─$ ls yeni/                                              
a  b  c  d  dosya  kopya  orijinal
```

Gördüğünüz gibi herhangi bir uyarı almadan taşıma işlemi gerçekleştirildi. Ben taşıma işlemi sırasında onay alınması için `-i` seçeneğini kullanmak istiyorum. Bunun için yine aynı isimli dosyalar oluşturup bunları kontrollü şekilde taşımayı deneyelim. Hatta benzersiz dosyaları da dahil edelim.

```bash
└─$ touch a b c d                                      

┌──(taylan@linuxdersleri)-[~]
└─$ mv -i a b c d dosya1 dosya2 yeni/                                   
mv: overwrite 'yeni/a'? y
mv: overwrite 'yeni/b'? y
mv: overwrite 'yeni/c'? n
mv: overwrite 'yeni/d'? n

┌──(taylan@linuxdersleri)-[~]
└─$ ls yeni/
a  b  c  d  dosya  dosya1  dosya2  kopya  orijinal
```

Gördüğünüz gibi yalnızca aynı isimli dosyaların taşınması için onay istendi. Benim “y” ile onayladıklarım taşınırken, “n” ile reddettiklerim taşınmadı. Ayrıca benzersiz olan dosyalar da herhangi bir soru sorulmadan taşınmış oldu. Bu yaklaşım sayesinde üzerine yazma tehlikesi olmadan, çoklu şekilde dosya taşımamız mümkün oluyor. 

Denemek için “***Documents”*** dizini altındaki “***a” “b” “c” “d”*** ve “***bulbeni”*** isimli dosyaları “***yeni/”*** dizinine taşıyabiliriz. 

```bash
└─$ ls Documents/
a  b  belgeler  bulbeni  c  d  metinler  metin.txt  orijinal

└─$ mv -n Documents/[a-d] Documents/bulbeni yeni/

└─$ ls Documents/                                                                                                
a  b  belgeler  c  d  metinler  metin.txt  orijinal

└─$ ls yeni/                                                                                                     
a  b  bulbeni  c  d  dosya  dosya1  dosya2  kopya  orijinal
```

Gördüğünüz gibi “***a” “b” “c” “d”*** dosyaları ile aynı isimli dosyalar “***yeni/”*** klasöründe bulunduğu için bunlar taşınmazken, “***bulbeni***” isimli dosya taşınmış oldu. Örnek üzerinden bizzat teyit ettiğimiz gibi siz de üzerine yazmaya karşı otomatik olarak korumak isterseniz `-n` seçeneğini kullanabilirsiniz. 

`mv` komutu hakkında temelde bilmemiz gerekenler bunlar. Kendi kendinize biraz daha kurcalarsanız ne kadar kolay kullanılabilir olduğunu bizzat deneyimleyebilirsiniz. Ben kendimi tekrar etmek istemediğim için çok fazla örnek vermedim ama siz kendi kendinize hem dosya hem de dizinleri taşıyarak alıştırmalar yapıp `mv` aracının kullanımını iyi biçimde kavrayın. Ayrıca her zaman olduğu gibi elbette daha fazlası için `mv —help` komutu ile diğer seçenekleri ve özellikleri görüntüleyebilirsiniz.

# `rm` Komutu

Kopyalama ve taşıma araçlarından ve bunların temel kullanımlarından bahsettik. Şimdi bir diğer temel işlev olan silme işlevinden de bahsetmek istiyorum. Daha önce de çok kısaca bahsettiğimiz gibi mevcut dosya ve klasörleri komut satırı üzerinden silmek istediğimizde `rm` aracını kullanabiliyoruz. `rm` aracının ismi İngilizce "**r**e**m**ove" yani "silme/kaldırma" ifadesinin kısaltmasından geliyor. Tıpkı `cp` ve `mv` aracında olduğu gibi `rm` aracının kullanımı da son derece kolay.

İstersek tek bir dosyayı istersek de aynı anda birden fazla dosyayı silmek için tek yapmamız gereken, silmek istediğimiz dosyaların isimlerini `rm` komutundan sonra yazmak. Ben bulunduğum dizindeki “a” isimli dosyayı silmek istiyorum.

```bash
└─$ ls                                                           
a  b  bulbeni  c  d  dosya  dosya1  dosya2  kopya  orijinal

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rm a

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls                                                           
b  bulbeni  c  d  dosya  dosya1  dosya2  kopya  orijinal
```

Bakın “a” isimli dosya artık bulunmuyor.

Eğer birden fazla dosyayı silmek istersem isimlerin peş peşe yazmam yeterli. 

```bash
└─$ ls                                                           
b  bulbeni  c  d  dosya  dosya1  dosya2  kopya  orijinal

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rm b c d                                                     

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls                                                           
bulbeni  dosya  dosya1  dosya2  kopya  orijinal
```

Gördüğünüz gibi birden fazla dosyayı sorunsuzca silmiş olduk. Ben bulunduğum konumdaki dosyaları sildim. Ancak elbette sistem üzerinde yetkinizin bulunduğu tüm dosyaları tam dizin adreslerini belirterek silebilirsiniz. 

```bash
└─$ ls ~/Documents/
a  b  belgeler  c  d  metinler  metin.txt  orijinal

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rm ~/Documents/orijinal 

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls ~/Documents/                                     
a  b  belgeler  c  d  metinler  metin.txt
```

***Documents*** klasörü altındaki “***orijinal***” isimli dosyayı sorunsuzca silmiş oldum.

İşte dosyaları tekil veya çoklu şekilde silmek bu kadar kolay. Tek yapmanız gereken silmek istediğiniz dosyanın tam olarak konumunu belirtmek.

Ayrıca ben üzerinde özellikle durmadım ama fark ettiyseniz toplu şekilde dosya silerken bizden ekstra bir onay alınmadan tek seferde tüm dosyalar silinmişti. Bu durum kimi zaman istenmeyen sonuçlara yol açabilir. Önlem olarak eğer istersek silmeden önce her dosya için bizden onay istenmesini sağlayabiliriz. Bu sayede toplu silme işlemlerinde yanlış dosyaları silme riskinden kaçınabiliriz. Örnek senaryomuzda, bir dizin içinde tüm dosyaları silmek üzere konsola `rm *` komutunu girdiğimizi farz edelim. Bu durumda kabuk yıldız işareti sayesinde bulunduğumuz dizindeki tüm dosyaları kapsayacağı için tüm dosyaların silinmesi emrini vermiş oluyoruz.

Örneğin ben şu an içinde bulunduğum “***yeni***” klasörü içerisindeki yer şeyi silmek üzere `rm *` komutunu girebilirim. Fakat ben tüm dosyaları silmek istemiyorum, bazılarını eleyip geri kalanları silmek istiyorum. Bunun için `cp` ve `mv` komutlarında da olduğu gibi `-i` seçeneğini kullanabiliriz. Denemek için komutumuza `-i` seçeneğini de ekleyip bu şekilde girelim.

```bash
└─$ ls                                                           
bulbeni  dosya  dosya1  dosya2  kopya  orijinal

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rm -i *                                                      
rm: remove regular empty file 'bulbeni'? n
rm: remove regular file 'dosya'? y
rm: remove regular empty file 'dosya1'? y
rm: remove regular empty file 'dosya2'? y
rm: remove regular file 'kopya'? y
rm: remove regular file 'orijinal'? n

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls                                                           
bulbeni  orijinal
```

Gördüğünüz gibi “**y**” ile onay verdiklerim silinirken, “**n**” ile reddettiklerim silinmedi. 

Neticede `i` seçeneği sayesinde tüm silme işleminin adım adım bizden onay alınarak gerçekleştirilmesini sağlamış olduk. 

Tamamdır bence dosyaları silmekle ilgili tüm temel bilgilerden bahsettik. Şimdi klasörleri nasıl silebileceğimizi örnekler üzerinden ele alalım.

## Klasörlerin Silinmesi

Normalde `rm` komutunu ekstra bir seçenek belirtmeden kullandığımızda `rm` aracı yalnızca kendisine argüman olarak verilmiş olan dosyaları siliyor. Yani aynı isimle eşleşen klasörleri silmiyor. Klasörleri silmesi için silinmek istenilenin klasör olduğunu İngilizce “**d**irectory” yani “klasör” ifadesinin kısaltmasından gelen `-d` seçeneği ile özellikle belirtmemiz gerekiyor.

Hemen deneyelim. Ben test etmek için `mkdir sil-beni` komutu ile yeni klasör oluşturup, `rm` komutu ile oluşturduğum klasörü silmeyi deniyorum. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ mkdir sil-beni                                               

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rm sil-beni/                                                 
rm: cannot remove 'sil-beni/': Is a directory
```

Bakın aldığımız çıktıda, klasör olduğu için silinemediği konusunda uyarıldık. Eğer “directory” yani “klasör” ifadesinin kısaltması olan `d` seçeneğini kullanırsak silebileceğiz. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rm -d sil-beni/                                              

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls                                                           
bulbeni  orijinal
```

Gördüğünüz gibi `d` seçeneği sayesinde klasörüm sorunsuzca silinmiş oldu.

Dosyalara benzer şekilde klasörleri de çoklu şekilde silebiliriz. Ben denemek için `mkdir x y z` komutu ile birden fazla klasör oluşturacağım. Ve bunları da `rm -di x y z` komutu ile kontrollü şekilde sileceğim.

```bash
└─$ mkdir x y z

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rm -di x y z
rm: remove directory 'x'? y
rm: remove directory 'y'? n
rm: remove directory 'z'? y

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls                                                           
bulbeni  orijinal  y
```

Gördüğünüz gibi `i` seçeneği sayesinde benden onay alınan klasörler silinmiş oldu.

## İçerisi Dolu Olan Klasörlerin Silinmesi

Şu ana kadar klasörleri silerken hiç bir problem yaşamadık, çünkü klasör içerikleri boştu. Eğer klasörlerin içinde başka dosyalar ve klasörler bulunuyorsa, `rm -d` komutu ile silmemiz mümkün değil. 

Mesela teyit etmek için daha önceden oluşturduğum ***Documents*** dizini altındaki klasörümü silmeyi deneyebilirim. 

```bash
└─$ ls -R ~/Documents/                                           
/home/taylan/Documents/:
a  b  belgeler  c  d  metinler  metin.txt

/home/taylan/Documents/belgeler:

/home/taylan/Documents/metinler:
1.gz  2.gz  3.gz  4.gz  5.gz

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rm -d ~/Documents/metinler                                   
rm: cannot remove '/home/taylan/Documents/metinler': Directory not empty
```

Gördüğünüz gibi “***metinler***” klasörünün içerisi dolu olduğu için silme işlemi reddedildi. 

İçerisi dolu dizinleri silmek için `-r` seçeneğini kullanmamız gerekiyor. Buradaki `r` seçeneği İngilizce “**r**ecursive” yani “özyinelemeli” ifadesinin kısaltmasından geliyor. Bu seçenek sayesinde klasörün içinde iç içe birden fazla klasör ve dosya olsa da tüm dosyaların ve klasörlerin silinebilmesi mümkün oluyor. Hatırlıyorsanız klasör içeriklerini kopyalarken de bu şekilde “recursive” seçeneğini eklemiştik. En alt dizine kadar bakılıp silmesi de özyineleme özelliğini temsil ediyor yani. Hatta “recursive” yani “özyineleme” seçeneğini yalnızca klasörler üzerinde kullandığımız için bu seçenek varken aslında `rm` aracına ek olarak `-d` seçeneğini de girmemiz gerekmiyor. Yani `rm -r silinecek-klasör` şeklinde komutumuzu girdiğimizde, belirttiğimiz dizin tüm içeriğiyle birlikte silinecektir. 

```bash
└─$ rm -r ~/Documents/metinler/

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls -R ~/Documents/                                           
/home/taylan/Documents/:
a  b  belgeler  c  d  metin.txt

/home/taylan/Documents/belgeler:
```

Bakın yalnızca `-r` seçeneğini kullanarak içi dolu klasörü silmeyi başardım.

Ben kullanmadım ancak özellikle iç içe klasörler ve dosyalar barındıran klasörleri silerken, `i` seçeneğini ekleyerek yanlış bir dosyayı veya klasörü silmediğinizden emin olmanızı da önerebilirim. Yine de klasörden tek seferde kurtulmak istediğinize eminseniz elbette `i` seçeneğini kullanmak zorunda değilsiniz.

Ayrıca hatırlıyorsanız, boş dizinleri silmek için daha önce `rmdir` aracını kullanmıştık. İşte `rm -d` komutu `rmdir` aracı ile aynı işlevi görüyor. İçerisi dolu olan dizinleri silmek için de `rm -r` komutunu kullanıyoruz. Dolayısıyla emin olmadığınız sürece `rm -r` komutunu kullanmanız önermem. Yine de elbette klasörü içeriğiyle birlikte silmek istediğinizden eminseniz kullanabilirsiniz.

Son olarak eğer, tüm silme adımlarının ayrıntılarını da takip etmek isterseniz “verbose” yani “ayrıntılı” ifadesinin kısaltması olan `v` seçeneğini de kullanabilirsiniz. Toplu şekilde klasör silerek kullanımı teyit edebiliriz. Çabucak test etmek için `mkdir {1..9}` komutuyla yeni klasörler oluşturup, toplu şekilde silmek ve silme işlemiyle ilgili ayrıntıları da öğrenmek için `rm -dv {1..9}` şeklinde komutumuzu girebiliriz. 

```bash
└─$ ls                                                           
1  2  3  4  5  6  7  8  9  bulbeni  orijinal  y

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ rm -dv {1..9}                                                
removed directory '1'
removed directory '2'
removed directory '3'
removed directory '4'
removed directory '5'
removed directory '6'
removed directory '7'
removed directory '8'
removed directory '9'
```

Bakın tüm silme işlemi adım adım bastırıldı. Bu şekilde toplu silme işlemlerini takip etmek istiyorsanız `v` seçeneğini de kullanabilirsiniz.

Neticede `rm` komutu hakkında bilmemiz gereken tüm temel yaklaşımlardan bahsettik. Diğer seçenekleri görmek için yardım sayfasına göz atabilirsiniz. 

# shred Komutu | Dosyaları Geri Döndürülemez Şekilde Silmek

Geri döndürülemez yani kalıcı silme kavramından bahsetmeden önce silme işlemlerinin temelde nasıl işlediğinden çok kısaca bahsetmek istiyorum. Bu sayede kalıcı silmeden kastın ne olduğu daha net anlaşılabilir.

Eğer herhangi bir dosyayı sildiğinizde o dosyanın tamamen yok olduğunu düşünüyorsanız kesinlikle yanılıyorsunuz. Kısaca özetlemek gerekirse işletim sistemleri dosya silme emri aldığında o dosyayı gerçekten diskten silmek yerine, dosyaya ulaşmanızı sağlayan yolun bilgisini silerler. 

![shred-1.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/shred-1.webp)

Yani aslında dosya hala disk üzerinde mevcut olmasına rağmen, sadece dosyaya giden bağlantı siliniyor. Bu yöntemin kullanılma nedeni dosyayı gerçekten silmeye oranla çok daha hızlı sonuç vermesidir. Peki ama gerçek silme işleminden kastımız tam olarak ne ?

Gerçek silme işlemi dediğimiz kavram; disk üzerinde yer kaplayan her türlü verinin ancak üzerine yeni veriler yazılması ile ortadan kaldırılabilecek olmasını ifade ediyor. 

![shred-2.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/shred-2.webp)

Çünkü üstüne yeni veri yazılarak tahrip edilmeyen her türlü verinin tekrar kurtarılma ihtimali var. Adli bilişim alanında bu iş için kullanılan pek çok yazılımsal ve harici olarak fiziksel kurtarma yöntemi bulunuyor.

İşin özü eğer bir dosyadan geri döndürülemez şekilde kurtulmak istiyorsak o dosyayı silerken üzerine birden fazla kez rastgele veri yazılmasını sağlamamız gerekiyor. Pek çok işletim sisteminde bu üzerine yazma işlemi için harici yazılımlar yükleyip kullanmamız gerekebiliyor. Ancak söz konusu Linux olduğunda pek çok dağıtımda varsayılan olarak yüklü gelen `shred` isimli aracı kullanabilme kolaylığa sahibiz.

Zaten `shred` ifadesi Türkçe olarak "parçalamak" anlamına geliyor. Eğer herhangi bir arama motoruna yazarsanız, karşınıza parçalanmış kağıt görselleri çıkacaktır. Bu aracı kullanarak, dosyaların üzerine veriler yazılarak tahrip edilmesini sağlayabiliyoruz. Dosya içeriği tahrip olduktan sonra da dosyayı güvenle sıradan şekilde silebiliyoruz çünkü dosya geri getirilse bile orijinali tahrip edildiği için gerçek içeriğine ulaşılamıyor.

Silme mekanizmalarından bence yeterince bahsettik. Şimdi lafı daha fazla uzatmadan `shred` komutunun kullanımından bahsederek devam edelim.

## `shred` Komutu

`shred` komutunu herhangi bir ek seçenek belirtmeden kullandığımızda varsayılan olarak kendisine argüman olarak verilmiş olan dosyanın üzerine 3 kez rastgele bitler yazılmasını sağlıyor. Eğer daha fazla kez yazılmasını istersek, `-n` seçeneğini kullanıp kaç kez yazılması gerektiğini özellikle de belirtebiliyoruz.. Ayrıca `-v` seçeneğini ekleyerek “**v**erbose” yani “ayrıntılı” çıktı vermesini de sağlayabiliriz. Bu sayede tüm adımları konsoldan takip edebiliriz.

Ben denemek için `echo “bu bir dosyadır” > okubeni` komutu ile içerisi dolu yeni bir dosya oluşturuyorum. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ echo "bu bir dosyadır" > okubeni                             

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ cat okubeni                                                  
bu bir dosyadır
```

Şimdi `shred` aracını kullanarak dosya içeriğine rastgele bitler yazılmasını sağlayabiliriz. Ben varsayılan şekilde yani 3 kez rastgele bitler yazılması için `shred` aracına özellikle bir sayı vermek istemiyorum ama işlem adımlarını takip etmek için “verbose” yani ayrıntılı çıktı seçeneğini ekleyeceğim. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ shred -v okubeni                                             
shred: okubeni: pass 1/3 (random)...
shred: okubeni: pass 2/3 (random)...
shred: okubeni: pass 3/3 (random)...

┌──(taylan@linuxdersleri)-[~/yeni]
└─$ cat okubeni                                                  
�r��WwQ%���uuD��J󶤈�����X����m�M���h�E"E�-�F:����ǀi�7▒.>�        d��zO���R�e)a�������F�Z� 䵙x�Z;$s��/��}C���F����u}��o(�K��h���W軄R��XP�KLB�d>�4�7r���c�C�#BD��v�O�I忧�ٱ�-O�/��)%m��
```

Gördüğünüz gibi dosyanın içeriği tamamen okunamaz halde. Artık bu dosyayı `rm` komutu ile gönül rahatlığıyla silebiliriz çünkü dosya geri getirilse bile içeriğindeki verilere ulaşılması pek olası değil. Çünkü içerisine 3 kez rastgele veriler yazıldı. İşte `shred` aracının kullanımı bu kadar kolay.

Ayrıca daha önce de bahsettiğim şekilde istersek kaç kez rastgele veri yazılacağını da `-n` seçeneğinin ardından özellikle belirtebiliyoruz. Örneğin ben 5 kez rastgele veri yazılmasını istersem `shred -n 5 dosya-adı` şeklinde komutumu girebilirim. Hatta sayıyı belirtmeye ek olarak rastgele yazma işleminden hemen sonra bu dosyanın silinmesini de sağlayabiliriz. Dosyanın silinmesi için de `-u` seçeneğini eklememiz yeterli oluyor.

Ben denemek için bu “***okubeni***” dosyasının üzerine 5 kez rastgele veri yazılıp daha sonra silinmesini için komutumu girmek istiyorum. Tabii tüm işlem adımlarını takip edebilmek için bir de `-v` seçeneği ile ayrıntıların da bastırılmasını istiyorum. Bunun için `shred -uvn 5 okubeni` şeklinde komutumu giriyorum. 

```bash
└─$ shred -uvn 5 okubeni 
shred: okubeni: pass 1/5 (random)...
shred: okubeni: pass 2/5 (ffffff)...
shred: okubeni: pass 3/5 (random)...
shred: okubeni: pass 4/5 (000000)...
shred: okubeni: pass 5/5 (random)...
shred: okubeni: removing
shred: okubeni: renamed to 0000000
shred: 0000000: renamed to 000000
shred: 000000: renamed to 00000
shred: 00000: renamed to 0000
shred: 0000: renamed to 000
shred: 000: renamed to 00
shred: 00: renamed to 0
shred: okubeni: removed
```

Bakın öncelikle dosya içeriğine rastgele 5 kez veriler yazılmış, daha sonra dosya silinmiş ve son olarak dosyanın isminin de silinmesi için dosya ismi de adım adım sıfırlar ile doldurularak yok edilmiş. Bu yaklaşım sayesinde dosyanın isminin dahi disk üzerinden kurtarılması pek olası değil.

Hatta teyit etmek için `ls` komutu ile mevcut dizinimizi listeleyebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~/yeni]
└─$ ls                                                           
bulbeni  orijinal  y
```

Bakın gördüğünüz gibi dosyamız işlem sonunda otomatik olarak silinmiş.

Ayrıca benim örnekler üzerinde kullandığım dosyanın içeriği çok küçük olduğu için tüm işlem çok kısa sürede tamamlandı ancak bu durum her zaman böyle olmayabilir. Yani üzerine yazma işlemi, üzerine yazılacak olan dosyanın boyutuna göre değişken uzunlukta sürebilir, sabırla işlem tamamlanana kadar beklemelisiniz. Benim dosya boyutum çok küçük olduğu için işlem çok kısa sürede tamamlandı.

Kalıcı olarak istediğiniz dosyalarınızı bu yaklaşım sayesinde güvenli şekilde silebilirsiniz. 

# Linux Geri Dönüşüm Kutusu

Komut satırı üzerinden bir dosyayı sildiğimizde, normalde grafiksel arayüzde olduğu gibi sildiğimiz dosya çöp kutusuna gönderilmiyor. Yani çöp kutusu olarak geçen dizin yalnızca grafiksel arayüzdeki dosya silme işlemlerinde kullanılan sembolik bir dosya yolu.

Denemek için grafiksel arayüzdeyken bir dosyanın üzerine tıklayıp silebilir daha sonra geri dönüşüm klasörüne bakabiliriz.  

![trash.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/trash.gif)

Bakın silmiş olduğumuz dosya burada bulunuyor. Şimdi denemek için `touch deneme` komutu ile yeni bir dosya oluşturup bu dosyayı da `rm` komutu ile silelim. 

![trash-on-commanline.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/trash-on-commanline.gif)

Bakın komut satırı üzerinden silme işlemi gerçekleştirdiğimiz için çöp kutusuna herhangi bir dosya eklenmedi. Zaten komut satırı üzerinden sildiğimizde buradaki çöp kutusuna geliyor olsaydı önceki silme işlemlerinin kalıntılarını burada görüyor olmamız gerekiyordu.

Komut satırından silinen dosyaların burada gözükmüyor olmasına ek olarak Windows sisteminden de aşina olduğumuz gibi grafiksel arayüzdeyken, <kbd>Shift</kbd> + <kbd>Delete</kbd> tuşlaması ile bir dosya veya klasörü sildiğimizde bu dosya veya klasör bu çöp dizinine gelmeden komut satırında olduğu şekilde siliniyor. 

![shift-delete.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/shift-delete.gif)

Tabii ki <kbd>Shift</kbd> + <kbd>Delete</kbd> tuşlaması bizim `shred` komutu ile sildiğimiz gibi silmiyor ancak en azından sadece çöp dizinine de taşımış olmuyor.

Komut satırından veya <kbd>Shift</kbd> + <kbd>Delete</kbd> ile grafiksel arayüzden sildiğiniz dosyaları geri getirmek isterseniz de `testdisk` gibi harici veri kurtarma yazılımları ile ilgili dosyalarınızı kurtarabilirsiniz. Tabii ki daha önce de belirttiğim şekilde eğer `shred` aracı ile dosya içeriklerini tahrip ettiyseniz yani kalıcı olarak sildiyseniz kurtarma yazılımları ile, ilgili dosyaları kurtarmanız pek olası değil.

Artık böylelikle silme ve kurtarma planlarınızı, şimdiye kadar bahsettiğimiz bilgiler ışığında gerçekleştirebilirsiniz.

# Sembolik ve Katı Link | Soft Link & Hard Link

Anlatımın devamında çok kısaca sembolik ve katı linklerden de bahsetmek istiyorum.

Fakat sembolik ve katı linklerden bahsetmeden önce, link yapısını yani aslında buradaki link ifadesinden kastımızı anlamak için öncelikle "inode" kavramı üzerinde durmamız gerekiyor. Merak etmeyin çok ayrıntıya girmeyeceğiz.

## inode

Dosya sistemindeki veriler depolama birimlerimizde yani diskte bloklar halinde tutuluyorlar. Dosyalarla ilişkili olan verilerin hangi bloklarda olduğunun bilgisini de bizlere “**i**ndex **node**” yani kısaca “**inode**” olarak isimlendirilen yapı haber veriyor.

Örneğin ben ***metin.txt*** isimli bir dosyanın içerisine “merhabalar” yazıp kaydettiğimde, “merhabalar“ ifadesi diskte belirli bir bloğa kaydediliyor. Ve bu verinin disk üzerinde tam olarak bulunduğu bloğun veya blokların bilgisi de **inode** olarak isimlendirilen benzersiz sayısal bir değere atanıyor. ***metin.txt*** dosyası ise bu **inode** değerine link olarak bağlanıyor. Bu sayede biz ***metin.txt*** dosyasının içeriğini okumak istediğimizde aslında arkaplanda ***metin.txt*** dosyasının bağlı olduğu **inode** değerine bakılıyor. **inode** değerinin disk üzerinde işaret ettiği bloklardan da bu veriler getiriliyor. Neticede biz metin.txt ismiyle ilişkili olan "merhabalar" verisine disk üzerinde kaydedildiği yerden tekrar ulaşmış oluyoruz. 

![inode.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/inode.webp)

Yani aslında buradaki ***metin.txt*** dosyası yalnızca benzersiz bir **inode** değerine bağlı olan **linktir**. **inode** değeri de ilgili verinin diskteki yerini bildiği için ***metin.txt*** linki üzerinden bu veriye ulaşabiliyoruz.

İşte tıpkı bu örneğimizde olduğu gibi dosya sistemindeki benzersiz olan her bir dosya ve klasörün de benzersiz bir inode değeri bulunuyor. Bizim gördüğümüz dosya ve klasör isimleri de yalnızca bu inode değerlerine yönlendirme yapan linkler aslında. Dosya veya klasör isminden inode değerine, inode değerleri üzerinden de disk üzerinde depolanmış olan verilere kolayca erişebiliyoruz. Buradaki linkler yalnızca biz insanların disk üzerindeki verilere kolay erişebilmesi için okunaklı isimlerden oluşan bağlantı noktaları aslında. Yani diskteki “xx yy zz” bloklarındaki verileri okumak istiyorum demek yerine, “metin.txt” dosyasını okumak istiyorum demek bizim için çok daha kolay olduğu için dosya ve klasör isimleri yalnızca birer linktir. 

Tamam temel seviye için "inode" ve "link" kavramı hakkında bu kadarlık bilgi yeterli.

Şimdi esas konumuz olan link kavramına odaklanacak olursak, Linux üzerinde **sembolik** ve **katı** olmak üzere iki link çeşidi bulunuyor. Gelin öncelikle sembolik linkten bahsederek başlayalım.

## Sembolik Link | Soft Link

Ben "**sembolik link**" diyor olacağım ancak farklı kaynaklarda “**soft link**” olarak ifade edildiğini de görebilirsiniz. Sembolik linkleri, Windows sisteminden de alışık olduğumuz sıradan kısayollara benzetebiliriz. Sembolik linklerin görevleri yalnızca orijinal içeriğe yönlendirme yapmaktır.

Daha anlaşılır olması için gerçek bir örnek üzerinden devam edebilmek adına öncelikle nasıl sembolik link oluşturabileceğimizi öğrenelim.

Link oluşturmak için “**l**i**n**k” ifadesinin kısaltmasından gelen `ln` komutunu kullanıyoruz. Sembolik link oluşturmak için de “**s**ymbolic” ifadesinin kısalması olan `s` seçeneğini kullanmamız gerekiyor.

Ben test ortamı hazırlamak için öncelikle kendi ev dizinimde `mkdir linkler` komutuyla “***linkler***” isimli bir klasör oluşturup, `echo “deneme” > ~/linkler/metin` komutuyla, bu dizin altında “***metin***” isimli dosyaya “deneme” ifadesini ekliyorum. 

```bash
└─$ mkdir linkler

┌──(taylan@linuxdersleri)-[~]
└─$ echo "deneme" > ~/linkler/metin

┌──(taylan@linuxdersleri)-[~]
└─$ cat ~/linkler/metin                                            
deneme
```

Test ortamımız hazır. Şimdi bu dosyanın sembolik linkini oluşturmayı deneyelim.

Sembolik link oluştururken dosya ve klasörlerin tam dosya dizin adreslerini mutlaka belirtmemiz gerekiyor. Çünkü sembolik dosyaları sistem üzerinde herhangi bir dosya konumunda kullanabiliriz. **Tam dizin adresini belirtmezsek doğru şekilde çalışmaz.** Örneğin ben tam dizin adresi yerine göreceli yolu belirterek yeni bir sembolik link oluşturmak ve bu linki başka bir konuma taşımak istiyorum.

```bash
└─$ ln -s linkler/metin sembolik_metin2

└─$ mv sembolik_metin2 Documents/                                             

└─$ cat Documents/sembolik_metin2                                             
cat: Documents/sembolik_metin2: No such file or directory
```

Gördüğünüz gibi orijinal dosyanın tam dizin adresini belirtmediğim için sembolik link dosyasının konumunu değiştirdiğimde bu dosya göreli yola göre orijinal dosyayı aradığı için bu dosya bulunamadı. **Dolayısıyla link belirtirken tam dizin adresini girmeniz şart!**

Ben bu dizindeki dosyanın sembolik linkini mevcut bulunduğum dizinde oluşturmak için `ln -s ~/linkler/metin sembolik_metin` şeklinde komutumu giriyorum. Teyit etmek için `ls -l sembolik_metin`  komutuyla listeleyelim. 

```bash
└─$ ln -s ~/linkler/metin sembolik_metin

└─$ ls -l sembolik_metin 
lrwxrwxrwx 1 taylan taylan 13 Jun 26 04:07 sembolik_metin -> /home/taylan/linkler/metin
```

Bakın burada ***sembolik_metin*** dosyasının oluşturulduğunu görebiliyorum. Ayrıca çıktılara dikkatlice bakacak olursanız, ok işaretinin orijinal dosyaya referans verdiğini görebilirsiniz. Buradaki çıktının anlamı “***sembolik_metin***" isimli dosyanın “***metin***" dosyasının sembolik bir bağlantısı olduğu. Bunlar dışında çıktıların en solunda yani dosya türünün belirtildiği bölümde “**l**” karakteri bulunuyor. Buradaki “**l**” ifadesi “sembolik link” anlamına geliyor. Dolayısıyla her iki şekilde de başarılı şekilde sembolik linkimizi üretmeyi başardığımızı teyit etmiş olduk.

Hemen sembolik linkin nasıl bir işlevi olduğunu görmek için birkaç basit örnek yapalım. Öncelikle oluşturduğumuz sembolik link üzerinden orijinal dosyanın içeriğini okumayı deneyebiliriz. Ben bunun için `cat sembolik-metin` şeklinde komutumu giriyorum. 

```bash
└─$ cat sembolik_metin 
deneme
```

Bakın konsola “deneme” ifadesi bastırıldı. Yani sembolik link üzerinden orijinal dosyamızın içeriğine ulaşmış olduk.

Şimdi orijinal dosyaya yeni veri ekleyerek bu durumu tekrar test edelim. 

```bash
└─$ echo "yeni" >> ~/linkler/metin 

└─$ cat sembolik_metin 
deneme
yeni
```

Bakın orijinal dosyadaki değişikliğe bu dosya üzerinden de erişebiliyoruz. Neticede sembolik linkler aslında orijinal dosyaların kısayolları görevinde olduğu için tek yaptığı orijinal dosyaya yönlendirme yapmak. Dolayısıyla orijinal dosya içeriğindeki değişikliklere sembolik link dosyaları üzerinden de aynen ulaşabiliyoruz.

Şimdi tersini deneyelim. Yani sembolik dosyanın üzerine yeni veri ekleyip orijinal dosyaya etki edip etmeyeceğini görelim. Ben yeni veri eklemek üzere `echo “sembolik ekleme” >> sembolik-metin` şeklinde komutumu giriyorum. 

```bash
└─$ echo "sembolik ekleme" >> sembolik_metin 

└─$ cat sembolik_metin                                           
deneme
yeni
sembolik ekleme

└─$ cat linkler/metin                                            
deneme
yeni
sembolik ekleme
```

Bakın sembolik bağlantıdaki değişiklik orijinal dosyada da geçerli olmuş. Peki ama nasıl ?

Biz burada bu dosyaya veri eklemek üzere komutumuzu girdiğimizde, bu sembolik linke yönlendirmiş olduğumuz veriler orijinal dosyaya yönlendirilip, bu dosya üzerinden diskteki verilere ekleme yapılması sağlanıyor. Bu sayede tıpkı orijinal dosya üzerinden ekleme yapmışız gibi değişiklikler geçerli oluyor.

![soft-link.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/soft-link.webp)

Yani bizzat teyit ettiğimiz gibi sembolik bağlantılar aslında orijinal dosyaya yönlendirme yapan kısayol dosyaları. Bu sebeple örneğin orijinal dosya silinirse, sembolik linkler üzerinden diskteki verilere ulaşmamız mümkün olmuyor. Çünkü dediğimiz gibi sembolik linkler yalnızca orijinal dosyaya yönlendirme yapıyor, bu orijinal dosya da zaten disk üzerindeki verilere ulaşmamızı sağlayan bir bağlantı. Eğer bu bağlantı kesilirse, diskteki veriler silinmemiş olsa bile o verilere ulaşmamız mümkün olmuyor. 

![soft-link-hard-link-deleted.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/soft-link-hard-link-deleted.webp)

Zaten biz standart şekilde dosya sildiğimizde arkaplanda yalnızca diskteki o verilere giden bu bağlantı adresi silinmiş oluyor. Yani diskte veriler mevcut olsa da o verilere ulaşmamızı sağlayan bağlantıyı kaybettiğimiz için ulaşamıyoruz. Bu sebeple standart şekilde silinen ve üzerine veri yazılamayan verilerin diskten kurtarılması mümkün oluyor.

Teorik olarak açıkladık. Şimdi bu durumu bizzat deneyimlemek için orijinal dosya olan “***linkler***” klasörü içerisindeki “***metin***” dosyasını silmek üzere `rm linkler/metin` şeklinde komutumuzu girip, `cat` komutu ile sembolik link dosyasını okumayı deneyebiliriz. 

```bash
└─$ rm linkler/metin                                             

┌──(taylan@linuxdersleri)-[~]
└─$ cat sembolik_metin                                           
cat: sembolik_metin: No such file or directory
```

Bakın böyle bir dosya veya dizin yok hatası alıyoruz. `ls -l` komutu ile listeleyelim. 

![soft-link-deleted.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/soft-link-deleted.webp)

Bakın sembolik link dosyası gözüküyor ama orijinal dosya silindiği için bu sembolik link kırmızı renkle listelenmiş oldu. Zaten sembolik link bizi bu dosyaya yönlendirdiği, ama bu dizinde böyle bir dosya olmadığı için bu hatayı aldık.

Yani benim `cat sembolik-metin` komutunu girmemle, `cat linkler/metin` komutunu girmem aynı şey. 

```bash
└─$ cat sembolik_metin                                                      
cat: sembolik_metin: No such file or directory

└─$ cat linkler/metin
cat: linkler/metin: No such file or directory
```

Bakın yine böyle bir dosya ve dizin yok şeklinde `cat` komutu bize hata döndürdü. İşte gördüğünüz gibi sembolik linkler yalnızca orijinal dosyalara yani aslında orijinal linklere yönlendirme yapan kısayollardır. Orijinal bağlantılar olmazsa, disk üzerindeki verilere ulaşmamız mümkün olmuyor.

### Klasörler için Sembolik Link

Aynı şekilde klasörler için de sembolik linkeler oluşturabilirsiniz. Ben denemek için `ln -s linkler linkler-sembolik` komutu ile yeni sembolik klasörümü oluşturmak istiyorum.

```bash
└─$ ln -s ~/linkler/ linkler-sembolik                                           

└─$ ls -l linkler-sembolik
lrwxrwxrwx 1 taylan taylan 8 Jun 26 04:38 linkler-sembolik -> /home/taylan/linkler/
```

Bakın tıpkı sembolik dosyada olduğu gibi sembolik klasör de bağlı olduğu klasöre yönlendirme yapıyor. Sembolik klasörler de tıpkı dosyalar gibi yalnızca orijinal klasöre yönlendirme yaptığı için orijinal klasör silinirse sembolik link çalışmaz.

Denemek için `echo “deneme” > linkler-sembolik/metin` şeklinde komutumuzu girebiliriz. 

```bash
└─$ echo "deneme" > linkler-sembolik/metin

└─$ ls linkler-sembolik                                                       
metin

└─$ ls linkler
metin
```

Yukarıdaki çıktılara bakacak olursanız, sembolik klasöre yönlendirmiş olduğum dosyanın orijinal klasöre kaydolduğunu görebilirsiniz. Yani tıpkı dosyalar olduğu gibi sembolik klasörler de orijinal klasöre yönlendirme yapan kısayollar aslında. 

Ben örnekler sırasında birer tane sembolik dosya ve klasör oluşturdum. Ancak istiyorsanız tek bir dosya veya klasör için birden fazla sembolik link de oluşturabilirsiniz. Zaten sembolik linkler kısayol görevinde olduğu için kısayol yapısına ihtiyaç duyulan her yerde kullanılabilir. Örneğin sık kullandığınız bir dizin veya dosya için masaüstünüzde bir sembolik bağlantı oluşturabilirsiniz. 

### Sembolik Linkleri Silmek

Sembolik link dosyalarını silmek için de doğrudan silmek istediğiniz sembolik link dosyasının ismini `rm` komutuna argüman olarak verebilirsiniz. 

```bash
└─$ rm sembolik_metin 

└─$ ls -l sembolik-metin
ls: cannot access 'sembolik-metin': No such file or directory

└─$ rm -d linkler-sembolik

└─$ ls -l linkler-sembolik                                                    
ls: cannot access 'linkler-sembolik': No such file or directory
```

Gördüğünüz gibi sembolik dosya ve klasörleri standart şekilde silmiş olduk.

## Katı Link

Şimdi katı linklerden bahsedecek olursak. Sembolik linklere “soft link” denilmesi gibi, katı linklere de “hard link” denebiliyor. Katı link oluşturmak için doğrudan `ln` komutunu seçenek belirtmeden kullanabiliyoruz.

Ben denemek için yine `echo “orijinal dosyayım” > linkler/metin` şeklinde komutumu giriyorum.

```bash
└─$ echo "orijinal dosyayım" > linkler/metin
```

Şimdi bu dosya için bir katı link oluşturmak üzere `ln linkler/metin kati-metin` şeklinde komutumuzu girebiliriz.

```bash
└─$ ln linkler/metin katı-metin                                               

┌──(taylan@linuxdersleri)-[~]
└─$ ls -l katı-metin                                                          
-rw-r--r-- 2 taylan taylan 19 Jun 26 04:47 katı-metin
```

Bakın dosyam oluşturulmuş fakat bu dosyanın bir link dosyası olduğuna dair burada herhangi bir emare yok. Halbuki sembolik linkte açıkça link dosyası olduğu ve hangi dosyaya bağlı olduğu buradaki çıktılarda belirtiliyordu.

Burada katı linke dair özel bir çıktı almadık çünkü aslında katı link dediğimiz kavram sistemimiz üzerindeki tüm standart dosya ve dizinleri temsil ediyor. Yani benim oluşturduğum orijinal metin dosyası da disk üzerindeki verilere yönlendirme yapan bir katı link.

![hard-link.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/hard-link.webp)

Ben burada “***kati-metin***” isimli yeni bir katı link oluşturduğumda, tıpkı orijinal dosya gibi doğrudan beni diskteki verilere yönlendiren inode değerine bir bağlantı oluşturmuş oldum.

![hard-link2.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/hard-link2.webp)

Sembolik linkte nasıl oluyordu. Sembolik linkler, orijinal linklere yani aslında katı linkli dosyalara yönlendirme yapıyordu, oradan da disk üzerindeki verilere ulaşabiliyorduk.

![soft-link2.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/soft-link2.webp)

Katı linkte ise hem orijinal dosya hem de yeni oluşturduğumuz katı link dosyası inode değerine bağlı olduğu için aynı disk verisinin yerini biliyor ve bizi oraya yönlendirebiliyor.

Dolayısıyla ben orijinal veya bu yeni oluşturduğum katı link dosyasında değişiklik yaptığımda diskteki bu veri değiştiği için bu değişikliğe her iki dosya üzerinden de ulaşabiliyorum. Hatta orijinal dosya silinse bile yeni oluşturduğum katı link dosyası, inode sayesinde verilerin disk üzerinde tam olarak hangi bloklarda olduğunu bildiği için benim o verilere ulaşmam mümkün oluyor.

![hard-link3.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/hard-link3.webp)

Hemen bu durumu bizzat teyit etmek için öncelikle basit bir test olarak yeni oluşturduğumuz katı link dosyası üzerinden yeni veri eklemeyi deneyebiliriz.

Ben denemek için `echo “yeni veri” >> katı-metin` şeklinde komutumu giriyorum.

```bash
└─$ echo "yeni veri" >> katı-metin 

└─$ cat katı-metin                                                            
orijinal dosyayım
yeni veri

└─$ cat linkler/metin                                                         
orijinal dosyayım
yeni veri
```

Eklediğim değişikliğe her iki dosya üzerinden de aynı şekilde ulaşabildim. Benzer şekilde `echo “orijinal ekleme” >> linkler/metin` şeklinde tekrar orijinal dosya üzerinden veri eklemeyi de deneyebiliriz.

```bash
└─$ echo "orijinal ekleme" >> linkler/metin 

└─$ cat linkler/metin                                   
orijinal dosyayım
yeni veri
orijinal ekleme

└─$ cat katı-metin                                   
orijinal dosyayım
yeni veri
orijinal ekleme
```

Bakın orijinal dosya üzerindeki değişiklik bu dosyayı da aynen etkiliyor. Çünkü zaten tüm değişiklikler inode değeri üzerinden gerçekleştirildiği için iki dosya aynı veriye erişebilen iki ayrı dosya gibi.

Şimdi ben son olarak orijinal dosyayı sildiğimde bu diskteki bu verilere ulaşıp ulaşamayacağımı test etmek için `rm linkler/metin` komutunu girip orijinal dosyamı siliyorum.

```bash
└─$ rm linkler/metin                                                          

└─$ cat katı-metin                                                            
orijinal dosyayım
yeni veri
orijinal ekleme
```

Gördüğünüz gibi orijinal dosya silinmiş olmasına rağmen hala disk üzerindeki aynı verilere erişmeye devam edebiliyorum. Çünkü işleyiş aslında aşağıdaki şemadaki gibi.

![hard-link3.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/hard-link3.webp)

En nihayetinde gördüğünüz gibi aslında sistemiz üzerindeki standart dosya ve klasörler disk üzerindeki veri bloklarına inode üzerinden yönlendirme yapan bağlantı adresleri. Biz bu bağlantı adresleri yani linkler sayesinde kolay okunabilir isimlerle diskteki verilerimizi düzenle tutup tekrar tekrar erişebiliyoruz.

Yani katı link oluşturma yaklaşımı sayesinde disk üzerinde tekrar aynı veriler için fazladan depolama alanı harcanmasına gerek kalmadan, dosyaların yedeklerinin alınması mümkün oluyor. Daha önce de silme işleminin aslında verilere ulaşmamızı sağlayan bağlantıların silinmesinden ibaret olduğunu söylemiştik. Eğer verilere ulaşmamızı sağlayan birden fazla katı link olursa, bir katı link silinse bile diskimiz üzerindeki verilere ulaşmaya devam edebiliyoruz. Katı link yaklaşımı tam olarak bu amaçla kullanılıyor. Ve disk üzerinde fazladan depolama alını işgal etmeden yedeklemek için harika bir çözüm.

Tabii ki katı linkler örneklerimiz üzerinden bizzat teyit ettiğimiz gibi mevcut verilerin üzerine yazılmasına engel olmuyor. Yalnızca ilişkili verilere giden yolun silinmesi ihtimali için yedekleme imkanı tanıyor. Yani eğer üzerine veri yazılması konusunda endişe duyduğunuz verileriniz varsa tabii ki bunları başka bir dizine kopyalayıp tekrar aynı verilerin diskte farklı bloklarda yedeklenmesini sağlamanız gerekiyor.

![backup.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/metin/backup.webp)

Bakın dosyayı kopyaladığımızda, dosya içindeki veriler disk üzerinde başka bir bloğa yazılıp, bu bloğun adresi de yeni inode numarası üzerinden ulaşılabilir oluyor. Bu sayede orijinal dosyanın üzerine veri yazılsa bile bu bloktaki verilere müdahale  edilmemiş oluyor.

Katı link ile standart kopyalanmış dosyaların farkı işte tam olarak bu.

### Klasörler için Katı Link

Standart dosya sistemi yani hiyerarşik dizin yapısı gereği, klasörler için katı link oluşturmayacağımızı da belirtmek istiyorum. İnanmıyorsanız `ln linkler/ linkler-katı` komutuyla yeni bir tane oluşturmayı deneyebiliriz. 

```bash
└─$ ln linkler/ linkler-katı                                                  
ln: linkler/: hard link not allowed for directory
```

Bakın dizinler için hard link yani katı linkler kabul edilmiyormuş.

Umarım sembolik ve katı linklerin farkları ve kullanım biçimleri net bir biçimde anlaşılmıştır. Biraz pratik yaparsanız ve gerekiyorsa bu dersi baştan dikkatlice tekrar dinlerseniz aslında ne kadar kolay olduğunu zaten göreceksiniz.

Ve artık böylelikle dosya işlemleri için bilmemiz gereken temel araçları tanıdığımıza göre bu bölümü sonlandırabiliriz.
