
# Linux Yardım Alma Komutları

Söz konusu komut satırı üzerinden bir işletim sistemini yönetmek olduğunda, neredeyse sınırsız çeşitlilikte pek çok aracı kullanmamız gerekeceği için her aracın her kullanım bilgisini aklımızda tutmamız mümkün ve mantıklı değildir. Yeri geldiğinde ihtiyaçlarımıza göre pek çok farklı aracın pek çok farklı özelliğini kullanacağız. Sık kullandığımız araçlar ve bu araçların sık kullandığımız özellikleri dışındaki çoğu bilgiyi unutmamız son derece normal. Unutmaya ek olarak ayrıca her zaman internete erişmemiz de mümkün olmayabilir. Yani internet üzerinden unuttuğumuz bilgilere bakmamız kimi zaman mümkün olmayabilir. Bu noktada en büyük dostumuz, sistemde mevcut bulunan yani çevrimdışı ulaşılabilir olan yardım sayfalarıdır. En yetenekli ve bilgili sistem uzmanları bile gerektiğinde yardım sayfalarına göz atarlar. Bizler de hem öğrenme aşamasında hem de daha sonrasında sıklıkla yardım sayfalarını kullanıyor olacağız.

Yani özetle, bu bölümde kelimenin tam anlamıyla öğrenmeyi öğreneceğiz.

Grafiksel arayüzlü araçları kullanırken sezgisel olarak özellikleri keşfetmek ve hatırlamak komut satırı araçlarına oranla daha kolaydır. Çünkü grafiksel arayüzde menüleri kurcalayabilir ve çeşitli butonlara tıklayarak etkilerini gözlemleyebilirsiniz. Ancak komut satırı üzerinden kullanılan araçlarda grafiksel arayüzdeki gibi sezgisel olarak keşif için gerekli ortam yoktur. Çünkü komut satırı arayüzündeki araçları kullanırken istisnalar hariç, yerine getirilmesini istediğimiz görevleri spesifik olarak yazılı komutlarınızla belirtmemiz gerekiyor. İlgili komutu veya komutun özelliğini temsil eden seçeneği bilmiyorsak gereken işlemi yapamayız. Tabii ki tüm araçların tüm seçeneklerini bilme ihtimalimiz olmadığı için, komut satırı arayüzü ile çalışan araçlar, tüm özelliklerini iyi biçimde açıklayan yardım dokümantasyonlarına sahipler. 

Linux sistemlerinin temel doküman-bilgi kaynaklarını 4 türe ayırabiliriz:

- kısa bilgi açıklamaları(help)
- kılavuz sayfaları(manuel)
- bilgi sayfaları(info)
- uygulamalar ile gelen dokümanlar

# `help` Komutu

Daha önce, yerleşik(dahili) ve harici komutların neler olduğundan bahsetmiştik. Yerleşik komutlar kabuğun beraberinde gelen çeşitli araçlardı. İşte `help` komutu da kabukta yerleşik olarak bulunan komutların yardım açıklamalarına ulaşmak için kullandığımız bir araçtır. Hemen denemek için yerleşik bir komut olan `echo` komutunun yardım bilgilerini görüntüleyelim. Bunun için tek yapmamız gereken `help` komutunun ardından yardım bilgisine ulaşmak istediğimiz yerleşik komutu belirtmek. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ help echo
echo: echo [-neE] [arg ...]
    Write arguments to the standard output.
    
    Display the ARGs, separated by a single space character and followed by a
    newline, on the standard output.
    
    Options:
      -n        do not append a newline
      -e        enable interpretation of the following backslash escapes
      -E        explicitly suppress interpretation of backslash escapes
    
    `echo' interprets the following backslash-escaped characters:
      \a        alert (bell)
      \b        backspace
      \c        suppress further output
      \e        escape character
      \E        escape character
      \f        form feed
      \n        new line
      \r        carriage return
      \t        horizontal tab
      \v        vertical tab
      \\        backslash
      \0nnn     the character whose ASCII code is NNN (octal).  NNN can be
                0 to 3 octal digits
      \xHH      the eight-bit character whose value is HH (hexadecimal).  HH
                can be one or two hex digits
      \uHHHH    the Unicode character whose value is the hexadecimal value HHHH.
                HHHH can be one to four hex digits.
      \UHHHHHHHH the Unicode character whose value is the hexadecimal value
                HHHHHHHH. HHHHHHHH can be one to eight hex digits.
    
    Exit Status:
    Returns success unless a write error occurs.
```

Bakın, `help` komutu **echo** aracı hakkında çeşitli özet bilgiler sunan yardım bilgisini anında konsola bastırdı. 

![1.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/1.webp)

Çıktıları inceleyecek olursak; 

<p class="kirmizi">İlk olarak komutun nasıl kullanıldığına dair örnek gösterim bulunuyor. Örneğin <code class="language-plaintext highlighter-rouge">echo</code> komutunun ardından seçenekleri yazıp, daha sonra argümanları girebileceğimiz basit şekilde ifade edilmiş.</p> 

<p class="yesil">Alt tarafta ise araç hakkındaki bilgileri görebiliyoruz. Yani hakkında bilgi almak istediğimiz aracın işlevini buradan kısaca öğrenebiliyoruz.</p>

<p class="sari">Kısa açıklamanın ardından, kullanılabilir olan seçenekler ve bunların açıklamaları yer alıyor.</p>

<p class="mavi">En sonda ise bu aracın çalıştıktan sonra üreteceği çıkış kodu belirtilmiş. Bu çıkış kodu daha çok bash programlama esnasında işimize yarayan bir bildirim.</p> 

Neticede buradaki yardım çıktılarına bakarak, sorguladığımız araç hakkında tüm temel bilgileri kolayca öğrenebiliyoruz. 

Örneğimizde şahit olduğumuz gibi `help` komutunu, genellikle ilgili komutun kullanım seçenekleri ve işlevleri hakkında kısaca bilgi almak istediğimizde sıklıkla kullanıyor olacağız. 

