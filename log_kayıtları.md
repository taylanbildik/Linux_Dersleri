Log Kayıtları
-
Sistemde olan sorunlar, işlemler, değişiklikler ve neredeyse her şey kayıt altına alınarak saklanır. Bu kayıt altına alınan bilgilere **log** deniyor. Neden **log**(kayıt) tutulmak zorunda diye soracak olursanız; kısaca sistemin olumsuz bir durumla karşılaşması halinde sorunun yaşanma nedeninin belirlenmesi, sistem güvenliğini sağlama, gerektiğinde veri kurtarma ve adli bilişim gibi alanlarda başvurmamız gereken yegane kaynaklardır **log** dosyaları. Anlayacağınız **log**(kayıt) dosyaları sistem bütünü için çok önemli yer tutmaktadır.

Log Dosyaları
-
Linux sisteminde **log** dosyalarının çok büyük kısmı <kbd>/var</kbd> dizini altında <kbd>log</kbd> klasörü içerisinde tutuluyor. Ayrıca log dizini içerisinde de belli başlı programlara ve servislere ait logları bulunduran başka alt dizinler bulunuyor. Bu durumu gözlemlemek için komut satırına `cd /var/log` yazarak **log** dosyalarının tutulduğu dizine gidip dizin içerisinde iken `ls` komutu ile dizin içeriğini listeleyelim.

![enter image description here](https://i.hizliresim.com/OoRdaD.png)

Bir çok kayıt dosyası listelenmiş oldu.
Örneğin ben buradan, oturum açma işlemlerini ve detaylarını tutan <kbd>auth.log</kbd> dosyasını açarak sistemde yapılmış olan oturum açma işlemlerini ve detaylarını inceleyebilirim. Ancak bu noktada bir kısa bilgi Linux sistemi **log** dosyalarının çok fazla yer kaplamasını önlemek için üzerine yazma metodunu kullanıyor. Bu noktada **cron** servisi ile **log** kayıtları her hafta eklenerek maksimum 1 ay kadar eskiyi yani 4 haftayı kayıt altında tutuyor. Bu tutulan kayıtlar 4 hafta sonunda; "log_dosyası.1.gz", "log_dosyası.2.gz", "log_dosyası.3.gz" şeklinde arşivlenerek saklanıyor. Yani örneğin siz eğer <kbd>auth.log</kbd> dosyasının bu ay değil de geçmişteki aylardaki kayıtlarına bakmak isterseniz. Arşivlenmiş olan "auth.log.1.gz", "auth.log.2.gz", "auth.log.3.gz" şeklindeki dosyalara bakmanız gerekir.

**Log** dosyalarını incelerken kolaylık olması açısından daha önce de kullanmış olduğumuz ve dosyanın alt(tail/kuyruk) kısımlarını listeleyen `tail` komutundan yararlanacağız. Bu sayede uzun uzadıya dosyanın tamamına bakmak yerine son eklenen bilgileri inceleyebileceğiz.

Hemen örnek olması açısından oturum açma işlemlerini ve detaylarını tutan <kbd>auth.log</kbd> kayıt dosyasını açalım. Bu açma işlemini de yalnızca dosyada en son yapılmış değişiklikleri gösterecek şekilde yapalım. Bunun için konsola `tail -f auth.log` komutumuzu giriyoruz. Buradaki `tail -f` komutunu açıklayacak olursam; biliyorsunuz `tail` komutu dosyanının alt kısımlarını görüntülememize olanak tanıyan bir komut. Ve bu komutun `-f ` parametreside bu görüntülenecek kısım için dosyayı sürekli yeniden tarayarak dosyaya en son eklenen verileri bize göstermekle mükellef. Yani `tail` komutunun `f` parametresi bize yalnızca dosyaya en son eklenen ifadeleri güncel şekilde listeliyor.

![enter image description here](https://i.hizliresim.com/z0mEyj.png)

Komutumuzu girmemizle birlikte konsol bize en son oturum açma işlemlerini ve detaylarını listelemiş oldu.

Hazır yeri gelmişken `tail -f` komutuyla sistemdeki olayların anlık olarak takibini yapalım. Bunun için sistemdeki olayların kaydını tutan <kbd>messages</kbd> dosyasını okumalıyız. Bu okuma işlemini sistemdeki anlık hareketleri takip etmek için yaptığımızdan, okuduğumuz dosyaya yeni eklenen her veriyi anlık görmek için `tail -f messages` komutunu kullanıyoruz.

dmesg
-
Sistem açılışından itibaren çekirdek tarafından üretilen tüm iletiler ve kernel hakkındaki kayıtlar <kbd>/proc/kmsg</kbd> dizininde tutuluyor. Ancak biz bütün kernel kayıtları yerine, sistem açılışında yazan açılış notlarını `dmesg` komutu ile görüntüleyebiliriz. Yani `dmesg` komutu sadece tampondaki son iletileri gösterir. Bu komutun kullanımına genelde sistem açılışında bildirilen problemlerin tespiti ve diğer sistem uyarılarını saptamak için başvurulur. Yani genelde sorun yaşadığınızda forum ve benzeri topluluklarda sizden bu komut istenirse komutun hangi amaca hizmet ettiğini bilmeniz için ve aynı zamanda komutun **log** konusu ile bağlantılı olduğu için sizlere açıkladım.

![enter image description here](https://i.hizliresim.com/G9v1GZ.png)

Elbetteki çıktı çok daha uzun ancak ben örnek olması açısından çıktıları kısaca verdim.


last
-
Sistemde oturum açan kullanıcıları listelemek için `last` komutunu kullanabiliriz.

<img src="https://i.hizliresim.com/JQpEWQ.png" width="875">
