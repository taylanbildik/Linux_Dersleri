
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
