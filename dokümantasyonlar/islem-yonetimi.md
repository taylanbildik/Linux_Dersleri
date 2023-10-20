# İşlem Yönetimi

Bu bölümde "**process**" olarak geçen "**işlem**" kavramının anlaşılması ve yönetilebilmesi üzerinde duracağız. Öncelikle isim tanımı ile başlayacak olursak. Kimi zaman "**process**" terimi için Türkçe olarak "**süreç**" ifadesi hatta doğrudan "**proses**" kullanılsa da, terimin yapısı gereği Türkçe "**işlem**" ifadesi daha doğru bir tanımlama olacaktır. Ben de anlatımlar sırasında "**process**" kavramı için "**işlem**" ifadesini kullanıyor olacağım. Bu açıklamayı, harici Türkçe kaynaklara göz attığınızda "**işlem**" yerine "**süreç**" ya da "**proses**" ifadeleriyle karşılaşmanız halinde herhangi bir karışıklık yaşamamanız için kısaca dile getirmek istedim. 

<p class="mavi">
ℹ️ Buradaki anlatımları yalnızca temel sistem yönetimi kapsamında ele alıyor olacağız. Daha fazla detay için elbette işletim sistemi özelinde harici kaynaklara(işletim sistemi nasıl çalışır? işletim sistemi nasıl programlanır ? vb.) kaynaklara göz atabilirsiniz.

</p>

## İşlem(Process) Nedir?

Oldukça genel bir tanımla, söz konusu işletim sistemleri olduğunda; diskimiz üzerinde mevcut bulunan ve sistemin çalıştırabileceği yapıda olan her türlü programın öncelikle RAM yani hafızaya yüklenmesi ve oradan da sırası geldiğinde CPU yani işlemci üzerinde işlenmesine bütüncül olarak "***process***" yani "***işlem***" diyoruz. 

![process.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/islem/process.webp)

Buradaki açıklama **son derece yüzeysel** fakat bulunduğumuz noktada temel işlem yönetimi için daha fazla bilgiye henüz gerek yok.

Kullandığımız araçlar, komutlar sistem üzerinde “**işlem**” olarak var oldukları için sistemi yönetebilmek için işlemleri de yönetebiliyor olmamız şart.

İşlem yönetimini de, kabuğun başlattığı ve sistem genelinde kabuktan bağımsız başlatılmış olan işlemlerin yönetimi olarak ikiye ayırabiliriz. Öncelikle kabuğun başlattığı işlemleri ele alacak olursak:

Kabuk başlatabileceği iki tür işlem vardır.

- **Ön Planda(Foreground) Çalışanlar:** Çalışmak için kullanıcı(konsol vasıtası ile) etkileşimine ihtiyacı olan işlemlerdir.
- **Arka Planda(Background) Çalışanlar:** Kullanıcı etkileşimi olmaksızın arka planda otomatik olarak işlerini yürüten işlemlerdir.

# Bash Kabuğunda İşlem Başlatmak

Anlatımın başında da belirttiğimiz gibi arka planda ve ön planda çalışan olmak üzere iki tür işlem mevcuttur.

Ön plandaki(foreground) işlemler terminal araçlarına bağımlı olan işlemlerdir. Bu işlemlerin durdurulması, devam ettirilmesi veya sonlandırılması gibi işlemler için bu işlemlerin başlatıldıkları kabuğa ve konsola ihtiyaçları vardır. Bu sebeple ön planda çalışan işlem sınıfındadırlar. 

Arka plandaki(background) işlemler terminal aracından bağımsızdır. Yönetimi(durdurulması, devam ettirilmesi, sonlandırılması vb..) için işlemi başlatan konsola veya kabuğa yani kullanıcı etkileşimine ihtiyaç duymadan arka planda işlerini yerine getirirler. 

## Ön Plandaki İşlemler

Örneğin konsola `firefox` komutunu girecek olursak mevcut kabuk, `firefox` aracını bulup çalıştıracaktır. 

![firefox.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/islem/firefox.webp)

Fakat **firefox** aracı açık olduğu sürece “`firefox`” komutunu girmiş olduğumuz konsola yani bu kabuğa yeni herhangi bir komut giremeyiz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ firefox
[GFX1-]: Unrecognized feature VIDEO_OVERLAY
ls
echo "deneme"
```

Çünkü **firefox** aracı mevcut konsola bağlı ve bizim konsoldan etkileşim kurabileceğimiz şekilde ön planda başlatılan bir işlemdir. Bu sayede ben bu aracı durdurma kapatma gibi işlemleri bu konsol üzerinden gerçekleştirebilirim. Örneğin kapatmak için konsola <kbd>Ctrl</kbd> + <kbd>C</kbd> tuşlamasını yapabilirim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ firefox
[GFX1-]: Unrecognized feature VIDEO_OVERLAY
ls
echo "deneme"
^CExiting due to channel error.
Exiting due to channel error.
Exiting due to channel error.
Exiting due to channel error.
```

Üstelik ön plandaki işlemler grafiksel arayüze sahip olmak zorunda da değil. Örneğin `cat > deneme` komutunu girdiğimizde mevcut konsol, `cat` aracının “***deneme***” isimli dosyaya veri yazması için işlemi beklemeye başlıyor. Yani konsol sayesinde `cat` aracı ile etkileşimde bulunuyoruz. Bu noktada mevcut konsola başka bir komut girmemiz mümkün değil. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat > deneme
bu 
bir 
deneme
echo deneme
ls
```

Ben <kbd>Ctrl</kbd> + <kbd>D</kbd> tuşlaması ile veri girişini sonlandırana kadar `cat` işlemi ön planda bu konsol üzerinden benden etkileşim bekliyor olacak. İşte bu da ön planda çalışan ve kullanıcı etkileşimine ihtiyaç duyan işleme bir diğer örnektir. 

## Arka Plan İşlemleri

Arka plan işlemleri sistem tarafından başlatılabileceği gibi kabuğumuz üzerinden başlatmamız da mümkündür. Örneğin ben **firefox** aracını arka planda başlatmak ve mevcut konsolu meşgul etmesini önlemek istersem bash kabuğuna `firefox &` komutunu girebilirim.

![firefox-bg.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/islem/firefox-bg.webp)

Başlatılan **firefox** işleminin **pid** yani **işlem numarası** konsola bastırıldı ve aracım açıldı. Burada bahsi geçen **pid** yani **işlem numarası** ileride kullanacağımız benzersiz bir değer. Şimdilik bu değere takılmayın. Firefox aracı arka planda açıldığı için bu aracı açan konsol bu işlem ile meşgul değil. Bu sebeple konsola yeni komutlar girmemiz mümkün.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ firefox &
[1] 9830

┌──(taylan㉿linuxdersleri)-[~]
└─$ [GFX1-]: Unrecognized feature VIDEO_OVERLAY
└─$ ls
'bu bir deneme metnidir'   Desktop       Music       test
 deneme                    Documents     Pictures    testfile.sh
 deneme-kati               Downloads     Public      testfolder
 deneme-sembolik           isimler.txt   Templates   Videos

┌──(taylan㉿linuxdersleri)-[~]
└─$ echo "deneme"
deneme
```

Bash kabuğu üzerinde bir işlemi arka planda başlatmak bu kadar kolay. Bizim başlattığımız arka plandaki işlemler dışında zaten sistem üzerindeki neredeyse tüm işlemler arka plandadır. Yani çalışmaları için doğrudan her zaman bizim etkileşimimize ihtiyaçları yoktur. Çalışır ve görevlerini yerine getirirler. 

# İş Kontrolü | Job Control

Eğer kabuk aracılığı ile bir işlem başlatıldıysa bu işlemi yine bu kabuk üzerinden kontrol edebiliyoruz. Bunun için **bash** kabuğunda “**job control**” isimli bir mekanizma mevcut.

### İşlemleri Listelemek | `jobs`

Ben örnek olması için öncelikle `firefox &` komutu ile mevcut kabuk üzerinden arka planda çalışan bir işlem başlatıyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ firefox &
[1] 12063

┌──(taylan㉿linuxdersleri)-[~]
└─$
```

Başlatılan işlemin işlem numarası konsola bastırıldı. Bu bilgi dışında eğer başlatılan işlemin durumunu kontrol etmek istersek `jobs` komutunu girip, mevcut kabuğun kontrolünde olan tüm işlemleri listeleyebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ jobs
[1]+  Running                 firefox &
```

Mevcut kabuk üzerinden yalnızca **firefox** aracını arkaplanda çalıştırdığımız bu çıktıyı aldık. Bu çıktının mevcut kabuğa özel olduğunu teyit etmek isterseniz yeni bir konsol açıp bu konsola yani aslında bu yeni kabuğa yine `jobs` komutunu girebilirsiniz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ jobs