Ayrıca hazır yeri gelmişken `help` komutunun yalnızca yerleşik olan araçlar hakkında bilgi sunduğunu teyit etmek için yerleşik olmayan, yani harici olan bir aracın yardım bilgisini `help` komutu üzerinden sorgulamayı da deneyebiliriz. Ben denemek için harici bir araç olan `nano` aracını `help` ile sorgulamak istiyorum.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ help nano
bash: help: no help topics match `nano'.  Try `help help' or `man -k nano' or `info nano'.

┌──(taylan@linuxdersleri)-[~]
└─$
```

Bakın, `nano` harici bir araç olduğu için `help` komutu bilgi sunmadı. Çıktı olarak da bu ifade ile eşleşen bir yardım konusunun bulunamadığı ve alternatif olarak nasıl bilgi alabileceğimiz burada belirtilmiş. Bu alternatiflerden daha sonra ayrıca bahsedeceğiz. Ben şimdi tüm araçların kendi bünyesinde bulundurduğu yardım bilgisine nasıl ulaşabileceğimizden bahsetmek istiyorum.

# Yardım Bilgisi | `--help`

`help` komutunu kullanmak yerine dilerseniz, ilgili aracın isminden sonra `—help` seçeneğini de kullanabilirsiniz. Hemen `nano` aracının yardım bilgisini görmek için `nano —help` şeklinde komutumuzu girelim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ nano --help
Usage: nano [OPTIONS] [[+LINE[,COLUMN]] FILE]...

To place the cursor on a specific line of a file, put the line number with
a '+' before the filename.  The column number can be added after a comma.
When a filename is '-', nano reads data from standard input.

 Option         Long option             Meaning
 -A             --smarthome             Enable smart home key
 -B             --backup                Save backups of existing files
 -C <dir>       --backupdir=<dir>       Directory for saving unique backup files
 -D             --boldtext              Use bold instead of reverse video text
 -E             --tabstospaces          Convert typed tabs to spaces
 -F             --multibuffer           Read a file into a new buffer by default
 -G             --locking               Use (vim-style) lock files
 -H             --historylog            Save & reload old search/replace strings
 -I             --ignorercfiles         Don't look at nanorc files
 -J <number>    --guidestripe=<number>  Show a guiding bar at this column
 -K             --rawsequences          Fix numeric keypad key confusion problem
 -L             --nonewlines            Don't add an automatic newline
 -M             --trimblanks            Trim tail spaces when hard-wrapping
 -N             --noconvert             Don't convert files from DOS/Mac format
 -O             --bookstyle             Leading whitespace means new paragraph
 -P             --positionlog           Save & restore position of the cursor
 -Q <regex>     --quotestr=<regex>      Regular expression to match quoting
 -R             --restricted            Restrict access to the filesystem
 -S             --softwrap              Display overlong lines on multiple rows
 -T <number>    --tabsize=<number>      Make a tab this number of columns wide
 -U             --quickblank            Wipe status bar upon next keystroke
 -V             --version               Print version information and exit
 -W             --wordbounds            Detect word boundaries more accurately
 -X <string>    --wordchars=<string>    Which other characters are word parts
 -Y <name>      --syntax=<name>         Syntax definition to use for coloring
 -Z             --zap                   Let Bsp and Del erase a marked region
 -a             --atblanks              When soft-wrapping, do it at whitespace
 -b             --breaklonglines        Automatically hard-wrap overlong lines
 -c             --constantshow          Constantly show cursor position
 -d             --rebinddelete          Fix Backspace/Delete confusion problem
 -e             --emptyline             Keep the line below the title bar empty
 -f <file>      --rcfile=<file>         Use only this file for configuring nano
 -g             --showcursor            Show cursor in file browser & help text
 -h             --help                  Show this help text and exit
 -i             --autoindent            Automatically indent new lines
 -j             --jumpyscrolling        Scroll per half-screen, not per line
 -k             --cutfromcursor         Cut from cursor to end of line
 -l             --linenumbers           Show line numbers in front of the text
 -m             --mouse                 Enable the use of the mouse
 -n             --noread                Do not read the file (only write it)
 -o <dir>       --operatingdir=<dir>    Set operating directory
 -p             --preserve              Preserve XON (^Q) and XOFF (^S) keys
 -q             --indicator             Show a position+portion indicator
 -r <number>    --fill=<number>         Set width for hard-wrap and justify
 -s <program>   --speller=<program>     Use this alternative spell checker
 -t             --saveonexit            Save changes on exit, don't prompt
 -u             --unix                  Save a file by default in Unix format
 -v             --view                  View mode (read-only)
 -w             --nowrap                Don't hard-wrap long lines [default]
 -x             --nohelp                Don't show the two help lines
 -y             --afterends             Make Ctrl+Right stop at word ends
 -%             --stateflags            Show some states on the title bar
 -_             --minibar               Show a feedback bar at the bottom
 -0             --zero                  Hide all bars, use whole terminal
```

Bakın tıpkı daha önce `help` komutu ile bash kabuğuna yerleşik olan `echo` aracı hakkında aldığımız yardım bilgisi gibi, `—help` seçeneği sayesinde harici araç olan `nano` aracı hakkında da yardım bilgisi sorunsuzca konsola bastırıldı.

Burada kullanmış olduğumuz `—help` seçeneği, istisnalar hariç genellikle tüm araçların temel yardım bilgilerini sunuyor. Üstelik aslında hem dahili hem de harici komutlar için `—help` seçeneğini de kullanabiliyoruz. 

Tam da bu noktada olası kafa karışıklıklarını önleyebilmek için `help` aracının ve `—help` seçeneğinin kullanımına açıklık getirmek istiyorum.

Yerleşik komutların pek çoğu da dahil `—help` seçeneği kullanılarak ilgili komutla ilgili bilgi alabiliriz dedim. Örneğin bir diğer yerleşik komut olan `cd` komutu hakkında bilgi almak için dilersek `help cd` komutunu ya da `cd —help` komutunu kullanabiliriz. Sırasıyla komutlarımızı girip sonuçlarına bakalım.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ help cd
cd: cd [-L|[-P [-e]] [-@]] [dir]
    Change the shell working directory.
    
    Change the current directory to DIR.  The default DIR is the value of the
    HOME shell variable.
    
    The variable CDPATH defines the search path for the directory containing
    DIR.  Alternative directory names in CDPATH are separated by a colon (:).
    A null directory name is the same as the current directory.  If DIR begins
    with a slash (/), then CDPATH is not used.
    
    If the directory is not found, and the shell option `cdable_vars' is set,
    the word is assumed to be  a variable name.  If that variable has a value,
    its value is used for DIR.
    
    Options:
      -L        force symbolic links to be followed: resolve symbolic
                links in DIR after processing instances of `..'
      -P        use the physical directory structure without following
                symbolic links: resolve symbolic links in DIR before
                processing instances of `..'
      -e        if the -P option is supplied, and the current working
                directory cannot be determined successfully, exit with
                a non-zero status
      -@        on systems that support it, present a file with extended
                attributes as a directory containing the file attributes
    
    The default is to follow symbolic links, as if `-L' were specified.
    `..' is processed by removing the immediately previous pathname component
    back to a slash or the beginning of DIR.
    
    Exit Status:
    Returns 0 if the directory is changed, and if $PWD is set successfully when
    -P is used; non-zero otherwise.

