
Çalışma Seviyeleri(Runlevels)
=
Sistem açıldığında hangi çalışma seviyesindeyse o seviyeye göre belirlenmiş olan hizmetler başlatılır. İşte bu olaya da **Runlevels(çalışma seviyeleri)** deniyor. Linux sisteminde **7 farklı seviye** bulunuyor.

Seviyeler ve ifade ettikleri aşağıdaki tabloda verilmiştir.

<table class="table table-bordered table-striped">  <thead> <tr> <th>Runlevel</th> <th>Çalışma Modu</th> <th>İşlevler</th> </tr></thead> <tbody> <tr> <th scope="row">0</th> <td>Halt</td><td>Kapatma işleminin başladığı seviye.</td></tr><tr> <th scope="row">1</th> <td>Tek Kullanıcılı</td><td>Ağ servisleri olmadan sistem bakımı için kullanılan seviye.</td></tr><tr> <th scope="row">2</th> <td>Ağ Desteği Olmadan Çok Kullanıcılı</td><td>Ağ desteği olmadan normal kullanım seviyesi.</td></tr><tr> <th scope="row">3</th> <td>Ağ Destekli Çok Kullanıcılı</td><td>Ağ destekli normal kullanım seviyesi.</td></tr><tr> <th scope="row">4</th> <td>Tanımsız</td><td>Kullanılmıyor ancak kullanıcı tarafından tanımlanabilir durumdaki seviye.</td></tr><tr> <th scope="row">5</th> <td>Grafiksel Kullanıcı Arayüzü</td><td>Grafiksel arayüzün çalıştığı seviye. Hemen her Linux dağıtımında bu seviye varsayılan olarak başlatılır.</td></tr><tr> <th scope="row">6</th> <td>Yeniden Başlatma(Reboot)</td><td>Sistemin yeniden başlatıldığı seviye.</td></tr></tbody> </table>  

O anda hangi seviyede çalıştığımızı öğrenmek istersek komut satırına `runlevel` komutunu vermemiz yeterli.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/1.png)

Çıktıda çalışma seviyem 5 olarak çıktı. Bunun sebebi de, daha önce de söylediğimiz gibi Linux, sistemi varsayılan olarak 5. seviyede başlatıyor. Eğer çalışma seviyesi değiştirmek istersek bunu `init çalışma_seviyesi` şeklinde yapabiliriz.

Bu şekilde sistemi yeniden başlatana kadar seçtiğimiz çalışma seviyesinde devam edebiliriz. Ancak dediğim gibi sistemi yeniden başlattığınızda sistem varsayılan olarak 5. seviyede başlayacaktır.

Ayrıca yeri gelmişken sistemi kapatmak istersek bunu hiç bir hizmetin çalışmadığını **0. runlevel** ile yani `init 0` komutunu vererek yapabiliriz.

Ayrıca kapatma işlemi için;

`shutdown -h now` beklemeden direk sistemi kapatacaktır.

`shutdown -h now+5` 5 dakika sonra sistemi kapatacaktır.

`halt` sisteminizi doğrudan kapatacaktır(halt kavramının 0.seviyede hiç bir servisin çalışmadığı durumu temsil ettiğini söylemiştik).

Eğer sistemi yeniden başlatmak istersek `init 6` veya `reboot` komutunu kullanabiliriz.

service
-
Şimdi ise sistemdeki servisleri açıp-kapatmayı ve bu servislerin durumunu sorgulamayı görelim. Komutumuzun işlevlerinin kullanım kalıpları aşağıdakiler gibidir.

Örnek kullanımları **ssh servisi** üzerinden gösterelim.

Servisimizin durumunu sorgulamak için komut satırımıza `service ssh status` yazıyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/2.png)


Komut satırı çıktı olarak bize ***ssh*** servisinin kapalı olduğunu bildirdi.

Şimdi **servisimizi başlatmak** üzere komut satırına `service ssh start` komutumuzu veriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/3.png)


**Servisimizi başlattıktan sonra durumu kontrol etmek** için tekrar `service ssh status` komutumuzu verdik ve görüldüğü gibi ***ssh*** servisimiz artık çalışır durumda.

Şimdi ise çalışan **servisimizi kapatmak** için komut satırına `service ssh stop` komutumuzu veriyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/4.png)


Çıktıda da görüldüğü gibi ***ssh*** servisimiz kapatılmış oldu. Bunu da `service ssh status` komutu ile teyit etmiş olduk.

Komutumuzun diğer bir kullanım şeklide de **servisi yeniden başlatmak**. Bunun için `service ssh restart` komutumuzu kullanıyoruz.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/5.png)


Servisimizin durumunu `service ssh status` komutu ile kontrol ettik ve servisimizin yeniden başladığını görmüş olduk.

Son olarak ise sistemde bulunan tüm servislerin sıralanmasını sağlayan `service --status-all` komutunu görelim.

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/12-%20%C3%87al%C4%B1%C5%9Fma%20Seviyeleri(Runlevels)/6.gif)


Çıktıdaki servislerin sol tarafında yer alan <kbd>[ - ]</kbd> işareti servisin **çalışmadığını**, <kbd>[ + ]</kbd> işareti servisin **çalıştığını** ve <kbd>[ ? ]</kbd> işareti ise **servisin durumunun belirsiz olduğunu** ifade ediyor.