┌──(taylan㉿linuxdersleri)-[~]
└─$
```

Yeni kabukta bir çıktı almadık, çünkü bu yeni kabuk üzerinden henüz bir işlem başlatmadık. Bu çıktıyla birlikte, kabukların yalnızca kendi başlattıkları işlemleri “job control” mekanizması üzerinden yönetebileceğini de teyit etmiş olduk.

Şimdi tekrar çıktımıza dönecek olursak işlemin başında gördüğümüz “**1**” numarası, bu işlemin mevcut kabuktaki **işlem sırasıdır**. Yani işlem numarasından(**pid**) farklı olarak, mevcut kabuktaki işlemlerin sahip olduğu sıralama sayısıdır. Bu sayede mevcut kabuk üzerinde çok daha az işlem başlatıldığı için bu sayılar üzerinden yönetmek çok daha kolay oluyor. 

İşlem numarasından sonra gelen “**Running**” ifadesi, bu işlemin şu anda çalışmakta olduğunu bildiren durum bilgisidir. Bu bilgiden yola çıkarak işlem hakkında bilgi alabiliyoruz. 

Sonda ise, bu işlemin komut bilgisi yani bu işlemin hangi komuta ait olduğu bildiriliyor.

## İşlem Kontrolü

Bash kabuğunun kontrolünde olan işlemler, bash için birer “**iş**” yani “**job**” olarak geçiyor. Bunların yönetimi için de birkaç farklı komuta sahibiz.

### İşi Ön Plana Almak

Arka plandaki işlemi ön plana almak için “**f**ore**g**round” ifadesinin kısaltmasından gelen `fg` aracınıı, `fg iş-numarası` şeklinde kullanabiliyoruz. Arka planda çalışmakta olan **firefox** işleminin, benim kabuğumdaki iş numarası **1** olduğu için ben `fg 1` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ jobs
[1]+  Running                 firefox &

┌──(taylan㉿linuxdersleri)-[~]
└─$ fg 1
firefox
ls
echo
```

**firefox** işlemi ön plana alındığı için kabuğa yeni komutlar veremez olduk çünkü kabuk şu anda yalnızca firefox işlemi ile meşgul. Ön plandaki işlemi durdurmak için <kbd>Ctrl</kbd> + <kbd>Z</kbd> tuşlaması yapabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ fg 1
firefox
ls
echo
^Z
[1]+  Stopped                 firefox

┌──(taylan㉿linuxdersleri)-[~]
└─$ jobs
[1]+  Stopped                 firefox
```

<kbd>Ctrl</kbd> + <kbd>Z</kbd> ile işlemi durdurduğum için `jobs` komutunun çıktısında “**Stopped**” yazıyor. Şu anda **firefox** işlemi durduğu için **firefox** aracını kullanamayız. Teyit etmek isterseniz firefox aracını kullanmayı deneyebilirsiniz. 

### İşi Arka Plana Almak

Başlatılmış olan işlemleri arka plana almak için işlemi durdurduktan sonra “**b**ack**g**round” ifadesinin kısaltmasından gelen `bg iş-numarası` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ jobs
[1]+  Stopped                 firefox

┌──(taylan㉿linuxdersleri)-[~]
└─$ bg 1
[1]+ firefox &

┌──(taylan㉿linuxdersleri)-[~]
└─$ jobs
[1]+  Running                 firefox &
```

Daha önce durdurmuş olduğumuz işlem, arka plana alınmasıyla birlikte `jobs` komutunun çıktısından da teyit edebildiğimiz üzere çalışmaya devam ediyor.

### İşi Sonlandırmak

Eğer işlemi sonlandırmak istersek “öldürmek” anlamındaki `kill % iş-numarası` komutunu kullanabiliyoruz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]                                               
└─$ jobs                                                                     
[1]+  Running                 firefox &                                                                                                                                     
                                                                             
┌──(taylan㉿linuxdersleri)-[~]                                               
└─$ kill %1                                                                  
                                                                             
┌──(taylan㉿linuxdersleri)-[~]                                               
└─$ jobs                                                                                                                                                    
[1]+  Terminated              firefox
```

`jobs` komutunun çıktısında, “**Terminated**” yani “sonlandırılmış” olduğunu teyit edebiliyoruz.

### İşlemlerin Durdurulması

Daha önce ele aldık ancak üstünde bir kez daha durmak istiyorum. Çalışmakta olan bir işlemi durdurmak için <kbd>Ctrl</kbd> + <kbd>Z</kbd> kısayolunu kullanabiliyoruz. İşlem durduktan sonra işlemin arka planda veya ön planda çalışmaya devam etmesi için `bg` veya `fg` komutlarını kullanabiliyoruz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ firefox                                                                                                                                                 
^Z
[1]+  Stopped                 firefox

┌──(taylan㉿linuxdersleri)-[~]
└─$ jobs                                                                                                                                                    
[1]+  Stopped                 firefox

┌──(taylan㉿linuxdersleri)-[~]
└─$ fg 1
firefox
[GFX1-]: Unrecognized feature VIDEO_OVERLAY
^Z
[1]+  Stopped                 firefox

┌──(taylan㉿linuxdersleri)-[~]
└─$ bg 1                                                                                                                                                    
[1]+ firefox &

┌──(taylan㉿linuxdersleri)-[~]
└─$ jobs                                                                                                                                                    
[1]+  Running                 firefox &
```

### İşin Sahiplikten Çıkarılması

Kabuk, kendi başlatmış olduğu işlemlerin sahibi(owner) konumundadır. Dolayısıyla kabuk kapanırsa ilgili işlem de sonlandırılır. Yani biz mevcut kabuk üzerinde arkaplanda bir işlem başlatmış olsak bile, eğer bu kabuk kapatılırsa ilgili işlem de otomatik olarak sonlandırılıyor. 

Eğer kabuğun başlatmış olduğu bir işlemi kabuğun kontrolünden çıkarmak istersek “sahip çıkmamak-reddetmek” anlamına gelen `disown` komutunu kullanabiliyoruz. Ben test etmek için arka planda `firefox` aracını başlatıp daha sonra bu aracın kontrolünü bash kabuğundan kaldırmak istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ firefox &
[1] 1504

┌──(taylan㉿linuxdersleri)-[~]
└─$ jobs
[1]+  Running                 firefox &

┌──(taylan㉿linuxdersleri)-[~]
└─$ disown %1

┌──(taylan㉿linuxdersleri)-[~]
└─$ jobs
```

Gördüğünüz gibi `disown` komutunun ardından, `jobs` komutunun çıktılarında bu işi göremedik. Çünkü bash kabuğu bu işin sahipliğini bırakmış oldu. Artık bu işlemi yönetmek için sistem genelindeki işlemleri yönetmek üzere kullandığımız yaklaşımları uygulamamız gerek.

# Çoklu İşlemler Başlatmak

Hazır bash kabuğunda işlem başlatmak ve kontrol etmekten bahsetmişken birden fazla işlemi nasıl başlatabileceğimize de değinelim.

Birden fazla işlemi koşullara bağlı şekilde başlatmak için bash kabuğunun sunduğu birkaç "meta karakter" mevcut.

## Mantıksal Operatörler `&` `||` `&&` `;`

Bash kabuğunun, özellikle programlama yapılırken kullanılan pek çok operatörü bulunuyor. Operatörden kastım özel işlevleri olan yani kabuk için özel anlama sahip olan çeşitli karakterlerdir. İşte mantıksal operatörler de bu özel karakterlerden birkaçıdır. Mantıksal operatörler kullanarak birden fazla işlemin mantıksal durumlara göre çalıştırılmasını sağlayabiliyoruz. 

### Ya da(veya) Operatörü ( `||` )

**Ya da** operatörü yani çift pipe "**`||`**" operatörü kullanıldığında, ilk komut başarısız olursa ikinci komut çalıştırılır. Eğer ilk komut başarılı olursa ikinci komut çalıştırılmaz.

Hemen uygulamalı olarak deneyelim. Ben denemek için öncelikle `echo bir || echo iki` şeklinde yazıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ echo bir || echo iki
bir
```

İlk komut başarılı olduğu için ikinci komut çalıştırılmadı dolayısıyla “**iki**” çıktısını konsolda göremiyoruz. Eğer ilk komut hatalı olsaydı ikinci komut çalıştırılacaktı. Ben denemek için `asdf || echo iki` komutunu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ asdf || echo iki
Command 'asdf' not found, did you mean:
  command 'sadf' from deb sysstat
  command 'adsf' from deb ruby-adsf
  command 'sdf' from deb sdf
  command 'asdfg' from deb aoeui