┌──(taylan@linuxdersleri)-[~]
└─$ cd --help
cd: cd [-L|[-P [-e]] [-@]] [dir]
    Change the shell working directory.
    
    Change the current directory to DIR.  The default DIR is the value of the
    HOME shell variable.
    
    The variable CDPATH defines the search path for the directory containing
    DIR.  Alternative directory names in CDPATH are separated by a colon (:).
    A null directory name is the same as the current directory.  If DIR begins
    with a slash (/), then CDPATH is not used.
    
    If the directory is not found, and the shell option `cdable_vars' is set,
    the word is assumed to be  a variable name.  If that variable has a value,
    its value is used for DIR.
    
    Options:
      -L        force symbolic links to be followed: resolve symbolic
                links in DIR after processing instances of `..'
      -P        use the physical directory structure without following
                symbolic links: resolve symbolic links in DIR before
                processing instances of `..'
      -e        if the -P option is supplied, and the current working
                directory cannot be determined successfully, exit with
                a non-zero status
      -@        on systems that support it, present a file with extended
                attributes as a directory containing the file attributes
    
    The default is to follow symbolic links, as if `-L' were specified.
    `..' is processed by removing the immediately previous pathname component
    back to a slash or the beginning of DIR.
    
    Exit Status:
    Returns 0 if the directory is changed, and if $PWD is set successfully when
    -P is used; non-zero otherwise.
```

