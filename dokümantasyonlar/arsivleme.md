# Arşivleme ve Sıkıştırma

Bu bölümde dosya arşivleme, sıkıştırma ve sıkıştırılmış olan dosya arşivlerini açma gibi işlemleri ele alacağız. Zaten bu kavramlar sizlere yabancı gelmemeli zira daha önce hangi işletim sistemini kullanmış olursanız olun öyle ya da böyle mutlaka arşiv dosyaları karşınıza çıkmıştır. Genellikle yüksek boyutlu dosyaların sıkıştırılmasında veya veri kaybı olmadan güvenli transfer yapabilmek için ve bunlar gibi pek çok avantaj dolayasıyla arşiv dosyaları ile sıklıkla karşılaşıyoruz, karşılaşmaya da devam edeceğiz. Bu sebeple biz de bu bölüm içerisinde öncelikle dosyaları nasıl arşivleyebileceğimizden daha sonra ise sıkıştırma işlemlerinin nasıl gerçekleştirildiğinden bahsedeceğiz. 

# Arşivlemek

Bir grup dosya veya klasörü tek bir arşiv dosyası içerisinde toparlamaya "arşivleme" diyoruz. Dosya transferlerinde veri kayıplarını önlemek yani veri bütünlüğünü sağlamak ve dosyaları daha düzenli depolamak için arşivlere sıklıkla ihtiyacımız oluyor. Linux üzerinde arşiv işlemleri için grafiksel arayüze sahip araçlar olmasına karşın, biz daha verimli olacağı için arşivlemeyi de komut satırı üzerinden gerçekleştireceğiz. Grafiksel arayüzlü arşiv araçlarının hangileri olduğu ve nasıl kullanılabileceğini kendiniz de kolayca keşfedebilirsiniz. Biz komut satırından arşivleme işlemi için `tar` aracını kullanıyor olacağız. 

# `tar` Komutu

Komut satırı üzerinden arşivler üzerinde çalışmak için kullandığımız `tar` aracının ismi "**T**ape **AR**chive" ifadesinden geliyor. İsmi şu an size garip gelmiş olabilir ancak bu araç manyetik bantlar için arşiv oluşturmak üzere geliştirildiği için bu isim verilmiş. Bu ifadeyi arama motorunun görseller bölümünde arattığınızda manyetik bantların depolandığı pek çok arşiv odası resmi karşınıza çıkacaktır. 

