Kurma-Kaldırma-Güncelleme İşlemleri
=

Linux kullanacaksak mutlaka bilmemiz gerekenler arasında sistemi güncelleme, program kurma ve kaldırma gibi işlemleri yerine getirmek var. Bu işlemleri nasıl yerine getirebileceğimizi bu konunun devamında öğreneceğiz. İlk olarak sistemi güncelleme işlemi yapalım.

Sistemi Güncelleme
-
Linux sistemleri kullanıcının ihtiyacı olduğunda programa kolayca ulaşabilmesini sağlayacak program paketlerini içinde bulunduran kendi paket depolarına(repository) sahiptirler. Farklı linux dağıtımları için bu paketler de farklılık gösterebiliyor. Bu yüzden farklı linux dağıtımlarının da kendi paketleri üzerinde işlem yapabilmek için farklı komutları vardır.

Dağıtımlar ve kullanılan paketlere göre komutları aşağıdaki tabloda verilmiştir.

<table class="table"> <thead> <tr> <th>Dağıtım</th> <th>Paketler</th> <th>Komutlar</th> </tr></thead> <tbody> <tr> <th scope="row">Debian</th> <td>.deb</td><td><code>apt</code> , <code>apt-cache</code> , <code>apt-get</code> , <code>dpkg</code></td></tr><tr> <th scope="row">Ubuntu</th> <td>.deb</td><td><code>apt</code> , <code>apt-cache</code> , <code>apt-get</code> , <code>dpkg</code></td></tr><tr> <th scope="row">CentOs</th> <td>.rpm</td><td><code>yum</code></td></tr><tr> <th scope="row">Fedora</th> <td>.rpm</td><td><code>dnf</code></td></tr><tr> <th scope="row">FreeBSD</th> <td>.txz</td><td><code>make</code> , <code>pkg</code></td></tr></tbody> </table>

Debian paketlerinin <kbd>.deb</kbd> uzantılı olduğunu yukarıdaki tabloda gördük. Kullandığımız dağıtım olan Kali'de Debian tabanlı olduğu için anlatıma bu doğrultuda devam edeceğiz.

    apt-get update

Paket listesini(/etc/apt/sources.list) günceller.

    apt-get upgrade

Kurulu olan paketleri <kbd>/etc/apt/sources.list</kbd> dosyasındaki paket listesine bakarak en son versiyonlarına günceller.

    apt-get dist-upgrade

Gerekli gördüğü paketleri siler veya günceller.

    apt-get clean

Kurulu olan tüm paketleri siler.

    -y

<kbd>-y</kbd> parametresinin görevi çıkacak olan onay sorularına evet(yes) cevabını otomatik olarak vermektir. Bu sayede gerekli işlemler de otomatik olarak zaman kaybetmeden yapılmış olur.

Yani bir bütün olarak eğer sistemimizi güncellemek istersek ilk başta <kbd>/etc/apt/sources.list</kbd> konumunda yer alan <kbd>soruces.list</kbd> dosyasına kullanıdığımız versiyona uygun depoları eklemeliyiz.