Try: sudo apt install <deb name>
iki
```

İlk komut hatalı olduğu için ilk komuttan sonra bu kez ikinci komut da çalıştırıldı. İşte "ya da" operatörünü kullandığımızda başarılı komut bulunana kadar sırasıyla komutlar çalıştırılıyor. Bir komut başarılı sonuç döndürürse ondan sonrası çalıştırılmıyor. Emin olmak için `asdf || xyzt || echo bir || echo iki` şeklinde komut girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ asdf || xyzt || echo bir || echo iki
Command 'asdf' not found, did you mean:
  command 'asdfg' from deb aoeui
  command 'adsf' from deb ruby-adsf
  command 'sdf' from deb sdf
  command 'sadf' from deb sysstat
Try: sudo apt install <deb name>
xyzt: command not found
bir
```

İlk iki komut yani ilk iki işlem başarısız olduğu için üçüncü komuta geçildi ve `echo bir` komutu çalıştırıldı. Ancak üçüncü komut başarılı olduğu için son komut yani `echo iki` çalıştırılmadı. 

### Ve Operatörü ( `&&` )

**Ve** "**`&&`**" operatöründe ise “**ya da**” operatörünün tersi şekilde, hatalı komut ile karşılaşılıncaya kadar tüm komutlar sırasıyla çalıştırılır. Diğer bir deyişle, **`&&`** operatörü kullanıldığında soldaki komut başarılı olursa sağdaki komut çalıştırılır. Ben denemek için `echo bir && echo iki && asdf && echo üç` şeklinde yazıyorum ve komutu onaylıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ echo bir && echo iki && asdf && echo üç                              
bir
iki
Command 'asdf' not found, did you mean:
  command 'adsf' from deb ruby-adsf
  command 'sadf' from deb sysstat
  command 'asdfg' from deb aoeui
  command 'sdf' from deb sdf
Try: sudo apt install <deb name>
```

İlk komut başarılı olduğu için ikinci komut çalıştırıldı ve ikinci komut başarılı olduğu için de üçüncü komut çalıştırıldı. Ancak üçüncü komut başarısız olduğu için son komut çalıştırılmadı. Bu "`&&`" mantık operatörünü, peşi sıra kullandığınız komutlardan bir komutun hata vermesi durumunda devam edilmesini istemediğiniz durumlarda kullanabilirsiniz. 

Örneğin güncelleme işlemi için `sudo apt update && sudo apt upgrade -y` komutunu kullanabiliriz. Bu sayede ilk komut yani repo indexlerini güncelleme işlemi başarılı ise yükseltme işlemi uygulanır. Eğer index bilgileri güncellenmezse zaten paketleri yükseltme işlemi de başarısız olacağı için ilk komut başarılı olmadan ikinci komutun çalışmasının bir önemi yoktur. İşte sizler de tıpkı bu basit örnekte olduğu gibi çalıştırılması için kendisinden önceki komutların başarılı olmasına ihtiyaç duyan komutlarınız için "**ve**" “`&&`” operatörünü kullanabilirsiniz. 

### Komut Ayırıcı ( `;` )

Bash kabuğu üzerinde; önceki ya da sonraki komutun çıkış durumundan yani hatalı ya da hatasız olmasından bağımsız olarak, komutların hepsini peş peşe çalıştırmak için noktalı virgül `;` karakterini kullanabiliyoruz. Komutlar arasında noktalı virgül `;` kullandığımız sürece peşi sıra istediğimiz sayıda komut girip hepsinin soldan sağa doğru sırasıyla çalıştırılmasını sağlayabiliriz. Ben denemek için `echo bir ; asdf; echo iki ; xyzt ; echo üç` şeklinde komutumu giriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ echo bir ; asdf; echo iki ; xyzt ; echo üç                           
bir
Command 'asdf' not found, did you mean:
  command 'asdfg' from deb aoeui
  command 'sdf' from deb sdf
  command 'adsf' from deb ruby-adsf
  command 'sadf' from deb sysstat
Try: sudo apt install <deb name>
iki
xyzt: command not found
üç
```

Hatalı da olsa hatasız da olsa tüm komutlar yazıldığı gibi yani soldan sağa doğru sırasıyla çalıştırıldı. 

Ayrıca ben hep ayrı ayrı bahsettim ancak mantıksal operatörler ile komut ayırma karakterini bir arada kullanıp özel koşul belirten komut dizesi oluşturabilirsiniz. Örneğim ben yalnızca ilk komut yanlışsa geri kalan tüm komutların çalıştırılması için ilk komutun ardından “**ya da**” operatörünü kullanabilirim. Bir önceki komutun başına `asdf` ekliyorum ve `||` operatörünü kullanıyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ asdf || echo bir ; asdf; echo iki ; xyzt ; echo üç                   
Command 'asdf' not found, did you mean:
  command 'asdfg' from deb aoeui
  command 'adsf' from deb ruby-adsf
  command 'sadf' from deb sysstat
  command 'sdf' from deb sdf
Try: sudo apt install <deb name>
bir
Command 'asdf' not found, did you mean:
  command 'sadf' from deb sysstat
  command 'asdfg' from deb aoeui
  command 'sdf' from deb sdf
  command 'adsf' from deb ruby-adsf
Try: sudo apt install <deb name>
iki
xyzt: command not found
üç
```

İlk komut hatalı olduğu için geri kalan tüm komutlar sırasıyla çalıştırıldı. İlk komutu `echo test` komutu ile değiştirelim yani ilk komutu başarılı olacak şekilde değiştirelim ve komutu onaylayalım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ echo test || echo bir ; asdf; echo iki ; xyzt ; echo üç              
test
Command 'asdf' not found, did you mean:
  command 'sdf' from deb sdf
  command 'sadf' from deb sysstat
  command 'asdfg' from deb aoeui
  command 'adsf' from deb ruby-adsf
Try: sudo apt install <deb name>
iki
xyzt: command not found
üç
```

Şimdi de yalnızca ilk komut(`echo test`) başarılı olduğu için veya `||`  operatörünün yapısı gereği ikinci komut(`echo bir`) başarılı da olsa çalıştırılmadı ama ondan sonrakiler noktalı virgül sayesinde yine sırasıyla çalıştırıldı. Peki ama neden böyle oldu ? 

Aslında bunun sebebi tüm komutun parça parça işleniyor olması. Yani kabuk ilk olarak ilk koşula baktı ve ilk komut doğru olduğu için “`||`” operatörü sebebiyle ikinci komutu çalıştırmadı. Ama bu ikinci komuttan sonra başka bir “ya da” operatörü olmadığı için de diğer komutları sırasıyla çalıştırdı. Eğer buradaki komutların hepsini tek bir koşula bağlı kılmak isteseydik yani örneğin ilk komut başarısız olursa diğerlerini çalıştır eğer ilk komut başarılı ise diğer hiç bir komutu çalıştırma demek isteseydik **komut gruplama** özelliğini kullanabilirdik. 

## Komut Gruplama

Komutları gruplamak için parantez `(komut; komut2)` içinde yazabilirsiniz. Önceki örneğimiz üzerinden gidecek olursak, komutları gruplamadığımızda her biri ayrı ayrı ele alınıyor.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ echo test || echo bir ; asdf; echo iki ; xyzt ; echo üç              
test
Command 'asdf' not found, did you mean:
  command 'adsf' from deb ruby-adsf
  command 'sadf' from deb sysstat
  command 'asdfg' from deb aoeui
  command 'sdf' from deb sdf
Try: sudo apt install <deb name>
iki
xyzt: command not found
üç
```

Eğer gruplayacak olursak, grup içindeki tüm komutlar tek bir koşula bağlanabiliyor.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ echo test || (echo bir ; asdf; echo iki ; xyzt ; echo üç)            
test

┌──(taylan㉿linuxdersleri)-[~]
└─$ asdf || (echo bir ; asdf; echo iki ; xyzt ; echo üç)            
Command 'asdf' not found, did you mean:
  command 'sdf' from deb sdf
  command 'adsf' from deb ruby-adsf
  command 'sadf' from deb sysstat
  command 'asdfg' from deb aoeui
Try: sudo apt install <deb name>
bir
Command 'asdf' not found, did you mean:
  command 'adsf' from deb ruby-adsf
  command 'asdfg' from deb aoeui
  command 'sadf' from deb sysstat
  command 'sdf' from deb sdf
Try: sudo apt install <deb name>
iki
xyzt: command not found
üç
```

Gördüğünüz gibi ilk girdiğimizde komutta “`||`” operatörü bulunduğundan, ilk komut başarılı olduğu için gruptakiler çalıştırılmadı. İkinci komutta ise, ilk komut başarısız olduğu için gruptaki komutlar çalıştırıldı.

