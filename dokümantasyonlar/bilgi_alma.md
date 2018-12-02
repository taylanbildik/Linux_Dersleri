
Bilgi Almak
=

Bilgi alma komutları sistemimizde bulunan herhangi bir şey hakkında(programlar, dosyalar, kayıtlar, ayarlar vb..) bilgi almamızı sağlayan komutlara verilen genel isimdir ve bu komutlara gerekli durumlarda çok sık başvururuz. Şimdi bilgi alma komutlarının neler olduğuna ve kullanım şekillerine bakalım.

uname
-
Tek başına çekirdek adını verse de aldığı parametreler ile farklı bilgiler de sunabilir. Kısaca bilmemiz gereken; **bu komut genel olarak sistemde kullanılan çekirdek hakkında bilgiler verir**. Hangi parametrenin ne iş yaptığını <code>man uname</code> komutu ile öğrenebileceğinizi biliyorsunuz. Bizde kullanım şekillerini **man** kılavuz sayfası üzerinden açıklayalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/0.png)

Eğer parametresiz kullanıldıysa `-s` parametresi gibi **yalnızca çekirdek ismini** gösterir. Yani `uname` komutu ile `uname -s` komutu aynıdır.
Parametreler ve ifade ettikleri;

     -a, --all
            Bu parametre ile bütün bilgileri aşağıdaki seçenek sırasıyla gösterilir; -p ve -i bilinmiyorsa atlanır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/1.png)

     -s, --
            çekirdek ismini gösterir.
              
![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/2.png)

     -n, --nodename
            ağ düğümü konak ismini diğer bir değişle hostname(host adını) gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/3.jpg)

     -r, --kernel-release
            çekirdeğin derleniş sürümünü gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/4.jpg)

     -v, --kernel-version
            çekirdeğin sürümünü gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/5.jpg)

     -m, --machine
            makine donanım ismini gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/6.jpg)

     -p, --processor
            işlemci türünü veya "unknown" gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/7.jpg)

     -i, --hardware-platform
            donanım platformunu veya "unknown" gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/8.jpg)

     -o, --operating-system
            işletim sistemini gösterir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/9.jpg)

     --help 
            Bu yardım iletisini gösterir ve çıkar.

     --version
            Sürüm bilgilerini gösterir ve çıkar.


hostname
-
Bilgisayarımızın adını, diğer bir deyişle bilgisayarımızın ağ üzerindeki adını verir. Eğer isterseniz bu adı değiştirebilirsiniz. Örneğin; komut satırına <code>hostname burak</code> yazarsanız **hostname** yani **bilgisayarınızın adı** *burak* olarak değişmiş olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/10.png)

Ancak bu ayar kalıcı değildir. Oturumu kapatıp tekrar açtığınızda değiştirmiş olduğunuz adın tekrar eski haline döndüğünü görebilirsiniz. Kalıcı olmasını ayarlardan kolaylıkla sağlayabiliriz. Sürümden sürüme değişiklik gösterse de sırasıyla; **Ayarlar >Sistem >Ayrıntılar >Genel aygıt adı: ** kutusuna istediğiniz ismi yazabilirsiniz. Eğer dediğim yoldan ulaşamadıysanız ayarları biraz kurcalayarak bulabilirsiniz.


<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/11.gif" width="875">


Ayrıca tamamen komut satırından da **kalıcı bir hostname değişikliği** yapmak mümkün. Bunun için <kbd> /etc/hostname</kbd> konumunda yer alan <kbd>hostname</kbd> dosyasını açmamız gerek. Dosyamızı açmak için konsola <code> nano -w /etc/hostname</code> komutunu veriyoruz.
Komutun ardından açılan dosyada ismimizin yerine istediğimiz ismi yazıyoruz. Ve <kbd>Ctrl + X</kbd> tuş kombinasyonu ile dosyamızdaki değişiklikleri kaydederek çıkıyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/12.png)


Değişikliğin geçerli olması için oturumun kapatılıp tekrar açılması gerek daha sonra **hostname** yani **bilgisayarınızın ismi** değişmiş olacaktır.

