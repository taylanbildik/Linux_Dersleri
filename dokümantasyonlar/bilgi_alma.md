# Bilgi Alma Komutları

Genel olarak sistemdeki tarih takvim araçlar dosyalar ayarlar kayıtlar ve benzeri pek çok yapı hakkında konsol üzerinden kolayca bilgi edinebilmek için kullandığımız komutları, bilgi alma komutları başlığı altında inceleyebiliriz. Dolayısıyla aslında tüm eğitim boyunca kullandığımız ve kullanmaya da devam edeceğimiz pek çok komutu bilgi alma komutları sınıfında değerlendirmemiz mümkün. Çünkü hepsi, kendi görevleri özelinde pek çok bilgi sunma kabiliyetine sahip araçlar. En basit örnek olarak, `ls` komutu bile tek başına kullanıldığında mevcut dizinimizdeki içerikler hakkında bilgi almamızı sağlıyor.

Yine de eğitimin geri kalanında değinmek için uygun bölümleri bulunmayan ama haberdar olmamızın faydalı olacağı bazı araçlardan “bilgi alma bölümü” altında çok kısaca bahsetmek istiyorum.

Anlatımlarımıza öncelikle takvim ve saat gibi temel bilgileri nasıl edinebileceğimizle başlayabiliriz. 

# Tarih ve Saat Hakkında Bilgi Edinme

## `date` Komutu

Eğer grafiksel arayüz kullanıyorsanız zaten mutlaka tarih ve saati kolayca öğrenebileceğiniz bir ortama sahipsinizdir. 

Tarih bilgisini komut satırından edinmek istediğimizdeyse `date` komutunu kullanabiliyoruz. Zaten “date” ifadesi “tarih” anlamına geldiği için hatırlaması kolay bir komut. Hemen komutumuzu girelim.

```bash
└─$ date
Mon Jun 26 02:40:38 PM EDT 2023
```

Bakın `date` komutu tek başına kullanıldığında gördüğünüz gibi sırasıyla, haftanın gününü, ayı, ayın gününü, saati, saat dilimini ve yılı içeriyor. Yani mevcut bulunduğumuz günün tüm tarihi temel bilgilerini `date` aracıyla öğrenebiliyoruz. Tabii ki aracımızın sağladığı tek bilgi mevcut günümüz de değil. Diğer seçenekleri görmek için `date —help` komutu ile yardım sayfasına bakacak olursanız ne kadar çok seçeneğin bulunduğunu görebilirsiniz. Ancak bu kadar çok seçenek olması gözünüzü korkutmasın, çünkü temelde `date` aracının yalnızca sistem tarihini öğrenmek için kullanıyoruz. Mesela tüm tarih bilgisini değil de yalnızca saat bilgisini almak istersek yardım bilgisinde gözüken `%r` parametresini kullanabiliriz. 

```bash
└─$ date +%r                                                     
02:42:24 PM
```

Bakın yalnızca saat bastırıldı. Benzer şekilde diğer parametreleri kullanarak `date` aracından dilediğiniz formda çıktı alabilirsiniz. Bu özelliğe genellikle kabuk programlamada ihtiyaç duyuyor olsak da artık bildiğinize göre ihtiyaç duyduğunuzda yardım sayfasını açıp tekrar hatırlayıp rahatlıkla kullanabilirsiniz..  

Ayrıca `date` aracı ile tarihi değiştirmemiz de mümkün fakat tarihi değiştirmek için sistem servislerini kullanmak çok daha sağlıklı bir yaklaşım. Lütfen şimdilik buradaki "servis" kavramına çok takılmayın. İleride servisleri ayrıca ele alacağız. O zaman servisten kastımın ne olduğunu net biçimde anlamış olacaksınız. Şimdilik `date` komutunun bize mevcut tarih bilgisini sunduğunu bilmemiz yeterli.

## `cal` Komutu

`cal` aracı komut satırımız üzerinden takvim bilgisi sunan basit bir araç. Kimi sistemlerde varsayılan olarak yüklü bulunmasa da aslında çoğu dağıtımda mevcut oluyor. 

Aracın yüklü olup olmadığınız öğrenmek için tek yapmamız gereken konsolumuza `cal` komutunu girmek. 

```bash
└─$ cal
Command 'cal' not found, but can be installed with:
sudo apt install ncal
Do you want to install it? (N/y)
```

Bakın böyle bir komut olmadığı, eğer istersek bu araçla ilişkili olan `ncal` paketinin kurulabileceği belirtiliyor. Buradaki komutu “y” ile onaylayarak ya da kendimiz de buradaki `sudo apt install ncal` komutunu girerek kurulumu yapabiliriz. Eğer size bu şekilde sorulmadıysa ve sisteminizde yüklü değilse, debian tabanlı dağıtımınıza kurmak için siz de buradaki komutu kullanabilirsiniz. Ben “y” ile aracın kurulumunu onaylıyorum ve kullanıcı hesabımın parolasını girip kurulumu başlatılıyorum.

```bash
└─$ cal
Command 'cal' not found, but can be installed with:
sudo apt install ncal
Do you want to install it? (N/y)y
sudo apt install ncal
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  ncal
0 upgraded, 1 newly installed, 0 to remove and 1830 not upgraded.
Need to get 19.7 kB of archives.
After this operation, 59.4 kB of additional disk space will be used.
Get:1 http://kali.download/kali kali-rolling/main amd64 ncal amd64 12.1.8 [19.7 kB]
Fetched 19.7 kB in 11s (1,828 B/s)
Selecting previously unselected package ncal.
(Reading database ... 291346 files and directories currently installed.)
Preparing to unpack .../archives/ncal_12.1.8_amd64.deb ...
Unpacking ncal (12.1.8) ...
Setting up ncal (12.1.8) ...
Processing triggers for kali-menu (2021.4.2) ...
Processing triggers for man-db (2.9.4-4) ...
```

Şimdi aracımızı çalıştırmak için `cal` komutunu tekrar girelim. 

```bash
└─$ cal
     June 2023        
Su Mo Tu We Th Fr Sa  
             1  2  3  
 4  5  6  7  8  9 10  
11 12 13 14 15 16 17  
18 19 20 21 22 23 24  
25 26 27 28 29 30
```

Bakın mevcut ayın takvim bilgisini sorunsuzca konsola bastırmış olduk. Bu komutun dışında eğer takvimde gün isimlerinin bastırılmasını ve bizim hangi günde olduğumuzun belirtilmesini istersek `ncal` komutunu da kullanabiliriz. 

```bash
└─$ ncal
    June 2023         
Su     4 11 18 25   
Mo     5 12 19 26   
Tu     6 13 20 27   
We     7 14 21 28   
Th  1  8 15 22 29   
Fr  2  9 16 23 30   
Sa  3 10 17 24
```

Bakın sol tarafta gün isimleri sırasıyla yazıyor. Takvim de bu günlerin sıralamasına uygun şekilde basılmış oldu. 

Eğer mevcut ayı değil de geçmiş ya da gelecek bir tarihten takvim bilgisine bakmak istersek `cal` ya da `ncal` komutunun ardından ay ve yılı belirterek tam istediğimiz tarihteki takvim bilgisine de ulaşabiliriz. Ben örnek olarak **2000** yılının **ocak** ayının takvimini bastırmak üzere `ncal 1 2000` şeklinde komutumu giriyorum. 

```bash
└─$ ncal 1 2000
    January 2000      
Su     2  9 16 23 30
Mo     3 10 17 24 31
Tu     4 11 18 25   
We     5 12 19 26   
Th     6 13 20 27   
Fr     7 14 21 28   
Sa  1  8 15 22 29
```

Bakın 2000 yılının ocak ayı takvimi getirildi. Benzer şekilde ileri tarih de belirtebiliriz. Ben 2025 yılının 6 ayı için takvim bilgisini istiyorum. 