# Sistem Genelindeki İşlemlerin Kontrolü

Şimdiye kadar ele aldığımız örneklerde hep bash kabuğu tarafından başlatılan ve kontrol edilen işlemleri gördük. Fakat sistemdeki tüm işlemler elbette bash kabuğu tarafından başlatılmıyor. Dolayısıyla sistemi yönetebilmek için sistem genelinde başlatılmış olan işlemleri de kontrol edebiliyor olmamız şart. 

# İşlemlerin Takibi

İşlemleri yönetebilmek için öncelikle varlıklarından haberdar olmamız gerek. 

## Anlık Takip | `top`

Sistem üzerinde çalışmakta olan işlemleri anlık olarak takip etmek üzere `top` aracını kullanabiliyoruz. 

```bash
top - 06:18:00 up  1:21,  1 user,  load average: 0.05, 0.03, 0.00
Tasks: 169 total,   1 running, 168 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.7 us,  0.8 sy,  0.0 ni, 98.5 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :  10688.6 total,   9663.9 free,    580.3 used,    444.4 buff/cache
MiB Swap:    975.0 total,    975.0 free,      0.0 used.   9848.9 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                              
    615 root      20   0  424836 126756  57780 S   4.3   1.2   0:14.63 Xorg                                                                                 
    999 taylan    20   0  420700  95376  74964 S   2.3   0.9   0:00.79 qterminal                                                                            
    821 taylan    20   0    9616   5372   4316 S   0.3   0.0   0:00.77 dbus-daemon                                                                          
    898 taylan    20   0  218440   2728   2240 S   0.3   0.0   0:19.50 VBoxClient                                                                           
    949 taylan    20   0 1065696  88752  65972 S   0.3   0.8   0:08.14 xfwm4                                                                                
    988 taylan    20   0  343196  26244  16996 S   0.3   0.2   0:00.16 Thunar                                                                               
   1000 taylan    20   0  209228  32484  19032 S   0.3   0.3   0:17.25 panel-13-cpugra                                                                      
   1109 taylan    20   0  373832  51812  29388 S   0.3   0.5   0:00.64 blueman-applet                                                                       
  20219 taylan    20   0   10200   3724   3092 R   0.3   0.0   0:00.03 top                                                                                  
      1 root      20   0  165520  11284   8288 S   0.0   0.1   0:01.42 systemd                                                                              
      2 root      20   0       0      0      0 S   0.0   0.0   0:00.03 kthreadd                                                                             
      3 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_gp                                                                               
      4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_par_gp                                                                           
      6 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/0:0H-events_highpri                                                          
      9 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 mm_percpu_wq                                                                         
     10 root      20   0       0      0      0 S   0.0   0.0   0:00.00 rcu_tasks_rude_                                                                      
     11 root      20   0       0      0      0 S   0.0   0.0   0:00.00 rcu_tasks_trace                                                                      
     12 root      20   0       0      0      0 S   0.0   0.0   0:00.03 ksoftirqd/0                                                                          
     13 root      20   0       0      0      0 I   0.0   0.0   0:01.98 rcu_sched                                                                            
     14 root      rt   0       0      0      0 S   0.0   0.0   0:00.12 migration/0                                                                          
     15 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/0                                                                              
     16 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/1                                                                              
     17 root      rt   0       0      0      0 S   0.0   0.0   0:00.91 migration/1                                                                          
     18 root      20   0       0      0      0 S   0.0   0.0   0:00.04 ksoftirqd/1                                                                          
     20 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/1:0H-events_highpri                                                          
     21 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/2                                                                              
     22 root      rt   0       0      0      0 S   0.0   0.0   0:00.84 migration/2                                                                          
     23 root      20   0       0      0      0 S   0.0   0.0   0:00.18 ksoftirqd/2                                                                          
     25 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/2:0H-events_highpri                                                          
     29 root      20   0       0      0      0 S   0.0   0.0   0:00.02 kdevtmpfs
```

Biz <kbd>q</kbd> tuşuna basıp aracı kapatana kadar anlık olarak tüm işlemler konsola bastırılıyor olacak.

Tablodaki temel sütunları açıklayacak olursak:

**PID:** **P**rocess **id** yani benzersiz işlem numarasıdır.

**USER:** İşlemin sahibi olan kullanıcıdır.

**PR:** Priority yani işlem önceliğini belirtir.

**NI:** İşlemin “nice” değeri. Diğer işlemlere ne kadar öncelik vereceğini belirtir. 

**S:** Status yani “durum” bilgisidir. Çeşitli durumlar mevcuttur:

- ‘R’ = running | çalışıyor
- ‘S’ = sleeping | uyuyor
- ‘T’ = traced or stopped | durdurulmuş
- ‘Z’ = zombie | zombi

**%CPU**: İşlem tarafından kullanılan CPU yüzdesi

**%MEM**; İşlem tarafından kullanılan RAM yüzdesi.

**TIME+:** İşlem tarafından tüketilen CPU zamanı.

**Command**: İşlemi başlatan komut.

Bu listede gezinmek için aşağı yukarı yön tuşlarını kullanabilirsiniz. Ayrıca bir işlemi sonlandırmak için o işlemin üzerine geldikten sonra “**k**ill” yani “öldürmek” ifadesinden gelen <kbd>k</kbd> tuşuna basıp <kbd>enter</kbd> ile işlemin sonlandırılmasına onay verebilirsiniz. Fakat bu liste sürekli güncellendiği için işlemlerin bu liste üzerinden sonlandırılması pek pratik sayılmaz. Eğer araçtan çıkış yapmak isterseniz de <kbd>q</kbd> tuşuna basmanız yeterli.

Esasen `top` aracı dışında çok daha işlevsel olan `htop` gibi çeşitli araçları kurup kullanabilirsiniz fakat biz her sistemde varsayılan olarak karşılaşabileceğimiz temel araç olduğu için yalnızca `top` aracına değindik. Zaten diğer araçlar da benzer değerleri sunuyor, ek olarak ek detaylar ve bazı kontrol imkanları sunuluyor. 

Yine de işlemlerin anlık takibi ve temel bilgi edinme için `top` aracı son derece işlevsel bir bilgi alma aracı. Tabloda yer alan detaylar şu an sizin için pek anlamlı gelmemiş olabilir. İleride işlemleri daha yakından tanıdıkça buradaki bilgilerin kıymeti daha net anlaşılacak.

## `ps` Komutu

`ps` komutu “**p**rocess **s**tatus” yani “işlem durumu” ifadesinin kısaltmasından gelen işlemler hakkında bilgi sunan bir araçtır.

Tek başına `ps` komutunu girdiğimizde, yalnızca o anda mevcut konsol üzerinde çalışmakta olan işleme dair bilgi sunar.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ps                                                                                                                                                      
    PID TTY          TIME CMD
   1224 pts/0    00:00:00 bash
  24844 pts/0    00:00:00 ps
