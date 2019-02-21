# Linux Dokümantasyonu Çevrimdışı Masaüstü Uygulamaları
![](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/Ana%20Sayfa/multi-pltfrm.png)
Dokümantasyonun tüm içeriğine internet bağlantısına ihtiyaç duymadan ulaşabileceğiniz masaüstü uygulamaları; **Linux(Debian)**, **Windows** ve **MacOS** platformları için hazırlanmıştır. 
**Uygulamalar henüz beta aşamasında olduğu için, sizlerden gelecek her türlü geri bildirimin faydalı olacağını belirtmek isterim.**

**_Eğer uygulamaya destek olmak istiyorsanız, uygulamanın amacına ulaşabilmesi için uygulamayı Linux öğrenmek isteyen herkes ile paylaşın lütfen. Ne kadar fazla insana ulaşabilirsek, uygulamanın verimi o kadar artacaktır._**

**Not 1:** Proje  **henüz beta aşamasında**  olup sadece  **en temel işlemleri yapmak üzere kurgulanmıştır**. Ben üç platformda(**Linux(Debian)**, **Windows** ve **MacOS** platformları) da test ettim herhangi bir çalıştırma sorunu ile karşılaşmadım, eğer olursa; sizler  **karşılaştığınız problemleri mutlaka bana iletin**  ki; hep birlikte, herkes adına daha kullanışlı bir uygulama ortaya koyabilelim.

**Not 2**: Uygulama henüz kendi içerisinde güncelleme modülü barındırmıyor maalesef. Yani  **uygulamanın güncel versiyonlarını, **[Github](https://github.com/taylanbildik/Linux_Dersleri/releases)** sayfasından takip etmeniz gerek**. (Güncellemeler geri bildirimlere bağlı yapılacağından, olursa tahmini ayda 1 güncelleme şeklinde olabilir. Yani aylık olarak Github sayfasına bakmanız yeterli olacaktır.)

**Not 3:**  Dokümantasyonun  **android üzerinden çevrimdışı kullanılabilmesi için de proje gelişim aşamasındadır**.

![](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/Ana%20Sayfa/uygulama.gif?raw=true)

# Linux(Debian)
Bu dokümantasyonun şu an için yalnızca **Debian** tabanlı Linux dağıtımlarında çalıştırılabilir masaüstü uygulaması bulunmaktadır.

## Linux-64bit 
Eğer **64 bit**'lik **Debian** tabanlı bir Linux işletim sistemi kullanıyorsanız aşağıdaki dosyayı indirmeniz gerek. 

<a href="https://github.com/taylanbildik/Linux_Dersleri/releases/download/0.1.1/Linux-Dersleri-Linux_0.1.1_amd64.deb">Linux-64</a>

Dosya(.deb) boyutu: **76~MB** 

Kurulu uygulama boyutu: **180~MB**


## Linux-32bit 
Eğer **32 bit**'lik **Debian** tabanlı bir Linux işletim sistemi kullanıyorsanız aşağıdaki dosyayı indirmeniz gerek. 

<a href="https://github.com/taylanbildik/Linux_Dersleri/releases/download/0.1.1/Linux-Dersleri-Linux_0.1.1_i386.deb">Linux-32</a>

Dosya(.deb) boyutu: **77~MB** 

Kurulu uygulama boyutu: **182~MB**

### Kurulum İşlemi
**Not:** Kurulum işleminden önce sisteminizin güncel olduğundan emin olun. Aksi takdirde kurulum hata verebilir. Kurulum aşamasında hata alırsanız sisteminizi güncelleyip kurulumu tekrar deneyin lütfen.

Sisteminize uygun olan **Debian paketini(.deb)** indirdikten sonra, dosyanın bulunduğu konumdan terminali(konsol ekranını) açın ve paketi kurmak için konsola aşağıdaki komutu girin.

    dpkg -i indirdiğiniz_paketin_adı
    
Kurulum işlemini aşağıdaki gif resmine bakarak takip edebilirsiniz.
 
 ![](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/Ana%20Sayfa/linux-kurulum.gif?raw=true)   
    
### Kurulu Uygulamayı Kaldırma İşlemi
Sistemde yer alan "***Linux Dersleri***" uygulamasını kaldırmak için aşağıdaki komutu girmeniz yeterlidir.

    dpkg -r linux
    
Kurulu olan uygulamayı kaldırmak için gereken işlemi aşağıdaki gif resminden takip edebilirsiniz.

![](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/Ana%20Sayfa/linux-kald%C4%B1r.gif?raw=true)

# Windows

## Windows-64bit 
Eğer **64 bit**'lik **Windows** işletim sistemi kullanıyorsanız aşağıdaki dosyayı indirmeniz gerek. 

<a href="https://github.com/taylanbildik/Linux_Dersleri/releases/download/0.1.1/Linux-Dersleri-win64-0.1.1-Kurulum.exe">Windows-64</a>

Dosya(setup) boyutu: **91~MB** 

Kurulu uygulama boyutu: **164~MB**


## Windows-32bit 
Eğer **32 bit**'lik **Windows** işletim sistemi kullanıyorsanız aşağıdaki dosyayı indirmeniz gerek. 

<a href="https://github.com/taylanbildik/Linux_Dersleri/releases/download/0.1.1/Linux-Dersleri-win32-0.1.1-Kurulum.exe">Windows-32</a>

Dosya(setup) boyutu: **84~MB** 

Kurulu uygulama boyutu: **142~MB**

# MacOS
Eğer kullanmakta olduğunuz işletim sistemi **Mac** ise aşağıdaki kurulum imajını indirmeniz gerek.

<a href="https://github.com/taylanbildik/Linux_Dersleri/releases/download/0.1.1/linux-dersleri-macOS_0.1.1-Kurulum.dmg.zip">MacOS</a>

Dosya(.zip) boyutu: **95~MB** 

Kurulu uygulama boyutu: **176~MB**

### Kurulum İşlemi
Programı kurmak için; öncelikle indirdiğiniz ***.zip*** arşivini açmalısınız. Arşivi açtıktan sonra ***.dmg*** dosyasını çift tıklayarak çalıştırın. Daha sonra, karşınıza çıkan kurulum asistanı penceresinde gösterildiği gibi; uygulamanın simgesini ***"Applications"*** simgesinin üzerine sürükleyin. 

Kurulum işlemini aşağıdaki gif resmine bakarak takip edebilirsiniz.
![](https://github.com/taylanbildik/Linux_Dersleri/blob/master/img/Ana%20Sayfa/mac-kurulum.gif?raw=true)