```bash
└─$ ncal 6 2025                                                  
    June 2025         
Su  1  8 15 22 29   
Mo  2  9 16 23 30   
Tu  3 10 17 24      
We  4 11 18 25      
Th  5 12 19 26      
Fr  6 13 20 27      
Sa  7 14 21 28
```

Bakın bu takvim de bastırıldı. İşte ihtiyacınız olduğunda sizler de konsol üzerinden takvim bilgisine bu şekilde kolayca ulaşabilirsiniz. Komutun ismi “**cal**endar” yani “takvim” ifadesinden geldiği için hatırlaması da kolay aslında. Yine de unutursanız örneğin yardım sayfalarını `apropos calendar` komutu ile kurcalayabilirsiniz mesela. 

```bash
└─$ apropos calendar
cal (1)              - displays a calendar and the date of Easter
ncal (1)             - displays a calendar and the date of Easter
zshcalsys (1)        - zsh calendar system
```

Bakın takvimle ilgili olan komutlar ve açıklamaları listelendi.

Neticede takvimi öğrenebileceğimiz bir komut olduğunu bildiğimiz sürece, ilgili komutun ismini bulmak için yardım sayfalarını kolayca kullanabiliyoruz gördüğünüz gibi.

# Dosyalar Hakkında Bilgi Edinmek

## `which` Komutu

`which` komutunu, çalıştırdığımız araçların dosya konumlarını öğrenmek için kullanabiliyoruz.  

Örneğin sizler de biliyorsunuz ki; ben konsola `ls` yazdığımda kabuk öncelikle `ls` isminde bir yerleşik komutu var mı diye bakıyor, eğer yoksa PATH yolu üzerinde bu isimde bir dosya var mı diye araştırmaya giriyor ve eğer bulabilirse bu dosyayı çalıştırıyor. Zaten bu durumdan eğitimin en başında bahsettik. İşte bash komutunun bulup çalıştırmasına benzer şekilde, `which` komutu da kendisine argüman olarak belirtilmiş olan isimdeki aracın tam dosya konumunu bize bildiriyor. Yani aslında `which` komutu da PATH yoluna bakarak argüman olarak verdiğim aracı araştırıyor. Dolayısıyla PATH yolunda olmayan araçların dosya konumları `which` komutu tarafından bastırılamıyor. 

Hemen `ls` komutunun tam dizin adresine bakalım. 

```bash
└─$ which ls
/usr/bin/ls
```

Bakın `ls` aracı tam olarak ***/usr/bin/ls*** dizini içindeymiş. hatta istersek `which` aracının kendi dosya adresine de bakabiliriz. 

```bash
└─$ which which
/usr/bin/which
```

Bakın `which` aracı da ***/usr/bin/which*** dizini içindeymiş. İşte bu şekilde PATH yolu üzerindeki araçların tam dizin adreslerini öğrenebilirsiniz. Bu komut özellikle bir aracın çalıştırılabilmesi için tam dizin adresinin girilmesi gereken durumlarda bize dizin bilgisini sunması bakımından önemli. Örneğin eğer hatırlıyorsanız, varsayılan kabuğumuzu bash olarak değiştirme işleminden bahsederken, bash kabuğunun dosya konumunu da `which` komutu sayesinde bulmuştuk. `which` komutu, özellikle bash kabuk programlamada sıklıkla kullanıldığı için, ileride karşılaşmanız ve ihtiyaç duymanız olası. Yani hemen şimdi aktif olarak kullanmayacak olsanız bile bu komutu gördüğünüzde hangi amaca hizmet ettiğini artık biliyorsunuz.

## `type` Komutu | `command` & `builtin` Komutları

`type` komutu, isminden de anlaşılabileceği gibi kabuğa girdiğimiz komutların tipiyle türleriyle ilgili bilgileri görüntülemek için kullandığımız bir araçtır. Diğer bir deyişle kabuğa verdiğiniz komutların kabuk tarafından nasıl algılandığını görmenizi sağlıyor. Bu komut özellikle sistemde yüklü bulunan araçların isimleri ile aynı isimde takma isimler yani **alias** tanımlandığında, kabuğun bizim girdiğimiz komutu nasıl gördüğünü anlamak için kullanışlı bir bilgi edinme aracıdır.

Ben denemek için konsola `type ls` yazıyorum. 

```bash
└─$ type ls
ls is aliased to `ls --color=auto'
```

Bakın kabuğa `ls` komutunu verdiğimde aslında kabuğun `ls` komutunu bir takma isim olarak kabul edip buradaki komutu çalıştırdığını öğrendik. Normalde standart `ls` aracı yani biz `ls` komutunu girdiğimizde çalıştırılan dosya ***/usr/bin/ls*** dosyası. Ama `ls` komutu ile aynı isimde yeni bir takma isim tanımlandığı için kabuk bizim girdiğimiz `ls` komutunu öncelikli olarak takma isim olarak dikkate alıyor ve buradaki takma isim tanımlamasından dolayı `ls —color=auto` komutunu çalıştırıyor.

Takma isim dışında kabuğun yerleşik komutlarını da sorgulayabiliriz. 

```bash
└─$ type cd
cd is a shell builtin
```

Bakın `cd` aracı bash kabuğunun yerleşik aracı olduğu için bu çıktıyı almış olduk.

Ayrıca mesela `type bash` komutunu da girebiliriz. 

```bash
└─$ type bash
bash is /usr/bin/bash
```

Bakın bu kez bash kabuğunun dosya konumunu aldık çünkü biz `bash` komutunu girdiğimizde mevcut kabuk bu dizindeki dosyayı çalıştırıyormuş. Bash kabuğu yerleşik bir araç olmadığı için veya bu isimde bir takma isim tanımlanmadığı için bu şekilde doğrudan çalıştırılan dosyanın konumu kabuk tarafından kullanılıyor.

Özetle bakın `type` komutu sayesinde bizim girdiğimiz komutlardaki araç isimlerinin kabuk tarafından nasıl algılandığını öğrenebiliyoruz. 

Peki bizim girdiğimiz komutların kabuk tarafından nasıl algılandığının neden bilmemiz gerekiyor ? 

Bu bilgi önemli çünkü, tıpkı `ls` komutunda olduğu gibi yerleşik ve PATH yolundaki harici komutlarla aynı isimde takma isimler tanımlı olabiliyor. Takma isimler yerleşik ve harici komutlardan daha öncelikli değerlendirildiği için de, girdiğimiz komutlar bizim normalde beklediğimizden daha farklı sonuçlar verebiliyor.

Örneğin ben `alias ls="echo ben takma isimim"` şeklinde yani var olan bir komutla aynı isimde bir takma isim tanımlarsam ne olur ? Hemen deneyelim. 

```bash
└─$ alias ls="echo ben takma isimim"

┌──(taylan@linuxdersleri)-[~]
└─$ ls                                                           
ben takma isimim
```

Gördüğünüz gibi `ls` komutunun neticesinde dizin içeriğini listelemek yerine "ben takma isimim" çıktısını aldık. Çünkü kabuğa girdiğimiz komutlarda ilk olarak eğer komutla eşleşen bir takma isim varsa kabuk bunu dikkate alıyor. Nitekim çıktıdan da bu durumu teyit ettik. İşte girdiğimiz komutun beklediğimizden farklı sonuçlar verdiği durumlarda `type` komutu ile kabuğun bakış açısından girdiğimiz komutu sorgulayabiliyoruz. Bu sayede girdiğimiz komutun neden beklenmedik şekilde çalıştığına dair çözüm için fikir sahibi olmamız mümkün oluyor. 

Örneğin benim `ls` takma ismi örneğinde komutumu `command ls` şeklinde girmem gerekiyor. 

```bash
└─$ command ls                                                   
 abc         harf.txt           liste3            sehir