```

Bash kabuğuna `ps` komutunu girdiğimiz için bu çıktıyı aldık. Yani komutu girdiğimiz anda bu işlemler çalışıyordu. Buradaki sütunların anlamlarını açıklayacak olursak:

**PID:** benzersiz işlem numarasını

**TTY:** işlemlerin çalıştığı konsolun ismi

**TIME:** işlemin çalıştığı toplam süre

**CMD:** işlemi başlatan komutun adı

`ps` aracı anlık olarak çalıştığı için **TIME** yani süre bilgisiyle kayda değer bir bilgi almamız pek olası olmasa da `ps` aracının en temel çıktıları bu şekilde. 

Manual sayfalarına bakacak olursanız `ps` aracının pek çok ek seçeneği olduğunu görebilirsiniz. Hepsine tek tek değinmemize gerek yok. İhtiyaç duyduğunuz özel bilgiler için uygun olan seçeneği araştırıp kullanabilirsiniz. Biz birkaç temel örnekle ilerleyelim.

Geniş çaplı bilgi almak için genellikle `ps aux` komutu kullanılır.

`a`: tüm kullanıcılara ait olan işlemleri listeler.

`u`: işlemlerin sahibi olan kullanıcı bilgisini bastırır.

`x`: terminaller ile kontrol edilmeyen arka plan işlemlerini de bastırmayı sağlar.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ps aux                                                                                                                                                  
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.1 165520 11284 ?        Ss   04:56   0:01 /sbin/init splash
root           2  0.0  0.0      0     0 ?        S    04:56   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        I<   04:56   0:00 [rcu_gp]
root           4  0.0  0.0      0     0 ?        I<   04:56   0:00 [rcu_par_gp]
root           6  0.0  0.0      0     0 ?        I<   04:56   0:00 [kworker/0:0H-events_highpri]
root           9  0.0  0.0      0     0 ?        I<   04:56   0:00 [mm_percpu_wq]
root          10  0.0  0.0      0     0 ?        S    04:56   0:00 [rcu_tasks_rude_]
root          11  0.0  0.0      0     0 ?        S    04:56   0:00 [rcu_tasks_trace]
root          12  0.0  0.0      0     0 ?        S    04:56   0:00 [ksoftirqd/0]
message+     521  0.0  0.0  10476  5536 ?        Ss   04:57   0:00 /usr/bin/dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activatio
root         522  0.0  0.1 259004 18916 ?        Ssl  04:57   0:00 /usr/sbin/NetworkManager --no-daemon
root         524  0.0  0.1 236400 11340 ?        Ssl  04:57   0:00 /usr/libexec/polkitd --no-debug
root         525  0.0  0.0 221740  6304 ?        Ssl  04:57   0:00 /usr/sbin/rsyslogd -n -iNONE
root         526  0.0  0.0  23436  7444 ?        Ss   04:57   0:00 /lib/systemd/systemd-logind
root         573  0.0  0.1 243152 11660 ?        Ssl  04:57   0:00 /usr/sbin/ModemManager
root         587  0.0  0.0 309144  7620 ?        SLsl 04:57   0:00 /usr/sbin/lightdm
root         594  0.0  0.0 294012  3324 ?        Sl   04:57   0:01 /usr/sbin/VBoxService
root         615  0.4  1.2 429388 131352 tty7    Ssl+ 04:57   0:28 /usr/lib/xorg/Xorg :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novts
root         616  0.0  0.0   5872  1024 tty1     Ss+  04:57   0:00 /sbin/agetty -o -p -- \u --noclear - linux
root         628  0.0  0.0      0     0 ?        I    04:57   0:01 [kworker/0:3-events]
rtkit        739  0.0  0.0  22640  1548 ?        SNsl 04:57   0:00 /usr/libexec/rtkit-daemon
root         796  0.0  0.0 164744  8968 ?        Sl   04:59   0:00 lightdm --session-child 14 23
colord      1160  0.0  0.1 242696 13120 ?        Ssl  04:59   0:00 /usr/libexec/colord
taylan      1163  0.0  0.0 234804  8880 ?        Ssl  04:59   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
taylan      1175  0.0  0.0 311228  7680 ?        Ssl  04:59   0:00 /usr/libexec/gvfs-afc-volume-monitor
taylan      1184  0.0  0.0 233852  6412 ?        Ssl  04:59   0:00 /usr/libexec/gvfs-mtp-volume-monitor
taylan      1193  0.0  0.0 312084  7984 ?        Sl   04:59   0:00 /usr/libexec/gvfsd-trash --spawner :1.15 /org/gtk/gvfs/exec_spaw/0
taylan      1205  0.0  0.0 160304  5712 ?        Ssl  04:59   0:00 /usr/libexec/gvfsd-metadata
taylan      1224  0.0  0.0   8216  4940 pts/0    Ss   04:59   0:00 /usr/bin/bash
taylan      1263  0.0  0.0  45204  7116 ?        Ss   04:59   0:00 /usr/libexec/bluetooth/obexd
root        3636  0.0  0.0      0     0 ?        I    05:09   0:00 [kworker/1:0-cgroup_destroy]
root       20069  0.0  0.0      0     0 ?        I    06:17   0:01 [kworker/1:2-events]
root       20118  0.0  0.0      0     0 ?        I    06:17   0:00 [kworker/2:3-ata_sff]
root       21448  0.0  0.0      0     0 ?        R    06:22   0:00 [kworker/u6:0-events_unbound]
taylan     22895  0.0  0.8 418380 93196 ?        Sl   06:28   0:00 /usr/bin/qterminal
taylan     22898  0.0  0.0   8092  4860 pts/1    Ss+  06:28   0:00 /usr/bin/bash
root       24228  0.0  0.0      0     0 ?        I    06:34   0:00 [kworker/u6:2-events_unbound]
root       25535  0.0  0.0      0     0 ?        I    06:39   0:00 [kworker/0:1]
root       26392  0.0  0.0      0     0 ?        I    06:42   0:00 [kworker/2:1-events]
root       26920  0.0  0.0      0     0 ?        I    06:45   0:00 [kworker/u6:1-flush-8:0]
root       26921  0.0  0.0      0     0 ?        I    06:45   0:00 [kworker/u6:3-flush-8:0]
root       27556  0.0  0.0      0     0 ?        I    06:47   0:00 [kworker/1:1-events]
root       27646  0.0  0.0      0     0 ?        I    06:48   0:00 [kworker/2:0-ata_sff]
taylan     27840  0.0  0.0   9768  1580 pts/0    R+   06:48   0:00 ps aux
```

# İşlemlerin Yönetimi | Sinyaller

Linux üzerinde, işlemlerle iletişim kurmak için sinyalleri kullanıyoruz. Dolayısıyla bir işlemi durdurmak, duran işlemi devam ettirmek veya işlemi sonlandırmak istediğimizde ilgili işleme bu duruma uygun olan sinyali göndermemiz gerekiyor. Sinyal göndermek için de `kill` komutunu kullanabiliyoruz.

## `kill` Komutu | Sinyal Gönderimi

`kill` komutu ile gönderebileceğimiz tüm sinyalleri görmek için `kill -l` komutunu kullanabiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ kill -l
 1) SIGHUP       2) SIGINT       3) SIGQUIT      4) SIGILL       5) SIGTRAP
 6) SIGABRT      7) SIGBUS       8) SIGFPE       9) SIGKILL     10) SIGUSR1
11) SIGSEGV     12) SIGUSR2     13) SIGPIPE     14) SIGALRM     15) SIGTERM
16) SIGSTKFLT   17) SIGCHLD     18) SIGCONT     19) SIGSTOP     20) SIGTSTP
21) SIGTTIN     22) SIGTTOU     23) SIGURG      24) SIGXCPU     25) SIGXFSZ
26) SIGVTALRM   27) SIGPROF     28) SIGWINCH    29) SIGIO       30) SIGPWR
31) SIGSYS      34) SIGRTMIN    35) SIGRTMIN+1  36) SIGRTMIN+2  37) SIGRTMIN+3
38) SIGRTMIN+4  39) SIGRTMIN+5  40) SIGRTMIN+6  41) SIGRTMIN+7  42) SIGRTMIN+8
43) SIGRTMIN+9  44) SIGRTMIN+10 45) SIGRTMIN+11 46) SIGRTMIN+12 47) SIGRTMIN+13
48) SIGRTMIN+14 49) SIGRTMIN+15 50) SIGRTMAX-14 51) SIGRTMAX-13 52) SIGRTMAX-12
53) SIGRTMAX-11 54) SIGRTMAX-10 55) SIGRTMAX-9  56) SIGRTMAX-8  57) SIGRTMAX-7
58) SIGRTMAX-6  59) SIGRTMAX-5  60) SIGRTMAX-4  61) SIGRTMAX-3  62) SIGRTMAX-2
63) SIGRTMAX-1  64) SIGRTMAX
```

Elbette temel sistem yönetimi için buradaki tüm sinyallere ihtiyacımız yok. Biz yaygın kullanıma sahip temel sinyalleri ele alacağız.

- **`SIGKILL`** (9): Öldürme sinyali. Hedef işlemin anında sonlandırılmasını sağlar. Genellikle bir işlemi zorla sonlandırmak için son çare olarak kullanılır.
- **`SIGSTOP`** (19): Durdurma sinyali. Hedef işlemin askıya alınarak durdurulmasını sağlar. <kbd>Ctrl</kbd> + <kbd>Z</kbd> kısayoluyla da bu sinyal üretilebiliyor.
- **`SIGCONT`** (18): Devam sinyali. Daha önce durdurulan bir işlemin çalışmaya devam etmesini sağlıyor.

Sistem genelindeki işlemleri yönetirken bu sinyalleri bilmemiz yeterli. 

### İşlemi Durdurmak | SIGSTOP

Çalışmakta olan bir işlemi durdurmak için sinyalın ismini ya da sayısal karşılığını `kill SIGSTOP pid` ya da `kill -19 pid` şeklinde girebiliyoruz.  Denemek için öncelikle grafiksel arayüzeden bir metin editörü açalım. Benim sistemimde **mousepad** olduğu için ben bu aracı çalıştırıyorum fakat siz herhangi bir aracı örnek olarak çalıştırabilirsiniz. Aracı açtıktan sonra bu aracın işlem numarasını öğrenmek için `ps x` komutunu girip sondaki çıktılara bakabiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ps x                                                                                                                                                     
    PID TTY      STAT   TIME COMMAND
    797 ?        Ss     0:00 /lib/systemd/systemd --user
    798 ?        S      0:00 (sd-pam)
    812 ?        S<sl   0:00 /usr/bin/pipewire
    813 ?        Ssl    0:00 /usr/bin/pipewire-media-session
    814 ?        S<sl   0:00 /usr/bin/pulseaudio --daemonize=no --log-target=journal
    817 ?        Ss     0:01 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
    825 ?        Ssl    0:00 xfce4-session
		...
		..
		.    
		34680 ?        Sl     0:00 mousepad
	  34710 pts/0    R+     0:00 ps x
```