Bunun için [buradaki kaynaktan](https://docs.kali.org/general-use/kali-linux-sources-list-repositories) kullandığınız versiyona uygun olan repository kopyalayarak <kbd>soruces.list</kbd> dosyasına eklemeniz gerekiyor. Ben Kali 2016.1 sonrası (kullandığım versiyon 2017.3)versiyonunu kullandığım için aşağıdaki repoları(repository) <kbd>soruces.list</kbd> dosyasına ekliyorum.

`deb http://http.kali.org/kali kali-rolling main contrib non-free`

Ancak dediğim gibi sizler kullandığınız versiyona uygun olan repoları seçmelisiniz.

Kali 1.0 ve sonrası için: **`deb http://old.kali.org/kali moto main non-free contrib`**

Kali 2.0 ve sonrası için: **`deb http://old.kali.org/kali sana main non-free contrib`**

Kali 2016.1 ve sonrası için:**`deb http://http.kali.org/kali kali-rolling main contrib non-free`**


Repoları `leafpad /etc/apt/sources.list` komutu ile açarak <kbd>soruces.list</kbd> dosyasına ekledim.
![](https://camo.githubusercontent.com/59ce93a434143705c35a81775f6d74724c7469b6/68747470733a2f2f692e68697a6c69726573696d2e636f6d2f324a5130324f2e706e67)

Sıra gelidi güncelleme işlemine, bunun için `apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y` komut bütününü kullanabiliriz.

Güncelleme işlemi boyunca kullandığımız `-y` parametresi sayesinde herhangi bir soru sorulmadan bütün işlemler otomatik olarak tamamlanacak ve güncelleme işlemi tamamlanacaktır.

Program Kurmak
-
Linux'ta program kurmak için birden fazla yöntem bulunuyor. Bunlardan bir tanesi kullandığımız dağıtıma uygun programı, **paket yönetim sistemi** ile kurmaktır. Diğer bir yol, programı **kaynak koddan derleyerek** kurmaktır. Diğer seçenek ise dağıtımın kullandığı **depolardan(repository)** otomatik kurulum yapmaktır.

Depodan Kurulum
-
Depoda bulunan programların kurulumlarını yaparken `apt-get install program_adı` komut bütünü kullanılıyor.

Örnek olması açısından filezilla isimli bir programın depodan kurulumunu yapmak için konsola `apt-get install filezilla` komutunu girdim.

![enter image description here](https://i.hizliresim.com/1JnAYb.gif)

Ve program kurulmuş oldu konsola `filezilla` yazarak da bu durumu teyit ettim.

Paket Yönetim Sistemi İle Kurulum
-
Bu işlem için kullandığımız dağıtıma uygun derleyiciyi kullanmalıyız. Daha önce Kali'nin <kbd>.deb</kbd> uzantılı paketleme sistemi olduğunu öğrenmiştik. Bu yüzden biz <kbd>.deb</kbd> uzantılı kurulum paketlerini açmak için `dpkg` komutunu kullanıyoruz. Sanırım kodun kısaltmasının nereden geldiğini bilirsek daha kolay akılda kalabilir. Kodun kısaltması "debian package(debian paketi)" kısaltmasından gelmektedir. Ayrıca `dpkg` komutunu kullanmada yardımcı bir paket yöneticisi programı(synaptic) kullanarak da kurulum işlemlerini yerine getirebiliriz. Konumuza ilk olarak `dpkg` komutu ve kullanımı ile devam edelim.


Örnek olması açısından ben "master pdf" adında bir programın kurulumunu ele aldım. Bunun için öncelikle programın <kbd>.deb</kbd> uzantılı dosyasını sitesinden indirdim.

Şimdi programı kurmak için `dpkg -i paket_adı.deb` şeklinde komutumu giriyorum.

![enter image description here](https://i.hizliresim.com/XPYzvo.gif)

Ve progamım kurulmuş oldu.

Kurduğumuz programı kaldırmak istersek komutumuzu `dpkg -r program_adı` şeklinde yani `-r` parametresini ekleyerek kullanıyoruz.

![enter image description here](https://i.hizliresim.com/y0nOM0.gif)

Program otomatik olarak kaldırılmış oldu. Ancak <kbd>/etc</kbd> dizini altındaki konfigürasyon dosyaları silinmedi. Eğer bu dosyaları da kaldırmak istersek `-P` parametresini kullanabiliriz.

![enter image description here](https://i.hizliresim.com/Rn65YG.gif)

Bu sayede programa ait konfigürasyon dosyaları da tamamen kaldırılmış oldu.

Konfigürasyondan bahsetmişken aklınızda bulunsun eğer yüklediğimiz paketin konfigürasyon ayarlarını tekrar yapılandırmamız gerekirse `dpkg-reconfigure paket_adı` şeklinde komutumuzu kullanabiliriz.

Kurulu olan tüm paketler hakkında bilgi almak için `-l` parametresi kullanılabilir.(Çıktı uzun olduğundan kısa kesilmiştir.)

![enter image description here](https://i.hizliresim.com/5DROkM.png)

Çıktıda yer alan paketlerin sol tarafındaki ifadelerin anlamı:

**ii :** paket normal olarak sisteme yüklendi.

**rc :** paket yüklendikten sonra silindi ancak konfigürasyon dosyaları halen mevcut.

**pn :** paket konfigürasyon dosyaları ile birlikte sistemden kaldırıldı.

Kurulu paketin durumunu öğrenmek için `-s` parametresini kullanabiliriz. Ben örnek olması açısında leafpad programı hakkında bilgi almak için komut satırına `dpkg -s leafpad` komutunu giriyorum.


Kurulu paketin içeriğini öğrenmek istersek `-L` parametresini kullanırız.

![enter image description here](https://i.hizliresim.com/lOzg7l.png)

Eğer indirmiş olduğumuz <kbd>.deb</kbd> uzantılı dosyanın içeriğini henüz kurmadan görmek istersek `-c` parametresini kullanabiliriz.

![enter image description here](https://i.hizliresim.com/Z91yJA.png)

Sistemde kurulmuş ve kaldırılmış tüm paketleri görmek istersek `dpkg --get-selections` komutunu kullanabiliriz.

![enter image description here](https://i.hizliresim.com/1JnArD.png)

Bu paket listesini daha sonra kullanmak üzere bir dosya içerisine yedeklemek istersek komutumuzu `dpkg --get-selections >dosya_adı.txt` şeklinde kullanmamız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/4aRJ8Q.png)

Yedeklediğimiz bu program listeleri sayesinde başka bir sisteme aynı paketleri tek seferde yüklememiz mümkün. Bunun için komutlar aşağıdaki şekildedir.


    dpkg --set-selections > yedek_dosya_adı.txt
    
Daha sonra tanıma işlemi bittikten sonra eksik olanların yüklenmesi için konsola aşağıdaki komutu giriyoruz.

    apt-get deselect-upgrade
    
Ayrıca bu işlemin uzun süreceğini unutmayın.

Şimdi sıra geldi ikinci yol olan yardımcı paket yöneticisi programı aracılığı ile program kurma-kaldırma-güncelleme işlemlerin yapmaya. Bunun için ilk olarak paket yönetim programı olan **synaptic** programını kurmamız gerek. Komut satırına `apt-get install synaptic` yazarak yardımcı programı indiriyoruz.

![enter image description here](https://i.hizliresim.com/m2895V.gif)

Evet "<kbd>y</kbd>" diyerek kuruluma onay veriyoruz ve programımız kurulmuş oluyor. Programı açmak için komut satırına `synaptic` komutunu vermemiz yeterli. Bu program sayesinde program kurup kaldırabilir ve programlar için diğer gerekli işlemleri yerine getirebiliriz. Programın kullanımı oldukça kolay olduğundan keşfini sizlere bırakarak anlatıma devam ediyorum.


Kaynak Koddan Derleyerek Kurulum
-

Linux'a uyumlu sürümü bulunan açık kaynak kodlu yazılımların kaynak kod paketleri bu yazılımların internet sitelerinde, genellikle <kbd>tar.gz </kbd> biçiminde arşivlenmiş olarak indirilmeye sunulurlar. Bu arşivlenmiş olan kaynak kod paketi daha önce gördüğümüz <kbd>.deb</kbd> uzantılı paketlerin aksine ham şekilde yani derlenmemiş kuruluma hazır olmayan şekilde gelirler. Bu derleme işlemini bizim yaparak kurulumu gerçekleştirmemiz gerekir. Ancak her kurulum aynı olmayabilir. <kbd>tar.gz</kbd> veya <kbd>tar.bz2</kbd> benzeri uzantılı paketlerde genellikle programın nasıl kurulacağına dair "install", "readme", "configure" ve benzeri isimlerde yönergeler bulunur. Bu dosyalar okunarak yükleme işlemi gerçekleştirilmelidir. Ancak biz şimdi burada genel kurulum hakkında bilgi edinelim. Kaynak koddan derleyerek kurulum işleme genel olarak aşağıdaki şekildedir:

İndirdiğimiz program arşivini klasöre çıkartırız.

Programı derlemeden önce gerekli kütüphaneler ve bağımlılıkları kontrol ediyoruz.

`./configure`

Eksik çıkarsa bunları kurmamız gerekicek.

Make aşaması için derleme yapacak paketleri `apt-get install build-essential` komutu ile kuruyoruz.

`make` diyerek programımızı derlemiş oluyoruz.

Son olarak `make install` komutu ile programı sistemimize kuruyoruz.