![tape archive](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/arsiv/tape_archive.webp)
[Resim Kaynağı](https://commons.wikimedia.org/wiki/File:Video_tape_archive_%286498650083%29.webp)

Zaten aracımızın ismi de buradan geliyor. Akılda kalıcı olması için isminden bahsetmek istedim ancak isminin nerden geldiği çok da önemli değil. Neticede `tar` aracını kullanarak arşivler oluşturabiliyoruz.

`tar` komutunu kullanarak arşiv oluşturmak için aracın `c` ve `f` seçeneklerini birlikte kullanmamız gerekiyor. `c` seçeneği “**c**reate” yani “oluşturmak” ifadesinin kısaltmasıyken, `f` seçeneği ise “**f**ile” ifadesinin kısaltmasından geliyor. `c` seçeneği sayesinde arşiv dosyası oluşturmak istediğimizi belirtiyorken, `f` seçeneği sayesinde de oluşturulacak arşiv dosyasının ismini belirleyebiliyoruz.

Ben basit örnek olması için çeşitli metin dosyalarını ve resimleri arşive almak istiyorum. Örnek için boş dosyaları da kullanabiliriz, fakat ileride sıkıştırma işlemi de uygulayacağımız için kullanacağımız dosyaların içi dolu olursa sıkıştırma işleminden sonraki boyut farkını gözlemeyebiliriz. 

Ben arşivleme örnekleri sırasında mevcut platformun Github üzerindeki dosyalarını kullanmak istiyorum ancak elbette siz arşivlemek için istediğiniz türde dosyaları kullanabilirsiniz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls linux-dersleri/                                                                                                                                      
 404.html                                   'hakk'$'\302\215''nda.markdown'                   _plugins
'al'$'\302\215''st'$'\302\215''rmalar.webp'   _includes                                        _posts
 assets                                      index.markdown                                   public
 _authors                                   ''$'\302\200''izimler'                            questions.json
 bildirim.html                               kitap.webp                                        README.md
 blog                                        _komut                                           sistem-yonetim.webp
 _config.yml                                 komutlar                                         site
 _egitim                                     kurs.markdown                                   's'$'\302\215''kca-sorulan-sorular.markdown'
 egitim.markdown                             _layouts                                         telefon.webp
 etiketler.markdown                          linux-doc.webp                                    temel-linux.markdown
 feedback.webp                                linux-sistem-yonetimine-giris-egitimi.markdown   temel-linux.webp
 feedback-sended.webp                         logo.svg                                         test.markdown
 Gemfile                                     pagefind                                         video-egitim.webp
 Gemfile.lock                                pagefind.yml
 gizlilik.markdown                           panic.webp
```

Bakın websitesinin tüm dosyaları burada bulunuyor. Ben alt klasörlerdekiler de dahil tüm dosya ve klasörleri tek bir arşiv dosyası içine almak istiyorum. Normalde arşivleme işlemi sonrası arşivlenen dosyaların boyutlarında bir değişiklik olmuyor. Çünkü biz özellikle belirtmediğimiz sürece arşivleme işlemi sırasında sıkıştırma yapılmıyor. Arşivleme işlemi, ilgili dosya ve klasörlerin tek bir arşiv dosyası altında toparlanmasını sağlıyor. 

Söylediğim bu durumu teyit etmek için arşivleme işleminden önce klasörün kapladığı disk boyutunu öğrenmek üzere `du -hs linux-dersleri` şeklinde komutumu girmek istiyorum. Buradaki `du` aracı hedef gösterdiğim klasörün alt dizinleri de dahil toplam boyutunu okunaklı şekilde öğrenmemizi sağlayacak.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ du -hs linux-dersleri/                                                                                                                                  
142M    linux-dersleri/
```

Bakın çıktının sonunda toplam boyut belirtiliyor. Dizin içeriğinin orijinal boyutunu öğrendiğimize göre artık arşivleme işleminden sonra arşiv dosyasının boyutu ile orijinal klasörün boyutunu kıyaslayabiliriz. Şu an yalnızca arşivleme işlemi yapacağımız için zaten herhangi bir sıkıştırma işlemi uygulanmayacak ve arşiv dosyasının boyutu mevcut klasör ile aynı olacak. Hemen arşivleyip bizzat görelim.

Arşivlemek için `tar -cf` komutundan sonra, oluşturulacak arşiv dosyasının ismini ve hedef dosyaları yazmamız gerekiyor. 

```bash
tar -cf linux-dersleri.tar linux-dersleri/
```

Ekranda herhangi bir çıktı belirmese de bu dizindeki tüm dosyalar arkaplanda arşivlendi. Komut girerken, oluşturulacak arşiv dosyasını ismini önce giriyoruz çünkü arşiv dosyasına birden fazla dosyayı dahil edebileceğimiz için `tar` aracı hangi dosyanın arşive eklenip hangisinin arşiv dosyası ismi olarak kullanılacağı konusunda emin olmak istiyor. Bu sebeple her zaman dosya ismi belirtmemizi sağlayan `f` seçeneğinin hemen ardından arşiv dosyasının ismini girmemiz gerekiyor. Yani komutumuzu `tar -c linux-dersleri/ -f linux-dersleri.tar` şeklinde de girebilirdik. Burada önemli olan `f` seçeneğinin hemen ardından oluşturulacak olan arşiv dosyasının ismini belirtmek. Buradaki `c` seçeneği de zaten yeni arşiv oluşturacağımızı belirten bir seçenek. Yeni arşiv dosyası oluşturduğumuz için bu seçeneğin de bulunması gerekiyor. Neticede bu komut sayesinde belirtmiş olduğumuz bu klasörün içindeki tüm dosya ve klasörler mevcut dizinde "***linux-dersleri.tar***" isimli bir arşiv dosyasına alınmış oldu. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls
linux-dersleri  linux-dersleri.tar
```

Belki burada arşiv dosyasının isminin sonuna eklediğim “**.tar**” uzantısının şart olup olmadığı kafanıza takılmıştır. Dosya isminin sonuna eklemiş olduğum “**.tar**” uzantısı, `tar` aracının standart arşiv uzantısı. Bu uzantıyı kullanmak zorunda değilsiniz ancak sistem üzerinde arşiv dosyalarınızı ayırt edici kılmak için mutlaka bu dosya uzantısını da ismine eklemenizi tavsiye ederim. Dosya uzantısını eklemesiniz de arşiv dosyası olarak kullanabilirsiniz ancak daha sonra dosyaları listelediğinizde “**.tar**” uzantısı sayesinde arşiv dosyasını ayırt etmeniz daha kolay olur. Zaten benzeri durumdan, kabuk genişletmeleri bölümünde bahsetmiştik. Düzenli sistem yönetimi için bu tip detaylar önemli. Örneğin sonu “**.tar**” ile biten dosyaları listele diyerek, tüm `tar` arşivlerini bir çırpıda listeleyebileceğinizi düşünün. Tamamdır bence girdiğimiz komutu yeterince açıkladık. 

Şimdi orijinal klasör ile bu arşivin boyutunu kıyaslayabilmek adına `du -hs linux-dersler*` şeklinde komutumuzu girelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ du -hs linux-dersleri*                                                                                                                                  
142M    linux-dersleri
141M    linux-dersleri.tar
```

Bakın dosya ismi genişletmesi sayesinde bu dizinin ve arşiv dosyasının boyutlarını `du` aracı yardımıyla öğrendik. Buradaki çıktıda arşiv dosyası ile orijinal klasörün boyutlarının **neredeyse aynı** olduğuna dikkatinizi çekmek istiyorum. 

Eğer sizin oluşturduğunuz arşiv dosyası tıpkı bende olduğu gibi orijinal dizin veya dosyalardan biraz daha küçükse, bu durumun nedeni arşivleme yapılırken verilerin standart dosya sisteminde olduğu gibi bloklar halinde değil bir arada saklanıyor olmasındır. Örneğin mevcut dosya sisteminde verileri saklamak için kullanılan bloklar 4 kb’lık bloklarsa, biz 1 kb’lık bir dosya oluşturduğumuzda bu dosyayı temsil eden veriler bir bloğa kaydoluyor ve 3 kb’ın boşta durmasına sebep oluyor. 

![disk-block.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/arsiv/disk-block.webp)

Özellikle çok fazla bu gibi dosya olduğunda da bloklarda boşta kalan alan miktarı artabiliyor. İşte `tar` aracı, bu blok yaklaşımı yerine tüm verileri peşi sıra birleştirdiği için arşiv dosyası orijinalinden biraz daha küçük olabiliyor.

![disk-archived-block.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/arsiv/disk-archived-block.webp)

Mevcut konu bağlamından uzaklaşacağımız için ben şimdi bu konunun ayrıntısına girmek istemiyorum, ancak çok kısa bir araştırma ile bu konu hakkında yeterli bilgiye ulaşabilirsiniz. Ayrıca eğitimin devamında, "Disk Yönetimi" başlığı altında da bu konuya tekrar değineceğiz.

Özetleyecek olursak; burada dikkat etmeniz gereken detay, arşivleme yapılırken aslında sıkıştırma yapılmadığı. Arşivleme işleminde mevcut veriler yalnızca bir araya getirilip saklanıyor. Bu sebeple disk blokları üzerinde küçük tasarruf sağlanmış oluyor.

Biz özellikle belirtmediğimiz sürece arşiv dosyalarında sıkıştırma yapılmıyor.

Neticede gördüğünüz gibi arşivleme işlemi yani komut satırı üzerinden yeni arşiv oluşturmak çok kolay. En temel kullanımı ele aldığımıza göre şimdi arşivler hakkında bilmemiz gereken diğer bilgilerden bahsederek devam edebiliriz. 

## Ayrıntılı Çıktı Almak

Arşiv oluştururken arşivleme işlemini konsol üzerinden takip etmek istemediğim için “**v**erbose” seçeneğini komutumla birlikte belirtmemiştim. Eğer tüm arşivleme işlemini konsol üzerinden adım adım takip etmek istiyorsak pek çok komutta olduğu gibi “verbose” özelliği ile detaylı şekilde çıktı almak istediğimizi belirtebiliriz. Ayrıca ben bir önceki örnekte tek bir klasörü arşiv içine ekledim fakat dilerseniz istediğiniz kadar dosyayı arşive alabilirsiniz. Örnek olması için öncelikle `touch {a..z}` komutu ile **a** dan **z** ye kadar isimlendirilmiş dosyalar oluşturalım.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ touch {a..z}

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls
a  b  c  d  e  f  g  h  i  j  k  l  linux-dersleri  linux-dersleri.tar  m  n  o  p  q  r  s  t  u  v  w  x  y  z
```

Şimdi bu dosyaları arşive almak istersek arşive alınacak dosyaların isimlerini belirtmemiz yeterli. Belirtirken de yine kabuk genişletmesini kullanabiliriz. Yani örneğin `tar -cvf alfabe.tar {a..z}` şeklinde komut girecek olursak, a’dan z’ye kadar isimlendirilmiş tüm içeriklerin “***alfabe.tar***” isimli arşiv dosyasın alınması mümkün.  Buradaki “verbose” seçeneğinin kısaltması olan `v` seçeneği sayesinde de zaten tüm arşivleme adımlarını konsol üzerinden takip edebileceğiz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -cvf alfabe.tar {a..z}
a
b
c
d
e
f
g
h
i
j
k
l
m
n
o
p
q
r
s
t
u
v
w
x
y
z

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls
a  alfabe.tar  b  c  d  e  f  g  h  i  j  k  l  linux-dersleri  linux-dersleri.tar  m  n  o  p  q  r  s  t  u  v  w  x  y  z
```

Bakın tüm arşivleme işlemi yani arşive eklenen tüm dosyalar konsola çıktı olarak adım adım bastırıldı. Benzer şekilde klasörü arşive alırken de “verbose” seçeneği ile çıktıları takip edebiliriz. Bunun için `tar -cvf arsiv2.tar linux-dersleri` şeklinde komutumuzu girmemiz yeterli. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -cvf arsiv2.tar linux-dersleri
linux-dersleri/
linux-dersleri/_layouts/
...
linux-dersleri/_layouts/komut.html
..
linux-dersleri/assets/fonts/fontawesome-webfont.woff
.
linux-dersleri/assets/js/search.js
linux-dersleri/logo.svg
linux-dersleri/index.markdown
```

<p class="mavi"><strong>ℹ️ Not:</strong> Çıktılar kısaltılmıştır.</p>

Aldığımız çıktıların en başına gelecek olursak, en başta arşivlemek için hedef gösterdiğimiz dizin olmak üzere sırasıyla tüm alt dizinlerin adım adım arşive eklendiğini buradaki çıktıların görebiliyoruz. Yani arşivleme işleminde klasör düzeni aynen korunuyor. Belki benim örnek için kullandığım klasör gibi olan küçük boyutlu dosyalar için ayrıntılı çıktı özelliği pek önemli olmasa da özellikle büyük boyutlu dosyaların arşivlenmesi sırasında işlemi konsol üzerinden takip edebilmek adına “verbose” seçeneği kolaylık sunabiliyor. Yoksa uzun süren arşivleme işlemlerinde, işlemin duraksadığı yanılgısı oluşabiliyor. 

## Arşiv İçeriğini Görüntülemek

Arşiv dosyasının içeriğini, arşiv dosyasını dışarı çıkarmadan görüntülemek için `tar` komutunun `t` seçeneğini kullanabiliriz. Arşiv dosyasının ismini yazacağımız için ayrıca `f` seçeneğini de kullanmamız gerekiyor yoksa komut başarısız olacak. Hemen denemek için ilk oluşturduğum “***linux-dersler.tar**”* arşiv dosyasını okumak üzere `tar -t linux-dersleri.tar` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -t linux-dersleri.tar
tar: Refusing to read archive contents from terminal (missing -f option?)
tar: Error is not recoverable: exiting now
```

Bakın `-f` seçeneğini komutuma eklemediğim için arşiv dosyasının içeriği okunamadı. Şimdi komutumuza `t` seçeneğine ek olarak `f` seçeneğini de ekleyip tekrar girelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -tf linux-dersleri.tar
linux-dersleri/
linux-dersleri/_layouts/
...
linux-dersleri/_layouts/komut.html
..
linux-dersleri/assets/fonts/fontawesome-webfont.woff
.
linux-dersleri/assets/js/search.js
linux-dersleri/logo.svg
linux-dersleri/index.markdown
```

<p class="mavi"><strong>ℹ️ Not:</strong> Çıktılar kısaltılmıştır.</p>

Bu kez sorunsuzca arşiv dosyasının tüm içeriği sırasıyla hiyerarşik düzende konsola bastırıldı.

Yani bizzat teyit ettiğimiz gibi, `tar` aracının `t` seçeneği sayesinde arşiv dosyasının içeriğini, arşiv dosyasını dışarı çıkarmadan da rahatlıkla listeleyebiliyoruz. Eğer listeleme işlevi için `t` seçeneği benim aklımda kalmaz diyorsanız `t` yerine uzun şekilde `—list` seçeneğini de kullanabilirsiniz. Denemek için `tar —list -f linux-dersleri.tar` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -tf linux-dersleri.tar
linux-dersleri/
linux-dersleri/_layouts/
...
linux-dersleri/_layouts/komut.html
..
linux-dersleri/assets/fonts/fontawesome-webfont.woff
.
linux-dersleri/assets/js/search.js
linux-dersleri/logo.svg
linux-dersleri/index.markdown
```

Standart şekilde listelemenin yanında ayrıca daha ayrıntılı bir listeleme yapmak istersek `t` veya `—list` seçeneğine yani listeleme seçeneğine ek olarak “verbose” seçeneğinin kısaltması olan `v` seçeneği de komutumuza ekleyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -tvf linux-dersleri.tar                                                                                                                             
drwxr-xr-x taylan/taylan     0 2023-07-03 10:29 linux-dersleri/
drwx------ taylan/taylan     0 2023-07-03 10:29 linux-dersleri/_layouts/
-rw-r--r-- taylan/taylan  5103 2023-07-01 14:11 linux-dersleri/_layouts/tutorial.html
..
-rw-r--r-- taylan/taylan     3202 2023-06-08 14:51 linux-dersleri/assets/js/temel-linux.js
-rw-r--r-- taylan/taylan     4505 2023-07-01 14:12 linux-dersleri/assets/js/read.js
-rw-r--r-- taylan/taylan    10814 2023-06-30 12:08 linux-dersleri/assets/js/zooming.min.js
-rw-r--r-- taylan/taylan    36913 2023-06-29 12:28 linux-dersleri/logo.svg
-rw-r--r-- taylan/taylan     1919 2023-06-25 20:16 linux-dersleri/index.markdown
```

Bakın bu kez tıpkı `ls` komutunun `-l` seçeneğini kullandığımızda olduğu gibi, arşiv dosyasının içindeki dosyaların yetkileri, sahibi, grubu ve benzeri diğer tüm özellikleri yani ayrıntılı listesini aldık. Üstelik içeriği görüntülemek için arşiv dosyasını dışarı çıkarmamız da gerekmedi. 

Bu yaklaşım sayesinde spesifik olarak aradığımız bir dosya varsa arşivi dışarı çıkarmadan da konsol üzerinden rahatlıkla kontrol edebiliyoruz. Ben örnek olarak “***index***” isimli bir dosya var mı diye kontrol etmek üzere komutunun sonuna `| grep index` şeklinde eklemek istiyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -tvf linux-dersleri.tar | grep index                                                                                                                
-rw-r--r-- taylan/taylan  1891 2023-06-16 14:53 linux-dersleri/komutlar/index.markdown
-rw-r--r-- taylan/taylan    2265 2023-06-25 18:49 linux-dersleri/blog/index.md
-rw-r--r-- taylan/taylan    84320 2022-02-23 20:24 linux-dersleri/assets/js/searchindex.js
-rw-r--r-- taylan/taylan     1919 2023-06-25 20:16 linux-dersleri/index.markdown
```

Bakın arşiv içindeki “***index***” dosyaları karşımıza geldi. Yani ihtiyacımıza yönelik olarak `grep` aracını `tar` aracı ile birleştirip istediğimiz sonucu elde edebildik. Neticede konsol üzerinden aldığımız çıktılar akış halindeki verilerden ibaret. Bu metinsel verileri daha önce öğrendiğiniz manipülasyon ve filtreleme yöntemleri ile istediğiniz şekilde biçimlendirmek yani ihtiyaçlarınıza yönelik çözümleri bulmak tamamen bizim elimizde.

## Arşivi Dışarı Çıkarmak

Arşivden çıkarma yaparken temelde iki farklı seçeneğe sahibiz. Birincisi arşiv içeriğinin tamamını dışarı çıkarmak, diğer ise spesifik olarak belirttiğimiz bazı dosya ve klasörleri dışarı çıkarmak. Öncelikle tüm dosya içeriğini dışarı çıkarmayı deneyelim. 

### Tüm Dosya İçeriğini Çıkarmak

Çıkarma işlemi için çıkarmak-ayıklamak anlamına gelen “e**x**tract” seçeneğinin kısalması olan `x` seçeneğini kullanıyoruz. Eğer çıkarma işlemi için `tar` aracına yalnızca bu seçeneği verirsek, arşiv dosyasının içeriği mevcut bulunduğumuz dizine çıkarılır. Bu sebeple ben öncelikle arşivi çıkaracağım “***linux***” isminde yeni bir klasör oluşturmak istiyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ mkdir linux
```

Tamamdır şimdi arşiv içeriğini buraya çıkarmak için `tar -xf linux-dersleri.tar -C linux/` şeklinde komutumuzu girelim. Eğer buradaki büyük `-C` ile hedef arşiv içeriğinin çıkarılacağı hedef dizin belirtmezsek, arşiv dosyası mevcut dizine çıkarılacak. Bu sebeple spesifik dizin belirtirken `-C` seçeneğini mutlaka kullanmamız gerekiyor. Ayrıca ben mevcut dizin altında oluşturduğum “***linux***” klasörüne çıkardığım için yalnızca klasörün ismini girdim. Yani göreli yol belirttim. Ancak siz eğer farklı bir dizine çıkaracaksanız, örneğin diyelim ki “***/usr/share/doc***” dizini altında çıkarmak isterseniz doğrudan bu dizinin adresin tam olarak buraya yazabilirsiniz. Zaten buradaki `-C` seçeneği arşivin çıkarılacağı tam konumu belirtmemiz için var. Hedef adresi doğru şekilde yazdığınız sürece ister göreli isterseniz de kesin yolu belirtmeniz fark etmiyor. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -xf linux-dersleri.tar -C linux
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$                                                                                                                     
```

“verbose” yani ayrıntılı çıktı seçeneğini kullanmadığımız için işleme dair konsolumuza herhangi bir çıktı bastırılmadı ama arşivin çıkarılmış olması lazım. Teyit etmek için tüm alt dizinleri de görmek üzere `ls -R` komutu ile özyinelemeli şekilde “***linux***” klasörünün içeriğini kontrol edebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -R linux                                                                                                                                               
linux:
linux-dersleri

linux/linux-dersleri:
 404.html                                   'hakk'$'\302\215''nda.markdown'                   _plugins
'al'$'\302\215''st'$'\302\215''rmalar.webp'   _includes                                        _posts
 assets                                      index.markdown                                   public
 _authors                                   ''$'\302\200''izimler'                            questions.json
 bildirim.html                               kitap.webp                                        README.md
 blog                                        _komut                                           sistem-yonetim.webp
 _config.yml                                 komutlar                                         site
 _egitim                                     kurs.markdown                                   's'$'\302\215''kca-sorulan-sorular.markdown'
 egitim.markdown                             _layouts                                         telefon.webp
 etiketler.markdown                          linux-doc.webp                                    temel-linux.markdown
 feedback.webp                                linux-sistem-yonetimine-giris-egitimi.markdown   temel-linux.webp
 feedback-sended.webp                         logo.svg                                         test.markdown
 Gemfile                                     pagefind                                         video-egitim.webp
 Gemfile.lock                                pagefind.yml
 gizlilik.markdown                           panic.webp

linux/linux-dersleri/assets:
css  fonts  img  js
...
..
.
```

Bakın tüm arşiv içeriğinin hedef dizine yani “***linux***” klasörüne sorunsuzca çıkarıldığını buradan görebiliyoruz. 

İşte arşiv dosyasının tüm içeriğini dışarı çıkarmak bu kadar kolay. Şimdi birkaç ayrıntıdan daha bahsetmek istiyorum. Örneğin arşiv dosyasını spesifik bir hedef dizine çıkarmak için `-C` seçeneğini kullanmak size pek akılda kalıcı ve pratik gelmediyse iki farklı alternatif yaklaşımla da arşiv içeriğini istediğiniz bir dizine çıkarabilirsiniz.

İlk yaklaşım, arşiv dosyasının içeriğini çıkarmak istediğimiz dizine geçiş yapıp çıkarma işlemini bu dizin içinden gerçekleştirmek. `tar` aracı, arşiv içeriğini varsayılan olarak komutun girildiği mevcut dosya konumuna çıkardığı için biz hangi dizin içindeysek arşiv içeriği de bu dizine çıkarılabiliyor. Örneğin ben “***Documents***” klasörü içine çıkarmak istediğim için `cd Documents` komutu ile öncelikle bu dizine geçiş yapıyorum. Şimdi tek yapmam gereken çıkarmak istediğim arşiv dosyasını belirtmek. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ cd ~/Documents/

┌──(taylan㉿linuxdersleri)-[~/Documents]
└─$ tar -xf ~/Downloads/linux-dersleri.tar

┌──(taylan㉿linuxdersleri)-[~/Documents]
└─$ ls -R linux-dersleri/                                                                                                                                     
linux-dersleri/:
 404.html                                   'hakk'$'\302\215''nda.markdown'                   _plugins
'al'$'\302\215''st'$'\302\215''rmalar.webp'   _includes                                        _posts
 assets                                      index.markdown                                   public
 _authors                                   ''$'\302\200''izimler'                            questions.json
 bildirim.html                               kitap.webp                                        README.md
 blog                                        _komut                                           sistem-yonetim.webp
 _config.yml                                 komutlar                                         site
 _egitim                                     kurs.markdown                                   's'$'\302\215''kca-sorulan-sorular.markdown'
 egitim.markdown                             _layouts                                         telefon.webp
 etiketler.markdown                          linux-doc.webp                                    temel-linux.markdown
 feedback.webp                                linux-sistem-yonetimine-giris-egitimi.markdown   temel-linux.webp
 feedback-sended.webp                         logo.svg                                         test.markdown
 Gemfile                                     pagefind                                         video-egitim.webp
 Gemfile.lock                                pagefind.yml
 gizlilik.markdown                           panic.webp

linux-dersleri/assets:
css  fonts  img  js
...
..
.
```

Bakın arşiv dosyasının tüm içeriği mevcut bulunduğu dizine sorunsuzca çıkarılmış. Burada tek yaptığım, çıkarılacak arşiv dosyasının tam dizin adresini eksiksiz şekilde belirtmek. Bunu yaptığımda zaten `tar` aracı `-x` seçeneğinin varsayılan davranışı olarak mevcut bulunduğum dizin altına bu arşiv içeriğini çıkarıyor.

### Spesifik Dosya ve Klasörleri Çıkarmak

Şimdiye kadar örneklerimizde hep arşiv dosyasının tüm içeriğini dışarı çıkarmayı ele aldık. Fakat her zaman tüm içeriği çıkarmak istemeyebiliriz. Yani spesifik olarak istediğimiz bazı dosya veya klasörleri seçip, yalnızca bunların dışarı çıkarılmasını da isteyebiliriz. 

Fakat örneğimizden önce, karıştırmamak için “linux-dersleri” isimli klasörü silelim ki, hangi dosyaları arşivden çıkardığımızı görebilelim. Çünkü spesifik olarak belirteceğimiz dosyalar da yine “***linux-dersleri***” isimli klasör altına çıkartılmış olacak.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ rm -rd linux-dersleri
```

Hangi dosyaları çıkarmak istediğinize karar vermek için öncelikle `t` seçeneği ile arşiv dosyasının içeriğini listeleyebilirsiniz. Ben örnek olması için yalnızca “***index.markdown***” dosyasını, “***css***” dizini altındaki “***style.css***” dosyasını ve “***js***” klasörünün tamamını dışarı çıkarmak istiyorum. Bunun için bu dosyaların arşiv dosyası içerisindeki tam konumunu belirtmem yeterli. Yani örneğin “***index.markdown***” dosyasını çıkarmak için “***linux-dersleri***” klasörünü de belirtmem gerekiyor çünkü dışarı çıkarmak istediğim bu dosya, arşiv içinde tam olarak bu dizin atlında tutuluyor. Benzer şekilde diğer tüm dosyalar da benim arşivimde alt klasörlerde tutuluyorlar.

Örneğin tam dizin adresi belirtmeden `tar -xf linux-dersler.tar index.markdown /js /css/style.css` şeklinde komut girersek başarısız olacağız. Emin olmak için hemen deneyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -xf linux-dersleri.tar index.markdown /js /css/style.css
tar: index.markdown: Not found in archive
tar: /js: Not found in archive
tar: /css/style.css: Not found in archive
tar: Exiting with failure status due to previous errors
```

Bakın belirttiğim dosya ve dizinlerin arşiv içinde bulunamadığına dair uyarı aldım çünkü gerçekten de burada yazdığım şekilde tutulmuyorlar. Tıpkı dizinlerde gezinirken dikkat ettiğimiz gibi bu dosyaların arşiv içindeki dizin adreslerini tam olarak belirtmemiz gerekiyor. İstediğimiz dosyaları çıkarmak için tek tek tüm dosya yollarını her bir dosya için belirtebilir ya da daha önce öğrendiğimiz dosya ismi genişletme karakteri olan yıldız karakterinden de faydalanabiliriz. Çok daha kolay olduğu için ben genişletmeleri kullanmak istiyorum. Denemek için bu kez komutumu `tar -xf linux-dersleri.tar *index.markdown */js *style.css` şeklinde giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -xf linux-dersleri.tar *index.markdown */js */css/style.css                                                                                         
tar: Pattern matching characters used in file names
tar: Use --wildcards to enable pattern matching, or --no-wildcards to suppress this warning
tar: *index.markdown: Not found in archive
tar: Pattern matching characters used in file names
tar: Use --wildcards to enable pattern matching, or --no-wildcards to suppress this warning
tar: */js: Not found in archive
tar: Pattern matching characters used in file names
tar: Use --wildcards to enable pattern matching, or --no-wildcards to suppress this warning
tar: */css/style.css: Not found in archive
tar: Exiting with failure status due to previous errors
```

Bakın bu kez de burada argüman olarak yazdığımız dosya isimlerinde örüntü işleme karakteri kullandığımızı ama `—wildcards` seçeneği ile bu karakterlerin geçerli olmasını sağlayacak **wildcards** özelliğini aktifleştirmediğimizi belirten bir çıktı aldık. Yani dosya ismi genişletmesi için yıldız joker karakterini kullanacaksak komutumuza `—wildcards` seçeneğini de eklememiz gerekiyormuş. Hatırlıyorsanız dosya ismi genişletmesi için kullandığımız bu karakterlere “**wildcards**” denildiğinden de özellikle bahsetmiştik. Şimdi birlikte deneyimlediğimiz gibi hata çıktısında geçen **wildcards** ifadesinin ne demek olduğunu bildiğimiz için sorunu çözebiliyoruz. Ben bu sebeple eğitimdeki tüm anlatımların birbiri ile bağlantılı olduğu ve çok dikkatlice takip etmeniz gerektiğini söylüyorum. 

Her neyse şimdi komutumuzu tekrar çağırıp bu seçeneğini de ekleyelim.

```bash
tar --wildcards -xf linux-dersleri.tar *index.html */js *style.css
```

Bakın herhangi bir hata almadık. Yani komutumuz sorunsuzca çalışmış olmalı.

Komutumun ardından tam olarak istediğim dosya ve klasörlerin çıktığını teyit edebilmek için klasör içeriğini özyinelemeli olarak bastırmak üzere ls -R linux-dersleri şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -R linux-dersleri                                                                                                                                    
linux-dersleri:
assets  index.markdown  komutlar

linux-dersleri/assets:
css  js

linux-dersleri/assets/css:
style.css

linux-dersleri/assets/js:
bootstrap.min.js            jquery1.min.js            read.js    searchindex.js  temel-linux.js
form-submission-handler.js  jquery-3.3.1.slim.min.js  script.js  search.js       zooming.min.js

linux-dersleri/komutlar:
index.markdown
```

Bakın tüm arşiv dosyasının içeriği değil, yalnızca benim belirtmiş olduğum dosya ve klasörler dışarı çıkarılmış. 

Eğitimi buraya kadar atlamadan adım adım takip eden herkesin buraya girmiş olduğum komutu tam olarak anladığını düşünüyorum. Ama yine de çok kısaca açıklamam gerekirse; “***index.markdown***” ve “***style.css***” dosyalarının birer tane olduğunu bildiğim için başlarında yalnızca yıldız dosya genişletme karakteri ile hangi alt dizinde olduklarını belirtmeden bu dosyaların bulunmasını sağladım. Yani buradaki yıldız joker karakteri bu dosyaların dizin adreslerine otomatik olarak genişletildi. Bunun dışında “***js***” klasörünün tamamını dışarı çıkarmak istediğim için `*/js` komutu ile bu klasör ismiyle eşleşen dizinin de otomatik olarak bulunup çıkarılmasını sağlamış oldum.

Sizler de bu şekilde spesifik olarak dışarı çıkarılmasını istediğiniz içerikleri belirtebilirsiniz. Dışarı çıkarma işleminde dikkat etmeniz gereken tek husus, çıkarmak istediğiniz dosyanın veya dizinin arşiv içindeki tam adresini belirtmeniz. 

Arşivleme konusunda son olarak mevcut arşiv içeriğine nasıl yeni dosya ekleyip çıkarabileceğimizden bahsetmek istiyorum. Daha sonra sıkıştırma işlemlerinden bahsedebiliriz.

## Arşive Yeni Dosya Eklemek

Arşive yeni dosya eklemek için öncelikle yeni bir dosya oluşturalım. Basit şekilde içeriği dolu bir dosya oluşturmak için `echo “deneme” > metin.txt` şeklinde komutumu girebilirim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ echo "deneme" > metin.txt
```

Dosyamı oluşturdum. Şimdi bu dosyayı mevcut arşive eklemek için `r` seçeneğini ya da uzun haliyle `—append` seçeneğini kullanabiliriz. Ben daha akılda kalıcı olduğu için `—append` yani “ekleme” seçeneğini tercih ediyorum. Dosyamı eklemek için komutumu `tar —append -f linux-dersleri.tar metin.txt` şeklinde giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar --append -f linux-dersleri.tar metin.txt 

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -tf linux-dersleri.tar | grep metin.txt
metin.txt
```

`grep` ile filtreleyerek bizzat teyit ettiğimiz gibi yeni eklediğim dosya burada, yani yeni dosya eklemeyi başardık. Dilerseniz benzer şekilde klasör de ekleyebilirsiniz.

Bu şekilde bir veya birden fazla dosya ve klasörü mevcut bir arşiv içerisine istediğiniz zaman ekleyebiliyoruz. Tek yapmamız gereken, eklemek istediğimi dosya veya dizinin tam adresini belirtmek. 

## Arşivden Dosya Silmek

`tar` aracıyla mevcut arşivdeki bir dosya veya klasörü silmek için `—delete` seçeneğini kullanıyoruz. Bu seçeneğin kısaltması yok, zaten bu şekilde daha akılda kalıcı bir seçenek.

Ben arşive en son eklemiş olduğum “***metin.txt***” dosyasını silmek istediğim için komutumu `tar -f linux-dersleri.tar —delete metin.txt` şeklinde yazıyorum. Eğer istersek `tar —delete -f linux-dersleri.tar metin.txt` komutuyla da silebiliriz. Silme işlemi için de tam olarak silinecek içeriğin konumunu belirtmemiz gerekiyor. Ben yalnızca üst dizindeki “***metin.txt***” dosyasını silmek istediğim için buraya yalnızca `metin.txt` şeklinde yazıyorum ve komutumu onaylıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -f linux-dersleri.tar --delete metin.txt
```

Tamamdır, bu dosyanın arşivden silinmiş olması gerekiyor. Şimdi tekrar `tar -tf linux-dersleri.tar | grep “metin.txt”` komutu ile arşiv dosyasının içeriğini `grep` ile filtreleyelim.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -tf linux-dersleri.tar | grep metin.txt

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$
```

Gördüğünüz gibi `grep` aracı “**metin.txt**” ile eşleşme bulamadı yani bu çıktılardan “***metin.txt***” dosyasının silindiğini görebiliyoruz. Normalde burada listeleniyordu. Ben yalnızca dosya silmeyi ele aldım ama aynı şekilde istediğiniz dosya ve klasörleri silmekte özgürsünüz. 

Bence tüm işlemler son derece kolay. 

Neticede arşivleme hakkında bilmemiz gereken tüm temel pratiklerden bahsetmiş olduk. Yani artık konsol üzerinden kendi arşivlerinizi oluşturup içeriğini dilediğiniz gibi düzenleyerek gerektiğinde arşiv içeriğini dışarı aktarabilecek bilgiye sahipsiniz. Tek ihtiyacınız biraz pratik yapmak. Pratik yaptıkça zaten ne kadar kolay olduğunu bizzat deneyimleyeceksiniz.

Arşivleme işlemi tek başına son derece kullanışlı olsa da, sıkıştırma işleminin sağladığı avantajlar dolayısıyla çoğu zaman arşivleri sıkıştırmaya da ihtiyacımız oluyor. Bu sebeple anlatımlarımıza sıkıştırma işlemlerinden bahsederek devam etsek hiç fena olmaz.

# Sıkıştırma

Çeşitli teknikler uygulanarak verilerin geri döndürülebilir ve depolama alanından tasarruf sağlayacak biçimce sıkıştırılması işlemine genel olarak “sıkıştırma” deniyor. Tabii ki sıkıştırma işlemi sonrasında mevcut depolama alanından tasarruf edebilmenin yanı sıra, sıkıştırılmış dosyalar taşınırken bellek ve ağ trafiğinde daha az yük oluşturuyor. Dolayısıyla sıkıştırma işlemi söz konusu sistem yönetimi olduğunda pek çok yönden oldukça yararlı bir çözüm. Üstelik sıkıştırmadan yararlanmak için, sıkıştırma işleminin teknik olarak nasıl çalıştığını bilmemiz gerekmiyor. Zaten burada tek bir sıkıştırma algoritmasından da bahsetmeyeceğimiz için teknik ayrıntıların içinden çıkamayız. 

Pek çok alternatif var dedik, tabii ki her birinin de kendi içinde avantaj ve dezavantajları olduğu için hangi sıkıştırma yönetimini kullanacağınız tamamen ihtiyaçlarınızın ne olduğuyla ilgili. Biz sıkıştırma işlemini anlayabilmek ve tanıyabilmek için öncelikle Linux üzerinde en yaygın kullanıma sahip olan gzip ve bzip2 sıkıştırma algoritmalarından bahsederek başlayabiliriz.

Sıkıştırma algoritmalarını dosyalarımız üzerinde kullanabilmemiz için algoritmaların isimleriyle temsil edilen çeşitli araçlar bulunuyor. Örneğin `gzip` algoritmasını kullanmak için `gzip` isimli aracı kullanıyorken `bzip2` algoritması için de `bzip2` isimli aracı kullanabiliyoruz.

# `gzip`

`gzip` aracı nerdeyse hemen her Linux dağıtımında **gzip** sıkıştırma algoritmasından faydalanabilmemiz için varsayılan olarak yüklü geliyor. Araç sayesinde mevcut verileri sıkıştırıp, sıkıştırılmış verilerimizi de orijinal boyutlarına geri dönüştürebiliyoruz.

Ben hemen basit bir örnek olması için daha önce oluşturduğum “***linux-dersleri.tar***” isimli arşiv dosyamı **gzip** ile sıkıştırmak istiyorum.

Öncelikle arşiv dosyasının sıkıştırılmadan önceki boyutunu öğrenmek için `ls -sh linux-dersleri.tar` komutunu girelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -sh linux-dersleri.tar 
141M linux-dersleri.tar
```

Şimdi sıkıştırıp dosya boyutundaki değişimi kıyaslayalım. Dosyaları sıkıştırmak için tek yapmamız gereken `gzip` komutundan sonra sıkıştırılmasını istediğimiz dosyaları argüman olarak belirtmek. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ gzip linux-dersleri.tar 

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$
```

Tamamdır sıkıştırma işleminin tamamlanmış olması gerekiyor. Hemen `ls -sh` komutu ile mevcut dizini listeleyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -sh
total 266M
   0 a              0 b     0 e     0 h     0 k      4.0K linux-dersleri         4.0K metin.txt     0 p     0 s     0 v     0 y
 20K alfabe.tar     0 c     0 f     0 i     0 l      125M linux-dersleri.tar.gz     0 n             0 q     0 t     0 w     0 z
141M arsiv2.tar     0 d     0 g     0 j  4.0K linux     0 m                         0 o             0 r     0 u     0 x
```

Bakın buradaki çıktılardan, “***linux-dersleri.tar***” isimli arşiv dosyamın “***linux-dersleri.tar.gz***” olarak değiştiğini ve önceki boyutu ile kıyasladığımda bir miktar sıkıştırıldığını da teyit edebiliyorum. Önceki boyutu 141M, sıkıştırıldıktan sonraki boyutu ise 125M. Neticede gördüğünüz gibi arşiv dosyamı `gzip` aracı ile sıkıştırmış oldum.

Bu arada yanlış anlaşılma olmasın yalnızca arşiv dosyası sıkıştırmak zorunda değiliz. İstediğimiz türdeki bir veya birden fazla dosyayı sıkıştırmamız da mümkün. Mesela örnek olarak ben markdown dosyasını sıkıştırmak istiyorum. Daha önce dışarı çıkardığım “***linux-dersleri***” klasörü içinde “***index.markdown***” dosyası vardı. Bu dizine geçiş yapıp dosya boyutunu öğrenmek için `ls -sh` şeklinde komut girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads/linux-dersleri]
└─$ ls -sh
total 12K
4.0K assets  32K index.markdown  4.0K komutlar
```

Bakın “***index.markdown***” dosyası 32K gözüküyor. Bu dosyanın sıkıştırılmadan önceki boyutu. Şimdi dosyayı sıkıştırmak üzere `gzip index.markdown` komutunu girebiliriz. Fakat komutumu bu şekilde girmeden önce, sıkıştırma işleminden sonra orijinal dosyayı nasıl koruyabileceğimize de çok kısaca değinmek istiyorum.

## Orijinal Dosyayı Korumak

Bir önceki örneğimizde arşiv dosyasını sıkıştırırken sizin de bizzat şahit olduğunu gibi sıkıştırma işlemi doğrudan orijinal dosyanın üzerinde uygulanmıştı. Bu sebeple sıkıştırma işlemi sonucunda geriye yalnızca sıkıştırılmış dosya kalıyor. Ancak `gzip` aracının dosyayı sıkıştırırken orijinal dosyayı kullanıyor olmasını kimi zaman istemeyebiliriz. Ben hem orijinal dosya korunsun hem de sıkıştırılmış bir versiyonu oluşturulsun istediğim için `-k` seçeneği ile `keep` yani orijinal dosyanın “korunması” özelliğini de aktifleştirmek istiyorum.

Bunun için komutumu `gzip -k index.markdown` şeklinde giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads/linux-dersleri]
└─$ ls -sh                                                                                                                                                  
total 44K
4.0K assets   32K index.markdown  4.0K index.markdown.gz  4.0K komutlar
```

Bakın orijinal dosya ve sıkıştırılmış versiyonu listelenmiş oldu. Yani `keep` seçeneği sayesinde orijinal dosyanın korunurken, sıkıştırılmış dosyanın sonuna da **.gz** uzantısı getirildiğiniz görebiliyoruz. Ayrıca bakın dosyamın boyutu 32 K’dan 4 K’a kadar sıkıştırılarak düşürülmüş. İşte sizler de tıpkı bu iki örneğimizde olduğu şekilde istediğiniz türdeki dosyaları sıkıştırabilirsiniz. 

Ayrıca ben örnekleri hep tek bir dosya üzerinden gösterdim ancak sizler aynı anda birden fazla dosya ismini belirterek ayrı ayrı her birinin sıkıştırılmalarını da sağlayabilirsiniz. Sıkıştırma işlemi bu şekilde.

## Sıkıştırılmış gzip Dosyaların Açılması

Sıkıştırmış olduğumuz dosyaları orijinal boyutuna geri çevirmek için de tek yapmamız gereken “**d**ecompress” ifadesinin kısalması olan `-d` seçeneğini kullanmak. 

Örnek olması için ben daha önce sıkıştırmış olduğum arşiv dosyasını eski haline getirmek istiyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -sh                                                                                                                                                  
total 266M
   0 a              0 b     0 e     0 h     0 k      4.0K linux-dersleri         4.0K metin.txt     0 p     0 s     0 v     0 y
 20K alfabe.tar     0 c     0 f     0 i     0 l      125M linux-dersleri.tar.gz     0 n             0 q     0 t     0 w     0 z
141M arsiv2.tar     0 d     0 g     0 j  4.0K linux     0 m                         0 o             0 r     0 u     0 x
```