```

Bakın bu şekilde girdiğimde, `ls` ifadesinin bir komut olduğunu belirtmiş oluyorum. Benim burada kullandığım `command` komutu sayesinde kabuk takma ismi görmezden gelip normla şekilde önce yerleşik komutlara daha sonra `ls` isminin geçtiği PATH yolundaki dizinlere bakıyor ve ***/usr/bin/ls*** dosyasını bulup çalıştırabiliyor. Yani buradaki `command` komutu `ls` komutunun doğrudan çalıştırılacak komut olarak kabul edilmesini sağlıyor.

Aynı durum yerleşik komutlar için de geçerli. Örneğin `cd` yerleşik komutu ile aynı isimde bir `alias` tanımlarsak `cd` komutunu kullandığımızda takma ismin karşılığındaki komut çalıştırılıyor olacak. Denemek için `alias cd=”echo ben cd komutuyum”` şeklinde yazıp onaylayalım. 

```bash
└─$ alias cd="echo ben cd komutuyum"                             

┌──(taylan@linuxdersleri)-[~]
└─$ cd                                                           
ben cd komutuyum

┌──(taylan@linuxdersleri)-[~]
└─$ cd /                                                         
ben cd komutuyum /
```

Bakın `cd` komutu asıl işlevi olan dizin geçişi işlemi yerine bizim tanımladığımız takma ismi kullanılıp konsol çıktı bastırılıyor. Hatta `type cd` komutu ile de teyit edebiliriz. 

```bash
└─$ type cd
cd is aliased to `echo ben cd komutuyum'
```

Bakın `cd` komutu kabuk tarafından artık bir takma isim olarak algılanıyormuş.

Eğer biz bu takma isim yerine `command cd  /` veya `builtin cd /` şeklinde yazarsak, kabuk buradaki `cd` ifadesini ile tanımlı olan takma ismi görmezden gelip `cd` komutunun asıl işlevini yerine getiriyor olacak. 

```bash
└─$ command cd /                                                 

┌──(taylan@linuxdersleri)-[/]
└─$ builtin cd ~

┌──(taylan@linuxdersleri)-[~]
└─$ pwd                                                          
/home/taylan
```

Bakın bu kez `cd` aracı yerleşik komutlar içinde bulunduğu için kök dizine sorunsuzca geçiş yaptık. Girdiğimiz komutun bir yerleşik komut olduğunu özellikle belirtmek için `builtin` komutunu da kullanabileceğimizi görmüş olduk.

Fakat dikkat edin `builtin` komutu yalnızca yerleşik komutları niteliyorken, `command` komutu tüm komut türlerinde takma isimlerin görmezden gelinmesini sağlıyor.

Bu durumu test etmek için yerleşik komut olmayan `ls` komutunu `builtin ls` komutu ile doğrudan çalıştırmayı deneyebiliriz. 

```bash
└─$ builtin ls                                                   
bash: builtin: ls: not a shell builtin
```

Bakın `ls` aracının bash kabuğunun yerleşik aracı olmadığı konusunda hata çıktısı bastırıldı. 

Takma ismin görmezden gelinmesi için `command ls` şeklinde girebiliriz. 

```bash
└─$ command ls                                                   
 abc         harf.txt           liste3            sehir
```

Bakın bu kez `ls` aracı için takma isim görmezden gelinip bu isim doğrudan PATH yolundaki ilgili dosyayı çalıştırmış oldu.

Sanırım bu örneklerle birlikte, neden `type` komutunu kullanma ihtiyacı duyabileceğimiz ve kabuğun bizim girdiğimiz komutlara bakış açısı hakkında temel düzeyde de olsa fikir sahibi olabildik.

`type` komutu hakkında dikkat etmeniz gereken detay, `type` aracının bütüncül olarak girdiğiniz çok argümanlı komutları değerlendirmek için kullanılmadığı. Yalnızca çalıştırılacak olan araçları temsil eden komutların kabuk tarafından nasıl ele alındığını görmemizi sağlıyor.

Yani örneğin `ls` komutunun `-l` seçeneğiyle birlikte bu komutun tipini sorgulamaya çalışabiliriz.

```bash
└─$ command ls                                                   
 abc         harf.txt           liste3            sehir
```

Bakın `ls` komutunun takma isim olduğu ama `-l` ifadesinin bulunamadığı belirtilmiş. Tırnak içinde yazmayı da deneyebiliriz. 

```bash
└─$ type "ls -l"                                                 
bash: type: ls -l: not found

└─$ type 'ls -l'
bash: type: ls -l: not found
```

Bakın bu kez de `ls -l` komutunun bulunamadığı hatasını aldık.

Yani bizzat buradaki örnekler üzerinden de teyit ettiğimiz gibi buradaki `type` aracı yalnızca ona verdiğimiz argümanlardaki araç isimlerin kabuk tarafından nasıl ele alınıp çalıştırılacağı konusunda bilgi sunuyor. Mesela `type ls echo cd nano` şeklinde birden fazla argüman verip, birden fazla aracı temsil eden komutların kabuk tarafından nasıl ele alındığını görebiliriz. 

```bash
└─$ type ls echo cd nano                                         
ls is aliased to `echo ben takma isimim'
echo is a shell builtin
cd is aliased to `echo ben cd komutuyum'
nano is /usr/bin/nano
```

Bakın bu komutlar kabuk tarafından çalıştırılırken buradaki tipleri dahilinde ele alınıp çalıştırılıyorlarmış.

En nihayetinde `type` komutunun bizlere kabuğun bakış açısından komutları görebilme imkanı tanıdığı görmüş olduk. Artık ihtiyacınız olduğunda komutların kabuktaki tip karşılığını nasıl öğrenebileceğinizi biliyorsunuz.

## `file` Komutu

`file` aracını dosyaların türleri hakkında bilgi almak için kullanabiliyoruz.

Özellikle dosya uzantısı bulunmayan ve türünü bilmediğimiz dosyalar hakkında hızlıca bilgi edinmek için file aracı iyi bir tercih. Daha önce sıkıştırmış olduğumuz arşiv dosyasının türünden emin olmak için kullanmıştık hatırlıyorsanız. Tekrar hatırlayacak olursak örneğin `file ~/.bashrc` komutu ile ***.bashrc*** dosyasının türünü sorgulayabiliriz. 

```bash
└─$ file ~/.bashrc
/home/taylan/.bashrc: Unicode text, UTF-8 text
```

Bakın bu dosya aslında “text” dosyasıymış.

Başka bir örnek olarak arşiv dosyasını sorgulayabilirim. 

```bash
└─$ file /var/log/user.log.4.gz 
/var/log/user.log.4.gz: gzip compressed data, last modified: Sat Jun  3 07:27:18 2023, from Unix, original size modulo 2^32 113312
```

Bakın bu arşiv dosyasının, hangi tür arşiv olduğu burada kısaca belirtiliyor. Bu şekilde istediğiniz dosyaları sorgulayıp türleri hakkında bilgi alabilirsiniz. Tek tek tüm dosyalar üzerinde denememize gerek yok. `file` aracına argüman olarak belirttiğiniz dosyalar hakkında bu şekilde kısa bilgi alabiliyoruz. Eğer aldığınız çıktıdaki dosya türünü bilmiyorsanız internet üzerinde araştırıp gerekli bilgiye ulaşabilirsiniz.

Son bir örnek olarak sistemde yüklü bulunan araçların dosyalarını da sorgulayabiliriz. Ben `file /usr/bin/ls` komutu ile `ls` aracının dosya türünü sorguluyorum. 

```bash
└─$ file /usr/bin/ls                                             
/usr/bin/ls: ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=6e3da6f0bc36b6398b8651bbc2e08831a21a90da, for GNU/Linux 3.2.0, stripped
```