Bakın her iki çıktı da birebir aynı yardım bilgisini konsola bastırdı. Bu örnek ile yerleşik komutlarda da `—help` seçeneğini kullanabileceğimizi görebiliyoruz ancak istisnai olan komutlar da bulunduğu için `help` komutuna da ihtiyacımız var. Örneğin `echo` aracı hakkında bilgi almak için `echo —help` şeklinde komut girmeyi deneyebiliriz. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ echo --help                                                                              
--help
```

Bakın yardım bilgisi yerine doğrudan **—help** ifadesi konsola bastırıldı, çünkü `echo` aracının görevi kendisine argüman olarak verilmiş olan değerleri konsola bastırmaktır. Buradaki **—help** ifadesi de `echo` aracı için konsola bastırılması gereken sıradan bir argüman. İşte tam da `echo` komutunda da olduğu gibi bazı yerleşik komutlar hakkında bilgi almak için `help` aracına ihtiyaç duyabiliyoruz. Eğer hakkında bilgi almak istediğiniz yerleşik bir komut varsa ve bu komut `—help` seçeneği ile bilgi sunmuyorsa `help` komutundan sonra ilgili yerleşik komutu yazıp bilgi alabilirsiniz. Dolayısıyla yerleşik komutların istisnaları haricinde neredeyse tüm komutlar `—help` seçeneği ile yardım bilgisi sunabiliyor. Tek yapmanız gereken bu seçeneği kullanıp çalışıp çalışmadığını denemek. İstisnalar hariç tüm araçlar size bilgi sunmak için `—help` seçeneğini kullanmanızı bekliyor zaten.  

Umarım `help` komutu ve `—help` seçeneği arasındaki fark net bir biçimde anlaşılmıştır. Çünkü komutlar hakkında kısa ama etkili şekilde bilgi almak için bu yöntemleri sıklıkla kullanıyor olacağız.

# `man`(Manual Sayfası)

Bir diğer yardım kaynağımız da `man` komutu ile ulaşabildiğimiz ve **man pages** olarak geçen yardım sayfalarıdır. 

**Manual** ifadesinin kısalmasından gelen **man** sayfaları sistem üzerindeki araçlar için temel yardım bilgileri içeren hiyerarşik düzende bulunan dosyalardır. Buradaki manual ifadesinin nereden geldiğini almak için internet üzerinde görsel arama kısmına “manuals” ya da “product manuals” şeklinde yazıp aratabilirsiniz. 

![2.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/2.webp)

Karşınıza çeşitli ürünlerin kullanımlarını ve özelliklerini açıklayan kılavuz sayfalarının resimleri gelecektir. Zaten bu görseller size tanıdık geliyordur. Örneğin bir telefon veya benzeri bir araç aldığınızda mutlaka kutu içeriğinden kullanma kılavuzu da çıkmıştır. İşte `man` olarak geçen yardım sayfaları da tıpkı gerçek hayattaki “kılavuz” sayfaları gibi sistemimizde yüklü bulunan araçlar hakkında bilgi sunan kılavuz sayfalarıdır. Man ismi de buradan geliyor.

Sistemde varsayılan olarak yüklü bulunan araçlar ve sistemin diğer çeşitli bileşenleri bu manuel sayfalarında tek tek açıklanmıştır. Ayrıca istisnalar hariç, sisteme yeni yüklenen araçlar da beraberinde ilgili araç hakkında bilgi içeren manuel sayfalarıyla birlikte geliyorlar. Bu yaklaşım sayesinde, sistem üzerinde yüklü bulunan neredeyse tüm araçlar hakkında çevrimdışıyken de bilgi alabileceğimiz hiyerarşik düzende bir kılavuza sahip oluyoruz. Yani elimizin altında bir nevi kütüphanemiz var aslında. 

## Manual Sayfasını Açmak

Manual sayfalarına ulaşmak için, başta söz ettiğimiz `man` komutunu yani aslında **man** aracını kullanıyoruz. Örneğin ben `chmod` hakkındaki bilgilere ulaşmak istiyorsam konsola `man chmod` şeklinde yazarak gerekli bilgilere kolayca ulaşabilirim. 

![3.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/3.webp)

Görebildiğiniz gibi `chmod` aracının manuel sayfası açılmış oldu. Tüm içerik elbette şu an gözüktüğü kadarla sınırlı değil.

## Sayfada Gezinti

Açılan bu kılavuz sayfasında yön tuşlarını kullanarak yukarı aşağı sağa sola hareket edebiliriz. Ayrıca hızlıca alt satırlara inmek istersek sayfa sayfa atlamak için <kbd>space</kbd> tuşunu da kullanabiliriz. Zaten alt çubuktan da tüm manuel sayfasının ne kadarını okuduğunuzu kolayca takip edebilirsiniz. 

![4.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/4.gif)

## Yardım Bilgisi

Ayrıca man sayfasının kısayollarını ve kullanımını görmek isterseniz man sayfası açıkken <kbd>h</kbd> tuşuna basarsanız sizi man kılavuzunun yardım sayfası karşılar, burada man komutunun kullanımı ile ilgili detaylı bilgi yardımı mevcut. 

![5.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/5.webp)

Esasen bu kılavuz sayfasında gezinmek için <kbd>space</kbd> ve yukarı aşağı yön tuşları çoğu zaman yeterli olacağı için buradaki detaylı bilgilere muhtemelen pek ihtiyacınız olmayacaktır. Fakat arama özelliği işinize yarayabilir. 

## Arama Yapmak

Mevcut bulunduğunuz satırdan sonra, aradığınız kelime ile eşleşenleri bulmak için **/aranacak-ifade** şeklinde yazıp <kbd>enter</kbd> ile onaylayabilirsiniz. Ben denemek için “change” ifadesini araştırmak üzere **/change** yazıp <kbd>enter</kbd> ile onaylıyorum.

![6.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/6.gif)

Bakın “change” ile eşleşenler renkli şekilde aydınlatıldı. Yani aradığım ifade ile eşleşenleri görebiliyorum. Eğer eşleşmeler arası ileri geri atlamak istersek, önceki ve sonraki eşleşmelerde atlamak için <kbd>n</kbd> ve <kbd>N</kbd> tuşlarını kullanabiliyoruz. Büyük “N” karakteri için <kbd>Shift</kbd> + <kbd>n</kbd> ya da <kbd>Capslock</kbd> açıkken <kbd>n</kbd> tuşuna basmanız yeterli. Bu sayede eşleşmeler arasında ileri geri geçiş yapabilirsiniz. 

![7.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/7.gif)

## Manual Sayfasından Çıkış

Kılavuz sayfasını kapatmak için <kbd>q</kbd> tuşuna basmamız yeterli.

![8.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/8.gif)

Neticede bizzat deneyimlediğimiz gibi herhangi bir araç hakkında bilgi almak üzere manual sayfalarını kullanmak çok basit. Şimdiye kadar nasıl açılıp, sayfalardan nasıl gezinebileceğimizden bahsettik. Şimdi biraz da **man** sayfasının iç yapısına yani sayfa düzenine kısaca değinelim istiyorum. 

## Sayfa Yapısı Hakkında

Elbette hakkında bilgi aldığınız araca göre, kılavuz sayfasındaki başlıklar da farklı olabilir. Yine de temel olan ve sıklıkla karşılaşacağınız başlıklardan kısaca bahsedebiliriz. Benim açıkladığım başlıklar haricinde farklı başlıklara karşılaşırsanız da elbette İngilizce karşılıkları sayesinde kolayca kavrayabilirsiniz. Manuel sayfasının bölümlerini kısacak açıklayacak olursak:

- **NAME:** İlgili aracın isminin ve işlevinin kısaca açıkladığı bölümdür.
- **SYNOPSIS:** Aracın nasıl kullanılacağına dair kısa açıklamalar ve örnek komutları içerir. Bu bölümde genellikle sık kullanılan seçenek ve parametrelerinin nasıl girilmesi gerektiği şablon olarak gösterilir.
- **DESCRIPTION:** İlgili aracın yerine getirdiği görev hakkında nispeten daha uzun ve detaylı şekilde açıklama içeren bölüm yani esas açıklama bölümü.
- **OPTIONS:** Aracın sahip olduğu seçenekler ve bu seçeneklerin kullanımı hakkında bilgi sunan bölümdür. Buradaki bilgiler çoğunlukla ilgili aracın —help seçeneği ile sunulan seçenek bilgileridir.
- **EXAMPLES:** İlgili aracın kullanıma dair örneklerin yer aldığı bölümdür. Bu bölümde genellikle çok sık tercih edilen, ya da aracın kabiliyetlerini kavramamızı sağlayacak örneklere sıklıkla yer veriliyor.
- **AUTHOR:** Yazarların isimleri ve iletişim bilgilerinin yer aldığı bölümdür.
- **REPORTING BUGS:** Hata veya eksikleri bildirebileceğiniz iletişim adresleri hakkında bilgi sunuyor.
- **COPYRIGHT VE SEE ALSO:** Son bölümde ise, telif hakları ve daha fazla bilgiyi nereden alabileceğimiz gibi ekstra detayları belirten açıklama bulunuyor.

Artık, ihtiyaç duyduğumuzda kılavuz sayfalarından nasıl bilgi edinebileceğimizi öğrendik. 

Ben sistemimi İngilizce kullandığım için manual sayfaları da İngilizce açıklamalar içeriyor. Eğer siz Türkçe olarak kullanıyorsanız hepsi olmasa da bazı manual sayfalarının Türkçeleştirildiğini görebilirsiniz. 

Manuel sayfalarının farklı dillere çevrilmesi kimi kullanıcılar için kolaylık sağlasa da manuel sayfalarının yerelleştirilmesi çoğunlukla eksik kaldığından en doyurucu bilgiye standart olan İngilizce dili üzerinden ulaşabiliyoruz. Bu sebeple ben sizlere ingilizce haricindeki manuel sayfalarını kullanmanızı önermiyorum. En ulaşılabilir ve en detaylı olanı ingilizcede bulunuyor. Eğer kendi dilinizde kullanmak isterseniz kısa bir araştırma ile nasıl yapabileceğinizi öğrenebilirsiniz.

Manual sayfaları hakkındaki anlatımları bitirmeden önce aradığımız yardım bilgisine daha kolay erişebileceğimiz bir kullanım biçiminden daha bahsetmek istiyorum.

Araç veya aracın kısa işlev açıklaması ile eşleşen manual sayfalarını listeleyebilmek isteseydik ne yapmamız gerekirdi ? Yani örneğin ben **chmod** isimli aracın ismini hatırlayamadım ama işlevini hatırlıyorum diyelim. İşte bu durumda tüm manual sayfaları içinde benim araştırdığım kelime ile eşleşen manual sayfaları bana liste olarak sunulabilir. Ne demek istediğimi daha net anlamak için gelin `man -k` ve `apropos` komutlarının kullanımlarından bahsederek devam edelim.

## Manual Sayfalarında Araştırma

Manual sayfaları her ne kadar bütüncül olarak faydalı kaynaklar olsa da manuel sayfalarını yalnızca spesifik bir konu veya araç hakkında yekpare bilgi almak için kullanmanız gerekmiyor. Yani manual sayfalarını yalnızca dokümanları baştan sonra okumak için kullanmamız şart değil. Örneğin yalnızca manual sayfalarının başında yer alan, ilgili aracın isminin ve işlevinin açıklandığı bölümden de faydalanmak isteyebiliriz. Bu duruma örnek verebilmek için öncelikle `man passwd` komutu ile **passwd** aracının açıklandığı manual sayfası açalım. 

![9.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/9.webp)

Bakın burada isim bölümünde, daha önce de izah ettiğimiz şekilde, aracın ismi ve işlevi hakkında kısa bir açıklama bulunuyor. İşte bizler bu bölümdeki açıklamaları kullanarak, aracın isminden kısaca işlevini ya da tersi şekilde, aracın işlev açıklamasından aracın adını bulabiliriz. Örneğin **passwd** aracının işlevini yani kullanıcı parolası değiştirme işlevini hatırlıyorsunuz ancak **passwd** aracının ismi aklınıza gelmedi diyelim. İşte tam bu noktada `man` komutunun `-k` seçeneğini kullanıp, argüman olarak aracın işlevini yazıp aratabilirsiniz. Şu an çok net anlaşılmamış olabilir hemen basit bir örnek üzerinden ele alalım. Bunun için hemen yeni bir konsol açalım, ve komut satırına `man -k passwd` komutunu girelim.

![10.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/10.webp)

Bakın, burada yazmış olduğum komut sayesinde manuel sayfasının **NAME** yani isim bölümünde yazan araç ismi ve kısaca açıklamasında `passwd` ifadesi geçen tüm manuel sayfaları tek tek konsola bastırıldı. Kimisinin sadece adında, kimisinin de işlev açıklamasında **passwd** ifadesi geçiyor gördüğünüz gibi. Diğer çıktılar isminin bir kısmında veya açıklamasının bir bölümünde passwd yani aradığımız ifade geçen manual sayfaları. 

Neticede işte bizler `man -k` komutu ile araştırma yaparken aslında tüm manual sayfalarının isim bölümlerine bakılıyor ve araştırdığımız ifade veya ifadeler ile eşleşen bir manual sayfası varsa bize çıktı olarak sunuluyor. 

Ben örnek olarak **passwd** aracının ismini yazdım ancak manuel sayfalarının **NAME** başlığı altında geçen dilediğiniz bir kelimeyi veya kelime gruplarını araştırmanız mümkündür. Ben bu kez yeni bir örnek olarak "**change file**" kelimelerini araştırabiliriz. Yani bu kez, aracın işlevinden aracın ismine ulaşmayı deneyelim.

![11.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/11.webp)

Görebildiğiniz gibi içerisinde tam olarak "change file" ifadesi geçen tüm manuel sayfaları listelendi. Buradaki eşleşmenin, ismin yanındaki kısa açıklama bilgisi sayesinde yakalandığını da buradaki çıktılara bakarak kolayca teyit edebiliyoruz. 

Netice buradaki örneklerimizde bizzat deneyimlediğimiz gibi manual sayfalarının isim bölümlerinde araştırma yapmak için `man -k` komutundan yararlanabiliyoruz. Yalnız burada dikkat etmeniz gereken detay, bütünleşik olarak birden fazla kelime içeren bir araştırma yapmak istiyorsanız bu kelimeleri tırnak işareti içine alarak yazmanızdır. Örneğin ben `man -k “change file”` komutunu girdiğim için doğrudan bu ifade ile eşleşenler konsola bastırıldı. Eğer tırnak içinde yazmasaydım hem “**change**” hem de “**file**” ifadelerinden tek biri veya her ikisi ile de eşleşen tüm sayfalar tek tek bastırılacaktı. Hemen deneyelim.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ man -k change file
7z (1)               - A file archiver with high compression ratio format
7za (1)              - A file archiver with high compression ratio format
7zr (1)              - A file archiver with high compression ratio format
...
ALTER_INDEX (7)      - change the definition of an index
ALTER_AGGREGATE (7)  - change the definition of an aggregate function
ALTER_COLLATION (7)  - change the definition of a collation
ALTER_CONVERSION (7) - change the definition of a conversion
ALTER_DATABASE (7)   - change a database
...
zipgrep (1)          - search files in a ZIP archive for lines matching a pattern
zipnote (1)          - write the comments in zipfile to stdout, edit comments and rena...
zipsplit (1)         - split a zipfile into smaller zipfiles
zless (1)            - file perusal filter for crt viewing of compressed text
zmore (1)            - file perusal filter for crt viewing of compressed text
znew (1)             - recompress .Z files to .gz files
```