Bakın isminin sonunda **.gz** uzantısı bulunan arşiv dosyam burada bulunuyor ve sıkıştırılmış boyutu da burada açıkça yazıyor. Bu dosyayı orijinal boyutuna dönüştürmek için `gzip -d linux-dersleri.tar.gz` şeklinde komutumuzu girebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ gzip -d linux-dersleri.tar.gz
```

Sıkıştırılmış olan verilerin açılması yani orijinal haline dönüştürülmesi sıkıştırma işleminden çok daha kısa sürdüğü için işlem anında tamamlanacaktır. Şimdi teyit etmek için `ls -sh` ile dizinimizi bir daha listeleyelim.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -sh                                                                                                                                                  
total 281M
   0 a              0 b     0 e     0 h     0 k      4.0K linux-dersleri      4.0K metin.txt     0 p     0 s     0 v     0 y
 20K alfabe.tar     0 c     0 f     0 i     0 l      141M linux-dersleri.tar     0 n             0 q     0 t     0 w     0 z
141M arsiv2.tar     0 d     0 g     0 j  4.0K linux     0 m                      0 o             0 r     0 u     0 x
```

Bakın sıkıştırmış olduğum arşiv dosyası orijinal boyutuna geri dönmüş ve gördüğünüz gibi **gzip** algoritması ile sıkıştırıldığını temsil eden **.gz** uzantısı da kaldırılmış. Yani aslında sıkıştırmış olduğumuz dosyayı `-d` seçeneği sayesinde sorunsuzca eski haline getirmiş olduk.