Gördüğünüz gibi benim açtığım işlem **34680** pid ile başlatılmış. Bu işlem numarası sayesinde, bu işleme istediğim sinyali gönderebilirim. Ben durdurmak istediğim için `kill -19 34680` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ kill -19 34680
```

Bu komutun ardından aracınıza dönüp aracı kullanmayı deneyebilirsiniz fakat işlem durdurulduğu için elbette araç size yanıt vermeyecektir. 

Ayrıca örneğin mevcut kabuk üzerinden ön planda çalışan bir işlem başlattıysanız bu işlemi durdurmak için <kbd>Ctrl</kbd> + <kbd>Z</kbd> tuşlamasını da kullanabilirsiniz. Bu tuşlama kabuk üzerinde çalışmakta olan işleme **SIGSTOP** sinyali gönderip duraklatılmasını sağlıyor. Ben denemek için konsola `firefox` komutunu girip mevcut kabuğa bağlı ön planda yeni bir işlem başlatacağım. Daha sonra <kbd>Ctrl</kbd> + <kbd>Z</kbd> tuşlaması ile bu işlemi de durduracağım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ firefox                                                                                                                                                  
[GFX1-]: Unrecognized feature VIDEO_OVERLAY
^Z
[1]+  Stopped                 firefox

┌──(taylan㉿linuxdersleri)-[~]
└─$ jobs                                                                                                                                                     
[1]+  Stopped                 firefox
```

Gördüğünüz gibi kabuğun başlattığı işlem kabuğa bağlı ve ön planda çalıştığı için normalde mevcut kabuk üzerinden bu işleme sinyal göndermek üzere komut girmem mümkün değil. Bu sebeple <kbd>Ctrl</kbd> + <kbd>Z</kbd> kısayolu ile bu ön plandaki işleme, durdurma sinyali gönderebilme çözümü geliştirilmiş. Zaten daha önce iş kontrolünü ele alırken de bu yaklaşımı kullanmıştık. Şimdi sinyallerden haberimiz olduğu için bu kısayol çok daha anlamlı hale geldi.

### Durdurulmuş İşlemin Devam Ettirilmesi | SIGCONT

Durdurulmuş işlemi devam ettirmek için **SIGCONT** veya sinyalin sayısal karşılığı olan **18** sayısını kullanabiliyoruz. Ben durdurmuş olduğum işlemi devam ettirmek için komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ kill -SIGCONT 34680
```

İşlemin devam ettiğini teyit etmek isterseniz ilgili aracı kullanmayı deneyebilirsiniz. Denediğinizde aracı temsil eden işlem devam ettiği için aracı kullanabildiğinizi bizzat görmüş olacaksınız. 

### Sonlandırmak - Öldürmek | SIGKILL

Eğer işlemi ani olarak kapatmak veya kapanmaya zorlamak istersek **SIGKILL** sinyalini kullanabiliyoruz. Ben açık olan **mousepad** editörünü temsil eden işlemi kapatmak üzere sinyal gönderiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ kill -9 34680

┌──(taylan㉿linuxdersleri)-[~]
└─$ ps x | tail
   1167 ?        Ssl    0:00 /usr/libexec/gvfs-goa-volume-monitor
   1174 ?        Ssl    0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
   1182 ?        Ssl    0:00 /usr/libexec/gvfs-afc-volume-monitor
   1187 ?        Ssl    0:00 /usr/libexec/gvfs-mtp-volume-monitor
   1196 ?        Sl     0:00 /usr/libexec/gvfsd-trash --spawner :1.15 /org/gtk/gvfs/exec_spaw/0
   1209 ?        Ssl    0:00 /usr/libexec/gvfsd-metadata
   1220 pts/0    Ss     0:00 /usr/bin/bash
   1258 ?        Ss     0:00 /usr/libexec/bluetooth/obexd
  45459 pts/0    R+     0:00 ps x
  45460 pts/0    S+     0:00 tail
```

Gördüğünüz gibi **SIGKILL** sinyalini temsil eden `-9` argümanını girdiğim için ilgili işlem anında kapatıldı.

# `killall` ve `pgrep` Araçlarının Kullanımı

Sinyal göndermek için ilgili işlemin benzersiz işlem numarasını yani **pid** değerini bulmamız gerekiyor. Fakat sistem üzerinde çok fazla işlem aynı anda çalıştığı için bu pek pratik bir yaklaşım sayılmaz. Bize bu konuda kolaylıklar sunan çeşitli araçlar mevcut.

## `killall` Komutu

`killall` komutu sayesinde argüman olarak verdiğimiz isimle eşleşen tüm işlemler sonlandırılıyor. Bu sayede tek tek hepsinin **pid** değerlerini bulmamız gerekmiyor.

Ben denemek için arka planda birden fazla `sleep` komutunun çalışması için `sleep 1000 & sleep 400 & sleep 200 &` komutunu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sleep 1000 & sleep 400 & sleep 200 &
[1] 60387
[2] 60388
[3] 60389

┌──(taylan㉿linuxdersleri)-[~]
└─$ ps x | tail
   1187 ?        Ssl    0:00 /usr/libexec/gvfs-mtp-volume-monitor
   1196 ?        Sl     0:00 /usr/libexec/gvfsd-trash --spawner :1.15 /org/gtk/gvfs/exec_spaw/0
   1209 ?        Ssl    0:00 /usr/libexec/gvfsd-metadata
   1220 pts/0    Ss     0:00 /usr/bin/bash
   1258 ?        Ss     0:00 /usr/libexec/bluetooth/obexd
  60387 pts/0    S      0:00 sleep 1000
  60388 pts/0    S      0:00 sleep 400
  60389 pts/0    S      0:00 sleep 200
  60572 pts/0    R+     0:00 ps x
  60573 pts/0    S+     0:00 tail
```

Gördüğünüz gibi `sleep` isimli birden fazla işlem mevcut. Eğer bunları sonlandırmak istersek, tek tek `kill` komutuna **pid** değerlerini argüman olarak verebiliriz. 

Bunun yerine `killall -9 sleep` komutunu kullanacak olursak, `sleep` ile eşleşen tüm işlemler sonlandırılacak.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ killall -9 sleep                                                                                                                                         
[1]   Killed                  sleep 1000

[2]-  Killed                  sleep 400
[3]+  Killed                  sleep 200
┌──(taylan㉿linuxdersleri)-[~]
└─$ ps x | tail                                                                                                                                         
   1167 ?        Ssl    0:00 /usr/libexec/gvfs-goa-volume-monitor
   1174 ?        Ssl    0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
   1182 ?        Ssl    0:00 /usr/libexec/gvfs-afc-volume-monitor
   1187 ?        Ssl    0:00 /usr/libexec/gvfs-mtp-volume-monitor
   1196 ?        Sl     0:00 /usr/libexec/gvfsd-trash --spawner :1.15 /org/gtk/gvfs/exec_spaw/0
   1209 ?        Ssl    0:00 /usr/libexec/gvfsd-metadata
   1220 pts/0    Ss     0:00 /usr/bin/bash
   1258 ?        Ss     0:00 /usr/libexec/bluetooth/obexd
  61079 pts/0    R+     0:00 ps x
  61080 pts/0    S+     0:00 tail
```

`killall` komutunun en temel kullanımı bu şekilde. Eğer yardım çıktılara göz atacak olursanız aslında çeşitli filtreler için çeşitli seçenekler sunulduğunu da görebilirsiniz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ killall --help
Usage: killall [OPTION]... [--] NAME...
       killall -l, --list
       killall -V, --version

  -e,--exact          require exact match for very long names
  -I,--ignore-case    case insensitive process name match
  -g,--process-group  kill process group instead of process
  -y,--younger-than   kill processes younger than TIME
  -o,--older-than     kill processes older than TIME
  -i,--interactive    ask for confirmation before killing
  -l,--list           list all known signal names
  -q,--quiet          don't print complaints
  -r,--regexp         interpret NAME as an extended regular expression
  -s,--signal SIGNAL  send this signal instead of SIGTERM
  -u,--user USER      kill only process(es) running as USER
  -v,--verbose        report if the signal was successfully sent
  -V,--version        display version information
  -w,--wait           wait for processes to die
  -n,--ns PID         match processes that belong to the same namespaces
                      as PID
  -Z,--context REGEXP kill only process(es) having context
                      (must precede other arguments)