Bakın tırnak içinde yazmadığım için aralarında boşluk bulunan “**change**” ve “**file”** kelimeleri ayrı ayrı değerlendirildi ve bunlardan biri veya birden fazlasıyla eşleşen tüm sayfalar bastırıldı. Bu örnekte de görebildiğiniz gibi eğer girdiğiniz kelimeler ayrı ayrı araştırılsın istemiyorsanız mutlaka tırnak içinde yazmanız gerekiyor.

Hazır `man -k` komutundan bahsetmişken `apropos` komutunda da bahsetmemek olmaz. `apropos` komutu da `man -k` komutu ile birebir aynı işlevde. Yani dilersek `man -k` yerine doğrudan `apropos` komutu ile de aynı şekilde manual sayfalarının isim bölümlerinde araştırma yapabiliriz. Teyit etmek için bir önceki komutu bu kez `apropos` ile tekrar girmeyi deneyebiliriz.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ man -k "change file"                                                                 
chattr (1)           - change file attributes on a Linux file system
chcon (1)            - change file security context
chmod (1)            - change file mode bits
chown (1)            - change file owner and group
touch (1)            - change file timestamps

┌──(taylan@linuxdersleri)-[~]
└─$ apropos "change file"                                                                
chattr (1)           - change file attributes on a Linux file system
chcon (1)            - change file security context
chmod (1)            - change file mode bits
chown (1)            - change file owner and group
touch (1)            - change file timestamps
```

Bakın birebir aynı çıktıyı aldık çünkü `man -k` ile `apropos` komutu aynı işlevi gören iki farklı komut. Hatta `man —help` komutu ile man aracının yardım bilgisini listeleyip kontrol edebiliriz. 

![12.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/yardim/12.webp)

Bakın `-k` seçeneğinin uzun karşılığı olarak burada da **apropos** ifadesinin kullanıldığını görebiliyoruz. **apropos** aracının ismi de buradan geliyor zaten. Apropos ifadesi Türkçe olarak “uygun” ifadesine karşılık geldiği için bizler de bu aracı aradığımız kelimelere uygun olan manual sayfalarını bulmak amacıyla kullandığımızdan bence hatırlaması kolay bir komut. Sizin için hangisi daha akılda kalıcı ise onu kullanmakta özgürsünüz.

Yani özetle, man sayfalarında yer alan açıklamalar sayesinde, tam olarak ismini hatırlayamadığınız araçların isimlerini ya da tam tersi şekilde ismini bilip işlevini hatırlayamadığınız durumlarda da işlevlerini `apropos` ya da `man -k` komutu yardımıyla kolaylıkla sorgulayabilirsiniz. 

Sanırım, manuel sayfalarının ne kadar faydalı olabileceğine dair az çok fikir edinebildik. Şimdiye kadar özellikle değinmedik ancak, elbette manual sayfalarındaki bilgilerin faydalı olabilmesi için güncel olmaları da gerekiyor. O halde son olarak manuel sayfalarını nasıl güncelleyebileceğimizi de ele alalım. 

## Manual Sayfalarını Güncellemek | `mandb`

Eski bilgileri güncellemek veya aradığımızda ulaşamadığımız manuel bilgilerine ulaşabilmek için ara ara manuel sayfalarını güncellememiz gerekiyor. Çünkü sisteme kurulan veya kaldırılan araçlarla birlikte manual sayfalarının içeriklerinde değişimler olması kaçınılmaz. Örneğin sisteminizi yeni yüklediğiniz bir aracın manual sayfasına bakıp bilgi almak istediniz ancak böyle bir manual sayfası olmadığı konusunda uyarı aldınız. İşte bu durumda `mandb` komutu ile manual sayfalarındaki değişikliklerin taranıp güncellenmesini sağlamamız gerekiyor.

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ mandb
0 man subdirectories contained newer manual pages.
0 manual pages were added.
0 stray cats were added.
0 old database entries were purged.

┌──(taylan@linuxdersleri)-[~]
└─$
```