Ben örneklerimde kullanmadım ancak `gzip` aracını kullanırken tüm işlemler sırsında işlemlerin detaylarını takip etmek için isterseniz **verbose** seçeneğinin kısalması olan `v` seçeneğini de komutunuza ekleyebilirsiniz. Bir sonraki örneğimizde verbose seçeneğini de kullanabiliriz.

Bir sonraki örneğimizi de özyinele özelliğinden bahsetmek için uygulayabiliriz mesela. Fakat özyineleme yaklaşımından önce sıkıştırma işlemlerinin her bir dosyada ayrı ayrı uygulandığına vurgu yapmamız gerekiyor. Biz `gzip` aracına sıkıştırması için aynı anda birden fazla dosyayı argüman olarak verdiğimizde her bir dosya ayrı ayrı sıkıştırılıyor.

Denemek için mevcut bulunduğum dizindeki a’dan z’ye kadar olan tüm dosyaları sıkıştırabiliriz. Öncelikle klasör içeriğini listeleyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -sh                                                                                                                                                  
total 281M
   0 a              0 b     0 e     0 h     0 k      4.0K linux-dersleri      4.0K metin.txt     0 p     0 s     0 v     0 y
 20K alfabe.tar     0 c     0 f     0 i     0 l      141M linux-dersleri.tar     0 n             0 q     0 t     0 w     0 z
141M arsiv2.tar     0 d     0 g     0 j  4.0K linux     0 m                      0 o             0 r     0 u     0 x
```

Şimdi bu dosyaların hepsini arşivlemek üzere `gzip {a..z}` şeklinde komut girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ gzip {a..z}                                                                                                                                             

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -sh                                                                                                                                                  
total 282M
4.0K a.gz        4.0K b.gz  4.0K e.gz  4.0K h.gz  4.0K k.gz   4.0K linux-dersleri      4.0K m.gz  4.0K p.gz  4.0K s.gz  4.0K v.gz  4.0K y.gz
 20K alfabe.tar  4.0K c.gz  4.0K f.gz  4.0K i.gz  4.0K l.gz   141M linux-dersleri.tar  4.0K n.gz  4.0K q.gz  4.0K t.gz  4.0K w.gz  4.0K z.gz
141M arsiv2.tar  4.0K d.gz  4.0K g.gz  4.0K j.gz  4.0K linux  4.0K metin.txt           4.0K o.gz  4.0K r.gz  4.0K u.gz  4.0K x.gz
```

Bakın her dosya ayrı ayrı sıkıştırılmış. Bu ayrı ayrı sıkıştırma işlemi dolayısıyla zaten bizler doğrudan bir klasörü sıkıştırmak üzere komut giremiyoruz. Çünkü klasörler kendi içlerinde birden fazla dosya ve alt klasörü barındırdığı için tek bir klasörün sıkıştırılması mümkün olmuyor. Klasörleri sıkıştırmak istiyorsak öncelikle ilgili klasörü arşiv dosyası formuna getirip, bu tekil dosyayı **gzip** gibi bir algoritma ile sıkıştırmamız mümkün oluyor. 

Klasörlerin doğrudan sıkıştırılamadığını teyit etmek için `mkdir test` komutu ile yeni bir klasör oluşturup `mv {a..z}.gz test` komutu ile dosyaları bu klasör altına taşıyalım ve `gzip test` komutu ile klasörü sıkıştırmayı deneyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ mkdir test                                                                                                                                              

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ mv {a..z}.gz test                                                                                                                                       

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ gzip test                                                                                                                                               
gzip: test is a directory -- ignored
```

Bakın `gzip` aracı argüman olarak verdiğimiz ifadenin dizin olması sebebiyle bize hata döndürdü. Yani bizzat teyit ettiğimiz gibi klasörler üzerinde doğrudan sıkıştırma işlemi yapamıyoruz. Eğer bir klasörü sıkıştırmak istiyorsanız öncelikle o klasörü bir arşiv dosyasına dönüştürmeniz gerekiyor.

## Özyineleme

Fakat amacınız doğrudan bir klasörü sıkıştırmak yerine, klasör içindeki alt dizinler de dahil tüm dosyası ayrı ayrı sıkıştırmaksa bunu “recursive” yani “özyineleme” seçeneği ile gerçekleştirebilirsiniz.

Özyineleme ifadesinin ne anlama geldiğiniz zaten birçok kez deneyimledik. Şimdi bir klasör içeriğini özyinelemeli olarak sıkıştırmayı deneyebiliriz. `gzip` aracı özyineleme özelliği için “**r**ecursive” ifadesinin kısaltmasından gelen `r` seçeneğini kullanmamızı istiyor. Ben daha önce birkaç dosya ve klasörünü dışarı çıkardığım “***linux-dersleri***” klasörü içindeki tüm dosyaları özyinelemeli olarak sıkıştırmak istiyorum. Sıkıştırma işleminden önce dizin içeriğini özyinelemeli olarak bastırmak üzere `ls -R linux-dersleri` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -R linux-dersleri                                                                                                                                    
linux-dersleri:
assets  index.markdown  index.markdown.gz  komutlar

linux-dersleri/assets:
css  js

linux-dersleri/assets/css:
style.css

linux-dersleri/assets/js:
bootstrap.min.js            jquery1.min.js            read.js    searchindex.js  temel-linux.js
form-submission-handler.js  jquery-3.3.1.slim.min.js  script.js  search.js       zooming.min.js

linux-dersleri/komutlar:
index.markdown
```

Bakın alt dizinlerde de dahil birden çok dosya bulunuyor. Şimdi bunları ayrı ayrı sıkıştırmak için `gzip -r linux-dersleri/` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ gzip -r linux-dersleri                                                                                                                                  

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -R linux-dersleri                                                                                                                                    
linux-dersleri:
assets  index.markdown.gz  komutlar

linux-dersleri/assets:
css  js

linux-dersleri/assets/css:
style.css.gz

linux-dersleri/assets/js:
bootstrap.min.js.gz            jquery1.min.js.gz            read.js.gz    searchindex.js.gz  temel-linux.js.gz
form-submission-handler.js.gz  jquery-3.3.1.slim.min.js.gz  script.js.gz  search.js.gz       zooming.min.js.gz

linux-dersleri/komutlar:
index.markdown.gz
```

Bakın alt dizindekiler de dahil tüm dosyalar ayrı ayrı sıkıştırılmışlar.

Bu sıkıştırılan dosyaları tekrar orijinal hallerine çevirmek için de yine özyineleme seçeneğiyle “decompress” seçeneğini birlikte kullanabiliriz. Hatta işlemlerin detaylarını görmek için `v` seçeneğini de ekleyebiliriz. Ben `gzip -vdr linux-dersleri/` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ gzip -vdr linux-dersleri/
linux-dersleri/komutlar/index.markdown.gz:       49.6% -- replaced with linux-dersleri/komutlar/index.markdown
linux-dersleri/index.markdown.gz:        96.5% -- replaced with linux-dersleri/index.markdown
linux-dersleri/assets/css/style.css.gz:  76.2% -- replaced with linux-dersleri/assets/css/style.css
linux-dersleri/assets/js/bootstrap.min.js.gz:    73.5% -- replaced with linux-dersleri/assets/js/bootstrap.min.js
linux-dersleri/assets/js/read.js.gz:     74.2% -- replaced with linux-dersleri/assets/js/read.js
linux-dersleri/assets/js/search.js.gz:   77.0% -- replaced with linux-dersleri/assets/js/search.js
linux-dersleri/assets/js/script.js.gz:   67.9% -- replaced with linux-dersleri/assets/js/script.js
linux-dersleri/assets/js/zooming.min.js.gz:      68.5% -- replaced with linux-dersleri/assets/js/zooming.min.js
linux-dersleri/assets/js/temel-linux.js.gz:      58.7% -- replaced with linux-dersleri/assets/js/temel-linux.js
linux-dersleri/assets/js/jquery-3.3.1.slim.min.js.gz:    65.7% -- replaced with linux-dersleri/assets/js/jquery-3.3.1.slim.min.js
linux-dersleri/assets/js/jquery1.min.js.gz:      66.0% -- replaced with linux-dersleri/assets/js/jquery1.min.js
linux-dersleri/assets/js/searchindex.js.gz:      65.1% -- replaced with linux-dersleri/assets/js/searchindex.js
linux-dersleri/assets/js/form-submission-handler.js.gz:  64.4% -- replaced with linux-dersleri/assets/js/form-submission-handler.js
```

Bakın sıkıştırılma oranlarından orijinal boyuta dönüşümlerine dair ayrıntılı çıktımızı almış olduk. Bu ayrıntılar komutumuza eklediğimiz “verbose” seçeneği sayesinde bastırıldı. Sıkıştırma işlemi sırasında da aynı şekilde sıkıştırma oranlarını takip etmek için verbose seçeneğini komutunuza ekleyebilirsiniz.

Dosyalarımın sorunsuzca eski hallerine çevrildiklerini buradaki çıktılardan görebiliyorum ama yine de emin olmak için tekrar `ls -R linux-dersleri` komutunu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -R linux-dersleri                                                                                                                                    
linux-dersleri:
assets  index.markdown  komutlar