Gördüğünüz gibi tür olarak “**ELF”** basıldı. Bu kısaltma “**E**xecutable and **L**inkable **F**ormat” ifadesinin kısalmasıdır. En genel hali ile yürütülebilir dosyaları temsil ediyor. İşte tıpkı sorguladıklarımız gibi, sistem üzerinde pek çok farklı türde dosya bulunuyor. `file` komutu sayesinde de gerektiğinde dosyaların türleri hakkında bilgi edinebiliyoruz. 

## `stat` Komutu

Şimdiye kadar `ls` komutu ile boyut tarih ve isim gibi kriterlere göre filtreleme yaparken bizzat gördüğümüz gibi sistemimizdeki dosya ve klasörlerin kendine ait "isim" "boyut" "dizin adresi" "erişim yetkileri" ve “türü” gibi pek çok öznitelik detayını temsil eden metaverileri bulunuyor. `stat` komutu da dosya veya klasörlerin sahip olduğu öznitelikler yani metaveriler hakkında detaylı bilgi sunan bir komuttur. 

Ben denemek için `touch yeni-dosya` komutuyla yeni bir dosya oluşturup stat komutu ile bu dosyanın metaverilerini kontrol etmek istiyorum. 

```bash
└─$ touch yeni-dosya

└─$ stat yeni-dosya
  File: yeni-dosya
  Size: 0               Blocks: 0          IO Block: 4096   regular empty file
Device: 801h/2049d      Inode: 2893118     Links: 1
Access: (0644/-rw-r--r--)  Uid: ( 1000/    taylan)   Gid: ( 1000/    taylan)
Access: 2023-06-27 02:05:22.675485267 -0400
Modify: 2023-06-27 02:05:22.675485267 -0400
Change: 2023-06-27 02:05:22.675485267 -0400
 Birth: 2023-06-27 02:05:22.675485267 -0400
```

Bakın dosyayla ilgili pek çok detay konsolumuza bastırıldı.

Dosyanın tam ismi, boyutu ve dosya tipi gibi detaylar burada gözüküyor. Örneğin bu dosya içerisi boş standart bir dosya olduğu için “regular empty file” şeklinde çıktı aldık.  

Bunun dışında daha önceki anlatımlarımızda kısaca ele aldığımız “inode” ve “link” bilgisi de burada açıkça belirtiliyor. Buradaki **links**, bu dosyanın **sahip olduğu katı linkleri** temsil ederken, **inode** değeri **diskteki veriye ulaşmayı sağlayan benzersiz index numarasını** belirtiyor. 

Dosyanın erişim izinlerini ve sahiplik bilgilerini de buradan görebiliyoruz. Burası dosyanın yetkilerini, sahibini ve grubunu bize bildiriyor. Erişim yetkilerinden ileride ayrıca bahsediyor olacağız. 

Ayrıca bakın burada dosyanın en son “erişim”, “düzenleme” ve “değişim” tarihleri detaylı şekilde basılmış. Biz dosyayı yeni oluşturduğumuz için hepsi aynı oldu ama aslında:

**Erişim tarihi;** dosyanın en son erişilen tarihi belirtiyor. Örneğin dosyanın okunması veya çalıştırılması gibi bir erişim.

**Düzenleme tarihi;** dosya içeriğinin en son ne zaman değiştirildiğini belirtiyor. 

**Değişim tarihi;** dosyanın meta verilerinin en son ne zaman değiştirildiğini belirtiyor. Örneğin dosyanın ismi değiştirildiyse bu tarih de değişecektir. 

Ayrıca “birth” yani dosyanın ilk oluşturulduğu tarihle ilgili bir satır daha bulunuyor. 

Neticede gördüğünüz gibi `stat` komutu sayesinde dosyaların meta verilerini detaylı şekilde görüntüleyebiliyoruz. 

# Sistem Hakkında Genel Bilgi Edinmek

## `lsb_release` Komutu

`lsb_release` komutu sayesinde mevcut dağıtım hakkında çeşitli bilgiler edinebiliyoruz. Komutumuzda yer alan “**lsb**” ifadesi “**L**inux **S**tandard **B**ase” ifadesinin kısalmasından geliyor. Linux Standard Base kısaca (LSB), Linux sistem yapısını standartlaştırmak için Linux Vakfı'nın organizasyon yapısı altında yürütülen bir projedir. LSB' projesinin en temel amacı, Linux dağıtımları arasındaki uyumluluğu sağlamak için bir dizi açık standart geliştirmek ve bunların kullanımını teşvik etmektir. İşte biz de `lsb_release` komutu ile mevcut dağıtımımızın bu standartlar dahilindeki ismi ve sürümü gibi detayları öğrenebiliyoruz. Tüm bilgileri listelemek için `lsb_release -a` komutunu kullanabiliriz. 

```bash
└─$ lsb_release -a                                               
No LSB modules are available.
Distributor ID: Kali
Description:    Kali GNU/Linux Rolling
Release:        2022.1
Codename:       kali-rolling
```

Bakın çıktılarda, dağıtıcı kimliği, kullandığım dağıtım, sürümü, kodadı gibi detaylar bastırıldı. Bu bilgiler mevcut dağıtım hakkında standart düzende bilgiler sunuyor. Buradaki bilgiler sayesinde mevcut dağıtımın tam olarak hangi sürüm olduğunu anlayabiliyorum.

Aldığımız çıktının başındaki “lsb modülü bulunamadı” hatasına takılmayın. Bu hata `lsb_release` aracının kurulu olduğu ama çekirdek modülünün kurulu olmadığını söylüyor. Şart değil ama dilerseniz lsb çekirdek modülünü nasıl kurabileceğinizi araştırıp kolayca kurulum yapabilirsiniz.

Ayrıca `lsb_release —help` komutu ile yardım bilgilerinde de görebileceğiniz gibi aslında yalnızca -a seçeneği yok. Çeşitli bilgileri ayrı ayrı bastırmamızı sağlayan farklı seçenekler de var. Eğer kabuk programlama sırasında bu bilgilere ayrı ayrı ihtiyacınız olan bir durumla karşılaşırsanız kullanabilirsiniz. Bunun dışında ben yalnızca gerektiğinde mevcut dağıtım bilgisini edinmek için `lsb_release -a` komutunu kullanıyorum.

## `uname` Komutu

`uname` komutu mevcut işletim sistemi ve donanımı hakkında temel bilgiler sağlayan komuttur. Tüm temel bilgilerin hepsini tek seferde öğrenmek için `-a` seçeneğiyle birlikte kullanabiliyoruz. 

```bash
└─$ uname -a
Linux kali 5.15.0-kali3-amd64 #1 SMP Debian 5.15.15-2kali1 (2022-01-31) x86_64 GNU/Linux
```

Buradaki çıktılara bakarak sırasıyla; çekirdek adını, hostname bilgisini yani mevcut cihazımızın ağ üzerinden iletişim kurarken kullandığı adı, sistemin çekirdek sürümünü, tam çekirdek versiyonunu, makinenin donanım mimarisini ve son olarak da işletim sisteminin adını öğrenebiliyoruz.

Mevcut bulunduğumuz sistemi tanımak için yeteri kadar bilgi burada sunuluyor.

Ayrıca isterseniz tek seferde bastırdığımız tüm bu bilgileri ayrı ayrı da bastırabilirsiniz. Seçenekleri görmek için `uname —help` komutunu kullanabilirsiniz. Neticede gördüğünüz gibi `uname` komutu üzerinden mevcut sistemimiz hakkında kolayca bilgi  edinebiliyoruz.

## `uptime` Komutu

`uptime` ifadesi Türkçe olarak “çalışma süresi” anlamına geliyor. 