lsb_release
-
Bu komut kullandığımız dağıtım hakkında farklı bilgiler sunan parametrelere sahiptir. Detaylı bilgi için **man** kılavuz sayfasını kontrol edebilirsiniz. Ben örnek olması açısından <code>lsb_release -a </code> komutunun çıktısını veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/13.png)

whoami
-
Sinemayı takip eden arkadaşların aklına ilk ne geldi biliyorum :) 

**Bu komut kimlik sorgu işlevi görüyor.** Komut satırımıza komutumuzu vererek sonucuna bakalım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/14.png)

Komut çıktısı bize mevcut kullanıcının <code>root</code> kimliği ile çalıştığını göstermiş oldu.

Yine <code>whoami</code> komutuna benzer ancak çok ufak farkların olduğu birkaç komutu daha peş peşe komut satırına girerek çıkan sonuçlar üzerinden anlatıma devam edelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/15.png)

Sıra sıra bakalım:

**whoami:** mevcut kullanıcının hangi kimlikle çalıştığını gösteriyor.

**who:** sistemde hangi kullanıcının çalıştığını gösteriyor.

**w:** hangi kullanıcı hangi uygulamayı çalıştırıyor bunun bilgisini gösteriyor.

Bunun dışında bu komutlar da parametre alabiliyorlar. Hangi parametreleri aldıklarını nasıl öğrenebileceğinizi zaten biliyorsunuz.

uptime
-
<code>uptime</code> komutu **sistemimizin ne kadar zamandır açık olduğu bilgisini** verir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/16.png)


date
-
İsminden de anlaşılacağı gibi bu komut bize **sistemin o anki tarih ve saat bilgisini** veriyor.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/17.png)

cal
-
Komutumuz Türkçe olarak takvim anlamına gelen İngilizce "**Calendar**" ifadesinin kısaltmasıdır. Komutumuz tek başına kullanıldığında bize konsol ekranı üzerinden, bulunduğumuz **tarihin takvim bilgisini** verir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/18.png)

Ancak daha önceki veya sonraki tarihlerde yer alan takvim bilgilerine komutumuzu `cal ay yıl` şeklinde kullanarak ulaşabiliyoruz. 

Örnek üzerinden açıklayalım.

Eğer 2002 yılının Ocak ayına gitmek istiyorsam komutumu `cal 1 2002` şeklinde kullanırım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/19.png)

Eğer ileri bir tarihe yani 3003 yılının Haziran ayına gitmek istersem de komutumu `cal 6 3003` şeklinde kullanırım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/20.png)

Gördüğünüz gibi ileri geri herhangi bir tarih hakkında takvim bilgisi almak istesek `cal` komutunu kullanabiliyoruz.

which
-
Herhangi bir komutun tam yol bilgisini öğrenmek için kullanılır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/21.png)

whereis
-
Bu komutunda özel parametreleri vardır man sayfasından kontrol edin lütfen. Bunun dışında parametresiz hali <code>apropos</code> komutuna benzer şekilde bir çıktı verir. Ancak <code>apropos</code> komutundan farklı olarak **ilgili komutun man sayfası konumunun tam dizin adresini belirtir.**

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/22.png)

Ayrıca diğer parametrelerini de kesinlikle man sayfasından inceleyin.

locate
-
**Bu komut ile aradığımız bir dosyanın nerede olduğunu öğrenebiliriz.** Komutun çıktısı bize dosyanın bulunduğu dizin veya dizinleri veriyor. Örneğin daha önce **PATH** yoluna eklediğim <kbd>komut.sh</kbd> dosyasını <code>locate</code> komutu ile aratıyorum. Sonuç aşağıdaki şekilde:

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/23.png)

Bu komutun ne kadar kıymetli olduğunu işiniz düştükçe ve kullandıkça anlayacaksınız. Genelde bir dosyayı arama çubuğu yardımı ile aramak sonuç vermez ve bu arama işlemi oldukça hantal çalışır. Örneğin  dosya konumunu bilmediniz ancak sistem var olan bir dosyaya ulaşmak istiyorsunuz diyelim.. İşte tam bu noktada <code>locate</code> komutu çıkageliyor ve bize saniyeler içerisinde sonucu veriyor. Komutu denemek amacıyla Kali Linux içerisinde yer alan bir araç olan ***armitage*** aracını aratıyorum. Bunun için komut satırına <code>locate armitage</code> yazmalıyım.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/24.png)