linux-dersleri/assets:
css  js

linux-dersleri/assets/css:
style.css

linux-dersleri/assets/js:
bootstrap.min.js            jquery1.min.js            read.js    searchindex.js  temel-linux.js
form-submission-handler.js  jquery-3.3.1.slim.min.js  script.js  search.js       zooming.min.js

linux-dersleri/komutlar:
index.markdown
```

Bakın tüm dosyalar sıkıştırılmadan önceki hallerine geri dönmüşler. 

Benim temel sıkıştırma ve sıkıştırılmış içerikleri orijinal boyutuna geri çevirmeyle yani “dekompres” işlemiyle ilgili bahsetmek istediklerim bu kadar. Buradan öğrendiklerinizle dosyalarınızı **gzip** algoritmasıyla kolayca sıkıştırabilirsiniz.

Yine de temel kullanım dışında sıkıştırma işlemiyle ilgili bahsetmek istediğim birkaç ek kullanım detayı daha bulunuyor. Örneğin sıkıştırma seviyesini özellikle belirtebiliriz. 

## Sıkıştırma Seviyeleri

Sıkıştırma ve eski haline getirmeyi öğrendik. Ancak sıkıştırma seviyesi kavramından henüz bahsetmedik. Biz aksini belirtmediğimiz için şimdiye kadar ele aldığımız örneklerde hep standart olan 6. kademe sıkıştırma uygulandı. Normalde **gzip** üzerinde 1’den 9’a kadar sıkıştırma seviyeleri bulunuyor. İlk kademe en az sıkıştırmayı uygulayıp işlemi hızlıca bitiyorken, seviye yükseldikçe sıkıştırma oranı artarken işlem süresi de uzuyor. Sıkıştırılmış dosyalar açılırken ise tersi şekilde, çok sıkıştırılan daha çabuk, az sıkıştırılan daha yavaş olacak şekilde açılıyor.

Peki bu sıkıştırma seviyelerini nasıl belirtebiliriz ? 

Çok basit, tek yapmamız gereken `gzip` komutunun ardından tire işaretinin peşine istediğimiz sıkıştırma seviyesini belirtmek. 

Örneğin standart bir sıkıştırma yerine maksimum sıkıştırma oranını istiyorsanız `gzip -9 sıkıştırılacak_dosya` şeklinde komut girmeniz gerekiyor. Tersi şekilde yani örneğin hızlı ama az sıkıştırılmasını istiyorsak `gzip -1 sıkıştırılacak_dosya` şeklinde komutumuzu girebiliriz. 

Ben şimdi sıfırdan standart, düşük ve en yüksek sıkıştırma seviyelerin hepsini deneyip süre ve sıkıştırma oranlarını test etmek istiyorum. Ancak baştan belirteyim, sıkıştıracağım dosyanın boyutu çok büyük olmadığı için süre ve sıkıştırma oranı bakımından çok büyük farklılıklar görmeyeceğiz. Anlatımın devamında daha kapsamlı bir testten bahsedeceğim biz yine de kendimiz için ufak bir test gerçekleştirelim.

Süreyi ölçmek için `time` komutunu kullanacağım. `time` komutu sayesine, `time` komutunun ardından belirtilmiş olan komutun çalışma süresi hakkında bilgi edinebiliyoruz. Bu sayede işlemlerin ne kadar sürdüğünü konsol üzerinden öğrenebileceğiz. Ayrıca diskin okuma yazma hızından etkilenmemesi için bu sıkıştırılmış dosyaları geçici dizin olan ***/tmp*** dizinine yönlendiriyor olacağım. Bu sayede daha şeffaf bir zaman testi sağlayabiliriz. Öncelikle sıkıştırmak istediğim ***linux-dersleri.tar*** dosyasını ***/tmp*** dizinine kopyalamak istiyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ cp linux-dersleri.tar /tmp/

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ cd /tmp/
```

Sıkıştırılmış dosyaların bizim istediğimiz bir isimde kaydolması için `gzip` aracının `c` seçeneğini kullanabiliriz. Buradaki `c` seçeneği, sıkıştırılmış verilerin standart çıktıya yönlendirilmesi sağlıyor. Biz de standart çıktıyı istediğimiz bir dosya ismiyle kaydedebiliriz. 

Ayrıca işlem süresini öğrenmek için `time` aracını kullanacağım fakat kafanız karışmasın, bu araç `gzip` aracını bir parçası değil. Yalnızca zamanı ölçebilmemiz konusunda bize yardımcı olacak.

Ben olarak standart seviye olan 6. seviyeyi test etmek üzere:

`time gzip -c linux-dersleri.tar > standart.tar.gz` 

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ time gzip -c linux-dersleri.tar > standart.tar.gz

real    0m5.570s
user    0m4.867s
sys     0m0.699s
```

Bakın işlemin ne kadar sürdüğü burada yazıyor. 

Şimdi en hızlı ama en az sıkıştırmayı uygulayan 1. seviyeyi test etmek üzere:

`time gzip -1 -c linux-dersleri.tar > en-az.tar.gz` 

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ time gzip -1 -c linux-dersleri.tar > en-az.tar.gz

real    0m5.210s
user    0m4.245s
sys     0m0.962s
```

Son olarak da **gzip** algoritması için en yüksek sıkıştırmayı uygulayan ama yavaş olan -9 seviyeyi deneyelim.  

`time gzip -9 -c linux-dersleri.tar.gz > en-cok.tar.gz`

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ time gzip -9 -c linux-dersleri.tar > en-cok.tar.gz

real    0m5.884s
user    0m5.886s
sys     0m0.000s
```

Evet bakın en nihayetinde işlemlerin sonunda hangisinin ne kadar süre tuttuğunu görebiliyoruz. Buradaki rakamlar sıkıştırılan dosyaya ve sistemin özelliklerine göre değişkenlik gösterse de bize çok kabaca fikir veriyor. Dosya boyutu çok küçük olduğu için istatistikler net değil ancak kıyaslayabilmek için “user” olarak geçen buradaki zamana yani işlemin gerçekleşmesi için harcanan “cpu” zamanına bakabiliriz. En yüksek sıkıştırma seviyesi yani en fazla sıkıştırma uygulayan seviye en uzun sürede oluşturulmuşken, en düşük seviye en hızlı tamamlanan işlem olmuş. Buradaki standart seviye olan 6 seviye **gzip** algoritmasının en optimum seviyesi olduğu için hem sıkıştırma hem de zaman bakımından ortama olarak gayet ideal bir oran gösteriyor. Özellikle dosyanın boyutu küçük olduğu için standart sıkıştırma oranı da süre bakımından en düşük sıkıştırma yapan 1 oranı ile de yarışır düzeyde hızlı. Yani buradaki çıktılar kafanızı karıştırmasın. Az sıkıştırma işlemi normalde daha kısa sürerken, sıkıştırma oranı arttıkça işlem süresi de uzuyor. Elbette bu rakamlar sıkıştırılan dosyaların boyutları ve türlerine ve testin yapıldığı sistem özelliklerine göre değişkenlik gösterebilir ancak sizde de aşağı yukarı tıpkı bende olduğu gibi bir fark oluşacaktır.

Süreler hakkında konuştuk. Şimdi bir de sıkıştırma oranlarına göz atmak için `gzip` aracının sıkıştırma oran istatistiklerini sunan `l` seçeneğini kullanalım. Ben tüm dosyaları tek seferde kontrol etmek üzere `gzip -l *.gz` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ gzip -l *.gz
         compressed        uncompressed  ratio uncompressed_name
          131630297           147271680  10.6% en-az.tar
          130785192           147271680  11.2% en-cok.tar
          130837086           147271680  11.2% standart.tar
          393252575           441815040  11.0% (totals)
```

Evet bakın hem ayrı ayrı hem de toplam sıkıştırılma istatistiklerini aldık. Tabloya bakacak olursak hızlı olan seviyede en az sıkıştırma yapılmışken, yavaş olan 9 seviyede en yüksek sıkıştırma miktarı uygulanmış olduğunu görebiliyoruz. Standart seviye ile en çok sıkıştırmayı uygulayan seviye oran bakımından aynı gözükse de buradaki ayrıntılı boyuttan en çok sıkıştırma sunan seviyenin biraz daha küçük olduğunu görebiliyoruz.

Başta da belirttiğim gibi aslında uyguladığımız bu test çok basit ve yetersiz bir test ancak yine de sıkıştırma oranları ve süresi hakkında aşağı yukarı bize fikir verebilir. Örneğin süre testini sıkıştırılmış dosyaları açma işlemleri için de gözlemleyebiliriz ancak dosya boyutu küçük olduğu için dikkate değer bir fark oluşturmayacaktır. Yine de dosyaları açıp daha önce belirttiğim ters orantıyı gözlemeye çalışalım. `time gzip -d` komutundan sonra dosyanın ismini girmemiz yeterli. Ben ayrı ayrı zaman istatistiklerini öğrenmek için sırasıyla tüm dosyalar için komutumu ayrı ayrı girmek istiyorum.

`time gzip -d en-az.tar.gz`

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ time gzip -d en-az.tar.gz 

real    0m2.073s
user    0m0.890s
sys     0m1.182s
```

`time gzip -d standart.tar.gz`

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ time gzip -d standart.tar.gz                                                                                                                            

real    0m1.156s
user    0m0.857s
sys     0m0.298s
```

`time gzip -d en-cok.tar.gz`

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ time gzip -d en-cok.tar.gz 

real    0m1.095s
user    0m0.825s
sys     0m0.266s
```

<p class="mavi"><strong>ℹ️ Not:</strong> Tüm işlemleri <code class="language-plaintext highlighter-rouge">c</code> seçeneği ile standart çıktıdan farklı bir dosya ismi olarak kaydettiğimiz için “keep” <code class="language-plaintext highlighter-rouge">k</code> seçeneğini kullanmadan orijinal dosyanın içeriğinin korunmasını sağladık.</p> 

Tüm dosyası açtık. Buradaki “user” zamanına bakacak olursak, bakın en çok sıkıştırılan dosyanın çok daha çabuk açıldığını görebiliyoruz. Dosya boyutu ve test ortamı çok sağlıklı olmasa da neticede bu çıktıyla birlikte daha önce belirtmiş olduğumuz sıkıştırma ve açma sürelerinin seviyelere göre değişimini bizzat test etmiş olduk. Gerçekleştirdiğimiz test her ne kadar basit bir gözlem imkanı sağlasa da elbette bu sıkıştırma oranları ve süresi özellikle büyük veya çok sayıdaki dosyanın üzerinde uygulanırken önem kazanıyor. Neyse anlatımın sonlarında bu konunun üzerinde ayrıca duracağım. Şimdi **gzip** kadar popüler olan **bzip2** sıkıştırma algoritmasından bahsederek devam edelim.

# `bzip2`

`bzip2` aracı **bzip2** sıkıştırma algoritmasını kullanabilmemizi sağlayan bir araç.

Aslında `bzip2` aracının kullanımını özellikle ele almamız gerek yok çünkü `gzip` ile neredeyse tamamen aynı. `gzip` aracında bahsettiğimiz temel işlemler için kullanılan seçenekleri `bzip2` üzerinde de aynen uygulayabiliyoruz. 

Örneğin `bzip2 dosya adı` şeklinde komut girdiğimizde ilgili dosya sıkıştırılıp dosya isminin sonuna da **.bz2** uzantısı ekleniyor. 

Benim şu an çalıştığım dizinde ***linux-dersleri.tar*** isimli arşiv dosyam mevcut. 

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ ls -sh
total 562M
141M en-az.tar  141M en-cok.tar  141M linux-dersleri.tar  141M standart.tar
```

Ben bu arşiv dosyasını **bzip2** ile sıkıştırmak için `bzip2 linux-dersleri.tar` şeklinde dosyamın ismini giriyorum. Sıkıştırılması için biraz beklememiz gerekecek.

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ bzip2 linux-dersleri.tar
```

Sıkıştırma tamamlandı, `ls -sh` komutu ile listeleyelim.  

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ ls -sh                                                                                                                                                  
total 547M
141M en-az.tar  141M en-cok.tar  125M linux-dersleri.tar.bz2  141M standart.tar
```

Bakın dosyanın isminin sonuna **.bz** uzantısı eklenmiş ve dosya sıkıştırılmış. 

## Sıkıştırılmış bzip2 Dosyaların Açılması

Şimdi sıkıştırılmış olan dosyayı eski haline getirelim. Bunun için “decompress” ifadesinin kısalmasından gelen `d` seçeneğini kullanabiliriz. `bzip2 -d linux-dersleri.tar.bz2` şeklinde komutu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ bzip2 -d linux-dersleri.tar.bz2                                                                                                                         

┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ ls -sh                                                                                                                                                  
total 562M
141M en-az.tar  141M en-cok.tar  141M linux-dersleri.tar  141M standart.tar
```

Bakın dosyam eski haline geri döndü.

Eğer orijinal dosya korunsun harici olarak sıkıştırılmış versiyonu oluşturulsun istiyorsak **gzip** aracında da kullandığımız “**k**eep” seçeneğinin kısalması olan `k` seçeneğini kullanabiliriz. 

Ben test etmek için bu kez komutumu `bzip2 -k linux-dersleri.tar` şeklinde yazıyorum. Hatta istersek, verbose seçeneğini ekleyip işlem hakkında ayrıntılı bilginin konsola bastırılmasını sağlayabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ bzip2 -kv linux-dersleri.tar                                                                                                                            
  linux-dersleri.tar:  1.125:1,  7.113 bits/byte, 11.09% saved, 147271680 in, 130937266 out.
```