```

Bu seçeneklerden ihtiyacınıza göre filtreleme yapmanız mümkün. Örneğin spesifik bir kullanıcının başlatmış olduğu işlemleri temsil etmek için `-u` seçeneğini kullanabilirsiniz.

Ben denemek için "nil" isimli kullanıcı hesabına geçiş yapıp çeşitli işlemler başlatıyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ su nil
Password: 
┌──(nil㉿linuxdersleri)-[/home/taylan]
└─$ sleep 1000 & sleep 500 & sleep 250&
[4] 62272
[5] 62273
[6] 62274

┌──(nil㉿linuxdersleri)-[/home/taylan]
└─$ nano &
[7] 62324

┌──(nil㉿linuxdersleri)-[/home/taylan]
└─$ vi &
[8] 62337

[7]+  Stopped                 nano
```

Şimdi kendi konsoluma dönüp **nil** kullanıcısına ait olan işlemleri listeleyebilirim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ps -u nil                                                                                                                                
    PID TTY          TIME CMD
  61798 pts/1    00:00:00 bash
  62272 pts/1    00:00:00 sleep
  62273 pts/1    00:00:00 sleep
  62274 pts/1    00:00:00 sleep
  62324 pts/1    00:00:00 nano
  62337 pts/1    00:00:00 vi
```

Bakın hem birden fazla `sleep` hem de `nano` ve `vi` işlemleri **nil** kullanıcısı tarafından çalıştırılmış. Şimdi ben **taylan** kullanıcısı olarak `sleep 700 & sleep 350&` komutları ile kendi kullanıcı hesabım üzerinden arka planda iki `sleep` işlemi daha başlatıyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sleep 700 & sleep 350&                                                                                                                                   
[1] 62872
[2] 62873

┌──(taylan㉿linuxdersleri)-[~]
└─$ ps aux | tail                                                                                                                                            
nil        62272  0.0  0.0   5464   860 pts/1    S    10:10   0:00 sleep 1000
nil        62273  0.0  0.0   5464   880 pts/1    S    10:10   0:00 sleep 500
nil        62274  0.0  0.0   5464   892 pts/1    S    10:10   0:00 sleep 250
nil        62324  0.0  0.0   6752  3028 pts/1    T    10:10   0:00 nano
nil        62337  0.0  0.0  14448  9228 pts/1    T    10:10   0:00 vi
root       62531  0.0  0.0      0     0 ?        I    10:11   0:00 [kworker/1:2-events]
taylan     62872  0.0  0.0   5464   912 pts/0    S    10:12   0:00 sleep 700
taylan     62873  0.0  0.0   5464   892 pts/0    S    10:12   0:00 sleep 350
taylan     62890  0.0  0.0   9768  1592 pts/0    R+   10:12   0:00 ps aux
taylan     62891  0.0  0.0   5496   932 pts/0    S+   10:12   0:00 tail
```

Şimdi ben yalnızca **nil** kullanıcısına ait olan `sleep` işlemlerini sonlandırmak istersem `sudo killall -u nil sleep` şeklinde komutumu girebilirim. Komutu **taylan** kullanıcısı olarak girdiğim için `sudo` ile yetkimi kanıtlamam gerek.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo killall -u nil sleep

┌──(taylan㉿linuxdersleri)-[~]
└─$ ps aux | tail                                                                                                                                
root       61793  0.0  0.0  11108  4784 pts/1    S    10:08   0:00 su nil
nil        61798  0.0  0.0   8732  5364 pts/1    S+   10:08   0:00 bash
root       62028  0.0  0.0      0     0 ?        I    10:09   0:00 [kworker/0:0-events]
nil        62324  0.0  0.0   6752  3028 pts/1    T    10:10   0:00 nano
nil        62337  0.0  0.0  14448  9228 pts/1    T    10:10   0:00 vi
root       62531  0.0  0.0      0     0 ?        I    10:11   0:00 [kworker/1:2-events]
taylan     62872  0.0  0.0   5464   912 pts/0    S    10:12   0:00 sleep 700
taylan     62873  0.0  0.0   5464   892 pts/0    S    10:12   0:00 sleep 350
taylan     63024  0.0  0.0   9768  1588 pts/0    R+   10:13   0:00 ps aux
taylan     63025  0.0  0.0   5496   932 pts/0    S+   10:13   0:00 tail
```

Gördüğünüz gibi yalnızca “**nil**” kullanıcısına ait olan `sleep` işlemleri sonlandırılmış. Neticede `killall` komutunun farklı kriterlere göre filtreleme yaptığını bizzat görmüş olduk. 

Elbette ben `killall` komutunun tüm seçeneklerini tek tek ele almayacağım. Kullanımı son derece kolay olduğu için kısa bir deneme yanılma ile kendiniz de gerektiğinde diğer tüm seçenekleri keşfedebilirsiniz.

## `pgrep` Komutu

Metinsel verileri filtrelemek için `grep` aracını kullanabiliyoruz. `pgrep` komutu ise “**p**rocess” yani “işlemler” arasında bizim aradığımız işlemin, işlem numarasını filtreleyen bir araç. Bu sayede ilgili işlemin işlem numarasını manuel olarak bulmakla uğraşmamız gerekmiyor. İsmi üzerinden kolaylıkla öğrenebiliyoruz.

Ben denemek için grafiksel arayüzden **firefox** aracını çalıştırıp, bu işlemin **pid** değerini öğrenmek için `pgrep firefox` komutunu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ pgrep firefox                                                                                                                                            
64622

┌──(taylan㉿linuxdersleri)-[~]
└─$ ps x | tail
   1220 pts/0    Ss     0:00 /usr/bin/bash
   1258 ?        Ss     0:00 /usr/libexec/bluetooth/obexd
  61768 pts/1    Ss     0:00 /usr/bin/bash
  62872 pts/0    S      0:00 sleep 700
  64622 ?        Sl     0:04 /usr/lib/firefox-esr/firefox-esr
  64774 ?        Sl     0:00 /usr/lib/firefox-esr/firefox-esr -contentproc -childID 2 -isForBrowser -prefsLen 4657 -prefMapSize 238089 -jsInit 285716 -parentBuildID 20220105212146 -appdir /usr/lib/firefox-esr/browser 64622 true tab
  64810 ?        Sl     0:00 /usr/lib/firefox-esr/firefox-esr -contentproc -childID 3 -isForBrowser -prefsLen 5317 -prefMapSize 238089 -jsInit 285716 -parentBuildID 20220105212146 -appdir /usr/lib/firefox-esr/browser 64622 true tab
  64856 ?        Sl     0:00 /usr/lib/firefox-esr/firefox-esr -contentproc -childID 5 -isForBrowser -prefsLen 5317 -prefMapSize 238089 -jsInit 285716 -parentBuildID 20220105212146 -appdir /usr/lib/firefox-esr/browser 64622 true tab
  64948 pts/0    R+     0:00 ps x
  64949 pts/0    S+     0:00 tail
```

**firefox** ismiyle eşleşen ilk işlemin işlem numarası getirilmiş oldu. Bu şekilde isimleri üzerinden işlemlerin benzersiz işlem numaralarına erişebiliyoruz. Bu komut genellikle komut ikamesiyle birlikte işlemleri sonlandırmak için kullanıyor. Örneğin ben bulduğum bu işlemi sonlandırmak istersem `kill -9 $(pgrep firefox)` şeklinde komutumu girebilirim. Komut ikamesi içindeki `pgrep firefox` komutu “**firefox**” işleminin **pid** değerini bulup, `kill` komutuna argüman olarak vereceği için bu işlem sonlandırılacak. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ kill -9 $(pgrep firefox)

┌──(taylan㉿linuxdersleri)-[~]
└─$ ps x | tail                                                                                                                                 
   1182 ?        Ssl    0:00 /usr/libexec/gvfs-afc-volume-monitor
   1187 ?        Ssl    0:00 /usr/libexec/gvfs-mtp-volume-monitor
   1196 ?        Sl     0:00 /usr/libexec/gvfsd-trash --spawner :1.15 /org/gtk/gvfs/exec_spaw/0
   1209 ?        Ssl    0:00 /usr/libexec/gvfsd-metadata
   1220 pts/0    Ss     0:00 /usr/bin/bash
   1258 ?        Ss     0:00 /usr/libexec/bluetooth/obexd
  61768 pts/1    Ss     0:00 /usr/bin/bash
  62872 pts/0    S      0:00 sleep 700
  65636 pts/0    R+     0:00 ps x
  65637 pts/0    S+     0:00 tail
