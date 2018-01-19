Disk İşlemleri
=

Disk ile ilgili yapabileceğimiz bölümleme, formatlama, yedekleme ve diğer işlemleri gerçekleştirebileceğimiz çeşitli komutlar var. Bu bölümde bu komutları ve işlevsel yanlarını ele alacağız. Konumuza ilk olarak daha önce de kullanmış olduğumuz `fdisk` komutu ile başlayalım.
> **Komutlara geçmeden önce disk üzerinde yapacağımız işlemlerde son derece dikkatli olmamız gerektiğini aklınızdan çıkarmayın lütfen.**

> **Yapacağımız yanlışlar dosyalarımızın kalıcı olarak silinmesine ve daha farklı sorunlara yol açabilir.**

gparted
-
Grafiksel basit bir arayüze sahip olmasından dolayı kullanımı en kolay disk aracı denilebilir. Grafiksel arayüze sahip olduğu için açıklamasını burada vermem, resim kullanmayacağım için verimsiz olur. Ancak internetteki Türkçe-İngilizce kaynaklarda kullanımı hakkında bolca bilgiye ulaşabilirsiniz. Açmak için konsola `gparted` yazmanız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/nOA9Oa.png)



fdisk
-
İsminden de anlaşılacağı üzere komutumuz çeşitli disk işlemleri yapılmak üzere kullanılıyor.

Komutun aldığı temel parametreleri ele alarak konumuza devam edelim.

İlk olarak sistemimizde bulunan disk bölümlerini listeleyelim. Bunun için l parametresini kullanıyoruz.

**fdisk -l :** disk bölümlerini listeler.

![enter image description here](https://i.hizliresim.com/vjgAjD.png)

Komutumuzu `fdisk /dev/sda` şeklinde parametresiz olarak vermemiz durumunda konsol bizden komut bekler.

![enter image description here](https://i.hizliresim.com/1JYaJb.png)

Hazır komutumuzu parametresiz kullanmışken bizden komut bekleyen konsola girebileceğimiz parametreleri ele alalım.

**m :** yardım menüsünü açar. Burada `fdisk` komutu ile kullanabileceğimiz parametreler listelenir.

![enter image description here](https://i.hizliresim.com/Lbp8bz.png)

Çıktıda görüldüğü üzere `fdisk` komutu disk konusunda çok fazla işleve sahip. Ancak biz sadece birkaç temel işlevini göreceğiz.

**p :** disk bölümleme tablosunu gösterir.

![enter image description here](https://i.hizliresim.com/rOgXOz.png)

Çıktımız tıpkı komutu `fdisk -l` şeklinde kullandığımızdaki gibi oldu.

**l :** disk bölümlerini listeler.

![enter image description here](https://i.hizliresim.com/76oW6r.png)

**d :** bölüm silmek için kullanılır.

Ben `p` parametresi ile listelediğim disk bölüm tablosundan 3. bölümü yani <kbd>/dev/sda3</kbd> bölümünü silmek üzere `d` parametresini vererek Partition number kısmını 3 olarak belirttim.

![enter image description here](https://i.hizliresim.com/Pl52lb.png)

Çıktıda da görüldüğü gibi seçili alan silinmiş oldu. Artık diskte alan açıldığına göre yeni bir disk bölümü oluşturabiliriz.

**n :** yeni disk bölümü oluşturur.

`n`parametremiz ile diskte yeni bir alan oluşturabiliriz.`n` parametresini girince bize bölümleme tipinin öncelikli(primary) mi yoksa genişletişmiş(extended) mi olması gerektiğini soruyor.Aralarındaki farklar nedir diyecek olursanız.

**Primary Partition** denilen kısım işletim sistemlerini kurduğumuz sabit disk bölümüdür. Bir sabit diskte maksimum 4 tane primary partition olabiliyor ve bunlardan bir tanesinin mutlaka aktif partition olması gerekiyor ki işletim sisteminiz boot işlemi sırasında çalıştırılabilsin.

**Extended Partition** ise aktif primary partition çıkarıldığında geriye kalan tüm sabit disk alanınızdır, bunun içine pasif primary partitionlar da dahildir.

Bu açıklama yeterli gelmemiş dolayısı ile anlamamış olabilirsiniz ancak kafa karışıklığına sebep olmamak için ayrıntıya girmiyorum. Merak eden arkadaşlar kısa bir araştırma sonucu istediklerinden de fazla bilgiye ulaşabilirler. Şimdi konumuza devam edelim.

![enter image description here](https://i.hizliresim.com/gOkvOQ.png)

First sector alanını <kbd>enter</kbd> ile geçip, Last sector alanına  `+1G` olarak girdim ve 1GB boyutunda bir bölüm oluşturmuş olduk. Bunu teyit etmek için `p` parametresini kullandık.

Çıktıda <kbd>/dev/sda4</kbd> ayarladığımız gibi yani 1GB olarak gözüküyor.

**w :** değişiklikleri kaydedip çıkar.

Gerekli ayarlamaları ve işlemleri gerçekleştirdikten sonra `fdisk` aracını kaydederek kapatmak istersek `w` parametresini kullanmamız yeterli.

![enter image description here](https://i.hizliresim.com/Z9Lj90.png)

**q :** çıkış yapar

`q` parametresi direk olarak yapılan değişiklikleri kaydetmeden `fdisk` aracı konsolundan çıkış yapar.

![enter image description here](https://i.hizliresim.com/Vrl8rR.gif)