Bakın işlem sonunda `v` seçeneği sayesinde, sıkıştırma işlemi hakkında tasarruf edilen alan, önceki sonraki boyutu gibi çeşitli bilgileri de aldık. Şimdi ls komutu ile mevcut dizinimizi de listeleyelim.

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ ls
en-az.tar  en-cok.tar  linux-dersleri.tar  linux-dersleri.tar.bz2  standart.tar
```

Bakın `k` seçeneği sayesinde orijinal dosya korunurken, sıkıştırılmış versiyonu da oluşturulmuş.

Ben bu örnekte orijinal dosyayı koruyarak orijinal dosya ile aynı isimde sıkıştırılmış versiyonunu oluşturdum. Ancak istersem `c` seçeneği ile spesifik olarak istediğim isimde dosya oluşturulmasını da sağlayabilirim. Buradaki `c` seçeneği sıkıştırılmış verilerin standart çıktı ile bastırılmasını sağlıyor. Biz de bu standart çıktıları yönlendirme operatörlerini kullanarak istediğimiz isimde bir dosyaya yönlendirebiliyoruz. 

Örnek olması için arşiv dosyasını sıkıştırıp masaüstü dizinimde ***yeni-arsiv.tar.bz2*** ismiyle kaydetmek istiyorum. Bunun için `bzip2 -c linux-dersleri.tar > ~/Desktop/yeni-arsiv.tar.bz2` şeklinde komutumu yazıyorum. Aslında burada dosya isminin sonuna ***.tar.bz2*** eklentisini eklemesem de sıkıştırma işlemi başarılı olacak ancak daha önce de bahsettiğim düzenli çalışma adına bu gibi eklenti detaylarına dikkat etmemiz gerekiyor. 

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ bzip2 -c linux-dersleri.tar > ~/Desktop/yeni-arsiv.tar.bz2

┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ ls ~/Desktop/                                                                                                                                           
yeni-arsiv.tar.bz2
```

Bakın dosyanın sıkıştırılmış versiyonu tam olarak istediğim dizine ve tam olarak istediğim isimle kaydedilmiş bulunuyor. Üstelik `c` seçeneği ile standart çıktıları farklı bir isimle kaydettiğimiz için orijinal dosyamız da silinmemiş oldu. 

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ ls /tmp/                                                                                                                                                
en-az.tar  en-cok.tar  linux-dersleri.tar  linux-dersleri.tar.bz2  standart.tar
```

Söylediğim gibi `bzip2` aracının kullanımı `gzip` ile son derece benzer. Ufak tefek farkların dışında her iki aracı da hemen hemen aynı şekilde kullanabiliyoruz. Şimdiye kadar bahsettiğimiz tüm işlemleri `gzip` ile de aynı seçenekleri kullanarak yerine getirdik zaten.

## Sıkıştırma Seviyeleri

`gzip` üzerinde bahsetmiş olduğum sıkıştırma seviyeleri aynen `bzip2` üzerinde de mevcut fakat varsayılan olarak kullanılan seviyeler farklı. **gzip** algoritmasındaki **varsayılan seviye 6** iken, **bzip2**’nin varsayılan sıkıştırma seviyesi ise **9**’dur. Algoritmaların farklı seviyeleri varsayılan olarak kullanma nedeni, ilgili algoritmanın en verimli şekilde çalıştığı seviyenin farklı olmasıdır. Yani sıkıştırma ve işlem zamanı ortalamasındaki en verimli seviye **bzip2** algoritması için **9** iken **gzip** için **6**’dır. Tabii ki **bzip2** algoritmasında da tıpkı **gzip** de olduğu gibi her zaman varsayılan sıkıştırma seviyesini kullanmak zorunda değiliz. Dilediğimiz bir sıkıştırma seviyesini bzip2 komutunun ardından `-1` veya `-9` şeklinde belirtebiliyoruz.

Eğer az ama hızlı sıkıştırma istiyorsanız 1 seviye, çok ama daha yavaş olmasını kabul ediyorsanız da 9. yani varsayılan seviyeyi kullanabilirsiniz. Ayrıca bu seviyelerin arasındaki diğer seviyeleri de kullanmakta özgürsünüz tabi. Örneğin 2 3 4 5 7 8 gibi rakamları da kullanarak farklı seviyelerde sıkıştırma uygulayabilirsiniz. Ben yalnızca iki uç seviyeden bahsederek aralarındaki farka değinmek istedim.

Tüm özelliklerinden tek tek bahsetmemiş olsa da gördüğünüz gibi `gzip` ile `bzip2` araçların temel kullanımları hemen hemen aynı. Zaten daha fazla özellik ve kıyaslama için yardım sayfalarını açıp kontrol edebilirsiniz.

Örneğin `gzip` aracında geçerli olan klasörleri sıkıştıramama durumu `bzip2` için de aynen geçerli. Ama mesela `bzip2` aracını dahili olarak özyineleme özelliğini sağlamıyor. Farklı araçları kullanarak dosyaların isimlerini özyinelemeli şekilde `bzip2` aracına aktarıp yine hepsinin sıkıştırılmasını sağlayabiliriz fakat bu özellik `gzip` aracında olduğu gibi `bzip2` aracında dahili bir özellik değil. Neticede temel kullanımları aynı olsa da gerekiyorsa yardım sayfalarından yararlanarak ihtiyacınıza yönelik çözüm için gereken bilgiyi edinebilirsiniz. 

Ayrıca biz sadece **gzip** ve **bzip2** algoritmalarını ele aldık ancak aslında sıkıştırma işlemi için kullanabileceğimiz pek çok algoritma mevcut. Ben yalnızca temel sistem yönetimi sırasında en sık karışacağımız iki algoritmadan bahsetmek istedim. Diğer sıkıştırma algoritmaları için kısa bir araştırma ile detaylı pek çok bilgiye ulaşabilirsiniz. Örneğin algoritmaların birbiri ile kıyaslandığı [buradaki](https://linuxreviews.org/Comparison_of_Compression_Algorithms) gibi pek çok blog yazısına da rahatlıkla ulaşabilirsiniz. 

# Sıkıştırılmış Arşiv Dosyası Oluşturmak

`tar` aracı sayesinde sıkıştırma algoritmalarını uygulamamızı sağlayan araçları bir arada kullanarak dosyalardan tek seferde sıkıştırılmış arşiv dosyaları oluşturabiliriz. 

Bunun için `tar` aracına hangi algoritmayı kullanarak sıkıştırma yapmak istediğimizi belirtmemiz yeterli. Normalde bildiğiniz gibi `tar` aracı yalnızca dosyaları arşivleme işlevinde. Eğer biz `tar` aracına arşivleme işleminden sonra bir sıkıştırma algoritması aracını kullanmasını söylersek tek seferde sıkıştırılmış arşiv dosyaları oluşturabiliyoruz.

Ben **gzip** ve **bzip2** için sıkıştırılmış arşiv dosyaları oluşturmayı ele alacağım. Bu sıkıştırma algoritmaları yaygın kullanımda olduğu için zaten tar aracında bu algoritmaları temsil eden kısayollar tanımlı. Bunları görmek için `tar —help` komutu ile kısa yardım bilgisini sorgulayabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[/tmp]
└─$ tar --help                                                                                                                                              
Usage: tar [OPTION...] [FILE]...
GNU 'tar' saves many files together into a single tape or disk archive, and can
restore individual files from the archive.

...

 Compression options:

  -a, --auto-compress        use archive suffix to determine the compression
                             program
  -I, --use-compress-program=PROG
                             filter through PROG (must accept -d)
  -j, --bzip2                filter the archive through bzip2
  -J, --xz                   filter the archive through xz
      --lzip                 filter the archive through lzip
      --lzma                 filter the archive through xz
      --lzop                 filter the archive through lzop
      --no-auto-compress     do not use archive suffix to determine the
                             compression program
      --zstd                 filter the archive through zstd
  -z, --gzip, --gunzip, --ungzip   filter the archive through gzip
  -Z, --compress, --uncompress   filter the archive through compress
..
```

Çok fazla seçeneği olduğu için ben çıktıyı yalnızca “sıkıştırma” bölümüne kadar kısaltarak buraya ekledim. Buradaki seçeneklere bakacak olursak, bakın burada farklı sıkıştırma algoritmaları için çeşitli kısa ve uzun seçenekler var. Eğer sistemde bu algoritmaların araçları yüklüyse bu seçenekleri kullanarak `tar` aracılığı ile sıkıştırılmış arşiv dosyaları oluşturabiliyoruz. Örneğin **bzip2** ile sıkıştırılması için `j` seçeneğini ya da uzun şekilde `—bzip2` seçeneğini kullanabiliyoruz.

Ya da bakın **gzip** ile sıkıştırmak için de `z` seçeneğini veya `—gzip` seçeneğini kullanabileceğimiz yazıyor. Hemen örnekler üzerinden ele alalım.

Örneğin ben daha önce websitesinin dosyalarını `tar` komutu ile yalnızca arşivlemiştim. Eğer hem arşivleyip hem de sıkıştırılmasını istersem bunun için `tar` komutuna ilgili sıkıştırma algoritmasının seçeneğini eklemem gerekiyor. Ben denemek için öncelikle **gzip** ile sıkıştırılmış bir arşiv oluşturmak istiyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls
alfabe.tar  arsiv2.tar  linux-dersleri  metin.txt  test
```

Bakın şu an bulunduğum dizinde web sitesinin dosyaları bulunuyor.

Ben arşiv dosyası oluşturacağım için tar komutunun `c` seçeneğini ve gzip algoritması ile sıkıştırılmasını için de `z` seçeneğini ekliyorum. Son olarak arşiv dosyasının isminin ne olacağını belirtebilmek için de `f` seçeneğini eklememiz gerekiyor. Ben isim olarak ***linux-dersleri.tar.gz*** olarak yazıyorum ve arşivlenip sıkıştırılacak klasörün ismini de yazıyorum. .

`tar -czf linux-dersleri.tar.gz linux-dersleri`

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -czf linux-dersleri.tar.gz linux-dersleri/

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$
```

Şimdi kontrol etmek için `du -sh` komutu ile listeleyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ du -sh linux-dersleri linux-dersleri.tar.gz                                                                                                             
142M    linux-dersleri
125M    linux-dersleri.tar.gz
```

Bakın oluşturduğumuz arşiv dosyası normal dosyadan daha küçük çünkü biz aynı zamanda sıkıştırmıştık. Bu arşivimiz **gzip** ile sıkıştırıldı. Hatta teyit etmek için dosyaların türü hakkında bilgi sunan `file` aracından faydalanabiliriz. Ben `file linux-dersleri.tar.gz` komutu ile oluşturduğum arşiv dosyasını sorguluyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ file linux-dersleri.tar.gz                                                                                                                              
linux-dersleri.tar.gz: gzip compressed data, from Unix, original size modulo 2^32 147271680
```

Bakın **gzip** ile sıkıştırılmış veri olduğu burada açıkça yazıyor. Yani arşiv dosyamızın **gzip** algoritmasıyla sıkıştırıldığını teyit etmiş olduk.

Şimdi **bzip2** ile sıkıştırılmış arşiv oluşturmak için **bzip2** algoritmasını temsil eden `j` seçeneğini kullanmayı da deneyebiliriz. Ben bu kez `tar -cjf linux-dersleri.tar.bz2 linux-dersleri` şeklinde giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -cjf linux-dersleri.tar.bz2 linux-dersleri                                                                                                                                                    

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ du -sh linux-dersleri*                                                                                                                                  
142M    linux-dersleri
125M    linux-dersleri.tar.bz2
125M    linux-dersleri.tar.gz
```

Bakın **bzip2** ile sıkıştırılmış arşiv dosyası da orijinal dosyadan daha az yer kaplıyor. İşte `tar` aracıyla **sıkıştırılmış arşiv** dosyası oluşturmak bu kadar kolay. Seçenekleri hatırlamanız bile önemli değil. Önemli olan `tar` aracıyla sıkıştırılmış arşivler oluşturabileceğinizden haberdar olmanız. Neticede hangi algoritmanın hangi seçenek ile belirtildiğini hatırlamadığınızda `tar —help` komutu ile hemen öğrenebilirsiniz. 

Son olarak sıkıştırılmış bu arşiv dosyasını dışarı çıkarma işlemini ele alacak olursak. 

# Sıkıştırılmış Arşiv Dosyasını Dışarı Çıkarmak

Sıkıştırılmış arşivleri açmak için ortak olarak yalnızca `x` seçeneğini kullanabiliyoruz. Çünkü otomatik olarak ilgili algoritmanın açılımı gerçekleştiriliyor. Teyit etmek için sıkıştırmış olduğumuz arşivleri tek tek açmayı deneyebiliriz. Ama aynı klasörü farklı algoritmalar ile sıkıştırdığım için çıkardığımda hepsi aynı klasörünün üzerine yazılacak. Bu sebeple ben çıkarma işleminden sonra dizinimi listeleyip daha sonra klasörü sileceğim. İlk olarak buradaki mevcut klasörü `rm -r linux-dersleri` komutu ile silelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ rm -r linux-dersleri
```

Tamamdır. Şimdi örneğin **gzip** ile sıkıştırılmış olan arşivi açmayı deneyebiliriz. Bunun için `tar -xf linux-dersleri.tar.gz` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -xf linux-dersleri.tar.gz                                                                                                                           

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls                                                                                                                                                      
alfabe.tar  arsiv2.tar  linux-dersleri  linux-dersleri.tar.bz2  linux-dersleri.tar.gz  metin.txt  test
```

Bakın klasör sorunsuzca dışarı çıkarılmış. Şimdi teste devam edebilmek için `rm -r linux-dersleri` komutu ile bu klasörümüzü de silelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ rm -r linux-dersleri
```