Adından da anlaşılabileceği gibi `uptime` aracı, sistemin ne kadar süredir çalıştığı konusunda bilgi almamızı sağlayan bir araç. Hemen komutumuzu girip sonuçları üzerinden konuşalım.

 

```bash
└─$ uptime
 02:16:40 up 19 min,  1 user,  load average: 0.06, 0.07, 0.09
```

`uptime` komutunu tek başına seçenek belirtilmeden kullandığımızda sırasıyla; 

mevcut sistem saatini ,

sistemin ne kadar süredir açık olduğunu,

mevcut sistemde açık olan kullanıcı oturumu sayısı

ve son 1, 5 ve 15 dakikanın sistem yük ortalamalarını veriyor.

Buradaki yük ortalaması, sistemin 1 5 ve 15 dakikalık son periyottaki meşguliyetini ifade ediyor. Bu çıktılarda sizin sisteminizde yakın zamanda yani son 15 dakikadan son 1 dakikaya doğru yük miktarın arttığı görülüyorsa sistem yükünün artmakta olduğunu düşünebilirsiniz. 

Şu anda benim sistemin yük altında olmadığı için yani çoğunlukla bekleme modunda olduğu için buradaki değerler sıfıra yakın gözüküyor. Örneğin yük durumunu gözlemlemek `echo {1..999999}` şeklinde komutumuzu girip sistemi suni olarak biraz daha yük altında bırakabiliriz. 

```bash
└─$ echo {1..9999999}
1 2 3 4 5 5 ....
...
..

└─$ uptime                                                       
 02:19:35 up 22 min,  1 user,  load average: 0.13, 0.09, 0.09
```

Bakın yakın zamandaki yük oranı uzak zamana göre artış gösteriyor. Bu çıktı bize, yakın zamanda sistemin daha fazla yük altına girdiğini haber veriyor. 