Çıktıda da görüldüğü gibi aradığımız ifadeyi içeren tüm dosyaların nerede olduğunu bir çırpıda buluverdik. Sanırım bu komut sayesinde yavaş yavaş da olsa komut satırının gücünü fark etmeye başlıyoruz :)

dmidecode
-
Eğer daha önce de Linux işletim sistemini deneyimleyip sorunlar ile karşılaştıysanız, forumlardan destek istediğinizde; muhtemelen insanlar sizden bu komutun çıktıları istemiş olabilirler. **Bu komutun işlevi sistemin donanım ve BIOS bilgilerini göstermektir.** Bu komut sayesinde sistem donanımı ve işleyişi hakkında çok fazla bilgiye ulaşabiliriz. Ayrıca bu komutumuz da parametre alarak çalışmaktadır.

Bu komutun sunduğu bilgiler çok fazla olduğu için, bilgilerin daha net anlaşılması adına; bu bilgilere belirli bir düzene sahip olan **DMI(Desktop Management Interface)** ile, yani **Masaüstü Yönetim Arayüzü** tabloları ile ulaşıyoruz. Tabloda yer alan sıralamayı ve hangi bilgileri alabileceğinizi direk olarak görmek isterseniz, komut satırına <code>dmidecode</code> yazın ve sonuçların kategorize şekilde karşınıza geldiğine kendiniz tanık olun.

Bahsi geçen tablo sıralı şekilde ve Numara-Türkçe karşılığı olacak şekilde aşağıdaki gibidir.

<div class="table-responsive"> <table class="table table-bordered table-striped"> <thead> <tr> <th width="10%">Numara </th> <th width="90%">Açıklama</th> </tr></thead> <tbody><tr> <td>0</td><td>Bios</td></tr><tr> <td>1</td><td>Sistem</td></tr><tr> <td>2</td><td>Baz kurulu</td></tr><tr> <td>3</td><td>Şasi</td></tr><tr> <td>4</td><td>İşlemci</td></tr><tr> <td>5</td><td>Bellek denetleyicisi </td></tr><tr> <td>6</td><td>Bellek modülü</td></tr><tr> <td>7</td><td>Önbellek</td></tr><tr> <td>8</td><td>Port bağlantısı</td></tr><tr> <td>9</td><td>Sistem yuvaları</td></tr><tr> <td>10</td><td>On Board Cihazları</td></tr><tr> <td>11</td><td>OEM Dizeleri</td></tr><tr> <td>12</td><td>Sistem Yapılandırma Seçenekleri</td></tr><tr> <td>13</td><td>BIOS Dili</td></tr><tr> <td>14</td><td>Grup Dernekler</td></tr><tr> <td>15</td><td>Sistem Event Log</td></tr><tr> <td>16</td><td>Fiziksel Bellek Array</td></tr><tr> <td>17</td><td>Bellek Cihazı</td></tr><tr> <td>18</td><td>32-bit bellek hatası</td></tr><tr> <td>19</td><td>Bellek Dizisi Haritalı Adres</td></tr><tr> <td>20</td><td>Bellek Cihazo Haritalı Adres</td></tr><tr> <td>21</td><td>Dahili İşaret Aygıtı</td></tr><tr> <td>22</td><td>Taşınabilir Pil</td></tr><tr> <td>23</td><td>Sistem Sıfırlama</td></tr><tr> <td>24</td><td>Dananım Güvenlik</td></tr><tr> <td>25</td><td>Sistem Güç Denetimleri</td></tr><tr> <td>26</td><td>Gerilim Probu</td></tr><tr> <td>27</td><td>Soğutma Cihazı</td></tr><tr> <td>28</td><td>Sıcaklık Probu</td></tr><tr> <td>29</td><td>Elektrik Akımı Probu</td></tr><tr> <td>30</td><td>Uzaktan Erişim</td></tr><tr> <td>31</td><td>Boot Bütünlüğü Hizmetleri</td></tr><tr> <td>32</td><td>Sistem Önyükleme</td></tr><tr> <td>33</td><td>64-bit Bellek Hatası</td></tr><tr> <td>34</td><td>Yönetim Cihazı</td></tr><tr> <td>35</td><td>Yönetimi Cihaz Bileşeni</td></tr><tr> <td>36</td><td>Yönetimi Cihaz Eşik Verileri</td></tr><tr> <td>37</td><td>Bellek Kanal</td></tr><tr> <td>38</td><td>IPMI Cihazı</td></tr><tr> <td>39</td><td>Güç Kaynağı</td></tr></tbody></table> </div>