Ben **bzip** ile oluşturduğum sıkıştırılmış arşivi çıkarmak için de tekrar aynı komutumu çağırıyorum ve yalnızca arşiv dosyasının isminiz değiştiriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ tar -xf linux-dersleri.tar.bz2 

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls                                                                                                                                                      
alfabe.tar  arsiv2.tar  linux-dersleri  linux-dersleri.tar.bz2  linux-dersleri.tar.gz  metin.txt  test
```

Bakın bzip2 arşivinin içeriği de sorunsuzca dışarı çıkarılmış.  İşte `tar` aracını kullanarak sıkıştırılmış arşiv oluşturmak istediğimizde ilgili sıkıştırma algoritmasını temsil eden seçeneği özellikle belirtmemiz gerekiyorken, sıkıştırılmış arşiv dosyalarının hepsini `x` seçeneği ile dışarı çıkarabiliyoruz. 

Arşivleme ve sıkıştırmayla ilgili daha pek çok ayrıntıdan ve detaydan söz etmek mümkün ancak temel eğitimi aşacağı için bu detaylar biraz fazla. Zaten artık arşivleme ve sıkıştırmayla ilgili temel kavramları bildiğiniz için gerekiyorsa geri kalanını bizzat kendinizin araştırıp daha fazla detaya kolaylıkla ulaşabilirsiniz. Örneğin paralel olarak sıkıştırma veya farklı sıkıştırma algoritmalarının performansları gibi ek araştırmalar yapma konusunda özgürsünüz.

Ben bir sonradaki derste çok kısaca sıkıştırılmış dosyalar üzerinde çeşitli işlemler yapabilmemizi sağlayan tanıdık bazı araçlardan bahsetmek istiyorum. 

# `zcat` `zgrep` `bzcat` `bzgrep` `zless` `zmore`

Daha önce dosyalar üzerinde kullandığımız `cat` `grep` `less` `more` gibi araçları biliyorsunuz. Normalde sıkıştırılmış bir dosya üzerinde bu gibi araçları doğrudan kullanamıyoruz çünkü veriler sıkıştırılmış oluyor. Fakat çözümsüz değiliz çünkü standart dosyalarda olduğu gibi bu işlevlerin benzerlerini arşiv dosyaları için sunan çeşitli araçlar mevcut. Örneğin **gzip** algoritması için `zcat` `zgrep` `zless` `zmore` ve benzeri araçlar kullanılıyor. Diğer algoritmalar için de benzeri şekilde farklı isimlendirilmiş araçlar var. Pek çok farklı sıkıştırma algoritması olduğu için elbette benzer görev için pek çok farklı yardımcı araç var. Ben örnek olarak **gzip** algoritmasında kullanılan `zcat` ve `zgrep` araçlarından bahsedeceğim ancak sizler diğer tüm algoritmaların harici yardımcı araçlarına manuel sayfasından göz atabilirsiniz. Daha önce ele aldığımız için zaten `cat` ve `grep` araçlarının temel işlevlerini biliyorsunuz. Sıkıştırılmış dosyalar üzerinde kullandığımız bu araçlar da aynı şekilde çalıştığı için üzerlerinde çok fazla durmak istemiyorum. Basit örnekler verip anlatımımıza devam edebiliriz. 

## `zcat`

Öncelikle `zcat` aracı ile sıkıştırılmış bir metin dosyasının içeriğini okumayı deneyebiliriz. Ben test edebilmek için `echo “deneme” > test1` komutu ile içerisinde deneme yazan “test1” isimli bir dosya oluşturmak istiyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ echo "deneme" > test1

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ cat test1
deneme
```

