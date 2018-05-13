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