Bakın görebildiğiniz gibi işlem son derece kısa sürdü ve güncelleme işleminden sonra yapılan değişiklikleri de son satırda bizlere bildirir. Eğer sisteminizde manual sayfalarının değişmesine sebep olabilecek herhangi bir değişim meydana gelmediyse doğal olarak ben de olduğu gibi herhangi bir güncelleme de yapılmıyor. Yine de eğer aradığınız manual sayfasını bulamıyorsanız ya da `apropos` veya `man -k` komutu ile araştırdığınız kelime ile eşleşme sağlanmıyorsa `mandb` komutu ile manual içeriklerini güncelleyip tekrar araştırmayı deneyebilirsiniz.

# `info` Komutu

Türkçe kılavuz olarak geçen **man** yani **manual**'e ek olarak 90'ların başında, GNU projesi "**man**" dokümantasyon sisteminin güncelliğini yitirdiğine karar verdi ve onun yerini alması için **info** aracı geliştirildi. Ancak ne yazık ki **info**, dönemine göre nispeten daha kolay okunur olsa da hiç bir zaman man kadar popüler olamadı. Nitekim günümüzde de **man** kılavuz sayfaları halen **info** ya oranla daha sık tercih ediliyor. Man sayfalarını kullanamaya benzer olması ve bilmenin elzem olmaması sebebiyle info aracını özellikle ele alarak vakit kaybetmek istemiyorum. Bilseniz fena olmaz, ama şart da sayılmaz. Kısa bir araştırma ile tıpkı **man** gibi kullanılabildiğini kendiniz de bizzat görebilirsiniz. 

# Dokümantasyonlar

