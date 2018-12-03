
Log Kayıtları
-
Sistemde meydana gelen hatalar, sorunlar, işlemler, değişiklikler ve neredeyse her şey kayıt altına alınarak saklanır. Bu kayıt altına alınan bilgilere **log** deniyor. Neden **log**(**kayıt**) tutulmak zorunda diye soracak olursanız; kısaca sistemin olumsuz bir durumla karşılaşması halinde sorunun yaşanma nedeninin belirlenmesi, sistem güvenliğini sağlama, gerektiğinde veri kurtarma ve adli bilişim gibi alanlarda başvurmamız gereken yegane kaynaklardır **log** dosyaları. Anlayacağınız **log**(kayıt) dosyaları sistem bütünü için çok önemli yer tutmaktadır.

Log Dosyaları
-
Linux sisteminde **log** dosyalarının çok büyük kısmı <kbd>/var</kbd> dizini altında <kbd>log</kbd> klasörü içerisinde tutuluyor. Ayrıca <kbd>log</kbd> dizini içerisinde de belli başlı programlara ve servislere ait logları bulunduran başka alt dizinler bulunuyor. Bu durumu gözlemlemek için komut satırına `cd /var/log` yazarak **log** dosyalarının tutulduğu dizine gidip dizin içerisinde iken `ls` komutu ile dizin içeriğini listeleyelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/1.png" width="875" >

Bir çok kayıt dosyası listelenmiş oldu.
Örneğin ben buradan, oturum açma işlemlerini ve detaylarını tutan <kbd>auth.log</kbd> dosyasını açarak sistemde yapılmış olan oturum açma işlemlerini ve detaylarını inceleyebilirim. Ancak bu noktada bir kısa bilgi Linux sistemi **log** dosyalarının çok fazla yer kaplamasını önlemek için üzerine yazma metodunu kullanıyor. Bu noktada **cron** servisi ile **log** kayıtları her hafta eklenerek maksimum 1 ay kadar eskiyi yani 4 haftayı kayıt altında tutuyor. Bu tutulan kayıtlar 4 hafta sonunda; "*log_dosyası.1.gz*", "*log_dosyası.2.gz*", "*log_dosyası.3.gz*" şeklinde arşivlenerek saklanıyor. Yani örneğin siz eğer <kbd>auth.log</kbd> dosyasının bu ay değil de geçmişteki aylardaki kayıtlarına bakmak isterseniz. Arşivlenmiş olan "*auth.log.1.gz*", "*auth.log.2.gz*", "*auth.log.3.gz"* şeklindeki dosyalara bakmanız gerekir.

**Log** dosyalarını incelerken kolaylık olması açısından daha önce de kullanmış olduğumuz ve dosyanın alt(tail/kuyruk) kısımlarını listeleyen `tail` komutundan yararlanacağız. Bu sayede uzun uzadıya dosyanın tamamına bakmak yerine son eklenen bilgileri inceleyebileceğiz.

Hemen örnek olması açısından oturum açma işlemlerini ve detaylarını tutan <kbd>auth.log</kbd> kayıt dosyasını açalım. Bu açma işlemini de yalnızca dosyada en son yapılmış 5 değişikliği gösterecek şekilde yapalım. Bunun için konsola `tail -n 5 auth.log` komutumuzu giriyoruz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/2.png" width="875" >

Komutumuzu girmemizle birlikte konsol bize son 5 oturum açma işlemlerini ve detaylarını listelemiş oldu.

Hazır yeri gelmişken `tail` komutuyla sistemdeki olayların anlık olarak takibini yapalım. Bunun için sistemdeki olayların kaydını tutan <kbd>messages</kbd> dosyasını okumalıyız. Bu okuma işlemini sistemdeki anlık hareketleri takip etmek için yaptığımızdan, okuduğumuz dosyaya yeni eklenen her veriyi anlık görmek için `tail -f messages` komutunu kullanıyoruz. Buradaki `tail -f` komutunu açıklayacak olursam; biliyorsunuz `tail` komutu dosyanın alt satırlarını görüntülememize olanak tanıyan bir komut. Ve bu komutun `-f ` parametresi de bu görüntülenecek kısım için dosyayı sürekli yeniden tarayarak dosyaya en son eklenen verileri bize göstermekle mükellef. Yani `tail` komutunun `f` parametresi bize yalnızca dosyaya en son eklenen ifadeleri güncel şekilde listeliyor.
 
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/3.png" width="875" > 
 
dmesg
-
Sistem açılışından itibaren çekirdek tarafından üretilen tüm iletiler ve kernel hakkındaki kayıtlar <kbd>/proc/kmsg</kbd> dizininde tutuluyor. Ancak biz bütün kernel kayıtları yerine, sistem açılışında yazan açılış notlarını `dmesg` komutu ile görüntüleyebiliriz. Yani `dmesg` komutu sadece tampondaki son iletileri gösterir. Bu komutun kullanımına genelde sistem açılışında bildirilen problemlerin tespiti ve diğer sistem uyarılarını saptamak için başvurulur. 

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/4.png" width="875" >

Elbetteki çıktı çok daha uzun ancak ben örnek olması açısından çıktıları kısaca verdim. Eğer siz bu çıktıları filtrelemek isterseniz `grep` komutunu kullanarak ilgili çıktılara rahatlıkla ulaşabileceğinizi biliyorsunuz. Örneğin yalnızca hataları görüntülemek istersek konsola `dmesg | grep "fail" ` şeklinde yazdığımızda, konsol bize yalnızca sistem açılışında belirtilen hataları basacaktır.
 
<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/5.png" width="875" >

Gördüğünüz gibi "**fail**" ifadesinin geçtiği, yani **hataların** belirtildiği tüm iletiler karşımıza gelmiş oldu.


last
-
Komutumuzun isminden de az çok anlaşılacağı gibi; en son oturum açan kullanıcıları listelemek için `last` komutunu kullanabiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/6.png" width="875" >

`last` komutuyla en son oturum açan kullanıcılar uzunca listelenmiş oldu.

Eğer uzunca liste almak istemezsek komutumuzu en son listelemek istediğimiz satır sayısını belirterek `last -satır_sayısı` şeklinde belirterek istediğimiz uzunlukta çıktı elde edebiliriz.

Örneğin ben sadece son 2 oturum hareketini görüntülemek istersem komutumu `last -2` şeklinde belirtmem yeterli.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/7.png" width="875" >

Veya sondan 4 oturuma bakmak istersem komutumuzu `last -4` şeklinde kullanırım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/8.png" width="875" >

Ayrıca kullanıcı adına göre oturum açma bilgisi sorgulayabiliriz. Örneğin ben yalnızca "**burak**" isimli kullanıcı hesabının oturum hareketlerini görmek istersem, konsola `last burak` şeklinde yazdığımda karşıma yalnızca "**burak**" kullanıcı hesabının oturum hareketleri gelir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/9.png" width="875" >

Gördüğünüz gibi yalnızca "**burak**" kullanıcı hesabının oturum açma bilgileri listelenmiş oldu. Yani kullanıcıya göre oturum bilgilerini öğrenmek için, komutu `last kullanıcı_adı` şeklinde kullanabilirsiniz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/20-%20Log%20Dosyalar%C4%B1/10.png" width="875" >