Bakın bu dosyayı `cat` komutu ile sorunsuzca okuyabiliyoruz. Şimdi `gzip test` komutu ile dosyayı sıkıştırıp `cat test.gz` komutu ile okumayı deneyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ gzip test1                                                                                                                                              

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ cat test1.gz 
��dtest1KI�K�M���(
```

Bakın dosya içeriği bozuk şekilde konsola bastırıldı. Şimdi `zcat` ile aynı dosyayı okumak için `zcat test.gz` komutunu deneyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ zcat test1.gz                                                                                                                                           
deneme
```

Bakın bu kez sıkıştırılmış dosyanın içeriğini `zcat` aracıyla sorunsuzca görüntüleyebiliyoruz. 

## `zgrep`
Benzer şekilde `grep` aracının sunduğu çözümü **gzip** ile sıkıştırılmış dosyalar üzerinde kullanabilmek için `zgrep` aracını kullanabiliyoruz.

Biliyorum çok çok basit bir örnek olacak fakat ben daha önce sıkıştırmış olduğum test dosyası içinde “**de**” ifadesi geçiyor mu diye kontrol etmek için `zgrep` aracını kullanmak istiyorum. Çıktıların renklendirilmesi için de komutumu `zgrep —color “de” test1.gz` şeklinde giriyorum.

![zgrep.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/arsiv/zgrep.webp)

Bakın tam olarak “**de**” ifadesi ile eşleşen kısım renkli şekilde `zgrep` aracı yardımıyla filtrelenmiş oldu.

Aynı testi `zgrep` yerine `grep` aracını kullanarak da deneyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ grep --color "de" test1.gz 

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$
```

Bakın herhangi bir çıktı almadık çünkü `grep` aracı sıkıştırılmış olan dosyanın içeriğini doğru şekilde tarayıp filtreleyemedi. `cat` ve `grep` araçlarının **gzip** ile sıkıştırılmış dosyalar üzerindeki en temel çalışma biçimi işte bu şekilde.

Ayrıca tıpkı **gzip** algoritmasında olduğu gibi diğer algoritmalar içinde benzer şekilde çözümler sağlayan alternatif araçlar mevcut olduğuna dikkatinizi çekmek istiyorum. Örneğin **bzip2** algoritması için `bzcat` veya `bzgrep` araçlarını kullanabiliyoruz. Ben tüm bu araçlardan tek tek bahsetmeyeceğim çünkü `cat` `less` `more` `grep` ve benzeri araçların kullanımlarını daha önce ele aldık sizin tek yapmanız gereken sıkıştırma algoritmasına uygun olan aracı bulup kullanmak. Örneğin **bzip2** için mevcut sistemde yüklü olan araçları öğrenmek için “bz” yazdıktan sonra iki kez <kbd>tab</kbd> tuşuna basıp olası araçları listeleyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ bz                                                               
bzcat         bzegrep       bzgrep        bzless
bzcmp         bzexe         bzip2         bzmore
bzdiff        bzfgrep       bzip2recover  
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ bz
```

Bakın bunlar hep **bzip2** için kullanabildiğimiz araçlar. Tabii sizin sisteminizde yüklü olmayabilir ya da “bz” ile başlayan başka alakasız araçlar da listelenmiş olabilir fakat aşağı yukarı buradaki çıktılardan araçların işlevlerini zaten anlayabilirsiniz. Örneğin bakın `less` aracının bzip2 için olan versiyonu `bzless` olarak geçiyor.

# `zip` ve `rar`

Normalde Linux üzerinde çok sık karşılaşmayacak olsak da ihtiyacımız olabileceği için **zip** ve **rar** arşivlerinden de çok bahsetmek istiyorum. 

zip ve rar algoritmalarını diğer algoritmalardan ayrı olarak ele alıyor olma nedenim lisans ve dosya özelliklerinin korunmamasıyla ilgili olan farklılıklardır. 

rar iyi sıkıştırma oranı sunuyor olsa da tescilli olan rar algoritması özgür lisansa sahip değil. Sıkıştırılmış dosyaların açılması konusunda lisans sorun olmuyorken, yeni dosyaların sıkıştırılması rar algoritmasının tescilli olması dolayısıyla bir handikap. Üstelik özgür lisansa sahip pek çok açık kaynaklı alternatif olduğu için rar kullanımına Linux üzerinde pek sık rastlamıyoruz. 

Biz yine de ihtiyaç duyduğumuz arşiv oluşturma ve mevcut arşivleri çıkarmak hakkında bilgi sahibi olalım. Zaten en temel işlevler olan arşiv oluşturma ve mevcut arşivleri çıkarmayı ele alacağız sadece.

# `zip`

zip özellikle pek çok işletim sistemi ortamında ortak olarak kullanılabildiği için sistemler arası ortak bir arşivleme ve sıkıştırma yöntemi olarak tercih ediliyor. Eğer kullanmakta olduğunuz sistemde `zip` aracı varsayılan olarak yüklü gelmiyorsa kullandığınız sisteme göre `sudo apt install zip -y` veya `sudo dnf install zip -y` komutu ile kolayca kurabilirsiniz.

Aracımızın kullanımı hakkında bilgi almak için yardım bilgisine göz atabiliriz. `zip —help` komutunu girelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ zip --help                                                                                  
Copyright (c) 1990-2008 Info-ZIP - Type 'zip "-L"' for software license.
Zip 3.0 (July 5th 2008). Usage:
zip [-options] [-b path] [-t mmddyyyy] [-n suffixes] [zipfile list] [-xi list]
  The default action is to add or replace zipfile entries from list, which
  can include the special name - to compress standard input.
  If zipfile and list are omitted, zip compresses stdin to stdout.
  -f   freshen: only changed files  -u   update: only changed or new files
  -d   delete entries in zipfile    -m   move into zipfile (delete OS files)
  -r   recurse into directories     -j   junk (don't record) directory names
  -0   store only                   -l   convert LF to CR LF (-ll CR LF to LF)
  -1   compress faster              -9   compress better
  -q   quiet operation              -v   verbose operation/print version info
  -c   add one-line comments        -z   add zipfile comment
  -@   read names from stdin        -o   make zipfile as old as latest entry
  -x   exclude the following names  -i   include only the following names
  -F   fix zipfile (-FF try harder) -D   do not add directory entries
  -A   adjust self-extracting exe   -J   junk zipfile prefix (unzipsfx)
  -T   test zipfile integrity       -X   eXclude eXtra file attributes
  -y   store symbolic links as the link instead of the referenced file
  -e   encrypt                      -n   don't compress these suffixes
  -h2  show more help
```

Bakın kullanılabilir seçenekler listelendi. Örneğin dizinleri arşivlemek için “**r**ecursive” yani “özyineleme” seçeneğini temsil eden `r` seçeneğini kullanmamız gerekiyor. `-r` seçeneği sayesinde ilgili klasörün altındaki dizinlere de ulaşılmış oluyor. Ayrıca sıkıştırma seviyesi gibi seçeneklere de sahip olduğunu buradaki yardım bilgisinden görebiliyoruz. 

## zip Arşivi Oluşturmak
Ben websitesinin dosyalarını zip ile sıkıştırmak istediğim için komutumu `zip -r linux.zip linux-dersleri` şeklinde giriyorum. Buradaki `r` seçeneğini eklemezsek alt dizinlerdeki dosyalar sıkıştırılmayacak. Klasörleri sıkıştırırken `r` seçeneği önemli yani. Zaten şimdiye kadar klasörler üzerinde çalışırken bu durumdan tekrar tekrar bahsettik. Hatta test etmek için `-r` seçeneği olmadan komutumuzu girelim.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ zip linux.zip linux-dersleri
  adding: linux-dersleri/ (stored 0%)
```

İşlem anında tamamlandı çünkü ama aslında alt dosya ve klasörler bu sıkıştırılmaya dahil edilmedi. Bu durumu teyit etmek için `ls -sh` komutunu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -sh 
total 391M
 20K alfabe.tar      125M linux-dersleri.tar.bz2  4.0K metin.txt  4.0K test1.gz
141M arsiv2.tar      125M linux-dersleri.tar.gz   4.0K metin.zip
4.0K linux-dersleri  4.0K linux.zip               4.0K test
```

Bakın oluşturulan dosyanın boyutu çok çok küçük. Yani aslında klasörün tüm içeriğinin sıkıştırılmadığını buradan da teyit edebiliyoruz. Şimdi aynı komutu bu kez `-r` seçeneğini de ekleyerek girelim.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ zip -r linux.zip linux-dersleri                                                             
  adding: linux-dersleri/ (stored 0%)
  adding: linux-dersleri/_layouts/ (stored 0%)
  adding: linux-dersleri/_layouts/tutorial.html (deflated 56%)
  adding: linux-dersleri/_layouts/home.html (deflated 64%)
  adding: linux-dersleri/_layouts/komut.html (deflated 54%)
  adding: linux-dersleri/_layouts/author.html (deflated 59%)
  adding: linux-dersleri/_layouts/about.html (deflated 42%)
  adding: linux-dersleri/_layouts/post.html (deflated 49%)
  adding: linux-dersleri/_layouts/simple.html (deflated 43%)
  adding: linux-dersleri/_layouts/b-post.html (deflated 54%)
  adding: linux-dersleri/linux-sistem-yonetimine-giris-egitimi.markdown (deflated 65%)
  adding: linux-dersleri/egitim.markdown (deflated 66%)
  adding: linux-dersleri/komutlar/ (stored 0%)
  adding: linux-dersleri/komutlar/index.markdown (deflated 50%)
  adding: linux-dersleri/etiketler.markdown (deflated 65%)
  adding: linux-dersleri/pagefind/ (stored 0%)
	...
	..
	.
	adding: linux-dersleri/index.markdown (deflated 58%)
```

Bakın adım adım tüm sıkıştırma işlemlerini konsoldan takip edebiliyoruz. Bir önceki komutta sıkıştırma olmadığı için herhangi bir çıktı yoktu. Şimdi tekrar `ls -sh` komutu ile dosyanın boyutunu kontrol edelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -sh                                                                                      
total 516M
 20K alfabe.tar      125M linux-dersleri.tar.bz2  4.0K metin.txt  4.0K test1.gz
141M arsiv2.tar      125M linux-dersleri.tar.gz   4.0K metin.zip
4.0K linux-dersleri  126M linux.zip               4.0K test
```

Bakın bu kez dosyanın boyutu daha gerçekçi bir oranda küçülmüş. Yani klasörün alt dizinlerindeki tüm dosya ve klasörlerin dahil edildiğini tahmin edebiliyoruz. Hatta teyit etmek için sıkıştırılmış dosya içeriğini dışarı çıkarabiliriz. 

## zip Arşivini Dışarı Çıkarmak

zip ile sıkıştırılmış olan dosyaları dışarı çıkarmak için `unzip` aracını kullanmamız gerekiyor. Mevcut dizine çıkardığımızda aynı klasörün yerini alacağı için ben öncelikle sıkıştırmak için kullandığım klasörü silmek istiyorum. `rm -r linux-dersleri` komutu ile klasörümüzü silip, `unzip linux.zip` komutunu girelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ rm -r linux-dersleri                                                                        

┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ unzip linux.zip                                                                             
Archive:  linux.zip
   creating: linux-dersleri/
   creating: linux-dersleri/_layouts/
  inflating: linux-dersleri/_layouts/tutorial.html  
  inflating: linux-dersleri/_layouts/home.html  
  inflating: linux-dersleri/_layouts/komut.html  
  inflating: linux-dersleri/_layouts/author.html  
  inflating: linux-dersleri/_layouts/about.html  
  inflating: linux-dersleri/_layouts/post.html  
  inflating: linux-dersleri/_layouts/simple.html  
  inflating: linux-dersleri/_layouts/b-post.html  
  inflating: linux-dersleri/linux-sistem-yonetimine-giris-egitimi.markdown
	...
	..
	.
	inflating: linux-dersleri/logo.svg  
  inflating: linux-dersleri/index.markdown
```

Bakın tek tek tüm dosyalar çıkarıldı. Görebildiğiniz gibi sıkıştırılmış dosya içeriğinin tamamı sorunsuzca dışarı çıkarılmış. `zip` aracının en temel kullanımı bu şekilde. 

# rar

Normalde `rar` aracı pek çok dağıtımda varsayılan olarak yüklü gelmiyor. Dolayısıyla kullanabilmek için öncelikle kurmamız gerekiyor. Kurmak için debian tabanlı sistemlerde `sudo apt install rar -y` komutunu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ rar
Command 'rar' not found, but can be installed with:
sudo apt install rar
Do you want to install it? (N/y)y
sudo apt install rar
[sudo] password for taylan: 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  rar
0 upgraded, 1 newly installed, 0 to remove and 1844 not upgraded.
Need to get 358 kB of archives.
After this operation, 1,397 kB of additional disk space will be used.
Get:1 http://kali.download/kali kali-rolling/non-free amd64 rar amd64 2:6.20-0.1 [358 kB]
Fetched 358 kB in 11s (31.3 kB/s)
Selecting previously unselected package rar.
(Reading database ... 291479 files and directories currently installed.)
Preparing to unpack .../rar_2%3a6.20-0.1_amd64.deb ...
Unpacking rar (2:6.20-0.1) ...
Setting up rar (2:6.20-0.1) ...
Processing triggers for kali-menu (2021.4.2) ...
Processing triggers for man-db (2.9.4-4) ...
```

Yardım bilgisini görüntülemek için yalnızca `rar` yazıp komutumuzu onaylayalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ rar

RAR 6.20   Copyright (c) 1993-2023 Alexander Roshal   17 Jan 2023
Trial version             Type 'rar -?' for help

Usage:     rar <command> -<switch 1> -<switch N> <archive> <files...>
               <@listfiles...> <path_to_extract/>

<Commands>
  a             Add files to archive
  c             Add archive comment
  ch            Change archive parameters
  cw            Write archive comment to file
  d             Delete files from archive
  e             Extract files without archived paths
  f             Freshen files in archive
  i[par]=<str>  Find string in archives
  k             Lock archive
  l[t[a],b]     List archive contents [technical[all], bare]
  m[f]          Move to archive [files only]
  p             Print file to stdout
  r             Repair archive
  rc            Reconstruct missing volumes
  rn            Rename archived files
  rr[N]         Add data recovery record
  rv[N]         Create recovery volumes
  s[name|-]     Convert archive to or from SFX
  t             Test archive files
  u             Update files in archive
  v[t[a],b]     Verbosely list archive contents [technical[all],bare]
  x             Extract files with full path

<Switches>
  -             Stop switches scanning
  @[+]          Disable [enable] file lists
  ad[1,2]       Alternate destination path
  ag[format]    Generate archive name using the current date
  ai            Ignore file attributes
  am[s,r]       Archive name and time [save, restore]
  ap<path>      Set path inside archive
  as            Synchronize archive contents
  c-            Disable comments show
  cfg-          Disable read configuration
  cl            Convert names to lower case
  cu            Convert names to upper case
  df            Delete files after archiving
  dh            Open shared files
  ds            Disable name sort for solid archive
  dw            Wipe files after archiving
  e[+]<attr>    Set file exclude and include attributes
  ed            Do not add empty directories
  ep            Exclude paths from names
  ep1           Exclude base directory from names
  ep3           Expand paths to full including the drive letter
  ep4<path>     Exclude the path prefix from names
  f             Freshen files
  hp[password]  Encrypt both file data and headers
  ht[b|c]       Select hash type [BLAKE2,CRC32] for file checksum
  id[c,d,n,p,q] Display or disable messages
  ierr          Send all messages to stderr
  ilog[name]    Log errors to file
  inul          Disable all messages
  isnd[-]       Control notification sounds
  iver          Display the version number
  k             Lock archive
  kb            Keep broken extracted files
  log[f][=name] Write names to log file
  m<0..5>       Set compression level (0-store...3-default...5-maximal)
  ma[4|5]       Specify a version of archiving format
  mc<par>       Set advanced compression parameters
  md<n>[k,m,g]  Dictionary size in KB, MB or GB
  me[par]       Set encryption parameters
  ms[ext;ext]   Specify file types to store
  mt<threads>   Set the number of threads
  n<file>       Additionally filter included files
  n@            Read additional filter masks from stdin
  n@<list>      Read additional filter masks from list file
  o[+|-]        Set the overwrite mode
  oh            Save hard links as the link instead of the file
  oi[0-4][:min] Save identical files as references
  ol[a]         Process symbolic links as the link [absolute paths]
  op<path>      Set the output path for extracted files
  or            Rename files automatically
  ow            Save or restore file owner and group
  p[password]   Set password
  qo[-|+]       Add quick open information [none|force]
  r             Recurse subdirectories
  r-            Disable recursion
  r0            Recurse subdirectories for wildcard names only
  rr[N]         Add data recovery record
  rv[N]         Create recovery volumes
  s[<N>,v[-],e] Create solid archive
  s-            Disable solid archiving
  sc<chr>[obj]  Specify the character set
  sfx[name]     Create SFX archive
  si[name]      Read data from standard input (stdin)
  sl<size>      Process files with size less than specified
  sm<size>      Process files with size more than specified
  t             Test files after archiving
  ta[mcao]<d>   Process files modified after <d> YYYYMMDDHHMMSS date
  tb[mcao]<d>   Process files modified before <d> YYYYMMDDHHMMSS date
  tk            Keep original archive time
  tl            Set archive time to latest file
  tn[mcao]<t>   Process files newer than <t> time
  to[mcao]<t>   Process files older than <t> time
  ts[m,c,a,p]   Save or restore time (modification, creation, access, preserve)
  u             Update files
  v<size>[k,b]  Create volumes with size=<size>*1000 [*1024, *1]
  ver[n]        File version control
  vn            Use the old style volume naming scheme
  vp            Pause before each volume
  w<path>       Assign work directory
  x<file>       Exclude specified file
  x@            Read file names to exclude from stdin
  x@<list>      Exclude files listed in specified list file
  y             Assume Yes on all queries
  z[file]       Read archive comment from file

┌──(taylan㉿linuxdersleri)-[~]
└─$
```

Daha önce **rar** algoritmasının tescilli olduğunu belirtmiştim. Bu durumu teyit etmek için aldığımız yardım çıktılarının en başına bakacak olursak, burada kurmuş olduğumuz rar aracının deneme sürümü olduğunu “Trial version” ifadesi ile belirtilmiş. Rar tescilli olduğundan, şu anlık yalnızca bireysel kullanım için deneme sürümüne sahibiz. 

Tamamdır, rar algoritmasının tescilli olduğunu artık biliyoruz. Şimdi buradaki yardım çıktılarına göz atarak nasıl yeni arşiv oluşturabileceğimize göz atalım.

## Rar Arşivi Oluşturmak

Arşive dosya eklemek için `a` parametresini kullanmamız gerekiyormuş. Bu seçenek sayesinde eğer hiç yoksa yeni arşiv oluşturabilir, eğer varsa da yeni dosya ekleyebiliriz. Mevcut arşivi çıkarmak için de `x` parametresini kullanıyoruz. 

Ben denemek için yine websitesinin dosyalarını sıkıştırmak istiyorum.  Bunun için komutumu `rar a linux.rar linux-dersleri` şeklinde giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ rar a linux.rar linux-dersleri

RAR 6.20   Copyright (c) 1993-2023 Alexander Roshal   17 Jan 2023
Trial version             Type 'rar -?' for help

Evaluation copy. Please register.

Creating archive linux.rar

Adding    linux-dersleri/_layouts/tutorial.html                       OK 
Adding    linux-dersleri/_layouts/home.html                           OK 
Adding    linux-dersleri/_layouts/komut.html                          OK 
Adding    linux-dersleri/_layouts/author.html                         OK 
Adding    linux-dersleri/_layouts/about.html                          OK 
Adding    linux-dersleri/_layouts/post.html                           OK 
Adding    linux-dersleri/_layouts/simple.html                         OK 
Adding    linux-dersleri/_layouts/b-post.html                         OK 
..
. 
Adding    linux-dersleri/assets                                       OK 
Adding    linux-dersleri                                              OK 
Done
```

Belirttiğim dizindeki tüm dosyaların arşivle eklendiğini konsol üzerinden de takip edebiliyoruz. Şimdi `ls -sh` komutu ile listeleyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ ls -sh                                                                                                                                                 
total 639M
 20K alfabe.tar  4.0K linux-dersleri          125M linux-dersleri.tar.gz  126M linux.zip  4.0K metin.zip  4.0K test1.gz
141M arsiv2.tar  125M linux-dersleri.tar.bz2  124M linux.rar              4.0K metin.txt  4.0K test
```

Bakın **rar** arşivi oluşturulmuş üstelik gayet iyi sıkıştırma sağladığını, arşiv dosyasının boyutundan da anlayabiliyoruz. 

## Rar Arşivini Dışarı Çıkarmak

Şimdi oluşturduğumuz bu arşiv dosyasını dışarı çıkaralım. Çıkarmak için de `x` seçeneğini kullanabiliyoruz. Mevcut bulunduğumuz dizine çıkarmak istersek doğrudan `rar x linux.rar` şeklinde komutumuzu girebiliriz. Fakat halihazırda bu isimde klasör ve içinde aynı dosyalar bulunduğu için bizden onay istenecek. Hemen deneyelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~/Downloads]
└─$ rar x linux.rar 

RAR 6.20   Copyright (c) 1993-2023 Alexander Roshal   17 Jan 2023
Trial version             Type 'rar -?' for help

Extracting from linux.rar

Would you like to replace the existing file linux-dersleri/_layouts/tutorial.html
  5103 bytes, modified on 2023-07-01 14:11
with a new one
  5103 bytes, modified on 2023-07-01 14:11

[Y]es, [N]o, [A]ll, n[E]ver, [R]ename, [Q]uit y

Extracting  linux-dersleri/_layouts/tutorial.html                     OK 

Would you like to replace the existing file linux-dersleri/_layouts/home.html
  2950 bytes, modified on 2023-05-10 17:59
with a new one
  2950 bytes, modified on 2023-05-10 17:59

[Y]es, [N]o, [A]ll, n[E]ver, [R]ename, [Q]uit y
```

Ben tek tek uğraşmak istemediğim için hepsini temsil eden **All** yani `a` yazıp onaylıyorum. 

```bash
Extracting  linux-dersleri/_layouts/home.html                         OK 

Would you like to replace the existing file linux-dersleri/_layouts/komut.html
  3958 bytes, modified on 2023-06-08 21:22
with a new one
  3958 bytes, modified on 2023-06-08 21:22

[Y]es, [N]o, [A]ll, n[E]ver, [R]ename, [Q]uit a

Extracting  linux-dersleri/_layouts/komut.html                        OK 
Extracting  linux-dersleri/_layouts/author.html                       OK 
Extracting  linux-dersleri/_layouts/about.html                        OK 
Extracting  linux-dersleri/_layouts/post.html                         OK 
Extracting  linux-dersleri/_layouts/simple.html                       OK 
Extracting  linux-dersleri/_layouts/b-post.html                       OK 
..
.
Extracting  linux-dersleri/logo.svg                                   OK 
Extracting  linux-dersleri/index.markdown                             OK 
All OK
```

Böylelikle rar ile sıkıştırmış olduğumuz dizin içeriğini `x` seçeneği sayesinde dışarı çıkarmayı başardık. Dilerseniz mevcut dizin yerine spesifik olarak çıkarılmasını istediğiniz dizini komutun sonunda belirtebilirsiniz. Yani örneğin benim durumda `rar x linux.rar çıkarılacağı konum` şeklinde komut girebilirdim.

Neticede `rar` ve `zip` aracı hakkında bahsetmek istediklerim bu kadar. Aslında tıpkı `rar` komutunun çıktılarında da gördüğümüz gibi pek çok özellik mevcut fakat ben lisans gereği pek sık kullanmaya ihtiyaç duymayacağımız için ek detaylardan bahsetmek istemiyorum. Nitekim ben de her seferinde yardım bilgisine bakıp hatırlıyorum. Zaten genelde mevcut **rar** dosyalarını yalnızca açmaya ihtiyaç duyuyoruz. 

`rar` ve `zip` araçlarının kullanımı ile ilgili merak ettiğiniz tüm ek bilgileri yardım sayfasından öğrenebilirsiniz. Zaten çok Linux üzerinde çok sıklıkla ihtiyaç duymayacağınız için yardım sayfaları üzerinden dilediğiniz zaman gerekli bilgileri edinebilirsiniz. 

Evet böylelikle arşivleme ve sıkıştırma işlemleri hakkında bilmemiz gereken temel bilgilerden bahsetmiş olduk. Ben bahsetmedim ancak arşivleri parçalara bölmek veya şifrelemek ve çok daha fazla özellik için ihtiyaç duyduğunuz bilgileri hem manuel sayfalarından hem de internet araştırmalarından kolaylıkla öğrenebilirsiniz. Sadece şimdiye kadar kısaca bahsettiğimiz arşivleme ve sıkıştırma alternatiflerini düşündüğünüzde, hepsinden bahsetmemiz veya hepsini biliyor olmamız pek olası olmadığı bence gayet açık. Bizim bu bölümdeki amacımız temel arşivleme ve sıkıştırma yaklaşımlarından haberdar olabilmemizdi. İhtiyaç duyduğunuz çözümler için her zaman ekstra araştırma yaparak çözümlere ulaşma imkanına internet sayesinde sahipsiniz zaten. Sık kullandığınız bilgiler de zamanla zihninizde yer etmiş olacak.

Bir sonraki bölümde komut satırı üzerinden çeşitli bilgiler edinmemizi sağlayan komutlardan bahsederek devam ediyor olacağız.