İstisnalar hariç, genellikle sistem bir araç kurulduğu zaman bu araçla birlikte ilgili aracın kullanımı hakkında bilgi, örnek ve değişim notları gibi detayları içeren dokümantasyonlar da sisteme ekleniyor. Bu dokümanların içeriğini sınırlayarak anlatmam mümkün değil çünkü ilgili aracın kullanım alanına göre pek çok türde dosya bulunabiliyor. Bu dokümanlar da varsayılan olarak sistemde ***/usr/share/doc*** dizini altında tutuluyor. Hemen bu dizinde ne kadar çok araca ait doküman klasörü olduğunu görebilmek için `cd /usr/share/doc` komutu ile ilgili dizine geçiş yapıp `ls` komutu ile içeriği listeleyelim. 

```bash
┌──(taylan@linuxdersleri)-[~]
└─$ cd /usr/share/doc                                                                    

┌──(taylan@linuxdersleri)-[/usr/share/doc]
└─$ ls
...                                                 
xorg-docs-core
xserver-common
xserver-xorg
xserver-xorg-core
xserver-xorg-input-all
xserver-xorg-input-libinput
xserver-xorg-legacy
...
xsltproc
xterm
xtightvncviewer
xvfb
xxd
xz-utils
zenity
zenity-common
....
zsh
zsh-autosuggestions
zsh-common
zsh-syntax-highlighting
```

<p class="mavi"><strong>ℹ️ Not:</strong> Çıktı çok uzun olduğu için kısaltarak verdim.</p>

Bakın burada sistemde yüklü bulunan pek çok araca ait dokümanların klasörleri bulunuyor. 

Ben örnek olarak ileride ayrıca kullanımını ele alacağımız **nano** aracının dokümanlarına göz atmak istiyorum. `cd nano` komutu ile geçiş yapıp `ls` komutu ile listeleyelim. 

```bash
┌──(taylan@linuxdersleri)-[/usr/share/doc/nano]
└─$ ls                                                                                   
AUTHORS              changelog.gz  examples  IMPROVEMENTS.gz  NEWS.gz    THANKS.gz
changelog.Debian.gz  copyright     faq.html  nano.html        README.gz  TODO
```

Bakın burada birtakım dosyalar ve klasörler bulunuyor. Elbette tüm araçların dokümantasyon içeriği buradaki ile birebir aynı olmayacaktır. Ancak bu dizinin içeriği bize az çok dokümantasyon dizininde hangi türden içeriğin olduğuna dair bir fikir verebilir. Örneğin aracın yazarları, değişim notları, telif hakkı, örnek klasörü, sıkça sorulanlar, geliştirmeler, yenilikler ve benzeri pek çok farklı türde bilgiyi sunan farklı türde dosyalar burada bulunuyor. İhtiyaç halinde gerekli olan bilgilere buradaki dosyalar üzerinden ulaşabilirsiniz. 

Ben yalnızca **nano** aracı üzerinden inceleme yaptım ancak farklı araçların dokümanlarına baktığınızda, pek çok türde dosyanın yer aldığını sizler de bizzat göreceksiniz. Ayrıca başta da belirttiğim şekilde her aracın doküman dosyaları olacak diye bir kaide de yok. Kimi aracın vardır, kimisinin yoktur. 

Neticede bizzat teyit ettiğimiz üzere, sistemde yüklü bulunan araçların, dokümanları da bu konumda yer alıyor. Dolayısıyla sizler de gerektiğinde değişim notları, yenilikler, örnek dosyalar ve benzeri dokümantasyon kaynakları için bu dizini kontrol edebilirsiniz. Buradaki dokümanlar help ya da manuel sayfalarından çok daha farklı türde pek çok bilgi barındırıyor. Yani aslında buradaki dokümanlara muhtemelen çok sıklıkla ihtiyaç duymayabilirsiniz ancak yine de araçlarla birlikte sisteme eklenmiş olan dokümanlardan da haberdar olmamız kimi araçları kullanırken gerekli olabilir. Dokümantasyonların varlığından haberdar olmak bence önemli, bu sebeple kısaca bahsetmek istedim.

Ayrıca bu bölümü bitirmeden önce, yardım sayfaları için katı bir kural olmadığını da hatırlatmak istiyorum. Yardım sayfaları konusunda benimsenmiş tek bir yaklaşım olamadığı için bu bölüm içinde bahsetmiş olduğumuz gibi birden fazla alternatif yönetimi bilmemiz gerekiyor. 

Örneğin yerleşik komutlar hakkında bilgi almak için `help` komutunu kullanabileceğimizden bahsetmiştik. Bunun yanında eğer yerleşik komutların manuel sayfalarına bakmak istersek, kimi komutların manuel sayfalarının olmadığını görebiliriz. Hemen deneyelim, ben `man cd` yazarak, yerleşik olan `cd` komutu hakkında almak istiyorum. 

```bash
┌──(taylan@linuxdersleri)-[/usr/share/doc/nano]
└─$ man cd                                                                               
No manual entry for cd
```

Gördüğünüz gibi `cd` komutu için manuel sayfası yok. Çünkü dahili komutlar **bash** kabuğunun bir parçası olduğu için bash kabuğu haricinde manual sayfalarında ayrı ayrı açıklamaları yer almıyor. Eğer bu durumu teyit etmek isterseniz `man bash` komutunu girip, bash kabuğunda yerleşik olan komutların bu manual sayfası içinde açıklanmış olduğunu bizzat teyit edebilirsiniz. 

Bunun yanında örneğin bash kabuğunun dahili komutu olan `pwd` komutu için `man pwd` komutu ile manual sayfasını kontrol edecek olursak bu isimde bir sayfa olduğunu görebiliriz. 

```bash
PWD(1)                               User Commands                              PWD(1)

NAME
       pwd - print name of current/working directory

SYNOPSIS
       pwd [OPTION]...

DESCRIPTION
       Print the full filename of the current working directory.

       -L, --logical
              use PWD from environment, even if it contains symlinks

       -P, --physical
              avoid all symlinks

       --help display this help and exit

       --version
              output version information and exit

 Manual page pwd(1) line 1 (press h for help or q to quit)
```