Başta belirttiğim gibi <code>dmidecode</code> kendi içinde parametre alan bir komut olduğu için istediğimiz spesifik bilgiye doğrudan da ulaşmamız mümkün. Detaylı bilgi için man kılavuz sayfasına bakın lütfen. Ancak küçük bir örnek vermem gerekirse bios hakkında bilgi edinmek istediğimizde konsola <code>dmidecode -t bios</code> komutunu girmemiz yeterli. 

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/25.png)

Burada ayrıca <code>dmidecode -t bios</code> komutu yerine, bios'un sıralamada bulunan numarasını yani <code>dmidecode -t 0</code> yazarak da aynı işlemi gerçekleştirebilirdik.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/26.png)

fdisk-l
-
Başlıkta da yer aldığı gibi bu bölümde <code>fdisk</code> komutunun yalnızca <code>l</code> parametresinin işlevini göreceğiz. Bu komutu burada vermemin sebebi sistem hakkında bilgi alırken diskin de sistem dahilinde olmasıdır. Zaten ileride tekrar ele alacağımızdan şimdilik bu kadarı da yeterli olacaktır. Bu komutu diskler üzerinde işlem gerçekleştirirken kullanıyoruz. Eğer komut satırımıza <code>fdisk -l</code> şeklinde komut verirsek karşımıza sistemimizdeki disk bölümleri sıralı ve düzenli şekilde listelenecektir.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/27.png)

df
-
Bu komut ile disk kullanımı hakkında ayrıntılı bilgiye ulaşabiliyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/28.png)

Bu komutumuz da parametre alabiliyor, yani dileyen arkadaşlar konsolda <code>man df</code> şeklinde komut girerek gerekli bilgilere ulaşabilirler.

du
-
Bir dizinin, içerdiği tüm dosyalar ile birlikte diskte kapladığı toplam alanı verir. Ayrıca boyutla ilgili düzgün bir çıktı almak istersek <code>h</code>  parametresini de kullanabiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/29.png)

free
-
Bu komut ile kullanılan bellek miktarını **KB** cinsinden öğrenebiliriz. Ancak çıktımızın **MB** cinsinden olmasını istersek <code>-m</code> parametresini <code>free</code> komutumuza ekleyerek kullanmamız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/30.png)

modinfo
-
Bu komut sayesinde Linux Kernel(çekirdek) modüllerinin bilgisi alınabilir. Bu modülleri ekran bastırmak isterseniz komut satırına <code>lsmod</code> yazarak modülleri listeleyebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/31.png)

Örneğin modüller içinden **battery** modülü hakkında bilgi almak istersek komut satırına <code>modinfo battery</code> şeklinde yazmamız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/32.png)

stat
-

Bu komut dosyalar veya dizinler hakkındaki bilgileri almamıza olanak sağlar. Kullanımı <code>stat dizin</code> şeklindedir. Örneğin **root** dizinine bakalım. Bunun için komut satırımıza <code>stat /root</code> komutunu veriyoruz.


<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/33.png" width="875">

Gördüğünüz gibi **root** dizini hakkında bilgiler basılmış oldu.


