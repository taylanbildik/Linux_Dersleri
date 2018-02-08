Log Kayıtları
-
Sistemde olan sorunlar, işlemler, değişiklikler ve neredeyse her şey kayıt altına alınarak saklanır. Bu kayıt altına alınan bilgilere **log** deniyor. Neden **log** tutulmak zorunda diye soracak olursanız kısaca sistemin olumsuz bir durumla karşılaşması halinde sorunun yaşanma nedeninin belirlenmesi, sistem güvenliğini sağlama, gerektiğinde veri kurtarma ve adli bilişim gibi alanlarda başvurmamız gereken yegane kaynaklardır. Yani sistem bütünü için çok önemli yer tutmaktadır.

Log Dosyaları
-
Linux sisteminde **log** dosyalarının çok büyük kısmı <kbd>/var/log </kbd> dizini altında tutuluyor. Ayrıca **log** dizini içerisinde de belli başlı programlara ve servislere ait logları bulunduran başka alt dizinler bulunuyor. Bu durumu gözlemlemek için komut satırına `cd /var/log` yazarak **log** dosyalarının tutulduğu dizine gidip dizin içerisinde iken `ls` komutu ile dizin içeriğini listeleyelim.

![enter image description here](https://i.hizliresim.com/OoRdaD.png)

Örneğin <kbd>user.log</kbd> dosyasını `cat user.log` şeklinde açarak sistemde yapılmış olan oturum açma işlemlerini ve detaylarını inceleyebilirim. Ancak bu noktada bir kısa bilgi Linux sistemi **log** dosyalarının çok fazla yer kaplamasını önlemek için üzerine yazma metodunu kullanıyor. Bu noktada **cron** servisi ile **log** kayıtları her hafta eklenerek maksimum 1 ay kadar eskiyi yani 4 haftayı kayıt altında tutuyor.

**Log** dosyalarını incelerken kolaylık olması açısından daha önce de kullanmış olduğumu ve dosyanın alt(tail/kuyruk) kısımlarını listeleyen `tail` komutundan yararlanacağız.

![enter image description here](https://i.hizliresim.com/z0mEyj.png)

Bu sayede uzun uzadıya dosyanın tamamına bakmak yerine son eklenen bilgileri inceleyebileceğiz.


dmesg
-
Sistem açılışından itibaren çekirdek tarafından üretilen tüm iletiler ve kernel hakkındaki kayıtlar <kbd>/proc/kmsg</kbd> dizininde tutuluyor. Ancak biz bütün kernel kayıtları yerine, sistem açılışında yazan açılış notlarını `dmesg` komutu ile görüntüleyebiliriz. Yani `dmesg` komutu sadece tampondaki son iletileri gösterir. Bu komutun kullanımına genelde sistem açılışında bildirilen problemlerin tespiti ve diğer sistem uyarılarını saptamak için başvurulur. Yani genelde sorun yaşadığınızda forum ve benzeri topluluklarda sizden bu komut istenirse komutun hangi amaca hizmet ettiğini bilmeniz için ve aynı zamanda komutun **log** konusu ile bağlantılı olduğu için sizlere açıkladım.

![enter image description here](https://i.hizliresim.com/G9v1GZ.png)

Elbetteki çıktı çok daha uzun ancak ben örnek olması açısından çıktıları kısaca verdim.


last
-
Sistemde oturum açan kullanıcıları listelemek için `last` komutunu kullanabiliriz.

<img src="https://i.hizliresim.com/JQpEWQ.png" width="875">