```

Gördüğünüz gibi tam da tarif ettiğimiz gibi, `pgrep` aracının bulduğu işlem numarası komut ikamesi yardımıyla `kill` aracına argüman olarak verildiği için ilgili işlem sonlandırıldı.

Sizin de fark etmiş olabileceğiniz gibi bu yaklaşım aslında `killall` komutu ile aynı işlevi görüyor. Yine de daha önce ele aldığımız komut ikamesi yaklaşımını da hatırlamak için özellikle bu yöntemi ele almak istedim.

## İşlemlerin Öncelik Sırası | `nice` | `renice`

Temel sistem yönetiminde çok sık kullanmanız gerekmeyeceği ve anlatımı temel seviye dışına çıkabileceği için bu eğitimde **nice** ve **renice** kavramlarından bahsetmeyi planlamıyorum. Fakat bu açıklamayı yapıyor olmamdan da anlaşılabileceği gibi, meraklı olan saygıdeğer okuyucularımı bu konuları araştırmaya sevk ettiğimi de belirtmek isterim. En azından bir göz atsanız hiç de fena olmaz :)

En nihayetinde Linux üzerinde işlem yönetimi için bilmemiz gereken en temel yaklaşımları ele aldık. Elbette tüm anlatımlar bunlardan ibaret değil fakat, giriş seviyesi için diğer detaylar biraz kafa karıştırıcı ve anlamsız olabilir. Bu sebeple işlemler konusunda bu kadarlık bilginin eğitime devam etmemize yeteceğini düşündüğüm için bir sonraki bölüme "servis yönetimi” ile devam ediyor olacağız.

## tmux

`tmux` aracı konsol üzerindeki verimliliğimizi artıran bir araç. Doğrudan "işlem yönetimi" ile ilgili olmasa da diğer bölümlere nazaran bu bölümde ele almanın daha uygun olacağını düşündüm.

`tmux` sayesinde tek bir konsol oturumunu birden fazla parçaya bölüp kullanabiliyoruz. Bu araç varsayılan olarak yüklü gelmediği için `sudo apt install tmux` ya da `sudo dnf install tmux` komutu ile kurabilirsiniz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo apt install tmux
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  tmux
0 upgraded, 1 newly installed, 0 to remove and 1827 not upgraded.
Need to get 455 kB of archives.
After this operation, 1,137 kB of additional disk space will be used.
Get:1 http://kali.download/kali kali-rolling/main amd64 tmux amd64 3.3a-4 [455 kB]
Fetched 455 kB in 14s (32.1 kB/s)
Selecting previously unselected package tmux.
(Reading database ... 291994 files and directories currently installed.)
Preparing to unpack .../archives/tmux_3.3a-4_amd64.deb ...
Unpacking tmux (3.3a-4) ...
Setting up tmux (3.3a-4) ...
Processing triggers for man-db (2.9.4-4) ...
Processing triggers for kali-menu (2021.4.2) ...
```

Aracımız kurulduktan sonra `tmux` komutu ile başlatabiliyoruz.

![tmux.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/tmux.webp)

`tmux` komutunu girdikten sonra, **tmux** oturumunda bash kabuğu çalıştırılıyor. Bu araç üzerinden komutlarımızı girebiliyoruz. Dilersek dikey ve yatay olarak yeni konsol oturumları eklememiz mümkün. `tmux` kısayollarını kullanabilmek için öncelikle <kbd>Ctrl</kbd> + <kbd>B</kbd> tuşuna basıyoruz. Daha sonra dikey olarak yeni konsol ekleyeceksek yüzde işareti <kbd>%</kbd> tuşuna basıyoruz.

![tmux-vertical.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/tmux-vertical.webp)

Eğer yatay olarak bölüp yeni konsol oturumu eklenecekse <kbd>Ctrl</kbd> + <kbd>B</kbd> tuşuna bastıktan sonra tırnak işaretini <kbd>“</kbd> oluşturan tuşa basıyoruz.

![tmux-horizontal.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/tmux-horizontal.webp)

Bu konsollar arasında geçiş yapmak için <kbd>Ctrl</kbd> + <kbd>B</kbd> tuşuna bastıktan sonra klavyemizdeki sağ sol yön tuşları ile ilgili konsol oturumuna geçiş yapabiliyoruz. Zaten hangi konsolda olduğunuzu, pencereleri birbirinden ayıran renkli çizgi sayesinde takip edebilirsiniz. 

![tmux-new-sessions.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/tmux-new-sessions.gif)

Eğer bir oturumu sonlandırmak istiyorsanız üzerinde bulunduğunuz `tmux` oturumunu `exit` komutunu girerek kapatabilirsiniz. 

![tmux-exit.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/tmux-exit.gif)

Konsol oturumunu sonlandırmak yerine, ilgili konsolun arkaplanda çalışmaya devam etmesini sağlayıp, bu konsol oturumundan geçici süreliğine ayrılmanız da mümkün. Örneğin ben denemek için `tmux` komutunu girip yeni bir konsol oturumu başlatıyorum. Ve bu oturumda `top` komutunu çalıştırıyorum. Normalde eğer konsol kapanacak olursa bu `top` aracı da kapanacağı için çalışmayı sürdürmeyecek. Fakat ben oturumu tamamen kapatmak yerine oturumdan ayrılmak için <kbd>Ctrl</kbd> + <kbd>B</kbd> tuşlamasını yapıp <kbd>D</kbd> tuşuna basıyorum. Buradaki <kbd>D</kbd> tuşu “**detach**” yani “**ayırmak**” ifadesinden gelen bir kısaltma. Bu sayede konsoldaki hiç bir işlem sonlandırılmadan biz konsoldan ayrılmış oluyoruz. Ayrıldığımız oturumları görmek için de `tmux list-sessions` komutunu kullanıyoruz.

![tmux-detach.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/tmux-detach.gif)

Ayrıldığımız oturumlara geri dönmek için `tmux attach` komutunu kullanabiliyoruz. 

![tmux-attach.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/tmux-attach.gif)

Eğer ayrıldığımız birden fazla oturum varsa geçiş yapmak istediğimiz oturumu `tmux attach -t oturum-sayısı` komutuyla özel olarak belirtmemiz gerekiyor.

![tmux-multi-sessions.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/tmux-multi-sessions.gif)

Bu yaklaşım sayesinde oturumlarda gerçekleştirilen işlemler sonlandırılmadan, başka konsol oturumlarında çalışabiliyoruz. Örneğin bir konsolda ssh ile bağlantı sağlayıp işlemler gerçekleştiriyorken, bu şekilde konsoldan ayrıldığımızda ssh bağlantısı ve tabii ilgili işlemler arkaplanda devam edecek. Biz de dilediğimiz zaman bu konsol oturumuna dönebileceğiz. 

Bu esnek kullanım özelliğine ek olarak, konsol üzerinde kopyalama ve yapıştırma gibi işlemleri gerçekleştirmemiz de mümkün. Bu özellik, komut satırı arayüzünde çalışan tty konsolları üzerinde çalışmamız gerektiğinde, fare kullanamadığımızda işimizi inanılmaz kolaylaştırıyor. 

Kopyalamak için <kbd>Ctrl</kbd> + <kbd>B</kbd> tuşlamasından sonra <kbd>[</kbd> sembolünü temsil eden tuşlamayı yapıyoruz. Bu noktadan itibaren imlecimizi mevcut konsol yazıları üzerinde yön tuşları ile rahatça hareket ettirebiliyoruz. Kopyalamak istediğimiz bölümün başına yön tuşları ile geldikten sonra seçme işlemi için <kbd>Ctrl</kbd> + <kbd>Space</kbd> tuşuna bastıktan sonra yine yön tuşları ile ilgili yazı seçiyoruz. Seçme işlemi bittikten sonra <kbd>Ctrl</kbd> + <kbd>W</kbd> tuşu ile seçili metni kopyalıyoruz. 

Kopyalanmış olan metni yapıştırmak için de <kbd>Ctrl</kbd> + <kbd>B</kbd> tuşlamasından sonra <kbd>]</kbd> sembolünü temsil eden tuşlamayı yapmamız yeterli oluyor. 

![tmux-copy-paste.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/tmux-copy-paste.gif)

`tmux` aracının en temel kullanımı bu şekilde. Tabii ki aracın kullanımı ve konfigürasyonuna dair pek çok ek ayrıntı mevcut fakat temel kullanım amacı için burada bahsetmiş olduğumuz kadarlık bilgi yeterli. Daha fazlası için ek araştırma yapmakta özgürsünüz.