Gördüğünüz gibi `pwd` komutu için manuel sayfaları mevcut. Bu durumun nedeni aslında buradaki `pwd` aracının bash kabuğundaki yerleşik `pwd` aracı yerine kullanılan alternatif araç olması. Sistemimizde farklı sebeplerden dolayı, kabukta bulunan bazı araçlarla aynı isimli olan harici araçlar yüklü olabiliyor. İşte `pwd` aracı da buna bir örnek. Dahili araçla aynı isimde harici bir araç olduğu için de bu aracın kendisine ait bir manual sayfası var. Bu sebeple `cd` komutu için harici bir manual sayfası yokken, `pwd` aracı için mevcut gözüküyor.

İşte bu örnekler üzerinden de teyit edebildiğimiz gibi, yardım sayfalarında katı bir zorunluluk olmadığından, komutlar hakkında bilgi edinmek için farklı yardım araçlarını kullanmamız gerekebiliyor. Ancak sorun değil, zaten tüm temel yardım araçlarını öğrendiğimiz için, gerektiğinde alternatif yardım araçlarını kullanabiliriz. Örneğin `cd` komutu için manuel sayfası yok, ama `help cd` komutu ile ya da `cd —help` komutu ile yardım bilgisine kolayca ulaşabiliyoruz. 

```bash
┌──(taylan@linuxdersleri)-[/usr/share/doc/nano]
└─$ help cd                                                                              
cd: cd [-L|[-P [-e]] [-@]] [dir]
    Change the shell working directory.
    
    Change the current directory to DIR.  The default DIR is the value of the
    HOME shell variable.
    
    The variable CDPATH defines the search path for the directory containing
    DIR.  Alternative directory names in CDPATH are separated by a colon (:).
    A null directory name is the same as the current directory.  If DIR begins
    with a slash (/), then CDPATH is not used.
    
    If the directory is not found, and the shell option `cdable_vars' is set,
    the word is assumed to be  a variable name.  If that variable has a value,
    its value is used for DIR.
    
    Options:
      -L        force symbolic links to be followed: resolve symbolic
                links in DIR after processing instances of `..'
      -P        use the physical directory structure without following
                symbolic links: resolve symbolic links in DIR before
                processing instances of `..'
      -e        if the -P option is supplied, and the current working
                directory cannot be determined successfully, exit with
                a non-zero status
      -@        on systems that support it, present a file with extended
                attributes as a directory containing the file attributes
    
    The default is to follow symbolic links, as if `-L' were specified.
    `..' is processed by removing the immediately previous pathname component
    back to a slash or the beginning of DIR.
    
    Exit Status:
    Returns 0 if the directory is changed, and if $PWD is set successfully when
    -P is used; non-zero otherwise.

┌──(taylan@linuxdersleri)-[/usr/share/doc/nano]
└─$ cd --help                                                                            
cd: cd [-L|[-P [-e]] [-@]] [dir]
    Change the shell working directory.
    
    Change the current directory to DIR.  The default DIR is the value of the
    HOME shell variable.
    
    The variable CDPATH defines the search path for the directory containing
    DIR.  Alternative directory names in CDPATH are separated by a colon (:).
    A null directory name is the same as the current directory.  If DIR begins
    with a slash (/), then CDPATH is not used.
    
    If the directory is not found, and the shell option `cdable_vars' is set,
    the word is assumed to be  a variable name.  If that variable has a value,
    its value is used for DIR.
    
    Options:
      -L        force symbolic links to be followed: resolve symbolic
                links in DIR after processing instances of `..'
      -P        use the physical directory structure without following
                symbolic links: resolve symbolic links in DIR before
                processing instances of `..'
      -e        if the -P option is supplied, and the current working
                directory cannot be determined successfully, exit with
                a non-zero status
      -@        on systems that support it, present a file with extended
                attributes as a directory containing the file attributes
    
    The default is to follow symbolic links, as if `-L' were specified.
    `..' is processed by removing the immediately previous pathname component
    back to a slash or the beginning of DIR.
    
    Exit Status:
    Returns 0 if the directory is changed, and if $PWD is set successfully when
    -P is used; non-zero otherwise.
```

# Genel Özet

Bu bölümü bitirmeden önce son bir kısa özet ve hatırlatmada bulunmam gerekirse: daha önce ele aldığımız `—help` seçeneği, genellikle ilgili aracın işlevine ve kullanımına dair özet bilgi sunarken, manual sayfaları araçlarla ilgili çok daha fazla detay bulunuyor. Pek sık tercih edilmese de manual sayfalarına ek olarak tıpkı manual sayfaları gibi uzun açıklamalar bulunduran ve komut satırı üzerinden daha rahat dolaşım imkanı tanıyan `info` aracını da kullanabilirsiniz. Ancak tüm dağıtımlarda varsayılan olarak yüklü bulunmadığı için öncelikli tercihiniz manual sayfaları olabilir. Ayrıca tüm bunların yanında, eğer kullandığınız araç, harici olarak dokümanlar sunuyorsa gerektiğinde ***/usr/share/doc/*** dizini altındaki bu dokümanları da kullanabilirsiniz.

Özetle kapsamlı bilgi almak için `man` ya da `info` sayfalarını tercih ederken, komutun unuttuğumuz özelliklerini işlevlerini hızlıca hatırlamak için genellikle `—help` seçeneğini kullanıyoruz. Ek dokümanlar ile de araca dair ek bilgiler edinebiliyoruz.

Evet neticede sistem üzerinde yer alan tüm temel yardım mekanizmalarından kısaca söz ettik. Artık yardım gerektiğinde kendi başınızın çaresine nasıl bakacağınızı biliyorsunuz. Elbette yardım alırken yalnızca sistem üzerindeki kaynaklarla sınırlı değilsiniz. Dilerseniz internet üzerinden de ekstra pek çok bilgiye ulaşabilirsiniz. Doğru şekilde araştırdığınız sürece blog yazıları, forum siteleri ve benzeri pek çok kaynaktan örneklerle açıklanmış pek çok bilgiye rahatlıkla ulaşabilirsiniz. Yine de sistem üzerindeki yardım mekanizmaları çoğu zaman ilk başvurduğumuz kaynaklar olacağından, burada anlatılan yardım alma yöntemlerini dikkate almanızı şiddetle tavsiye ederim. 