Bilgi Almak
=

Bilgi alma komutları sistemimizde bulunan herhangi birşey hakkında(programlar,dosyalar vs..) bilgi almamızı sağlayan komutlara verilen genel isimdir. Bu komutlara gerekli durumlarda çok sık başvururuz. Şimdi bilgi alma komutlarının neler olduğunu ve kullanım şekillerine bakalım.

uname
-
Tek başına çekirdek adını verse de aldığı parametreler ile farklı bilgiler de sunabilir. Hangi parametrenin ne iş yaptığını <code>man uname </code> komutu ile öğrenebileceğinizi biliyorsunuz. Kısaca bilmemiz gereken; bu komut genel olarak sistemde kullanılan çekirdek hakkında bilgiler verir.

![enter image description here](https://i.hizliresim.com/EPlXDD.png)

hostname
-
Bilgisayarımızın adını diğer bir adıyla host adını verir. Eğer isterseniz bu adı değiştirebilirsiniz. Örnek veriyorum komut satırına <code>hostname burak </code> yazarsanız hostname yani bilgisayarınızın adı burak olarak değişmiş olacaktır.

![enter image description here](https://i.hizliresim.com/5D9Znq.png)

Ancak bu ayar kalıcı değildir. Oturumu kapatıp tekrar açtığınızda değiştirmiş olduğunuz adın tekrar eski haline döndüğünü görebilirsiniz. Kalıcı olmasını ayarlardan kolaylıkla sağlayabiliriz. Sürümden sürüme değişiklik göstersede sırasıyla; ayarlar>sistem>ayrıntılar>genel aygıt adı: kutusuna istediğiniz ismi yazabilirsiniz. Eğer dediğim yoldan ulaşamadıysanız ayarları biraz kurcalayarak bulabilirsiniz.

![enter image description here](https://i.hizliresim.com/azqVAz.gif)

Ayrıca tamamen komut satırından da kalıcı bir hostname değişikliği yapmak mümkün. Bunun için <kbd> /etc/hostname</kbd> konumunda yer alan <kbd>hostname</kbd> dosyasını açmamız gerek. Dosyamızı açmak için konsola <code> nano -w /etc/hostname</code> komutunu veriyoruz.
Komutumuzun ardından açılan dosyamızda ismimizin yerine istediğimiz ismi yazıyoruz. Ve <kbd>Ctrl + X</kbd> tuş kombinasyonu ile dosyamızdaki değişiklikleri kaydederek çıkıyoruz.

![enter image description here](https://i.hizliresim.com/6JRoL0.png)


Değişikliğin geçerli olması için oturumun kapatılıp tekrar açılması gerek daha sonra hostname yani bilgisayarınızın ismi değişmiş olacaktır.

lsb_release
-
Bu komut kullandığımız dağıtım hakkında farklı bilgiler sunan parametrelere sahiptir. Detaylı bilgi için man kılavuz sayfasını kontrol edebilirsiniz. Ben örnek olası açısından <code>lsb_release -a </code> komutunun çıktısını veriyorum.

![enter image description here](https://i.hizliresim.com/jyJ0LJ.png)

whoami
-
Sinemayı takip eden arkadaşların ilk aklına ne geldi biliyorum :) 
Bu komut kimlik sorgu işlevi görüyor. Komut satırımıza komutumuzu vererek sonucuna bakalım.

![enter image description here](https://i.hizliresim.com/76m9oW.png)

Komut çıktısı bize mevcut kullanıcının <code>root</code> kimliği ile çalıştığını göstermiş oldu.

Yine <code>whoami</code> komutuna benzer ancak çok ufak farkların olduğu birkaç komutu daha peş peşe komut satırına girerek çıkan sonuçlar üzerinden anlatıma devam edelim.

![enter image description here](https://i.hizliresim.com/gOldA3.png)

Sıra sıra bakalım:

**whoami:** mecvut kullanıcının hangi kimlikle çalıştığını gösteriyor.
**who:** sistemde hangi kullanıcının çalıştığını gösteriyor.
**w:** hangi kullanıcı hangi uygulamayı çalıştırıyor bunun bilgisini gösteriyor.
Bunun dışında bu komutlar da parametre alabiliyorlar. Hangi parametreleri aldıklarını nasıl öğrenebileceğinizi zaten biliyorsunuz. Ben yinede aşağıda birkaçının çıktısını bırakıyorum.

![enter image description here](https://i.hizliresim.com/Pl38P5.png)

uptime
-
<code>uptime</code> komutu sistemimizin ne kadar zamandır açık olduğu bilgisini verir.

![enter image description here](https://i.hizliresim.com/lOYJjJ.png)


date
-
İsminden de anlaşılacağı gibi bu komut bize sistemin o anki tarih ve saat bilgisini veriyor.

![enter image description here](https://i.hizliresim.com/y0dY4k.png)

which
-
Herhangi bir komutun tam yol bilgisini öğrenmek için kullanılır.

![enter image description here](https://i.hizliresim.com/D7XzBo.png)

whereis
-
Bu komutunda özel parametreleri vardır man sayfasından kontrol edin lütfen. Bunun dışında parametresiz hali <code>apropos</code> komutuna benzer şekilde bir çıktı verir. Ancak </code> komutundan farklı olarak ilgili komutun man sayfası konumunun tam dizin adresini belirtir.

![enter image description here](https://i.hizliresim.com/dOjQPp.png)

Ayrıca diğer parametrelerini de kesinlikle man sayfasından inceleyin.

locate
-
Bu komut ile aradığımız bir dosyanın nerede olduğunu öğrenebiliriz. Komutun çıktısı bize dosyanın bulunduğu dizin veya dizinleri veriyor. Örneğin daha önce PATH yoluna eklediğim <kbd>komut.sh</kbd> dosyasını <code>locate</code> komutu ile aratıyorum. Sonuç aşağıdaki şekilde:

![enter image description here](https://i.hizliresim.com/Z92Jja.png)

Bu komutun ne kadar kıymetli olduğunu işiniz düştükçe ve kullandıkça anlayacaksınız. Genelde bir dosyayı arama çubuğu yardımı ile aramak sonuç vermez ve bu arama işlemi oldukça hantal çalışır. Ancak örneğin ben dosya konumunu bilmediğim bir dosyaya ulaşmak istiyorum. İşte burada kahramanız <code>locate</code> komutu çıkageliyor ve bize saniyeler içerisinde sonucu veriyor. Komutumu denemek amacıyla kali linux içerisinde yer alan bir araç olan armitage aracını aratıyorum. Bunun için komut satırına <code>locate armitage</code> yazmalıyım.

![enter image description here](https://i.hizliresim.com/oOn9qm.png)


Çıktıda da görüldüğü gibi aradığımız ifadeyi içerin tüm dosyaların nerede olduğunu bir çırpıda buluverdik. Sanırım bu komut sayesinde yavaş yavaş da olsa komut satırının gücünü fark etmeye başlıyoruz.

dmidecode
-
Eğer daha önce de Linux deneyimi yaşadıysanız ve sorunlar ile karşılaştıysanız forumlarda sorduğunuzda muhtemelen insanlar sizden bu komutun çıktıları istemiş olabilirler. Bu komutun işlevi sistemin donanım ve Bios bilgilerini göstermektir. Bu komut sayesinde çok fazla bilgiye ulaşabiliriz. Ayrıca bu komutumuz da parametre alarak çalışmaktadır.

Çok fazla bilgiye ulaşabiliyoruz dedik, bu bilgilere DMI(Desktop Management Interface) yani Masaüstü Yönetim Arayüzü tabloları ile ulaşıyoruz. Ve bu tabloların belirli bir düzeni var. Bu sırayı ve hangi bilgileri alabileceğinizi direk olarak görmek isterseniz komut satırına <code>dmidecode</code> yazın. Sonuçlar kategorize şekilde karşınıza sunulacaktır.

Bahsi geçen tablo sıralı şekilde ve Numara-Türkçe karşılığı olacak şekilde aşağıdaki gibidir.

<div class="table-responsive"> <table class="table table-bordered table-striped"> <thead> <tr> <th width="10%">Numara </th> <th width="90%">Açıklama</th> </tr></thead> <tbody><tr> <td>0</td><td>Bios</td></tr><tr> <td>&nbsp;1</td><td>Sistem</td></tr><tr> <td>2</td><td>Baz kurulu</td></tr><tr> <td>3</td><td>Şasi</td></tr><tr> <td>4</td><td>İşlemci</td></tr><tr> <td>5</td><td><p>Bellek denetleyicisi </p></td></tr><tr> <td>6</td><td>Bellek modülü</td></tr><tr> <td>7</td><td>Önbellek</td></tr><tr> <td>8</td><td>Port bağlantısı</td></tr><tr> <td>9</td><td>Sistem yuvaları</td></tr><tr> <td>10</td><td>On Board Cihazları</td></tr><tr> <td>11</td><td>OEM Dizeleri</td></tr><tr> <td>12</td><td>Sistem Yapılandırma Seçenekleri</td></tr><tr> <td>13</td><td>BIOS Dili</td></tr><tr> <td>14</td><td>Grup Dernekler</td></tr><tr> <td>15</td><td>Sistem Event Log</td></tr><tr> <td>16</td><td>Fiziksel Bellek Array</td></tr><tr> <td>17</td><td>Bellek Cihazı</td></tr><tr> <td>18</td><td>32-bit bellek hatası</td></tr><tr> <td>19</td><td>Bellek Dizisi Haritalı Adres</td></tr><tr> <td>20</td><td>Bellek Cihazo Haritalı Adres</td></tr><tr> <td>21</td><td>Dahili İşaret Aygıtı</td></tr><tr> <td>22</td><td>Taşınabilir Pil</td></tr><tr> <td>23</td><td>Sistem Sıfırlama</td></tr><tr> <td>24</td><td>Dananım Güvenlik</td></tr><tr> <td>25</td><td>Sistem Güç Denetimleri</td></tr><tr> <td>26</td><td>Gerilim Probu</td></tr><tr> <td>27</td><td>Soğutma Cihazı</td></tr><tr> <td>28</td><td>Sıcaklık Probu</td></tr><tr> <td>29</td><td>Elektrik Akımı Probu</td></tr><tr> <td>30</td><td>Uzaktan Erişim</td></tr><tr> <td>31</td><td>Boot Bütünlüğü Hizmetleri</td></tr><tr> <td>32</td><td>Sistem Önyükleme</td></tr><tr> <td>33</td><td>64-bit Bellek Hatası</td></tr><tr> <td>34</td><td>Yönetim Cihazı</td></tr><tr> <td>35</td><td>Yönetimi Cihaz Bileşeni</td></tr><tr> <td>36</td><td>Yönetimi Cihaz Eşik Verileri</td></tr><tr> <td>37</td><td>Bellek Kanal</td></tr><tr> <td>38</td><td>IPMI Cihazı</td></tr><tr> <td>39</td><td>Güç Kaynağı</td></tr></tbody></table> </div>

Başta belirttiğim gibi <code>dmidecode</code> kendi içinde parametre alan bir komut olduğu için istediğimiz spesifik bilgiye doğrudan da ulaşmamız mümkün. Detaylı bilgi için man kılavuz sayfasına bakın lütfen. Ancak küçük bir örnek vermem gerekirse bios hakkında bilgi edinmek istediğimizde <code>dmidecode -t bios</code> şeklinde komut satırına girmemiz yeterli. 

![enter image description here](https://i.hizliresim.com/Vr268n.png)

Burada ayrıca <code>dmidecode -t bios</code> yerine sıralamada bulunan numarasını yani <code>dmidecode -t 0 </code>yazarak da aynı işlemi gerçekleştirebilirdik.

![enter image description here](https://i.hizliresim.com/nOY290.png)

fdisk-l
-
Başlıkta da yer aldığı gibi bu bölümde <code>fdisk </code> komutunun yalnıcza <code>l </code> parametresinin işlevini göreceğiz. Bu komutu burada vermemin sebebi sistem hakkında bilgi alırken diskin de sistem dahilinde olmasıdır. Zaten ileride tekrar ele alacağımızdan şimdilik bu kadarı da yeterli olacaktır. Bu komutu diskler üzerinde işlem gerçekleştirirken kullanıyoruz. Eğer komut satırımıza <code>fdisk -l </code> şeklinde komut verirsek karşımıza sistemimizdeki disk bölümleri gelir.

![enter image description here](https://i.hizliresim.com/vjYRAv.png)

df
-
Bu komut ile disk kullanımı hakkında ayrıntılı bilgiye ulaşabiliriz.

![enter image description here](https://i.hizliresim.com/1JjraA.png)

Bu komutumuz da parametre alabiliyor. Dileyen arkadaşlar konsolda <code>man df</code> şeklinde komut girerek gerekli bilgilere ulaşabilirler.

du
-
Bir dizinin içerdiği tüm dosyalar ile birlikte diskte kapladığı toplam alanı verir. Ayrıca boyutla ilgili düzgün bir çıktı almak istersek <code>h</code>  parametresini de kullanabiliriz.

![enter image description here](https://i.hizliresim.com/LbdE8j.png)

free
-
Bu komut ile kullanılan bellek miktarını KB cinsinden öğrenebiliriz. Ancak çıktımızın MB cinsinden olmasını istersek <code>-m</code> parametresini <code>free</code> komutumuza ekleyerek kullanmamız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/rOYRX7.png)

modinfo
-
Bu komut sayesinde Linux kernel modüllerinin bilgisi alınabilir. Bu modülleri ekran bastırmak isterseniz komut satırına <code>lsmod</code> yazarak mödülleri listeleyebilirsiniz.

![enter image description here](https://i.hizliresim.com/762PW5.png)

Örneğin modüller içinden battery modülü hakkında bilgi almak istersek komut satırına <code>modinfo battery</code> şeklinde yazmamız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/Z92JBV.png)

stat
-

Bu komut dosya veya dizin hakkındaki bilgileri almamıza olanak sağlar. Kullanımı <code>stat dizin</code> şeklindedir. Örneğin root dizinine bakalım. Bunun için komut satırımıza <code>stat /root</code> komutunu veriyoruz.

![enter image description here](https://i.hizliresim.com/8YmQvn.png)

vmstat
-
Bu komut sayesinde sistemimizin o anlık genel durumunu görebiliriz. Ancak komutu verdikten sonra sistem durumu listelenip sonlanacaktır. Eğer sistemin durumunu bir süre izlemek istersek <code>vmstat gecikme_hızı yenilenme_sayısı</code> şeklinde komut vermeliyiz. Ben her 2 saniyede bir yenilenmesini ve bunu 3 defa yapmasını istiyorum. Bunun için komut satırına <code>vmstat 2 3 </code> komutunu veriyorum.

![enter image description here](https://i.hizliresim.com/D7o9bo.png)

history
-

Bu kısıma gelene kadar konsola bir çok komut yazdık. Peki o yazılan komutların daha sonra kullanılmak üzere saklandığını biliyor muydunuz ?

Evet girilen her komut <kbd>.bash_history </kbd> dosyasında tutuluyor. Biz bu dosyanın içeriğini yani daha önceki yazdığımız kodları görmek istersek komut satırına <code> history </code> yazmalıyız. Çıktı çok uzun olacağından çıktının tamamını aşağıda vermedim.

![enter image description here](https://i.hizliresim.com/2Jv532.png)

Hazır liste uzun demişken eğer bu listenin limitini öğrenmek istersek komut satırına <code>echo $HISTSIZE</code> yazarak bu değeri tutan ortam değişkeninin ne kadar komutu <kbd>history</kbd> dosyasında tutulabileceğini görebiliriz.

![enter image description here](https://i.hizliresim.com/m2q5y8.png)

Bu çıktı bize komutların tutulduğu dosyada en son 1000 komuta kadar kayıt yapıldığını belirtiyor. Eğer tutulan komutların 1000 'den daha fazla olmasını isterseniz <code> .bashrc </code> dosyasında <code>HISTSIZE=1000 </code> yazan değeri istediğiniz doğrultuda düzenlemeniz lazım.

Komutun kullanımına geçmeden önce bu komutu sadece basit ve kısa komutların tekrar kullanılması olarak değerlendirmeyin. Örneğin sürekli kullandığınız çok uzun ve karmaşık bir komut düşünün. Bu komutun her defasında yazılması eziyet, bir yere kopyalanıp oradan tekrar tekrar kopyala-yapıştır şeklinde kullanılması ise hantallık olacaktır.

Komutun kullanımına gelecek olursak örnek üzerinden açıklayalım. Benim kayıt dosyamın bir kısmı aşağıdaki şekilde, ben burada yer alan 600. komutu yani <code> vmstat</code> komutunu kullanmak istiyorum. Bunun için komut satırına <code>!555</code>  yazmam yeterli olacaktır. Komutun kullanımı <code>!komut_numarası</code> şeklinde. Örnek için çıktıyı inceleyebilirsiniz.

![enter image description here](https://i.hizliresim.com/BLo4QM.png)

Daha önceden kullandığımız bir komutu aynı şekilde tekrar kullanmak için ise komut satırına <code>!komut </code> şeklinde komut girmeliyiz. Örnek vermek gerekirse daha önceki kısımlarda <code>stat</code> komutu ile <kbd>root</kbd> dizini hakkında bilgi edinmiştik. Ve bu bilgiye ulaşmak için <code>stat /root</code> komutunu kullanmıştık. Ben şimdi tekrar aynı komuta ulaşmak için komut satırına <code>!stat</code> yazıyorum ve çıktısı tıpkı <code>stat /root</code> yazdığımda olduğu gibi oluyor. Yani bu sayede komutun geri kalanını uzun uzun yazmak gibi bir dert kalmıyor.

![enter image description here](https://i.hizliresim.com/EPQpdz.png)

Eğer son kullandığımız komutu tekrar kullanmak istersek komut satırına <code>!!</code> yazmamız yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/jyzjOL.png)

Bunlar dışında da çok farklı kullanım şekilleri de mevcut. Bu bilgilere <code>man</code> komutu yardımı ile nasıl ulaşacağınızı biliyorsunuz.

Ayrıca son yazılan komutlara ulaşmak için klavyede yer alan yön tuşlarından <kbd> ileri</kbd> ve <kbd>geri</kbd> tuşlarını kullanarak önceki ve sonraki komutlarınıza ulaşabilirsiniz. Genellikle yön tuşlarını kullanmak bize anlık işlemlerimizde hız katmaktadır. Sizler de bu pratiklikleri mutlaka yeri geldikçe sıklıkla kullanacaksınız.