vmstat
-
Bu komut sayesinde sistemimizin o anlık genel durumunu görebiliriz. Ancak komutu verdikten sonra sistem durumu listelenip sonlanacaktır. Eğer sistemin durumunu bir süre izlemek istersek <code>vmstat gecikme_hızı yenilenme_sayısı</code> şeklinde komut vermeliyiz. Ben **her 2 saniyede bir yenilenmesini ve bunu 3 defa** yapmasını istiyorum. Bunun için komut satırına <code>vmstat 2 3 </code> komutunu veriyorum.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/34.png)

history
-

Bu kısıma gelene kadar konsola bir çok komut yazdık. Peki o yazılan komutların daha sonra kullanılmak üzere saklandığını biliyor muydunuz ?

Evet girilen her komut <kbd>.bash_history </kbd> dosyasında tutuluyor. Biz bu dosyanın içeriğini yani daha önceki yazdığımız kodları görmek istersek komut satırına <code>history</code> yazmalıyız. Çıktı çok uzun olacağından çıktının tamamını aşağıda vermedim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/35.png)


Hazır liste uzun demişken eğer bu listenin limitini öğrenmek istersek komut satırına <code>echo $HISTSIZE</code> yazarak bu değeri tutan ortam değişkeninin, ne kadar komutu <kbd>history</kbd> dosyasında tutulabileceğini görebiliriz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/36.png)


Bu çıktı bize komutların tutulduğu dosyada en son **1000 komuta kadar** kayıt yapıldığını belirtiyor. Eğer tutulan komutların 1000 'den daha fazla olmasını isterseniz <kbd>.bashrc</kbd> dosyasında <code>HISTSIZE=1000</code> yazan değeri istediğiniz doğrultuda düzenleyebilirsiniz.

Komutun kullanımına geçmeden önce bu komutu sadece basit ve kısa komutların tekrar kullanılması olarak değerlendirmeyin. Örneğin sürekli kullandığınız çok uzun ve karmaşık bir komut düşünün. Bu komutun her defasında yazılması eziyet, bir yere kopyalanıp oradan tekrar tekrar kopyala-yapıştır şeklinde kullanılması ise hantallık olacaktır.

Komutun kullanımına gelecek olursak örnek üzerinden açıklayalım. Benim kayıt dosyamın bir kısmı aşağıdaki şekilde, ben burada yer alan **600. komutu** yani <code> vmstat</code> komutunu kullanmak istiyorum. Bunun için komut satırına <code>!600</code> yazmam yeterli olacaktır. Komutun kullanımı <code>!komut_numarası</code> şeklinde. Örnek için çıktıyı inceleyebilirsiniz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/37.png)


Daha önceden kullandığımız bir komutu aynı şekilde tekrar kullanmak için ise komut satırına <code>!komut</code> şeklinde komut girmeliyiz. Örnek vermek gerekirse daha önceki kısımlarda <code>stat</code> komutu ile <kbd>root</kbd> dizini hakkında bilgi edinmiştik. Ve bu bilgiye ulaşmak için <code>stat /root</code> komutunu kullanmıştık. Ben şimdi tekrar aynı komuta ulaşmak için komut satırına <code>!stat</code> yazıyorum ve çıktısı tıpkı <code>stat /root</code> yazdığımda olduğu gibi oluyor. Yani bu sayede komutun geri kalanını uzun uzun yazmak gibi bir dert kalmıyor.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/38.png" width="875">

Eğer son kullandığımız komutu tekrar kullanmak istersek komut satırına <code>!!</code> yazmamız yeterli olacaktır.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/39.png)


Bunlar dışında da çok farklı kullanım şekilleri de mevcut. Bu bilgilere <code>man</code> komutu yardımı ile nasıl ulaşacağınızı zaten biliyorsunuz.

Ayrıca son yazılan komutlara ulaşmak için klavyede yer alan yön tuşlarından <kbd>↑</kbd>(yukarı) ve <kbd>↓</kbd>(aşağı) tuşlarını kullanarak önceki ve sonraki komutlarınıza ulaşabilirsiniz. Genellikle yön tuşlarını kullanmak bize anlık işlemlerimizde hız katmaktadır. Sizler de bu pratiklikleri mutlaka yeri geldikçe sıklıkla kullanacaksınız.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/3-%20Bilgi%20Alma%20Komutlar%C4%B1/40.gif)
