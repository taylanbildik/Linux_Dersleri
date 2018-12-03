
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