Burada dikkat etmeniz gereken detay Linux'ta yük ortalamaları yalnızca CPU'lara değil, disk kaynaklarına olan talebi de yansıtıyor olması. Yani disk üzerindeki okuma yazma da sistem yükü ortalamasını etkiliyor. Elbette bu konu çok daha detayı barındırıyor ancak temel seviye için bu detaylar gerekli değil. Yine de daha fazla detay için [buradaki](https://www.brendangregg.com/blog/2017-08-08/linux-load-averages.html) blog yazısını okuyabilirsiniz.

Özetleyecek olursak, eğer sizdeki çıktılarda sistem yükü benim ilk aldığım çıktıda olduğu gibi düşük veya 0 olarak gözüküyorsa, bu durum sisteminizin bu kısa periyotta genellikle beklemede olduğunun bilgisini veriyordur. Eğer yakın zaman aralığında artış görülüyorsa da bu sisteminizin gittikçe daha fazla yük altında kaldığına işaret ediyordur. 

Eğer `uptime` komutundaki bu gibi detayları görmek istemezsek yani bu çıktı yerine yalnızca sistemin ne kadar süredir açık olduğunu daha okunaklı şekilde görmek istersek “**p**retty” ifadesinin kısalması olan `p` seçeneğini de kullanabiliriz. 

```bash
└─$ uptime -p                                                    
up 31 minutes
```

Bakın yalnızca sistemin ne kadar süredir açık olduğunu daha güzel yani okunaklı şekilde bastırmış olduk.

Eğer tarih olarak sistemin ne zaman başlatıldığını yani ilk açılış zamanı görmek istersek “**s**ince” ifadesinin kısaltması olan `s` seçeneğini kullanabiliyoruz. 

```bash
└─$ uptime -s
2023-06-27 01:56:41
```

Bakın sistemin ne zaman başlatıldığı tam tarih ve saat olarak bastırılmış oldu.

`uptime` komutu sistemin çalışma durumunu kontrol etmek için kullandığımız basit ama bilgi verici güzel bir araç. `uptime` hakkında bahsetmemiz gereken ekstra bir detay da bulunmuyor. Zaten yalnızca `-p` ve `-s` olmak üzere iki işlevsel seçeneği var. Unutmanız halinde yardım sayfasından seçeneklerin işlevlerini saniyeler içinde tekrar hatırlayabilirsiniz. Önemli olan `uptime` yani çalışma süresi komutunu biliyor olmanız. Zaten ismi de tam olarak işlevini tanımladığı için kolay kolay da unutmazsınız.

## `free` Komutu

`free` aracı, mevcut bellek kullanımı hakkında bilgi almak için kullandığımız bir araç. Herhangi bir seçenek olmadan doğrudan `free` komutunu kullandığımızda, mevcut bellek ve takas ile ilgili bilgileri kilobayt olarak konsola bastırıyor. 

```bash
└─$ free
               total        used        free      shared  buff/cache   available
Mem:        10945140      803840     9596448        6652      544852     9884496
Swap:         998396           0      998396
```

Bakın fiziksel ve takas alanı için sütunlar halinde pek çok detay bastırıldı. Zaten sütun başlıklarında buradaki miktarların tam olarak neyi temsil ettiği de açıkça belirtiliyor. Buradaki büyüklük birimleri kilobayt cinsinden. Eğer kilobayt yerine daha okunaklı şekilde çıktıları bastırmak istersek “**h**uman readable” ifadesinden gelen “**h**” seçeneğini kullanabiliriz. 

```bash
└─$ free -h
               total        used        free      shared  buff/cache   available
Mem:            10Gi       783Mi       9.2Gi       6.0Mi       532Mi       9.4Gi
Swap:          974Mi          0B       974Mi
```

Tüm çıktılar çok daha okunaklı büyüklük birimleriyle bastırılmış oldu. 

Neticede gördüğünüz gibi `free` komutu sayesinde toplam bellek ve takas alanı hakkında ve ayrıca anlık olarak kullanılan ve boştaki bellek miktarları hakkında kolayca bilgi alabiliyoruz. 

Eğer tek seferliğine değil de belirli bir aralık belirterek bu istatistikleri görmek istersek `-s` seçeneği ile kaç saniyede bir bu değerlerin bastırılacağını da özel olarak belirtebiliriz. Ben denemek için `free -s 3` komutu ile 3 saniyelik aralık belirtiyorum. Biz durduruncaya kadar bu bilgiler 3 saniyede bir konsola bastırılacak. Durdurmak için <kbd>Ctrl</kbd> + <kbd>c</kbd> kısayolunu kullanabiliriz. 

```bash
└─$ free -s 3
               total        used        free      shared  buff/cache   available
Mem:        10945140      798048     9602124        6652      544968     9890288
Swap:         998396           0      998396

               total        used        free      shared  buff/cache   available
Mem:        10945140      797536     9602628        6652      544976     9890800
Swap:         998396           0      998396

               total        used        free      shared  buff/cache   available
Mem:        10945140      797276     9602880        6652      544984     9891060
Swap:         998396           0      998396

               total        used        free      shared  buff/cache   available
Mem:        10945140      797524     9602628        6652      544988     9890812
Swap:         998396           0      998396

               total        used        free      shared  buff/cache   available
Mem:        10945140      797508     9602628        6652      545004     9890828
Swap:         998396           0      998396

^C
```

Gördüğünüz gibi ben durduruncaya kadar 3 saniyede bir ilgili bilgileri konsona bastırmış oldu. 

Eğer istersek buradaki gibi yalnızca saniye aralığı belirtmek yerine basılma sayısını da tam olarak belirtebiliriz. Yani biz durdurana kadar değil bizim önceden belirttiğimiz sayı kadar çıktı basılır. Bunun için “**c**ount” yani “sayma” anlamındaki ifadenin kısaltmasından gelen `c` seçeneği kullanabiliriz. Ben `free -s 2 -c 4` komutu ile 2 saniye aralıkla 4 kez çıktıların bastırılmasını istiyorum.

```bash
└─$ free -s 2 -c 4                                               
               total        used        free      shared  buff/cache   available
Mem:        10945140      796648     9603428        6652      545064     9891684
Swap:         998396           0      998396

               total        used        free      shared  buff/cache   available
Mem:        10945140      796896     9603176        6652      545068     9891436
Swap:         998396           0      998396

               total        used        free      shared  buff/cache   available
Mem:        10945140      797144     9602924        6652      545072     9891188
Swap:         998396           0      998396

               total        used        free      shared  buff/cache   available
Mem:        10945140      797136     9602924        6652      545080     9891196
Swap:         998396           0      998396
```

2 saniye aralıkla yalnızca 4 kez bellek kullanımı hakkındaki son durum bastırılmış oldu.

Bu seçenekler dışında `free` komutunun yardım sayfasında yer alan seçenekler de zaten standart kullanımdaki çıktıları sınırlamak veya genişletmek için kullanılan ek özelliklerdir. Dilerseniz buradaki seçenekler ile çıktıları istediğiniz formda bastırabilirsiniz.

Ayrıca aldığımıza çıktılarda yer alan “shared” sütunu eskiye dönük uyumluluk için mevcut olan ve günümüzde geçerli kullanımı olmayan bir sütun. Buffer ve cache kavramlarının ne ifade ettiğini bilmiyorsanız ayrıca araştırıp öğrenebilirsiniz. En özet haliyle, tekrar kullanılacak verilerin bellekte tutularak hızlı erişimi mümkün kılan bir mekanizma. Buradaki buff/cache bilgisi de bu amaçla bellekte tutulan veri miktarını belirtiyor. Daha fazla detayı öğrenmek isterseniz ek araştırma yapabilirsiniz zira, tam anlaşılmaları bu bölümde açıklanamayacak kadar uzun sürebilir. Eğer profesyonel anlamda sistem yönetimiyle ilgili değilseniz bu detay sizin için zaten önemli değil. Diğer sütunlardaki veriler de oldukça açık şekilde “toplam”, “kullanılan” ve “boştaki” bellek miktarları hakkında bilgi sunuyor.

## `du` Komutu

`du` komutu "**d**isk **u**sage" yani "disk kullanımı" ifadesinin kısaltmasından geliyor. Bu araç sayesinde dosyalar veya dizinler tarafından kullanılan tahmini disk alanını öğrenebiliyoruz. Büyük miktarda disk alanı kaplayan dosya ve dizinleri bulmak için kullandığımız pratik bir araç.

`du` komutu herhangi bir seçenek veya argüman olmadan çalıştırıldığında, mevcut dizindeki ve alt dizinlerdeki tüm dosya ve klasörlerin disk kullanımını bayt cinsinden konsola bastırıyor. Ben şu an kendi ev dizinimdeyim. Denemek için yalnızca `du` yazıp komutumu onaylıyorum.

```bash
└─$ du
4       ./.gnupg/private-keys-v1.d
8       ./.gnupg
8       ./.java/.userPrefs/burp
12      ./.java/.userPrefs
16      ./.java
4       ./Templates
4       ./linkler
4       ./Music
4       ./Videos
4       ./yeni klasor
4       ./yeni/y
12      ./yeni
..
..
..
36      ./.cache/pip/wheels
100     ./.cache/pip
436     ./.cache/samba
4       ./.cache/mesa_shader_cache
8       ./.cache/sessions/thumbs-kali:0
20      ./.cache/sessions
4       ./.cache/obexd
185048  ./.cache
4       ./Documents/belgeler
12      ./Documents
8       ./Desktop/yeni-dizin
12      ./Desktop
175436  ./Downloads
8       ./calısma
4       ./ada
4       ./Pictures/bulbeni
20      ./Pictures/Yeni Klasor/yeni-isim
24      ./Pictures/Yeni Klasor
3020    ./Pictures
389344  .
```

Çıktılar çok uzun olduğu için buraya kısaltarak ekledim fakat alt dizinler de dahil tüm dizinlerdeki klasörlerin bastırıldığı ve en altta toplam disk boyutunun verdiğini görebiliyoruz.

Fark ettiyseniz klasörler içerisinde yer alan dosyaların isimleri bastırılmadı ama tabii ki bu dosyaların boyutları bulundukları klasörler aracılığıyla burada belirtiliyor. Bu sayede çıktılar çok uzamadan mevcut dizin altındaki tüm klasörlerin büyüklüklerini listeleyebiliyoruz.

Yine de ev dizinimde çalıştırdığım için aldığımız bu çıktılar uzun olduğu için size karmaşık gelmiş olabilir. Daha yalın bir çıktılar üzerinden konuşsak daha iyi olacak.

Örneğin ben “***isimler.txt***” dosyasının boyutunu öğrenmek üzere `du isimler.txt` komutunu giriyorum.

```bash
└─$ du isimler.txt                                               
8       isimler.txt
```

Bakın dosyanın kaç kilobayt disk alanı kapladığı bastırıldı. Dilersek birden fazla dosyanın boyutuna da kolayca bakabiliriz. Hatta `-h` seçeneğini eklersek büyüklüklerin gösterimi bakımından daha okunaklı çıktılar da elde edebiliriz. 

```bash
└─$ du -h isimler.txt liste1 ~/Downloads/linux.zip 
8.0K    isimler.txt
4.0K    liste1
58M     /home/taylan/Downloads/linux.zip
```

Bakın dosyanın tam dizin adresini belirttiğimiz sürece sorunsuzca istediğimiz dosyaların boyutlarını öğrenebiliyoruz. Dosya üzerinde kullanımı gayet basit ve yalın. Birde klasörler üzerinde gözlemleyelim. Ben gözlemleyebilmek için içerisinde web sitesinin dosyalarını ve iç içe klasörler barındıran Downloads dizini atlındaki “linux-dersleri” klasörünün disk üzerinde kapladığı alanı `du -h ~/Downloads/linux-dersleri` komutu ile sorguluyorum.

```bash
└─$ du -h ~/Downloads/linux-dersleri                             
736K    /home/taylan/Downloads/linux-dersleri/docs/temel-linux
748K    /home/taylan/Downloads/linux-dersleri/docs
208K    /home/taylan/Downloads/linux-dersleri/css
1.3M    /home/taylan/Downloads/linux-dersleri/img/10- Süreç İşlemleri
3.1M    /home/taylan/Downloads/linux-dersleri/img/1- Komut Satırı
1.5M    /home/taylan/Downloads/linux-dersleri/img/9- Kullanıcı İşlemleri
120K    /home/taylan/Downloads/linux-dersleri/img/0- Gerekli Ortamın Kurulması
764K    /home/taylan/Downloads/linux-dersleri/img/5- Dizin İşlemleri
420K    /home/taylan/Downloads/linux-dersleri/img/20- Log Dosyaları
512K    /home/taylan/Downloads/linux-dersleri/img/2- Yardım Alma Komutları
5.6M    /home/taylan/Downloads/linux-dersleri/img/Linux Nedir
344K    /home/taylan/Downloads/linux-dersleri/img/12- Çalışma Seviyeleri(Runlevels)
320K    /home/taylan/Downloads/linux-dersleri/img/15- Joker Karakterler
1.5M    /home/taylan/Downloads/linux-dersleri/img/11-Disk İşlemleri
2.5M    /home/taylan/Downloads/linux-dersleri/img/14- Güncelleme Kurma Kaldırma İşlemleri
1.3M    /home/taylan/Downloads/linux-dersleri/img/3- Bilgi Alma Komutları
396K    /home/taylan/Downloads/linux-dersleri/img/19- Zamanlanmış Görevler
1.4M    /home/taylan/Downloads/linux-dersleri/img/18- Konsol Üzerinden Dosya İndirmek
1.2M    /home/taylan/Downloads/linux-dersleri/img/6- Dosya İşlemleri
11M     /home/taylan/Downloads/linux-dersleri/img/menu
2.6M    /home/taylan/Downloads/linux-dersleri/img/17- Vim Editörü
424K    /home/taylan/Downloads/linux-dersleri/img/7- Dosya Arşivleme
3.1M    /home/taylan/Downloads/linux-dersleri/img/4 -Linux Dosya Sistemi Hiyerarşisi
508K    /home/taylan/Downloads/linux-dersleri/img/8- Erişim Yetkileri
324K    /home/taylan/Downloads/linux-dersleri/img/13- Sembolik Link Ve Katı Link
21M     /home/taylan/Downloads/linux-dersleri/img/21-Sistem Görünümünü Özelleştirme
836K    /home/taylan/Downloads/linux-dersleri/img/16- Ağ Komutları
61M     /home/taylan/Downloads/linux-dersleri/img
1.1M    /home/taylan/Downloads/linux-dersleri/fonts
240K    /home/taylan/Downloads/linux-dersleri/js
63M     /home/taylan/Downloads/linux-dersleri
```

Şimdi çıktılara bakalım. Bakın en altta klasörün içindeki tüm dosya ve klasörlerle birlikte diskte kapladığı toplam disk alanı basılmış. Sonda başa doğru da alt klasörlerin disk üzerindeki boyutları yer alıyor. Her dizin yalnızca kendi içindeki dosya ve klasörlerin toplam boyutunu veriyor, bu şekilde içe içe olan tüm dizinlerin boyut bilgisi sırasıyla bastırılmış oluyor. Neticede gördüğünüz gibi `du` komutu sayesinde bir klasör içinde tüm dizinlerin disk üzerinde toplam kapladıkları alan hakkında kolayca bilgi alabildik. Fakat dikkatinizi çektiyse dosyaların diskte kapladığı alan toplam alana ekleniyor olsa da dosya isimleri yine bastırılmadı. 

Eğer klasörler ile birlikte dosyaların da bastırılmasını istersek `a` seçeneği ile tüm içeriğin bastırılmasını söyleyebiliriz. Ben komutumu çağırıp, `a` seçeneği ekleyip tekrar giriyorum. 

```bash
└─$ du -ha ~/Downloads/linux-dersleri                            
4.0K    /home/taylan/Downloads/linux-dersleri/menu.html
4.0K    /home/taylan/Downloads/linux-dersleri/bildirim.html
20K     /home/taylan/Downloads/linux-dersleri/hakkinda.html
..
4.0K    /home/taylan/Downloads/linux-dersleri/js/main.js
4.0K    /home/taylan/Downloads/linux-dersleri/js/fluidtextresizer.js
4.0K    /home/taylan/Downloads/linux-dersleri/js/script.js
240K    /home/taylan/Downloads/linux-dersleri/js
24K     /home/taylan/Downloads/linux-dersleri/sw_sayfa.js
44K     /home/taylan/Downloads/linux-dersleri/liste.html
63M     /home/taylan/Downloads/linux-dersleri
```

Çıtılar uzun olduğu için ben kısaltarak buraya ekledim fakat gördüğünüz gibi `a` seçeneği sayesinde klasörün içindeki tüm dosya ve dizinlerin disk üzerinde kapladıkları alanın bilgisini kolayca bu çıktıdan öğrenebiliyoruz.

İlgili dizindeki tüm içeriği bastırmak dışında ayrıca dilersek yalnızca belirttiğimiz klasörün boyutunu öğrenmek için “**s**ummarize” yani “özetlemek” ifadesinin kısalmasından gelen `s` seçeneğini de kullanabiliriz. Ben yine “***linux-dersleri***” klasörü üzerinde denemek istiyorum. Bakın yalnızca bu klasörün toplam boyutunu bastırdım.

```bash
└─$ du -hs ~/Downloads/linux-dersleri                           
63M     /home/taylan/Downloads/linux-dersleri
```

Bunlar dışında eğer istersek spesifik olarak belirttiğimiz birden fazla dosya ve klasörün toplam disk boyutunu da öğrenebiliriz. Normalde örneğin ben ev dizinimde ismi büyük “**D**” ile başlayan tüm içeriklerin `du` aracı ile boyut bilgisini sorgularsam hepsinin ayrı ayrı büyüklükleri bastırılacak. Hemen denemek için özet ve okunaklı çıktı almak üzere `du -sh ~/D*` şeklinde komutumuzu girelim. 

```bash
└─$ du -sh ~/D*                                                  
12K     /home/taylan/Desktop
12K     /home/taylan/Documents
234M    /home/taylan/Downloads
```

Bakın büyük “**D**” karakteri ile başlayan içeriklerin hepsinin ayrı ayrı büyüklükleri konsola bastırıldı. Eğer bu içeriklerin toplam boyutlarının da bastırılmasını istiyorsak komutumuza `c` seçeneğini de ekleyebiliriz. 

```bash
└─$ du -shc ~/D*                                                 
12K     /home/taylan/Desktop
12K     /home/taylan/Documents
234M    /home/taylan/Downloads
234M    total
```

Bakın bu kez en alt satırda, tüm içeriklerin toplam boyutu da özellikle bastırılmış oldu.

Neticede farklı örnekler üzerinden de bizzat teyit ettiğimiz gibi dosya ve klasörlerimizin disk üzerinde kapladıkları alan bilgisini öğrenmek için `du` komutunu çok kolay şekilde kullanabiliyoruz. Ayrıca tabii ki ben `du` aracının tüm özelliklerinden yani tüm seçeneklerinden bahsetmedim. Eğer  yardım sayfasına bakacak olursanız daha fazla kullanım seçeneği olduğunu da görebilirsiniz. Ancak benim ele aldıklarım dışındaki diğer seçenekler pek sık tercih edilmediği için ve artık `du` aracının temel çalışma yapısını öğrendiğiniz için ben tüm seçenekleri tek tek açıklama gereği duymuyorum tabii ki. Dilerseniz zaten temelde nasıl çalıştığını bildiğiniz için buradaki ek seçenekleri keşfedebilirsiniz. Sizin de bildiğiniz gibi yardım sayfaları hep bir komut uzağınızda.

Ben son olarak sistemimize bağlı bulunan bazı aygıtları listelememizi sağlayan birkaç bilgi alma komutundan da bahsedip bu bölümü sonlandırmak istiyorum.

## `lsusb` & `lspci` & `lshw`

Sistemimize bağlı bulunan USB aygıtları listelemek istersek, `lsusb` komutun kullanabiliyoruz. Zaten komutun ismi, işlevini gayet iyi biçimde açıklıyor. Hemen `lsusb` şeklinde komutumuzu girelim.

```bash
└─$ lsusb
Bus 001 Device 002: ID 80ee:0021 VirtualBox USB Tablet
Bus 001 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
```

Bakın benim sisteminde şu anda bu aygıtlar USB ile bağlı gözüküyor. Ben sanal makine üzerinden çalıştığım için çok aygıt listelenmedi ancak normalde USB ile bağlı olan aygıtlar burada listeleniyor. Örneğin USB üzerinden harici bir wifi kartı taktığınızda aygıt hakkında buradan bilgi alabilirsiniz. USB wifi aygıtınız sistem tarafından tanınmıyorsa, aygıtınızı takıp `lsusb` komutu ile bu liste üzerinden aygıtın buradaki ID sine bakabilirsiniz. Bu id üzerinden internette araştırma yaparak uygun aygıt sürücüsü olup olmadığını sorgulayabilirsiniz. Kullanmakta olduğunu dağıtıma kurmak için forumlarda mutlaka daha önce pek çok kişi soru sorup yanıt almıştır. Eğer sorulmadıysa siz de sorabilirsiniz. Ayrıca github gibi harici kaynaklardan da aygıt sürücülerini araştırabilirsiniz.

Neticede `lsusb` komutu sayesinde gerektiğinde sistemimize bağlı olan USB aygıtları hakkında bilgi almamız mümkün oluyor.

Benzer şekilde **pci veriyolu** üzerinden sistemimize bağlı aygıtları görüntülemek için de `lspci` komutunu kullanabiliyoruz. 

```bash
└─$ lspci
00:00.0 Host bridge: Intel Corporation 440FX - 82441FX PMC [Natoma] (rev 02)
00:01.0 ISA bridge: Intel Corporation 82371SB PIIX3 ISA [Natoma/Triton II]
00:01.1 IDE interface: Intel Corporation 82371AB/EB/MB PIIX4 IDE (rev 01)
00:02.0 VGA compatible controller: VMware SVGA II Adapter
00:03.0 Ethernet controller: Intel Corporation 82540EM Gigabit Ethernet Controller (rev 02)
00:04.0 System peripheral: InnoTek Systemberatung GmbH VirtualBox Guest Service
00:05.0 Multimedia audio controller: Intel Corporation 82801AA AC'97 Audio Controller (rev 01)
00:06.0 USB controller: Apple Inc. KeyLargo/Intrepid USB
00:07.0 Bridge: Intel Corporation 82371AB/EB/MB PIIX4 ACPI (rev 08)
00:0d.0 SATA controller: Intel Corporation 82801HM/HEM (ICH8M/ICH8M-E) SATA Controller [AHCI mode] (rev 02)
```

Bakın `lsusb` komutuna benzer şekilde bu kez **pci** bağlantısı olan aygıtlar listelenmiş oldu.

Eğer sisteme bağlı bulunan bütün aygıtları listelemek istersek de `lshw` komutunu kullanabiliyoruz. Buradaki “**hw”** ifadesi “**h**ard**w**are” yani “donanım” ifadesinin kısaltmasından geliyor. Komutumuzu girip sonuçlar üzerine tekrar konuşalım. 

```bash
└─$ lshw
bash: /usr/bin/lshw: No such file or directory
```

Benim sistemimde bu araç yüklü değişmiş. Kurmak için `sudo apt install lshw -y` komutunu girelim.

```bash
└─$ sudo apt install lshw
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  lshw
0 upgraded, 1 newly installed, 0 to remove and 1829 not upgraded.
Need to get 300 kB of archives.
After this operation, 941 kB of additional disk space will be used.
Get:1 http://http.kali.org/kali kali-rolling/main amd64 lshw amd64 02.19.git.2021.06.19.996aaad9c7-2+b1 [300 kB]
Fetched 300 kB in 11s (26.7 kB/s)
Selecting previously unselected package lshw.
(Reading database ... 291347 files and directories currently installed.)
Preparing to unpack .../lshw_02.19.git.2021.06.19.996aaad9c7-2+b1_amd64.deb ...
Unpacking lshw (02.19.git.2021.06.19.996aaad9c7-2+b1) ...
Setting up lshw (02.19.git.2021.06.19.996aaad9c7-2+b1) ...
Processing triggers for kali-menu (2021.4.2) ...
Processing triggers for man-db (2.9.4-4) ...
```

Tamamdır aracım kuruldu. Şimdi tekrar `lshw` komutu ile tüm donanımları listelemeyi deneyelim.

```bash
└─$ lshw
WARNING: you should run this program as super-user.
kali                        
    description: Computer
    width: 64 bits
    capabilities: smp vsyscall32
  *-core
       description: Motherboard
       physical id: 0
     *-memory
          description: System memory
          physical id: 0
          size: 10GiB
     *-cpu
          product: Intel(R) Core(TM) i7-6700 CPU @ 3.40GHz
          vendor: Intel Corp.
          physical id: 1
          bus info: cpu@0
          version: 6.94.3
          width: 64 bits
          capabilities: fpu fpu_exception wp vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx rdtscp x86-64 constant_tsc rep_good nopl xtopology nonstop_tsc cpuid tsc_known_freq pni pclmulqdq ssse3 cx16 pcid sse4_1 sse4_2 movbe popcnt aes rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti fsgsbase bmi1 bmi2 invpcid rdseed clflushopt md_clear flush_l1d arch_capabilities
          configuration: microcode=4294967295
     *-pci
          description: Host bridge
          product: 440FX - 82441FX PMC [Natoma]
          vendor: Intel Corporation
          physical id: 100
          bus info: pci@0000:00:00.0
          version: 02
          width: 32 bits
          clock: 33MHz
        *-usb
             description: USB controller
             product: KeyLargo/Intrepid USB
             vendor: Apple Inc.
             physical id: 6
             bus info: pci@0000:00:06.0
             version: 00
             width: 32 bits
             clock: 33MHz
             capabilities: ohci bus_master cap_list
             configuration: driver=ohci-pci latency=64
             resources: irq:22 memory:f0804000-f0804fff
        *-bridge
             description: Bridge
             product: 82371AB/EB/MB PIIX4 ACPI
             vendor: Intel Corporation
             physical id: 7
             bus info: pci@0000:00:07.0
             version: 08
             width: 32 bits
             clock: 33MHz
             capabilities: bridge
             configuration: driver=piix4_smbus latency=0
             resources: irq:9
  *-input:0
       product: AT Translated Set 2 keyboard
       physical id: 1
       logical name: input0
       logical name: /dev/input/event0
       logical name: input0::capslock
       logical name: input0::numlock
       logical name: input0::scrolllock
       capabilities: i8042
WARNING: output may be incomplete or inaccurate, you should run this program as super-user.
```

Çıktıları kısaltarak vermiş olmama karşın farlı kategoriler altında bilgisayara bağlı bulunan aygıtların listelendiğini görebiliyoruz. 

Ayrıca benim kısaltmış olmam dışında eğer sizin aldığınız çıktılarda aygıtlar eksikse, aracınızı `sudo lshw` komutuyla yetkili şekilde çalıştırmayı deneyebilirsiniz. Tabii ki bu bilgiler sürekli olarak ihtiyacımız olacak türden bilgiler de değil. Yalnızca aygıtınızla ilgili sorun çözmeniz gerektiğinde size bilgi vermesi için veya belki forumlarda destek isterken kullanabileceğiniz basit işlevsel bir araç yalnızca. 

En nihayetinde bence komut satırı üzerinden mevcut sistemin aygıtları hakkında bilgi almak için bu bahsetmiş olduğumuz komutlar çoğu durumda yeterli. 

Ben özellikler değinmeyeceğim ama hem bu bahsetmiş olduğumuz komutların ek seçenekleri hem de ayrıca bir çok aygıt hakkında bilgi sunan ek komutlar da mevcut. Merak ediyorsanız biraz araştırma ile diğer komutları ve seçeneklere kolayca ulaşabilirsiniz. Örneğin bizim bahsetmiş olduğumuz komutların yardım sayfalarına bakarak diğer seçenekler hakkında bilgi sahibi olup, sonuçlarını bizzat test ederek gözlemleyebilirsiniz. 

Bu bölümde ele aldığımız komutlar genel bilgi alma komutları olduğu için çok fazla üzerine düşüp uzun açıklamalar yapmak istemedim çünkü pek çok farklı türde bilgi sunan komutları ele aldığımız için detaylıca bahsetmeye kalksaydık bu bölüm çok uzun sürebilirdi. Üstelik çoğu ek araç temel sistem yönetimi için bilmenizin şart olmadığı ek bilgi araçları. Ben sadece en temel bilgi alma komutlarının en temel işlevlerini odaklandım. Bu sayede daha fazlası için gerektiğinde yardım sayfaları ve internet araştırması ile tüm sorularınıza yanıt bulabilirsiniz.
