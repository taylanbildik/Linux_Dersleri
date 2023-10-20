# Log Kayıtları

Sistemde meydana gelen hatalar, değişiklikler ve neredeyse her faaliyet kayıt altına alınarak saklanır. Kayıt altına alınan bilgilere ”**log**” deniyor. Kontrol etmesi kolay olabilmesi için de elbette farklı türdeki bilgileri barındırmak için ayrı ayrı kayıtlar yani loglar tutuluyor. 

Bu sayede sistemle ilgili bir sorunu gidermeye çalışmak veya sistemde yetkisiz oturum açma girişimlerini kontrol etmek için elimizde veriler bulunabiliyor. Bu bölümde, log dosyalarının nerede tutulduğundan ve hangi bilgileri nasıl alabileceğimizden çok kısaca bahsediyor olacağız. 

Günümüzde modern Linux sistemlerinde log tutmak için `rsyslogd` isimli yapı kullanılıyor. Ayrıca bu yapıya ek olarak **systemd**’nin kapsayıcılık ilkesi dolayısıyla sunulan **systemd-journald** loglama çözümü de mevcut. Fakat bizim bu bölümdeki asıl odak noktamız, temel seviyede bilgi edinebilmek için standart log kayıtları olacak. Yine de bölümün sonunda çok kısaca **journald** `journalctl`'den de bashedeceğiz.

# Log Dosyalarının Konumu

`rsyslogd` tarafından üretilen ve yönetilen log dosyaları, kategorize şekilde ***/var/log/*** dizini altında tutuluyor. Ayrıca sistem üzerindeki diğer çeşitli araçlar da genellikle kendi amaçları doğrultusunda yine ***/var/log/*** dizini altında log kayıtlarını barındırabiliyorlar. 

Hemen `ls /var/log/` komutu ile dizin içeriğine göz atalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls /var/log/
alternatives.log       boot.log         daemon.log.3.gz  dpkg.log.6.gz   lastlog              nginx              syslog.4.gz
alternatives.log.1     boot.log.1       daemon.log.4.gz  dpkg.log.7.gz   lightdm              openvpn            sysstat
alternatives.log.2.gz  boot.log.2       debug            dpkg.log.8.gz   macchanger.log       postgresql         user.log
alternatives.log.3.gz  boot.log.3       debug.1          faillog         macchanger.log.1.gz  private            user.log.1
alternatives.log.4.gz  boot.log.4       debug.2.gz       fontconfig.log  macchanger.log.2.gz  README             user.log.2.gz
alternatives.log.5.gz  boot.log.5       debug.3.gz       inetsim         macchanger.log.3.gz  runit              user.log.3.gz
apache2                boot.log.6       debug.4.gz       installer       macchanger.log.4.gz  samba              user.log.4.gz
apt                    boot.log.7       dpkg.log         journal         messages             speech-dispatcher  wtmp
auth.log               btmp             dpkg.log.1       kern.log        messages.1           stunnel4           Xorg.0.log
auth.log.1             btmp.1           dpkg.log.2.gz    kern.log.1      messages.2.gz        syslog             Xorg.0.log.old
auth.log.2.gz          daemon.log       dpkg.log.3.gz    kern.log.2.gz   messages.3.gz        syslog.1           Xorg.1.log
auth.log.3.gz          daemon.log.1     dpkg.log.4.gz    kern.log.3.gz   messages.4.gz        syslog.2.gz        Xorg.1.log.old
auth.log.4.gz          daemon.log.2.gz  dpkg.log.5.gz    kern.log.4.gz   mysql                syslog.3.gz
```

Kullanmakta olduğunuz sistemde mevcut bulunan araçlar ve bu araçların ürettiği log kayıtlarına göre sizin aldığınız çıktı benimkinden biraz farklı olabilir. Biz bu bölümde `rsyslogd` aracılığı ile sistem tarafından üretilen başlıca kayıtlara odaklanacağız. 

Kayıtlar, standart dosya biçiminde tutulduğu için `cat` `grep` `head` `tail` gibi araçlar yardımıyla tüm kayıtları okuyup filtreleyebiliyoruz. Önceki bölümlerde, metinsel verileri nasıl işleyeceğimizi ele aldığımız için zaten ihtiyaç duyduğunuz tüm araçların kullanım bilgisine şu an sahipsiniz. Tek ihtiyacınız kayıtları okumak için yönetici ayrıcalıklarına sahip olmak. Zira standart kullanıcıların tüm logları okuması güvenlik gereği mümkün değildir.

Ayrıca kayıt dosyaları, Redhat ve Debian tabanlı dağıtımlarda farklı isimlerde tutulabildiği için ben başlıklara her ikisini de eklemiş olacağım. Başlıklardaki dosya isim sıralaması da **Debian - Redhat** şeklinde olacak.

## syslog | messages

Uygulamalar, hizmetler ve sistem bileşenlerinin ürettiği bilgi ve hata mesajları ***/var/log/*** dizini altında ***syslog*** veya ***messages*** dosyalarında tutuluyor. Debian tabanlı dağıtımlar “**syslog**” ismi ile kayıt tutuyorken, Redhat tabanlı dağıtımlarda “**messages**” ismiyle aynı kayıtlar tutuluyor.

Ben Debian dağıtımı üzerinden çalıştığım için en son 5 kayıt satırını okumak için `tail -n 5 /var/log/syslog` komutunu giriyorum. Siz Redhat üzerinde ***messages*** dosyasını okuyabilirsiniz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ tail -n 5 /var/log/syslog
Jul 27 12:49:12 linuxdersleri systemd[1]: run-user-130.mount: Deactivated successfully.
Jul 27 12:49:12 linuxdersleri systemd[1]: user-runtime-dir@130.service: Deactivated successfully.
Jul 27 12:49:12 linuxdersleri systemd[1]: Stopped User Runtime Directory /run/user/130.
Jul 27 12:49:12 linuxdersleri systemd[1]: Removed slice User Slice of UID 130.
Jul 27 12:49:12 linuxdersleri systemd[1]: user-130.slice: Consumed 1.983s CPU time.
```

Örneğin NetworkManager hakkında sorun yaşamaya başladıysam, NetworkManager tarafından veya bu birim hakkında üretilmiş olan son 10 mesaj kaydını görmek için `grep -i “networkmanager” /var/log/syslog | tail` komutunu girebilirim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ grep -i  networkmanager /var/log/syslog | tail                                                                                    
Jul 27 07:14:35 linuxdersleri NetworkManager[528]: <info>  [1690456475.4240] policy: set 'Wired connection 1' (eth0) as default for IPv4 routing and DNS
Jul 27 07:14:35 linuxdersleri dbus-daemon[527]: [system] Activating via systemd: service name='org.freedesktop.resolve1' unit='dbus-org.freedesktop.resolve1.service' requested by ':1.4' (uid=0 pid=528 comm="/usr/sbin/NetworkManager --no-daemon ")
Jul 27 07:14:35 linuxdersleri NetworkManager[528]: <info>  [1690456475.6018] device (eth0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'managed')
Jul 27 07:14:35 linuxdersleri NetworkManager[528]: <info>  [1690456475.6019] device (eth0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'managed')
Jul 27 07:14:35 linuxdersleri NetworkManager[528]: <info>  [1690456475.6022] manager: NetworkManager state is now CONNECTED_SITE
Jul 27 07:14:35 linuxdersleri NetworkManager[528]: <info>  [1690456475.6023] device (eth0): Activation: successful, device activated.
Jul 27 07:14:35 linuxdersleri NetworkManager[528]: <info>  [1690456475.6028] manager: NetworkManager state is now CONNECTED_GLOBAL
Jul 27 07:14:35 linuxdersleri NetworkManager[528]: <info>  [1690456475.6031] manager: startup complete
Jul 27 07:14:45 linuxdersleri systemd[1]: NetworkManager-dispatcher.service: Deactivated successfully.
Jul 27 07:56:36 linuxdersleri NetworkManager[528]: <info>  [1690458996.1981] agent-manager: agent[47b5561f98f13db4,:1.46/org.freedesktop.nm-applet/1000]: agent registered
```

Tarih bilgisine ve olay bilgisine bakarak, varsa bir değişim ya da hata kaynağını fark etmem mümkün olabilir. Benzer şekilde servisler, uygulamalar, çekirdek ve sistem geneli için bu dosya içeriğini kontrol etmemiz mümkün. 

En son kayıtlara ulaşmak için ***syslog*** dosyasını okudum. Fakat tüm kayıtlar yalnızca bu dosyadan ibaret değil elbette. Geçmişten günümüzde tüm kayıtlar sıralı şekilde numaralandırılıp arşivleniyor. Bu durumu teyit etmek için `ls -l /var/log/syslog*`  komutunu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ls -l /var/log/syslog*
-rw-r----- 1 root adm 717817 Jul 27 12:49 /var/log/syslog
-rw-r----- 1 root adm 500455 Jul 24 09:04 /var/log/syslog.1
-rw-r----- 1 root adm 295719 Jul 16 06:56 /var/log/syslog.2.gz
-rw-r----- 1 root adm 437888 Jul  9 05:05 /var/log/syslog.3.gz
-rw-r----- 1 root adm 428440 Jul  2 09:15 /var/log/syslog.4.gz
```

Gördüğünüz gibi sırasıyla isimlendirilmiş ***syslog.1*** ***syslog2.gz*** … şeklinde kayıtlar mevcut. Eğer daha önceki tarihlerde yer alan bir kayda bakmanız gerekiyorsa en yeniden eskiye doğru kayıtları inceleyebilirsiniz. Bu yaklaşım sayesinde kayıtların sistem üzerindeki dağınıklığı ve fazladan alan kullanımı önlenmiş oluyor. 

## auth.log | secure

Oturum açma ve kimlik doğrulama hakkında tutulan kayıtlardır. Örneğin Debian tabanlı dağıtımda en sonra oturum açma kayıtlarını görmek için `tail /var/log/auth.log` komutunu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ tail /var/log/auth.log                                                                                                            
Jul 27 13:35:01 linuxdersleri CRON[68832]: pam_unix(cron:session): session opened for user root(uid=0) by (uid=0)
Jul 27 13:35:01 linuxdersleri CRON[68832]: pam_unix(cron:session): session closed for user root
Jul 27 13:36:42 linuxdersleri lightdm: gkr-pam: unable to locate daemon control file
Jul 27 13:36:42 linuxdersleri lightdm: gkr-pam: stashed password to try later in open session
Jul 27 13:36:42 linuxdersleri lightdm: pam_unix(lightdm-greeter:session): session closed for user lightdm
Jul 27 13:36:42 linuxdersleri systemd-logind[532]: Removed session c7.
Jul 27 13:39:01 linuxdersleri CRON[69797]: pam_unix(cron:session): session opened for user root(uid=0) by (uid=0)
Jul 27 13:39:01 linuxdersleri CRON[69797]: pam_unix(cron:session): session closed for user root
Jul 27 13:45:01 linuxdersleri CRON[71281]: pam_unix(cron:session): session opened for user root(uid=0) by (uid=0)
Jul 27 13:45:01 linuxdersleri CRON[71281]: pam_unix(cron:session): session closed for user root
```

Buradaki çıktılar oturum açma ve kimlik doğrulama hakkında sunulan bilgilerdir. Değişimi gözlemlemek için `sudo echo deneme` komutunu girip, parolamız ile onay verip daha sonra log kayıtlarını kontrol edebiliriz.

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code>┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo echo deneme                                                                                                                  
[sudo] password for taylan: 
deneme

┌──(taylan㉿linuxdersleri)-[~]
└─$ tail /var/log/auth.log                                                                                                            
Jul 27 13:36:42 linuxdersleri lightdm: gkr-pam: stashed password to try later in open session
Jul 27 13:36:42 linuxdersleri lightdm: pam_unix(lightdm-greeter:session): session closed for user lightdm
Jul 27 13:36:42 linuxdersleri systemd-logind[532]: Removed session c7.
Jul 27 13:39:01 linuxdersleri CRON[69797]: pam_unix(cron:session): session opened for user root(uid=0) by (uid=0)
Jul 27 13:39:01 linuxdersleri CRON[69797]: pam_unix(cron:session): session closed for user root
Jul 27 13:45:01 linuxdersleri CRON[71281]: pam_unix(cron:session): session opened for user root(uid=0) by (uid=0)
Jul 27 13:45:01 linuxdersleri CRON[71281]: pam_unix(cron:session): session closed for user root
<span class="mavi">Jul 27 13:48:16 linuxdersleri sudo:   taylan : TTY=pts/0 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/echo deneme</span>
<span class="yesil">Jul 27 13:48:16 linuxdersleri sudo: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1000)
Jul 27 13:48:16 linuxdersleri sudo: pam_unix(sudo:session): session closed for user root</span>
</code></pre></div></div>

<p class="mavi">Bakın <strong>taylan</strong> kullanıcısının <strong>pts/0</strong> konsolunda, <strong><em>/home/taylan</em></strong> dizinindeyken <strong>root</strong> kullanıcısı olarak <code class="language-plaintext highlighter-rouge">/usr/bin/echo deneme</code> komutunu çalıştırmak istediği buradaki çıktılarda açıkça görülebiliyor.</p>

<p class="yesil">Parola doğru girildiği için <strong>sudo</strong> üzerinden <strong>root</strong> yetkileri kazanılmış ve root erişimi açılmış. İşlem tamamlandıktan sonra da root erişimi sonlandırılmış.</p>

Yani bizzat teyit ettiğimiz gibi, yetkilendirme işlemlerini takip etmek için log kayıtlarını kolaylıkla kontrol edebiliyoruz. 

Benzer şekilde farklı bir kullanıcı hesabında oturum açıp değişimi gözlemleyebiliriz.

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code>
┌──(taylan㉿linuxdersleri)-[~]
└─$ su nil
Password: 
┌──(nil㉿linuxdersleri)-[/home/taylan]
└─$ tail /var/log/auth.log
tail: cannot open '/var/log/auth.log' for reading: Permission denied

┌──(nil㉿linuxdersleri)-[/home/taylan]
└─$ sudo tail /var/log/auth.log                                                                                                   
Jul 27 13:39:01 linuxdersleri CRON[69797]: pam_unix(cron:session): session opened for user root(uid=0) by (uid=0)
Jul 27 13:39:01 linuxdersleri CRON[69797]: pam_unix(cron:session): session closed for user root
Jul 27 13:45:01 linuxdersleri CRON[71281]: pam_unix(cron:session): session opened for user root(uid=0) by (uid=0)
Jul 27 13:45:01 linuxdersleri CRON[71281]: pam_unix(cron:session): session closed for user root
Jul 27 13:48:16 linuxdersleri sudo:   taylan : TTY=pts/0 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/echo deneme
Jul 27 13:48:16 linuxdersleri sudo: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1000)
Jul 27 13:48:16 linuxdersleri sudo: pam_unix(sudo:session): session closed for user root
<span class="mavi">Jul 27 13:50:04 linuxdersleri su: (to nil) taylan on pts/0
Jul 27 13:50:04 linuxdersleri su: pam_unix(su:session): session opened for user nil(uid=1001) by (uid=1000)</span>
<span class="yesil">Jul 27 13:54:01 linuxdersleri sudo:      nil : TTY=pts/0 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/tail /var/log/auth.log
</span>
</code></pre></div></div>

<p><span class="mavi">Gördüğünüz gibi <strong>taylan</strong> kullanıcısının <code class="language-plaintext highlighter-rouge">su</code> ile <strong>nil</strong> kullanıcı hesabında oturum açtığını</span> ve daha sonra <span class="yesil">yetkili şekilde log kayıtlarını incelediğini</span> buradaki kayıtlardan işlem tarihiyle birlikte kontrol edebiliyoruz. <strong>nil</strong> kullanıcısını daha önce sistem yöneticisi grubuna eklediğim için <code class="language-plaintext highlighter-rouge">sudo</code> üzerinden log kayıtlarını okuyabildi. Fakat standart kullanıcılar bu kayıtları okuyamazlar.</p>

**Özetle**; Debian üzerinde “***auth.log***”, Redhat üzerinde ise “***secure***” dosyaları üzerinden, oturum açma, kimlik doğrulama gibi işlemlerin kayıtlarını öğrenebiliyoruz. Örneğin bir kullanıcı `sudo` ile bir komut çalıştırmayı dener ama başarısız olursa yani parolayı yanlış girer veya yetkisi olmadığı halde işlemi yapmaya çalışırsa bu durum da kayıt ediliyor. Ben denemek için taylan kullanıcısı üzerinden `sudo` komutundan sonra sorulan parolayı bilerek 3 kez yanlış giriyorum.

```bash
──(taylan㉿linuxdersleri)-[~]
└─$ sudo echo deneme
[sudo] password for taylan: 
Sorry, try again.
[sudo] password for taylan: 
Sorry, try again.
[sudo] password for taylan: 
sudo: 3 incorrect password attempts

┌──(taylan㉿linuxdersleri)-[~]
└─$ tail -3 /var/log/auth.log
Jul 27 14:00:30 linuxdersleri sudo: pam_unix(sudo:session): session closed for user root
Jul 27 14:00:55 linuxdersleri sudo: pam_unix(sudo:auth): authentication failure; logname= uid=1000 euid=0 tty=/dev/pts/0 ruser=taylan rhost=  user=taylan
Jul 27 14:01:06 linuxdersleri sudo:   taylan : 3 incorrect password attempts ; TTY=pts/0 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/echo deneme
```

Çıktıları dikkatlice inceleyecek olursanız, taylan kullanıcısının 3 kez hatalı parola denemesi yaptığı burada açıkça yazıyor. Bu kayıtlara bakarak olası şüpheli durumlar ve davranışları anlamlandırmaya çalışabilirsiniz.

## boot.log

Sistem başlangıcında gerçekleştirilen "önyükleme" yani "boot" aşamasının kayıtlarına ulaşmak için  ***/var/log/boot.log*** dosyasını kontrol edebilirsiniz. Boot işlemi çok hızlı gerçekleştiği için, sistem başlangıcında tüm kayıtları gözümüzle takip etmemiz imkansız. Bu sebeple gerektiğinde sistem başlangıcına dair kayıtlara göz atmak için ***/var/log/boot*** dosyalarına bakıyoruz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo cat /var/log/boot.log                                                                                                       
[  OK  ] Finished Rotate log files.
[  OK  ] Finished Raise network interfaces.
[  OK  ] Started User Login Management.
[  OK  ] Started Virtualbox guest utils.
[  OK  ] Started Authorization Manager.
         Starting Modem Manager...
[  OK  ] Started Network Manager.
[  OK  ] Reached target Network.
         Starting The Apache HTTP Server...
         Starting Permit User Sessions...
[  OK  ] Finished Permit User Sessions.
         Starting Light Display Manager...
         Starting Hold until boot process finishes up...
         Starting Hostname Service...
[  OK  ] Started Hostname Service.
[  OK  ] Listening on Load/Save RF Kill Switch Status /dev/rfkill Watch.
```

Dosyadaki kayıtlar belirli bir doluluk oranına ulaştığı için son önyüklemenin tamamını bu son ***boot.log*** dosyasında göremedim. Eğer geri kalanına bakmak istersem önceki kayıt olan ***boot.log.1*** dosyasına gözatabilirim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo cat /var/log/boot.log.1 
[  OK  ] Finished Rotate log files.
[  OK  ] Started User Login Management.
[  OK  ] Started Virtualbox guest utils.
[  OK  ] Finished Raise network interfaces.
[  OK  ] Started Authorization Manager.
         Starting Modem Manager...
[  OK  ] Started Network Manager.
[  OK  ] Reached target Network.
         Starting The Apache HTTP Server...
         Starting Permit User Sessions...
[  OK  ] Finished Permit User Sessions.
         Starting Light Display Manager...
         Starting Hold until boot process finishes up...
         Starting Hostname Service...
[  OK  ] Started Hostname Service.
------------ Thu Jul 27 07:14:17 EDT 2023 ------------
/dev/sda1: recovering journal
/dev/sda1: Clearing orphaned inode 4457265 (uid=1000, gid=1000, mode=0100600, size=1574)
/dev/sda1: Clearing orphaned inode 4457264 (uid=1000, gid=1000, mode=0100600, size=1897296)
/dev/sda1: Clearing orphaned inode 4457261 (uid=1000, gid=1000, mode=0100600, size=6296)
/dev/sda1: Clearing orphaned inode 4456488 (uid=0, gid=0, mode=0100666, size=0)
/dev/sda1: clean, 338151/5185536 files, 3546889/20721152 blocks
[  OK  ] Finished Tell Plymouth To Write Out Runtime Data.
[  OK  ] Started Rule-based Manager for Device Events and Files.
         Starting Show Plymouth Boot Screen...
[  OK  ] Started Show Plymouth Boot Screen.
[  OK  ] Started Forward Password Requests to Plymouth Directory Watch.
[  OK  ] Reached target Local Encrypted Volumes.
[  OK  ] Reached target Path Units.
[  OK  ] Reached target Sound Card.
[  OK  ] Found device VBOX_HARDDISK 5.
         Activating swap /dev/disk/by-uuid/00253fba-ff78-4f04-b189-fbc974082345...
[  OK  ] Activated swap /dev/disk/by-uuid/00253fba-ff78-4f04-b189-fbc974082345.
[  OK  ] Reached target Swaps.
[  OK  ] Finished Flush Journal to Persistent Storage.
         Starting Create Volatile Files and Directories...
[  OK  ] Finished Create Volatile Files and Directories.
[  OK  ] Started Entropy Daemon based on the HAVEGE algorithm.
         Starting Record System Boot/Shutdown in UTMP...
[  OK  ] Finished Record System Boot/Shutdown in UTMP.
[  OK  ] Reached target System Initialization.
[  OK  ] Started Daily dpkg database backup timer.
[  OK  ] Started Periodic ext4 Online Metadata Check for All Filesystems.
[  OK  ] Started Discard unused blocks once a week.
[  OK  ] Started Daily rotation of log files.
[  OK  ] Started Daily man-db regeneration.
[  OK  ] Started Clean PHP session files every 30 mins.
[  OK  ] Started Update the plocate database daily.
[  OK  ] Started Daily Cleanup of Temporary Directories.
[  OK  ] Started zaman.service için zamanlanmış görev tanımı.
[  OK  ] Reached target Timer Units.
[  OK  ] Listening on D-Bus System Message Bus Socket.
[  OK  ] Reached target Socket Units.
[  OK  ] Reached target Basic System.
[  OK  ] Started Regular background program processing daemon.
[  OK  ] Started D-Bus System Message Bus.
         Starting Network Manager...
         Starting Remove Stale Online ext4 Metadata Check Snapshots...
         Starting Authorization Manager...
         Starting System Logging Service...
         Starting User Login Management...
         Starting Virtualbox guest utils...
[  OK  ] Started zaman.sh isimli betik dosyasını çalıştıran servisin açıklamasıdır..
         Starting Clean php session files...
         Starting Rotate log files...
         Starting Daily man-db regeneration...
[  OK  ] Finished Remove Stale Online ext4 Metadata Check Snapshots.
[  OK  ] Started System Logging Service.
```

Gördüğünüz gibi kayıtlar sırasında önyükleme tarihi tam olarak satır arasında belirtiliyor. Bu sayede, ilgili tarihteki önyükleme aşamasında üretilen çıktıları kontrol edebiliyoruz.

## kern.log

Çekirdek yani "**kernel**" kayıtlarını incelemek için ***/var/log/kern.log*** dosyasını inceleyebiliriz.

Üretilen hata çıktılarını görmek için “**error**” tanımıyla filtreleme yapmak istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ grep -i "error" /var/log/kern.log                                                                                                
Jul 24 15:11:11 linuxdersleri kernel: [22035.572938] A fatal guest X Window error occurred.  This may just mean that the Window system was shut down while the client was still runn
Jul 24 15:11:11 linuxdersleri kernel: [22035.575718] A fatal guest X Window error occurred.  This may just mean that the Window system was shut down while the client was still runn
Jul 24 15:11:11 linuxdersleri kernel: [22035.579149] A fatal guest X Window error occurred.  This may just mean that the Window system was shut down while the client was still runn
Jul 24 15:11:11 linuxdersleri kernel: [22035.582138] A fatal guest X Window error occurred.  This may just mean that the Window system was shut down while the client was still runn
Jul 24 15:11:11 linuxdersleri kernel: [22035.593373] Error waiting for HGCM thread to terminate: VERR_CANCELLED
Jul 24 15:11:11 linuxdersleri kernel: [22035.692454] pulseaudio[829]: segfault at 55b9150c179f ip 00007fda70630b47 sp 00007fffc3f2b7e0 error 4 in libICE.so.6.3.0[7fda7062b000+e000]
Jul 24 15:11:11 linuxdersleri kernel: [22035.820171] Error waiting for X11 thread to terminate: VERR_TIMEOUT
Jul 24 13:46:34 linuxdersleri kernel: [    3.979912] [drm:vmw_host_printf [vmwgfx]] *ERROR* Failed to send host log message.
Jul 24 13:46:34 linuxdersleri kernel: [   11.738757] EXT4-fs (sdb1): re-mounted. Opts: errors=remount-ro. Quota mode: none.
Jul 26 10:01:56 linuxdersleri kernel: [    4.765035] [drm:vmw_host_printf [vmwgfx]] *ERROR* Failed to send host log message.
Jul 26 10:01:56 linuxdersleri kernel: [   14.378637] EXT4-fs (sda1): re-mounted. Opts: errors=remount-ro. Quota mode: none.
Jul 27 07:14:26 linuxdersleri kernel: [    4.788743] [drm:vmw_host_printf [vmwgfx]] *ERROR* Failed to send host log message.
Jul 27 07:14:26 linuxdersleri kernel: [   15.806339] EXT4-fs (sda1): re-mounted. Opts: errors=remount-ro. Quota mode: none.
```
Eşleşen tüm çıktılar getirildi. Bunlar çekirdeğin ürettiği mesajlar. Gerektiğinde, çekirdeğin verdiği reaksiyonları kontrol etmek için bu dosyayı inceleyebiliyoruz. 

## apt

Debian tabanlı bir dağıtımda `apt` aracının kullanımı hakkındaki kayıtlara ulaşmak için ***/var/log/apt/*** dizinini kontrol edebiliyoruz. Örneğin dizin altında, `apt` aracının kullanım geçmişi hakkındaki kayıtlar ***history*** isimli dosyada tutuluyor. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ tail /var/log/apt/history.log                                           
Install: libidn2-dev:amd64 (2.3.3-1+b1, automatic), libgnutls28-dev:amd64 (3.7.9-2), libtasn1-doc:amd64 (4.19.0-2, automatic), libp11-kit-dev:amd64 (0.24.1-2, automatic), libtasn1-6-dev:amd64 (4.19.0-2, automatic), nettle-dev:amd64 (3.8.1-2, automatic), libgnutls-openssl27:amd64 (3.7.9-2, automatic), libgnutlsxx30:amd64 (3.7.9-2, automatic)
Upgrade: libnettle8:amd64 (3.7.3-1, 3.8.1-2), libidn2-0:amd64 (2.3.2-2, 2.3.3-1+b1), libtasn1-6:amd64 (4.18.0-4, 4.19.0-2), libp11-kit0:amd64 (0.24.0-6, 0.24.1-2), p11-kit-modules:amd64 (0.24.0-6, 0.24.1-2), libhogweed6:amd64 (3.7.3-1, 3.8.1-2)
End-Date: 2023-07-05  09:47:58

Start-Date: 2023-07-10  11:42:01
Commandline: apt install lvm2
Requested-By: taylan (1000)
Install: dmeventd:amd64 (2:1.02.185-2, automatic), liblvm2cmd2.03:amd64 (2.03.16-2, automatic), lvm2:amd64 (2.03.16-2), libdevmapper-event1.02.1:amd64 (2:1.02.185-2, automatic), thin-provisioning-tools:amd64 (0.9.0-2, automatic)
Upgrade: dmsetup:amd64 (2:1.02.175-2.1, 2:1.02.185-2), libdevmapper1.02.1:amd64 (2:1.02.175-2.1, 2:1.02.185-2)
End-Date: 2023-07-10  11:43:29
```

Gördüğünüz gibi `apt` aracı ile gerçekleştirilen son yükleme işlemi hakkında bilgi almış olduk. Yani bu kayıt sayesinde, kullanıcıların paket yükleme davranışlarını takip etmemiz mümkün oluyor. 

## dpkg

`dpkg` paket yöneticisi kullanılarak gerçekleştirilmiş olan tüm işlemler hakkında bilgi almak için ***/var/log/dpkg*** dosyasını inceleyebiliyoruz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ tail /var/log/dpkg.log                                                  
2023-07-10 11:42:15 status installed kali-menu:all 2021.4.2
2023-07-10 11:42:15 trigproc initramfs-tools:all 0.140 <none>
2023-07-10 11:42:15 status half-configured initramfs-tools:all 0.140
2023-07-10 11:43:12 status installed initramfs-tools:all 0.140
2023-07-10 11:43:12 trigproc libc-bin:amd64 2.36-9 <none>
2023-07-10 11:43:12 status half-configured libc-bin:amd64 2.36-9
2023-07-10 11:43:26 status installed libc-bin:amd64 2.36-9
2023-07-10 11:43:26 trigproc man-db:amd64 2.9.4-4 <none>
2023-07-10 11:43:26 status half-configured man-db:amd64 2.9.4-4
2023-07-10 11:43:29 status installed man-db:amd64 2.9.4-4
```

Tarih bilgisiyle birlikte, sırasıyla `dpkg` aracı kullanılarak gerçekleştirilen işlemler burada açıkça belirtiliyor.

## dnf

Red Hat tabanlı dağıtımlarda gördüğümüz `dnf` paket yöneticisinin kullanımı hakkında tutulmuş olan kayıtlara ***/var/log/dnf*** konumundan ulaşabiliyoruz. Ben Rocky Linux üzerindeki kayıtlarımı kontrol ediyorum.

```bash
[taylan@linuxdersleri ~]$ tail /var/log/dnf.log

2023 - 07 -06T18:55:31+0300 DEBUG countme: no event for appstream: window already counted

2023 - 07 -06T18:55:42+0300 DEBUG reviving: ‘appstream' can be revived - repomd matches.

2023 -07-06T18:55:42+0300 DEBUG appstream: using metadata from Mon 63 Jul 2023 11:12:60 PM +03.
2023 - 07 -06T18:55:42+0300 DEBUG countme: no event for extras: window already counted

2023 - 07 -06T18:55:52+0300 DEBUG reviving: ‘extras' can be revived - repomd matches.

2023 -07-06T18:55:52+0300 DEBUG extras: using metadata from Mon 05 Jun 2023 09:56:04 PM +03.
2023 - 07 -06T18:55:52+0300 DEBUG User-Agent: constructed: ‘libdnf (Rocky Linux 9.1; generic; Linux.x
86 64) '

2023 - 07 -06T18:55:52+0300 DDEBUG timer: sack setup: 37973 ms

2023 -07-06T18:55:52+0300 INFO Metadata cache created.

2023-07 -06T18:55:52+0300 DDEBUG Cleaning up.
```

Bu dosyada "hata", "bilgi" ve "yükleme" gibi, `dnf` ile ilişkili olan tüm kayıtlar tutuluyor. Bu sayede aracın kullanım geçmişini sorgulamamız da mümkün oluyor. 

## wtmp

Kullanıcıların sisteme ne zaman giriş, ne zaman çıkış yaptığını ve hangi terminalleri(oturumları) kullandığı ***/var/log/wtmp*** dosyasında tutuluyor. Fakat bu kayıtlar düz metin olarak değil, binary biçiminde tutulduğu için `cat` `grep` `tail` gibi düz metinleri işlediğimiz araçları kullanarak bu kayıtları okuyamıyoruz. Hemen deneyelim. Ben `cat /var/log/wtmp` komutu ile okumayı deniyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /var/log/wtmp 
~~~reboot5.15.0-kali3-amd64^�bh�5~~~runlevel5.15.0-kali3-amd64f�bk�
                                                                   tty1tty1
                                                                           f�b=U
                                                                                tty1tty1LOGIN
                                                                                             f�b=U�tty7:0kali:0��b�
```

Bakın dosya içeriği okunamaz halde. Bu dosyayı okumak için `last` aracını kullanmamız gerekiyor. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ last                                                                                                                                                    
taylan   tty7         :0               Sat Aug 19 01:05   still logged in
reboot   system boot  5.15.0-kali3-amd Sat Aug 19 01:01   still running
taylan   tty7         :0               Fri Aug 18 13:31 - crash  (11:30)
..
.
reboot   system boot  5.15.0-kali3-amd Mon Apr 11 01:23 - 05:24 (69+04:00)
kali     tty7         :0               Wed Apr  6 05:42 - crash (4+19:41)
reboot   system boot  5.15.0-kali3-amd Wed Apr  6 05:41 - 05:24 (73+23:42)
kali     tty7         :0               Wed Apr  6 03:00 - crash  (02:41)
reboot   system boot  5.15.0-kali3-amd Wed Apr  6 02:55 - 05:24 (74+02:29)
kali     tty7         :0               Tue Apr  5 02:48 - crash (1+00:06)
kali     tty7         :0               Tue Apr  5 02:44 - 02:48  (00:04)
reboot   system boot  5.15.0-kali3-amd Tue Apr  5 02:43 - 05:24 (75+02:40)
kali     tty7         :0               Fri Feb 11 19:21 - 19:22  (00:00)
reboot   system boot  5.15.0-kali3-amd Fri Feb 11 19:21 - 19:22  (00:01)
kali     tty7         :0               Fri Feb 11 18:41 - crash  (00:39)
reboot   system boot  5.15.0-kali3-amd Fri Feb 11 18:41 - 19:22  (00:41)
kali     tty7         :0               Fri Feb 11 18:25 - 18:29  (00:03)
reboot   system boot  5.15.0-kali3-amd Fri Feb 11 18:25 - 18:29  (00:04)

wtmp begins Fri Feb 11 18:25:18 2022
```

Gördüğünüz gibi geçmişten günümüze tüm oturum açma detaylarını ***wtmp*** dosyasından, `last` komutu sayesinde çekmiş olduk. 

## btmp

Hatalı oturum açma girişimlerinin kaydedildiği dosyadır. Bu dosyayı okumak için yetkili olmak gerekiyor Ayrıca bu dosya da düz metin olarak kayıt tutmuyor.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo cat /var/log/btmp
�tty6tty6UNKNOWN��d e~�
```

Dosya içeriğini görüntülemek için `lastb` komutunu kullanıyoruz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lastb
UNKNOWN  tty6                          Fri Oct  6 15:50 - 15:50  (00:00)
ali      pts/2                         Wed Oct  4 17:47 - 17:47  (00:00)

btmp begins Wed Oct  4 17:47:24 2023
```

Buradaki “**b**” ifadesi “**bad**” ifadesinden geliyor. **B**ad login attemps yani "hatalı giriş" denemelerini ifade eden bir kısaltma. 

Normalde biz ek bir argüman belirtmediğimizde `last` komutu ***/var/log/wtmp*** dosyasını okurken, `lastb` ise ***/var/log/btmp*** dosyasını okuyor. Eğer `last` ve `lastb` komutları ile en son oturum bilgilerini görmek yerine daha önceki kayıtlara da ulaşmak isterseniz `-f` seçeneği ile daha önceki kayıtların konumunu argüman olarak belirtmeniz yeterli.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lastb
[sudo] password for taylan: 
UNKNOWN  tty6                          Fri Oct  6 15:50 - 15:50  (00:00)
ali      pts/2                         Wed Oct  4 17:47 - 17:47  (00:00)

btmp begins Wed Oct  4 17:47:24 2023

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo lastb -f /var/log/btmp.1
pc       ssh:notty    192.168.1.13     Sun Sep 17 13:50 - 13:50  (00:00)
pc       ssh:notty    192.168.1.13     Sun Sep 17 13:50 - 13:50  (00:00)
pc       ssh:notty    192.168.1.13     Sun Sep 17 13:49 - 13:49  (00:00)
pc       ssh:notty    192.168.1.13     Sun Sep 17 13:49 - 13:49  (00:00)
pc       ssh:notty    192.168.1.13     Sun Sep 17 13:23 - 13:23  (00:00)
pc       ssh:notty    192.168.1.13     Sun Sep 17 13:23 - 13:23  (00:00)

btmp.1 begins Sun Sep 17 13:23:09 2023

┌──(taylan㉿linuxdersleri)-[~]
└─$ 

```
Bakın ben bu örnekte, önceki kayıtları görmek için ***/var/log/btmp.1*** dosyasını argüman olarak belirtip `lastb` aracı ile okumuş oldum. Ayrıca `last` ve `lastb` aracının diğer seçeneklerini görmek için yardım sayfasına göz atmanız yeterli. 

## cron

Eğer **cron-crontab** ile zamanlanmış görevler tanımlıysa, bu görevlerin çalışma kayıtlarına ***/var/log/cron*** dosyası üzerinden ulaşabiliyoruz. Benim kullandığım Debian dağıtımında log kayıtlarını tutan rsyslog aracının konfigürasyon dosyasında cron için kayıt tutma devedışı olduğu için ***/var/log/*** dizini altında `cron` için bir kayıt bulunmuyor. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /var/log/cron                                                                                                                  
cat: /var/log/cron: No such file or directory
```

Eğer rsyslog aracının cron için kayıt tutmasını istersem ***/etc/rsyslog.conf*** dosyasında cron kaydı için gerekli olan kayıt satırını ekleyebilirim. Ben `sudo nano /etc/rsyslog.conf` dosyasını açıp, log kaydı için gereken satıra `cron.*    /var/log/cron.log` ifadesini ekleyip dosyayı kaydediyorum. 

```bash
#
# First some standard log files.  Log by facility.
#
auth,authpriv.*                 /var/log/auth.log
*.*;auth,authpriv.none          -/var/log/syslog
cron.*                         /var/log/cron.log
daemon.*                        -/var/log/daemon.log
kern.*                          -/var/log/kern.log
lpr.*                           -/var/log/lpr.log
mail.*                          -/var/log/mail.log
user.*                          -/var/log/user.log
```

Değişikliklerin geçerli olabilmesi için `sudo systemctl restart rsyslog.service` komutu ile **rsyslog** servisini yeninden başlatalım. 

Test etmek için yeni bir **crontab** görevi tanımlayabiliriz. Bunun için `crontab -e` komutunun ardından açılan konfigürasyon dosyasında, istdiğimiz görevi istediğimiz sıklıkta çalışacak şekilde tanımlayalım.

Örnek olarak, her dakika `echo "bu bir zamanlanmıs gorev"` komutunu çalıştıracak çok basit bir görev tanımlıyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ crontab -e
# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').
# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command
* * * * * taylan echo "bu bir zamanlanmıs gorev"
```

Her dakika çalışacak bir cron servisi tanımladığım için 1 dakika kadar bekliyorum. Tanımladığım cron işlemini görmek için `crontab -l` komutunu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ crontab -l
# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').
# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command
* * * * * taylan echo "bu bir zamanlanmıs gorev"
```

Süre geçti şimdi `cat /var/log/cron.log` komutu ile tekrar okumayı deneyelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /var/log/cron.log                                                                                                                                   
Aug 19 06:02:01 linuxdersleri CRON[33418]: (taylan) CMD (echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:02:01 linuxdersleri CRON[33419]: (taylan) CMD (taylan echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:02:01 linuxdersleri CRON[33416]: (CRON) info (No MTA installed, discarding output)
Aug 19 06:02:01 linuxdersleri CRON[33417]: (CRON) info (No MTA installed, discarding output)
Aug 19 06:03:01 linuxdersleri CRON[33665]: (taylan) CMD (echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:03:01 linuxdersleri CRON[33666]: (taylan) CMD (taylan echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:03:01 linuxdersleri CRON[33663]: (CRON) info (No MTA installed, discarding output)
Aug 19 06:03:01 linuxdersleri CRON[33664]: (CRON) info (No MTA installed, discarding output)
Aug 19 06:04:01 linuxdersleri CRON[33932]: (taylan) CMD (taylan echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:04:01 linuxdersleri CRON[33933]: (taylan) CMD (echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:04:01 linuxdersleri CRON[33931]: (CRON) info (No MTA installed, discarding output)
Aug 19 06:04:01 linuxdersleri CRON[33930]: (CRON) info (No MTA installed, discarding output)
```

Gördüğünüz gibi artık rsyslog servisi cron için de log kaydı tutmaya başlamış oldu. Esasen rsyslog servisinin konfigürasyonu için pek çok detay mevcut. Örneğin birden fazla sunucunun log kayıtlarını tek bir log sunucusunda toplamak üzere konfigüre edilmesi mümkün. Ben detaylara bu eğitimde değinmeyeceğim ancak kısa bir araştırma ile ek konfigürasyon detaylarına ulaşabilirsiniz.

<p class="mavi"><strong>ℹ️ Not:</strong> Tanımladığınız cron görevi, <code class="language-plaintext highlighter-rouge">crontab -e</code> komutu ile konfigürasyon dosyasını açıp bu görevi silmediğiniz sürece devam edecektir. Eğer istemiyorsanız eklediğiniz konfigürasyon satırını silip dosyayı kaydetmeniz yeterli.</p>

# `dmesg` | Aygıt Kayıtları

Sistem başlangıcından itibaren çekirdeğin, aygıtlarla ilgili ürettiği log kayıtlarına göz atmak için `dmesg` aracını kullanabiliyoruz.

Ben örnek olarak "**Intel**" aygıtlarını listelemek istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo dmesg | grep -i "Intel"                                                                                              
[    0.841976] smpboot: CPU0: Intel(R) Core(TM) i7-6700 CPU @ 3.40GHz (family: 0x6, model: 0x5e, stepping: 0x3)
[    1.508334] intel_pstate: CPU model not supported
[    4.617000] e1000: Intel(R) PRO/1000 Network Driver
[    4.617002] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    5.447805] e1000 0000:00:03.0 eth0: Intel(R) PRO/1000 Network Connection
[   22.138338] intel_pmc_core intel_pmc_core.0:  initialized
[   22.890967] snd_intel8x0 0000:00:05.0: allow list rate for 1028:0177 is 48000
```

Bu çıktılar sisteme hangi aygıtların bağlı olduğundan ziyade, bu aygıtların davranış kayıtlarıdır. Yani bu aygıtlar üzerinden gerçekleşen olayların kayıtlarıdır.

Örneğin ben sisteme yeni bir USB flash disk bağladıktan sonra tekrar `dmesg` komutu çalıştırıyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo dmesg
..
..
[  572.176951] No guest source window
[ 1862.053939] usb 1-2: new full-speed USB device number 3 using ohci-pci
[ 1862.537550] usb 1-2: config 1 interface 0 altsetting 0 endpoint 0x81 has invalid maxpacket 512, setting to 64
[ 1862.537555] usb 1-2: config 1 interface 0 altsetting 0 endpoint 0x2 has invalid maxpacket 512, setting to 64
[ 1862.561003] usb 1-2: New USB device found, idVendor=090c, idProduct=1000, bcdDevice=11.00
[ 1862.561007] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1862.561009] usb 1-2: Product: USB DISK
[ 1862.561010] usb 1-2: Manufacturer: SMI Corporation
[ 1862.561011] usb 1-2: SerialNumber: AA00000000004572
[ 1862.670071] usb-storage 1-2:1.0: USB Mass Storage device detected
[ 1862.670878] usb-storage 1-2:1.0: Quirks match for vid 090c pid 1000: 400
[ 1862.671640] scsi host6: usb-storage 1-2:1.0
[ 1862.676014] usbcore: registered new interface driver usb-storage
[ 1862.699317] usbcore: registered new interface driver uas
[ 1864.213095] scsi 6:0:0:0: Direct-Access     SMI      USB DISK         1100 PQ: 0 ANSI: 4
[ 1864.214550] sd 6:0:0:0: Attached scsi generic sg5 type 0
[ 1864.236335] sd 6:0:0:0: [sde] 31653888 512-byte logical blocks: (16.2 GB/15.1 GiB)
[ 1864.248774] sd 6:0:0:0: [sde] Write Protect is off
[ 1864.248779] sd 6:0:0:0: [sde] Mode Sense: 43 00 00 00
[ 1864.267388] sd 6:0:0:0: [sde] No Caching mode page found
[ 1864.267394] sd 6:0:0:0: [sde] Assuming drive cache: write through
[ 1864.364485]  sde: sde1
[ 1864.441900] sd 6:0:0:0: [sde] Attached SCSI removable disk
```

Gördüğünüz gibi USB disk hakkında çekirdeğin ürettiği çıktıları `dmesg` ile görüntülemiş olduk.

# Diğer Log Kayıtları Hakkına

Elbette burada bahsettiklerim dışında bizzat `ls /var/log/` komutunun çıktısında görebileceğiniz gibi pek çok farklı log dosyası mevcuttur. Biz yalnızca temel olarak bilmemiz gerekenlerden bahsetmiş olduk. Diğer kayıtlar için kısa bir araştırma yaparak ilgili kayıtların tutulma amaçlarını keşfedebilirsiniz. Örneğin **apache2** servisinin verdiği hata kayıtlarını kontrol etmek için `cat /var/log/apache2/error.log` komutunu girebilirim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /var/log/apache2/error.log
[Thu Jul 27 07:14:41.404012 2023] [mpm_prefork:notice] [pid 730] AH00163: Apache/2.4.52 (Debian) configured -- resuming normal operations
[Thu Jul 27 07:14:41.404338 2023] [core:notice] [pid 730] AH00094: Command line: '/usr/sbin/apache2'
```

Burada dikkatiniz çekmek istediğim nokta; apache aracının kayıtlarını nerede tuttuğunu ezberden bilmem gerekmiyor. Kısa bir araştırma ile bu aracın dokümanlarının da yardımıyla ilgili bilgiye istediğim zaman ulaşabilirim. Yine de pek çok kayıtın ***/var/log*** dizini altında tutulduğunun bilincinde olduğumuzda ilk kontrol edeceğimiz yer burası oluyor. Nitekim pek çok araç, genellikle log dosyalarını ***/var/log*** dizini içerisinde kendi isminde bir klasör altında sunuyor zaten.

İşte benzer şekilde sistem üzerindeki araçların kayıtlarını kontrol etmeniz mümkün. 

# journald | journalctl

Systemd barındıran modern sistemlerde, kayıt tutmak için systemd’nin sunduğu **journald** servisi de mevcuttur. **systemd** aracının yönetiminde olan birimler dışında, çekirdek, oturum açma, cron ve benzeri pek çok konuda **journald** tarafından özel bir formatta kayıt tutuluyor. Bu kayıtlar düz metin şeklinde tutulmadığı için, bunları işlemek üzere `journalctl` isimli aracı kullanabiliyoruz.

En temel kullanımı `journalctl` komutunu girmektir. Bu komut eskiden yeniye doğru tutulan tüm kayıtların sayfa sayfa listelenmesini sağlar.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl                                                                                                                                              
Jul 04 11:33:56 kali nologin[465551]: Attempted login by kali (UID: 1002) on /dev/pts/0
Jul 04 17:24:36 kali nologin[530342]: Attempted login by kali (UID: 1002) on /dev/pts/0
Jul 05 10:47:08 kali nologin[598878]: Attempted login by kali (UID: 1002) on /dev/pts/1
Jul 06 23:57:13 kali sudo[714206]:      nil : TTY=pts/7 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 06 23:57:13 kali sudo[714206]: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1001)
Jul 06 23:57:13 kali sudo[714206]: pam_unix(sudo:session): session closed for user root
Jul 07 02:57:59 kali sudo[757542]:      ali : command not allowed ; TTY=pts/4 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 07 02:59:18 kali sudo[757889]:      ali : command not allowed ; TTY=pts/4 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 07 03:02:23 kali sudo[758635]:      ali : command not allowed ; TTY=pts/4 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 07 03:02:37 kali su[758684]: (to ali) ali on pts/4
Jul 07 03:02:37 kali su[758684]: pam_unix(su-l:session): session opened for user ali(uid=1002) by (uid=1002)
Jul 07 03:03:03 kali su[758684]: pam_unix(su-l:session): session closed for user ali
Jul 07 03:03:35 kali sudo[758941]:      ali : TTY=pts/4 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 07 03:03:35 kali sudo[758941]: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1002)
Jul 07 03:03:35 kali sudo[758941]: pam_unix(sudo:session): session closed for user root
Jul 07 03:03:58 kali sudo[759044]:      ali : TTY=pts/4 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 07 03:03:58 kali sudo[759044]: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1002)
Jul 07 03:03:58 kali sudo[759044]: pam_unix(sudo:session): session closed for user root
Jul 07 03:04:24 kali sudo[759158]:      ali : command not allowed ; TTY=pts/4 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 07 03:04:48 kali sudo[759262]:      ali : command not allowed ; TTY=pts/4 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 07 03:08:29 kali sudo[760134]:      ali : TTY=pts/4 ; PWD=/home/kali ; USER=kali ; COMMAND=/usr/bin/whoami
Jul 07 03:08:29 kali sudo[760134]: pam_unix(sudo:session): session opened for user kali(uid=1000) by (uid=1002)
Jul 07 03:08:29 kali sudo[760134]: pam_unix(sudo:session): session closed for user kali
Jul 07 03:08:38 kali sudo[760174]:      ali : TTY=pts/4 ; PWD=/home/kali ; USER=kali ; COMMAND=/usr/bin/whoami
Jul 07 03:08:38 kali sudo[760174]: pam_unix(sudo:session): session opened for user kali(uid=1000) by (uid=1002)
Jul 07 03:08:38 kali sudo[760174]: pam_unix(sudo:session): session closed for user kali
Jul 07 03:08:42 kali sudo[760193]:      ali : command not allowed ; TTY=pts/4 ; PWD=/home/kali ; USER=ali ; COMMAND=/usr/bin/whoami
Jul 07 03:08:47 kali sudo[760214]:      ali : command not allowed ; TTY=pts/4 ; PWD=/home/kali ; USER=nil ; COMMAND=/usr/bin/whoami
Jul 07 03:10:19 kali sudo[760628]:      ali : command not allowed ; TTY=pts/4 ; PWD=/home/kali ; USER=nil ; COMMAND=/usr/bin/sudo whoami
Jul 07 03:10:24 kali sudo[760649]:      ali : TTY=pts/4 ; PWD=/home/kali ; USER=kali ; COMMAND=/usr/bin/sudo whoami
Jul 07 03:10:24 kali sudo[760649]: pam_unix(sudo:session): session opened for user kali(uid=1000) by (uid=1002)
Jul 07 03:10:39 kali sudo[760649]: pam_unix(sudo:session): session closed for user kali
Jul 07 03:38:37 kali sudo[767462]:      ali : command not allowed ; TTY=pts/0 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 07 03:38:54 kali sudo[767547]:      ali : TTY=pts/0 ; PWD=/home/kali ; USER=kali ; COMMAND=/usr/bin/whoami
Jul 07 03:38:54 kali sudo[767547]: pam_unix(sudo:session): session opened for user kali(uid=1000) by (uid=1002)
Jul 07 03:38:54 kali sudo[767547]: pam_unix(sudo:session): session closed for user kali
Jul 07 03:39:03 kali sudo[767593]:      ali : command not allowed ; TTY=pts/0 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 07 10:12:56 kali sudo[834413]:      ali : TTY=pts/0 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/ls
Jul 07 10:12:56 kali sudo[834413]: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1002)
Jul 07 10:12:56 kali sudo[834413]: pam_unix(sudo:session): session closed for user root
Jul 07 10:13:00 kali sudo[834444]:      ali : command not allowed ; TTY=pts/0 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 07 10:21:01 kali sudo[836366]:      ali : TTY=pts/0 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/ls
Jul 07 10:21:01 kali sudo[836366]: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1002)
Jul 07 10:21:01 kali sudo[836366]: pam_unix(sudo:session): session closed for user root
Jul 07 10:22:00 kali sudo[836604]:      ali : command not allowed ; TTY=pts/0 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 07 10:38:04 kali sudo[840520]:      ali : TTY=pts/0 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/mkdir
Jul 07 10:38:04 kali sudo[840520]: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1002)
Jul 07 10:38:04 kali sudo[840520]: pam_unix(sudo:session): session closed for user root
Jul 07 11:02:59 kali sudo[846550]:      ali : TTY=pts/0 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/ls
Jul 07 11:02:59 kali sudo[846550]: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1002)
Jul 07 11:02:59 kali sudo[846550]: pam_unix(sudo:session): session closed for user root
Jul 07 11:05:31 kali sudo[847178]:      ali : TTY=pts/0 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/cat /etc/sudoers.d/kali-grant-root
lines 1-52
```

Fakat bu kayıtlar, sistemin ne kadar süredir çalışmakta olduğuna da bağlı olarak inanılmaz uzunluklarda olabilir. Bu listeden çıkmak için <kbd>q</kbd> tuşlaması yapmanız yeterli.

Eskiden yeninde doğru görmek yerine en son yaşanmış olan değişimleri listenin başlarında görmek için bu listeyi tersten sıralamak üzere `journalctl -r` komutunu girebiliyoruz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl -r
Aug 19 06:33:10 linuxdersleri.net sudo[41372]: pam_unix(sudo:session): session closed for user root
Aug 19 06:33:09 linuxdersleri.net sudo[41372]: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1000)
Aug 19 06:33:09 linuxdersleri.net sudo[41372]:   taylan : TTY=pts/1 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/systemctl -r
Aug 19 06:33:01 linuxdersleri.net CRON[41343]: pam_unix(cron:session): session closed for user taylan
Aug 19 06:33:01 linuxdersleri.net CRON[41343]: (CRON) info (No MTA installed, discarding output)
Aug 19 06:33:01 linuxdersleri.net CRON[41342]: pam_unix(cron:session): session closed for user taylan
Aug 19 06:33:01 linuxdersleri.net CRON[41342]: (CRON) info (No MTA installed, discarding output)
Aug 19 06:33:01 linuxdersleri.net CRON[41345]: (taylan) CMD (taylan echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:33:01 linuxdersleri.net CRON[41344]: (taylan) CMD (echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:33:01 linuxdersleri.net CRON[41343]: pam_unix(cron:session): session opened for user taylan(uid=1000) by (uid=0)
Aug 19 06:33:01 linuxdersleri.net CRON[41342]: pam_unix(cron:session): session opened for user taylan(uid=1000) by (uid=0)
Aug 19 06:32:01 linuxdersleri.net CRON[41093]: pam_unix(cron:session): session closed for user taylan
Aug 19 06:32:01 linuxdersleri.net CRON[41093]: (CRON) info (No MTA installed, discarding output)
Aug 19 06:32:01 linuxdersleri.net CRON[41092]: pam_unix(cron:session): session closed for user taylan
Aug 19 06:32:01 linuxdersleri.net CRON[41092]: (CRON) info (No MTA installed, discarding output)
Aug 19 06:32:01 linuxdersleri.net CRON[41095]: (taylan) CMD (taylan echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:32:01 linuxdersleri.net CRON[41094]: (taylan) CMD (echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:32:01 linuxdersleri.net CRON[41092]: pam_unix(cron:session): session opened for user taylan(uid=1000) by (uid=0)
Aug 19 06:32:01 linuxdersleri.net CRON[41093]: pam_unix(cron:session): session opened for user taylan(uid=1000) by (uid=0)
Aug 19 06:31:01 linuxdersleri.net CRON[40845]: pam_unix(cron:session): session closed for user taylan
Aug 19 06:31:01 linuxdersleri.net CRON[40845]: (CRON) info (No MTA installed, discarding output)
Aug 19 06:31:01 linuxdersleri.net CRON[40846]: pam_unix(cron:session): session closed for user taylan
Aug 19 06:31:01 linuxdersleri.net CRON[40846]: (CRON) info (No MTA installed, discarding output)
Aug 19 06:31:01 linuxdersleri.net CRON[40848]: (taylan) CMD (echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:31:01 linuxdersleri.net CRON[40847]: (taylan) CMD (taylan echo "bu bir zamanlanm\304\261s gorev")
Aug 19 06:31:01 linuxdersleri.net CRON[40846]: pam_unix(cron:session): session opened for user taylan(uid=1000) by (uid=0)
Aug 19 06:31:01 linuxdersleri.net CRON[40845]: pam_unix(cron:session): session opened for user taylan(uid=1000) by (uid=0)
Aug 19 06:30:24 linuxdersleri.net systemd[1]: user-130.slice: Consumed 1.889s CPU time.
Aug 19 06:30:24 linuxdersleri.net systemd[1]: Removed slice User Slice of UID 130.
Aug 19 06:30:24 linuxdersleri.net systemd[1]: Stopped User Runtime Directory /run/user/130.
Aug 19 06:30:24 linuxdersleri.net systemd[1]: user-runtime-dir@130.service: Deactivated successfully.
Aug 19 06:30:24 linuxdersleri.net systemd[1]: run-user-130.mount: Deactivated successfully.
Aug 19 06:30:24 linuxdersleri.net systemd[1]: Stopping User Runtime Directory /run/user/130...
Aug 19 06:30:24 linuxdersleri.net systemd[1]: Stopped User Manager for UID 130.
Aug 19 06:30:24 linuxdersleri.net systemd[1]: user@130.service: Deactivated successfully.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Reached target Exit the Session.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Finished Exit the Session.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Reached target Shutdown.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Removed slice User Application Slice.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Closed Sound System.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Closed PipeWire Multimedia System Socket.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Closed GnuPG cryptographic agent and passphrase cache.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Closed GnuPG cryptographic agent (ssh-agent emulation).
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Closed GnuPG cryptographic agent and passphrase cache (restricted).
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Closed GnuPG cryptographic agent and passphrase cache (access for web browsers).
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Closed GnuPG network certificate management daemon.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Closed D-Bus User Message Bus Socket.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Stopped target Timers.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Stopped target Sockets.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Stopped target Paths.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Stopped target Basic System.
Aug 19 06:30:24 linuxdersleri.net systemd[39681]: Removed slice User Core Session Slice.
```

Çıktılara dikkat edecek olursanız, systemd tarafından yönetilen birimlere ek olarak, yetkilendirme ve cron gibi ek yapılar hakkında da pek çok kayıt bilgisine bu araç vasıtası ile tek elden ulaşabildiğimizi görebilirsiniz. 

Bu çıktıları filtrelemek üzere `journalctl` aracının pek çok seçeneği var. Ne kadar çok seçenek olduğunu görmek isterseniz `journalctl —help` komutunu girebilirsiniz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl --help                                                                                                                                      
journalctl [OPTIONS...] [MATCHES...]

Query the journal.

Options:
     --system                Show the system journal
     --user                  Show the user journal for the current user
  -M --machine=CONTAINER     Operate on local container
  -S --since=DATE            Show entries not older than the specified date
  -U --until=DATE            Show entries not newer than the specified date
  -c --cursor=CURSOR         Show entries starting at the specified cursor
     --after-cursor=CURSOR   Show entries after the specified cursor
     --show-cursor           Print the cursor after all the entries
     --cursor-file=FILE      Show entries after cursor in FILE and update FILE
  -b --boot[=ID]             Show current boot or the specified boot
     --list-boots            Show terse information about recorded boots
  -k --dmesg                 Show kernel message log from the current boot
  -u --unit=UNIT             Show logs from the specified unit
     --user-unit=UNIT        Show logs from the specified user unit
  -t --identifier=STRING     Show entries with the specified syslog identifier
  -p --priority=RANGE        Show entries with the specified priority
     --facility=FACILITY...  Show entries with the specified facilities
  -g --grep=PATTERN          Show entries with MESSAGE matching PATTERN
     --case-sensitive[=BOOL] Force case sensitive or insensitive matching
  -e --pager-end             Immediately jump to the end in the pager
  -f --follow                Follow the journal
  -n --lines[=INTEGER]       Number of journal entries to show
     --no-tail               Show all lines, even in follow mode
  -r --reverse               Show the newest entries first
  -o --output=STRING         Change journal output mode (short, short-precise,
                               short-iso, short-iso-precise, short-full,
                               short-monotonic, short-unix, verbose, export,
                               json, json-pretty, json-sse, json-seq, cat,
                               with-unit)
     --output-fields=LIST    Select fields to print in verbose/export/json modes
     --utc                   Express time in Coordinated Universal Time (UTC)
  -x --catalog               Add message explanations where available
     --no-full               Ellipsize fields
  -a --all                   Show all fields, including long and unprintable
  -q --quiet                 Do not show info messages and privilege warning
     --no-pager              Do not pipe output into a pager
     --no-hostname           Suppress output of hostname field
  -m --merge                 Show entries from all available journals
  -D --directory=PATH        Show journal files from directory
     --file=PATH             Show journal file
     --root=ROOT             Operate on files below a root directory
     --image=IMAGE           Operate on files in filesystem image
     --namespace=NAMESPACE   Show journal data from specified namespace
     --interval=TIME         Time interval for changing the FSS sealing key
     --verify-key=KEY        Specify FSS verification key
     --force                 Override of the FSS key pair with --setup-keys

Commands:
  -h --help                  Show this help text
     --version               Show package version
  -N --fields                List all field names currently used
  -F --field=FIELD           List all values that a specified field takes
     --disk-usage            Show total disk usage of all journal files
     --vacuum-size=BYTES     Reduce disk usage below specified size
     --vacuum-files=INT      Leave only the specified number of journal files
     --vacuum-time=TIME      Remove journal files older than specified time
     --verify                Verify journal file consistency
     --sync                  Synchronize unwritten journal messages to disk
     --relinquish-var        Stop logging to disk, log to temporary file system
     --smart-relinquish-var  Similar, but NOP if log directory is on root mount
     --flush                 Flush all journal data from /run into /var
     --rotate                Request immediate rotation of the journal files
     --header                Show journal header information
     --list-catalog          Show all message IDs in the catalog
     --dump-catalog          Show entries in the message catalog
     --update-catalog        Update the message catalog database
     --setup-keys            Generate a new FSS key pair
```

Hepsini tek tek ele almayacak olsak da, örnek olarak birkaç temel seçenekten bahsedebiliriz.

Spesifik olarak bir birim hakkında bilgi almak için `-u` seçeneğini kullanabiliyoruz. Örneğin **NetworkManager.service** birimi hakkındaki log kayıtlarına göz atabiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl -u NetworkManager.service 
Jul 14 16:22:22 kali systemd[1]: Starting Network Manager...
Jul 14 16:22:26 kali NetworkManager[478]: <info>  [1657830145.9808] NetworkManager (version 1.34.0) is starting... (for the first time)
Jul 14 16:22:26 kali NetworkManager[478]: <info>  [1657830146.0211] Read config: /etc/NetworkManager/NetworkManager.conf (lib: no-mac-addr-change.conf)
Jul 14 16:22:26 kali systemd[1]: Started Network Manager.
Jul 14 16:22:26 kali NetworkManager[478]: <info>  [1657830146.0556] bus-manager: acquired D-Bus service "org.freedesktop.NetworkManager"
Jul 14 16:22:26 kali NetworkManager[478]: <info>  [1657830146.1816] manager[0x55a088d47030]: monitoring kernel firmware directory '/lib/firmware'.
Jul 14 16:22:26 kali NetworkManager[478]: <info>  [1657830146.1819] monitoring ifupdown state file '/run/network/ifstate'.
Jul 14 16:22:26 kali NetworkManager[478]: <info>  [1657830146.3614] hostname: hostname: using hostnamed
Jul 14 16:22:26 kali NetworkManager[478]: <info>  [1657830146.3615] hostname: hostname changed from (none) to "kali"
...
..
.
```

Bunlar eskiden yeniden doğru sıralı, dilersek `-r` seçeneğini ekleyip en yeniden eskiye sıralayabiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl -ru NetworkManager.service                                                                                                                   
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <info>  [1692441811.7187] dhcp6 (eth0): state changed timeout -> terminated
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <info>  [1692441811.7187] dhcp6 (eth0): canceled DHCP transaction
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <info>  [1692441811.7187] dhcp6 (eth0): state changed unknown -> timeout
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <warn>  [1692441811.7186] dhcp6 (eth0): request timed out
..
.
.
```

Bunlar dışında tıpkı `tail -f` komutunda olduğu gibi log kayıtlarındaki anlık değişimleri görmek üzere `-f` seçeneğini de kullanabiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl -fu NetworkManager.service                                                                                                                   
Aug 19 06:42:44 linuxdersleri.net NetworkManager[526]: <info>  [1692441764.5587] device (eth0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'managed')
Aug 19 06:42:44 linuxdersleri.net NetworkManager[526]: <info>  [1692441764.5590] manager: NetworkManager state is now CONNECTED_SITE
Aug 19 06:42:44 linuxdersleri.net NetworkManager[526]: <info>  [1692441764.5601] device (eth0): Activation: successful, device activated.
Aug 19 06:42:44 linuxdersleri.net NetworkManager[526]: <info>  [1692441764.5607] manager: NetworkManager state is now CONNECTED_GLOBAL
Aug 19 06:42:46 linuxdersleri.net NetworkManager[526]: <info>  [1692441766.5321] dhcp6 (eth0): activation: beginning transaction (timeout in 45 seconds)
Aug 19 06:42:46 linuxdersleri.net NetworkManager[526]: <info>  [1692441766.5331] policy: set 'Wired connection 1' (eth0) as default for IPv6 routing and DNS
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <warn>  [1692441811.7186] dhcp6 (eth0): request timed out
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <info>  [1692441811.7187] dhcp6 (eth0): state changed unknown -> timeout
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <info>  [1692441811.7187] dhcp6 (eth0): canceled DHCP transaction
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <info>  [1692441811.7187] dhcp6 (eth0): state changed timeout -> terminated
```

Ben denemek için ağ bağlantısını kesip, tekrar bağlayarak değişimi gözlemlemek istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl -fu NetworkManager.service                                                                                                                   
Aug 19 06:42:44 linuxdersleri.net NetworkManager[526]: <info>  [1692441764.5587] device (eth0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'managed')
Aug 19 06:42:44 linuxdersleri.net NetworkManager[526]: <info>  [1692441764.5590] manager: NetworkManager state is now CONNECTED_SITE
Aug 19 06:42:44 linuxdersleri.net NetworkManager[526]: <info>  [1692441764.5601] device (eth0): Activation: successful, device activated.
Aug 19 06:42:44 linuxdersleri.net NetworkManager[526]: <info>  [1692441764.5607] manager: NetworkManager state is now CONNECTED_GLOBAL
Aug 19 06:42:46 linuxdersleri.net NetworkManager[526]: <info>  [1692441766.5321] dhcp6 (eth0): activation: beginning transaction (timeout in 45 seconds)
Aug 19 06:42:46 linuxdersleri.net NetworkManager[526]: <info>  [1692441766.5331] policy: set 'Wired connection 1' (eth0) as default for IPv6 routing and DNS
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <warn>  [1692441811.7186] dhcp6 (eth0): request timed out
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <info>  [1692441811.7187] dhcp6 (eth0): state changed unknown -> timeout
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <info>  [1692441811.7187] dhcp6 (eth0): canceled DHCP transaction
Aug 19 06:43:31 linuxdersleri.net NetworkManager[526]: <info>  [1692441811.7187] dhcp6 (eth0): state changed timeout -> terminated
Aug 19 06:46:04 linuxdersleri.net NetworkManager[526]: <info>  [1692441964.4724] device (eth0): state change: activated -> deactivating (reason 'user-requested', sys-iface-state: 'managed')
Aug 19 06:46:04 linuxdersleri.net NetworkManager[526]: <info>  [1692441964.4726] manager: NetworkManager state is now DISCONNECTING
Aug 19 06:46:04 linuxdersleri.net NetworkManager[526]: <info>  [1692441964.4733] audit: op="device-disconnect" interface="eth0" ifindex=2 pid=1165 uid=1000 result="success"
Aug 19 06:46:04 linuxdersleri.net NetworkManager[526]: <info>  [1692441964.5168] device (eth0): state change: deactivating -> disconnected (reason 'user-requested', sys-iface-state: 'managed')
Aug 19 06:46:04 linuxdersleri.net NetworkManager[526]: <info>  [1692441964.5582] dhcp4 (eth0): canceled DHCP transaction
Aug 19 06:46:04 linuxdersleri.net NetworkManager[526]: <info>  [1692441964.5583] dhcp4 (eth0): state changed bound -> terminated
Aug 19 06:46:04 linuxdersleri.net NetworkManager[526]: <info>  [1692441964.5710] manager: NetworkManager state is now DISCONNECTED
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.4528] device (eth0): Activation: starting connection 'Wired connection 1' (0eb3f4f0-778f-4d93-b434-61106d908c49)
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.4530] audit: op="connection-activate" uuid="0eb3f4f0-778f-4d93-b434-61106d908c49" name="Wired connection 1" pid=1165 uid=1000 result="success"
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.4532] device (eth0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'managed')
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.4534] manager: NetworkManager state is now CONNECTING
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.4534] device (eth0): state change: prepare -> config (reason 'none', sys-iface-state: 'managed')
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.4628] device (eth0): state change: config -> ip-config (reason 'none', sys-iface-state: 'managed')
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.4630] dhcp4 (eth0): activation: beginning transaction (timeout in 45 seconds)
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.5922] dhcp4 (eth0): state changed unknown -> bound, address=192.168.1.11
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.5947] device (eth0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'managed')
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.5961] policy: set 'Wired connection 1' (eth0) as default for IPv4 routing and DNS
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.6083] device (eth0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'managed')
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.6084] device (eth0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'managed')
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.6088] manager: NetworkManager state is now CONNECTED_SITE
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.6090] device (eth0): Activation: successful, device activated.
Aug 19 06:46:07 linuxdersleri.net NetworkManager[526]: <info>  [1692441967.6101] manager: NetworkManager state is now CONNECTED_GLOBAL
Aug 19 06:46:09 linuxdersleri.net NetworkManager[526]: <info>  [1692441969.2667] dhcp6 (eth0): activation: beginning transaction (timeout in 45 seconds)
Aug 19 06:46:09 linuxdersleri.net NetworkManager[526]: <info>  [1692441969.2677] policy: set 'Wired connection 1' (eth0) as default for IPv6 routing and DNS
```

Ağ bağlantısının durumu değiştiği anda, ilgili kayıtlar eklenmiş oldu gördüğünüz gibi. Takip işlemini sonlandırmak üzere <kbd>Ctrl</kbd> + <kbd>C</kbd> komutu ile işlemi sonlandırabilirsiniz.

Eğer filtrelemek istediğini kayıt yalnızca systemd birimi değilse, `grep` gibi harici bir araç da kullanabilirsiniz. Örneğin ben “**nil**” kullanıcısının oturum açma ve yetkilendirmeyle ilgili tüm kayıtlarına göz atmak istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl -r | grep nil
Aug 19 04:55:00 linuxdersleri.net su[16535]: FAILED SU (to nil) taylan on pts/2
Aug 19 04:54:58 linuxdersleri.net su[16535]: pam_unix(su-l:auth): authentication failure; logname= uid=1000 euid=0 tty=/dev/pts/2 ruser=taylan rhost=  user=nil
..
..
Aug 19 02:55:02 linuxdersleri.net su[1542]: (to nil) taylan on pts/1
Aug 19 02:47:23 linuxdersleri.net systemd[25153]: pam_unix(systemd-user:session): session closed for user nil
Aug 19 02:47:23 linuxdersleri.net systemd[1]: Stopped Session 226 of User nil.
Aug 19 02:47:23 linuxdersleri.net systemd[1]: Stopping Session 226 of User nil...
Aug 19 02:47:23 linuxdersleri.net su[24937]: pam_unix(su:session): session closed for user nil
Aug 19 02:43:40 linuxdersleri.net systemd[1]: Started Session 226 of User nil.
Aug 19 02:43:39 linuxdersleri.net systemd[25152]: pam_unix(systemd-user:session): session opened for user nil(uid=1001) by (uid=0)
Aug 19 02:43:39 linuxdersleri.net systemd-logind[532]: New session 226 of user nil.
Aug 19 02:43:39 linuxdersleri.net login[25137]: pam_unix(login:session): session opened for user nil(uid=1001) by LOGIN(uid=0)
Aug 19 02:42:48 linuxdersleri.net su[24937]: pam_unix(su:session): session opened for user nil(uid=1001) by (uid=1000)
Aug 19 02:42:48 linuxdersleri.net su[24937]: (to nil) taylan on pts/1
Jul 27 14:00:19 linuxdersleri.net su[74969]: FAILED SU (to nil) taylan on pts/0
Jul 27 14:00:17 linuxdersleri.net su[74969]: pam_unix(su:auth): authentication failure; logname= uid=1000 euid=0 tty=/dev/pts/0 ruser=taylan rhost=  user=nil
Jul 27 14:00:10 linuxdersleri.net su[72487]: pam_unix(su:session): session closed for user nil
Jul 27 14:00:03 linuxdersleri.net sudo[74906]:      nil : TTY=pts/0 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/cat /etc/sudoers.d/kali-grant-root
Jul 27 13:57:42 linuxdersleri.net sudo[74358]:      nil : TTY=pts/0 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/cat /etc/sudoers.d/yeni-tanim
Jul 27 13:57:32 linuxdersleri.net sudo[74305]:      nil : TTY=pts/0 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/cat /etc/sudoers.d/kali-grant-root
Jul 27 13:56:42 linuxdersleri.net sudo[74068]:      nil : TTY=pts/0 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/info
Jul 27 13:54:01 linuxdersleri.net sudo[73410]:      nil : TTY=pts/0 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/tail /var/log/auth.log
Jul 27 13:50:04 linuxdersleri.net su[72487]: pam_unix(su:session): session opened for user nil(uid=1001) by (uid=1000)
Jul 27 13:50:04 linuxdersleri.net su[72487]: (to nil) taylan on pts/0
Jul 14 10:13:09 linuxdersleri.net sudo[62989]:   taylan : TTY=pts/0 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/killall -u nil sleep
Jul 14 10:09:55 linuxdersleri.net sudo[62205]:   taylan : TTY=pts/0 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/killall -u nil sleep
Jul 14 10:08:20 linuxdersleri.net su[61793]: pam_unix(su:session): session opened for user nil(uid=1001) by (uid=1000)
Jul 14 10:08:20 linuxdersleri.net su[61793]: (to nil) taylan on pts/1
Jul 08 08:36:02 linuxdersleri.net sudo[45984]:      nil : TTY=pts/5 ; PWD=/home/taylan ; USER=root ; COMMAND=/usr/bin/whoami
Jul 08 08:34:21 linuxdersleri.net su[45588]: pam_unix(su:session): session opened for user nil(uid=1001) by (uid=1000)
Jul 08 08:34:21 linuxdersleri.net su[45588]: (to nil) taylan on pts/5
Jul 08 08:32:01 linuxdersleri.net gpasswd[45023]: user nil added by root to group kali-trusted
..
..
```

Ben çıktıları kısaltarak ekliyorum ama neticede istediğim filtrelemeyi `grep` yardımıyla gerçekleştirdim. 

Kayıtlara, sistemin önyüklenme(boot) tarihlerine göre erişme imkanımız da var. Öncelikle sistemde hangi önyüklemelerin kaydedildiğini görmek için `—list-boots` seçeneğini kullanalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl --list-boots 
-127 9144b98ccd0a4f6c93836b0a477783be Mon 2022-07-04 11:33:56 EDT—Thu 2022-07-07 15:52:41 EDT
-126 99a9c907b79c4f17adbaf819098bbe5e Thu 2022-07-14 16:22:16 EDT—Thu 2022-07-14 16:25:12 EDT
-125 af9c16efaed1401ca71166c64c7a487b Fri 2022-07-15 00:30:16 EDT—Sat 2023-01-14 10:35:01 EST
-124 574a8635a4cb4da9ae261774df6fb4c1 Thu 2023-01-19 08:36:27 EST—Tue 2023-01-24 11:55:01 EST
-123 9da82cff7edc4e6f9f915560e8765b52 Wed 2023-01-25 03:23:40 EST—Wed 2023-01-25 10:25:01 EST
-122 688cd44f28a44499ba565d1f586cbb41 Sun 2023-02-12 01:47:07 EST—Sun 2023-02-12 06:25:05 EST
-121 f9d92adcb57446d89a5bf277281cefe3 Sun 2023-02-12 10:42:03 EST—Sun 2023-02-12 11:35:01 EST
-120 3dbcb9fae3a44cac9e4caed6c87c04f0 Fri 2023-03-17 05:26:46 EDT—Fri 2023-03-17 07:17:01 EDT
-119 61f4ea93824d4aa3a5e6ae2747170b33 Sun 2023-04-23 12:00:13 EDT—Sun 2023-04-23 13:25:01 EDT
-118 db43fb69d35e4441864d4235eb71d467 Mon 2023-04-24 02:34:04 EDT—Mon 2023-04-24 02:42:07 EDT
-117 2a9ebf568fb8473f8e25e939a0d56191 Mon 2023-04-24 08:24:39 EDT—Fri 2023-04-28 10:17:01 EDT
```

Liste normalde çok daha uzun fakat ben kısaca ekledim. Burada sistemin tüm boot edildiği zamanlara ait log kayıtları ayrı ayrı mevcut. Örneğin ben **118** numaralı **boot** kaydına ulaşmak istersem `-b boot_sırası` şeklinde komutumu girebilirim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl -b 118
Aug 17 00:46:24 linuxdersleri.net kernel: Linux version 5.15.0-kali3-amd64 (devel@kali.org) (gcc-11 (Debian 11.2.0-14) 11.2.0, GNU ld (GNU Binutils for Deb>
Aug 17 00:46:24 linuxdersleri.net kernel: Command line: BOOT_IMAGE=/boot/vmlinuz-5.15.0-kali3-amd64 root=UUID=491d3534-b3d9-47af-ad63-66b0e72fe8dd ro nouve>
Aug 17 00:46:24 linuxdersleri.net kernel: x86/fpu: x87 FPU will use FXSAVE
Aug 17 00:46:24 linuxdersleri.net kernel: signal: max sigframe size: 1440
Aug 17 00:46:24 linuxdersleri.net kernel: BIOS-provided physical RAM map:
Aug 17 00:46:24 linuxdersleri.net kernel: BIOS-e820: [mem 0x0000000000000000-0x000000000009fbff] usable
Aug 17 00:46:24 linuxdersleri.net kernel: BIOS-e820: [mem 0x000000000009fc00-0x000000000009ffff] reserved
Aug 17 00:46:24 linuxdersleri.net kernel: BIOS-e820: [mem 0x00000000000f0000-0x00000000000fffff] reserved
```

Bu şekilde spesifik olarak boot edilme tarihlerine göre filtreleme yapmamız mümkün oluyor.

Ayrıca doğrudan tarih aralığı belirtme imkanına da sahibiz. Bunun için `—since` ve `—until` seçeneklerini kullanabiliyoruz. Örneğin “**2023-08-05**” tarihinden beri gerçekleşenleri görmek istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl --since "2023-08-05"
Aug 08 04:38:48 linuxdersleri.net kernel: Linux version 5.15.0-kali3-amd64 (devel@kali.org) (gcc-11 (Debian 11.2.0-14) 11.2.0, GNU ld (GNU Binutils for Deb>
Aug 08 04:38:48 linuxdersleri.net kernel: Command line: BOOT_IMAGE=/boot/vmlinuz-5.15.0-kali3-amd64 root=UUID=491d3534-b3d9-47af-ad63-66b0e72fe8dd ro nouve>
Aug 08 04:38:48 linuxdersleri.net kernel: x86/fpu: x87 FPU will use FXSAVE
Aug 08 04:38:48 linuxdersleri.net kernel: signal: max sigframe size: 1440
Aug 08 04:38:48 linuxdersleri.net kernel: BIOS-provided physical RAM map:
```

Bu liste günümüze kadar uzanıyor. 

Eğer belirli bir tarihe kadar olacaksa `—until` seçeneğini kullanabiliyoruz. Ben bu kez de “**2023-08-05**” tarihine kadar olanları görmek istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl --until "2023-08-05"                                                                                                                    
Jul 04 11:33:56 kali nologin[465551]: Attempted login by kali (UID: 1002) on /dev/pts/0
Jul 04 17:24:36 kali nologin[530342]: Attempted login by kali (UID: 1002) on /dev/pts/0
Jul 05 10:47:08 kali nologin[598878]: Attempted login by kali (UID: 1002) on /dev/pts/1
Jul 06 23:57:13 kali sudo[714206]:      nil : TTY=pts/7 ; PWD=/home/kali ; USER=root ; COMMAND=/usr/bin/whoami
Jul 06 23:57:13 kali sudo[714206]: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1001)
```

Eskiden yeniye doğru “**2023-08-05**” tarihine kadar olanlar listelenmiş oldu. Dilersek spesifik olarak bir aralık belirtmek için de her ikisini birden kullanabiliriz. Ben **2023-08-05** tarihi le **2023-08-12** tarihleri arasındaki kayıtları görmek istediğimi belirtiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl --since "2023-08-05" --until "2023-08-12"                                                                                               
Aug 08 04:38:48 linuxdersleri.net kernel: Linux version 5.15.0-kali3-amd64 (devel@kali.org) (gcc-11 (Debian 11.2.0-14) 11.2.0, GNU ld (GNU Binutils for Deb>
Aug 08 04:38:48 linuxdersleri.net kernel: Command line: BOOT_IMAGE=/boot/vmlinuz-5.15.0-kali3-amd64 root=UUID=491d3534-b3d9-47af-ad63-66b0e72fe8dd ro nouve>
Aug 08 04:38:48 linuxdersleri.net kernel: x86/fpu: x87 FPU will use FXSAVE
Aug 08 04:38:48 linuxdersleri.net kernel: signal: max sigframe size: 1440
Aug 08 04:38:48 linuxdersleri.net kernel: BIOS-provided physical RAM map:
```

Tüm çıktıları eklememiş olsam da tam olarak belirttiğim aralıktaki tüm kayıtları görebiliyorum.

Dilersek saat dakika saniye cinsinden filtreleme yapmamız da mümkün. Örneğin bu gün **05.30.00** saatine kadar olan kayıtları listeleyelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl --since "05:30:00"                                                                                                                          
Aug 19 05:30:01 linuxdersleri.net CRON[25344]: pam_unix(cron:session): session opened for user taylan(uid=1000) by (uid=0)
Aug 19 05:30:01 linuxdersleri.net CRON[25345]: (taylan) CMD (taylan echo "bu bir zamanlanm\304\261s gorev")
Aug 19 05:30:01 linuxdersleri.net CRON[25343]: pam_unix(cron:session): session opened for user taylan(uid=1000) by (uid=0)
Aug 19 05:30:01 linuxdersleri.net CRON[25346]: (taylan) CMD (echo "bu bir zamanlanm\304\261s gorev")
Aug 19 05:30:01 linuxdersleri.net CRON[25344]: (CRON) info (No MTA installed, discarding output)
Aug 19 05:30:01 linuxdersleri.net CRON[25344]: pam_unix(cron:session): session closed for user taylan
Aug 19 05:30:01 linuxdersleri.net CRON[25343]: (CRON) info (No MTA installed, discarding output)
Aug 19 05:30:01 linuxdersleri.net CRON[25343]: pam_unix(cron:session): session closed for user taylan
Aug 19 05:31:01 linuxdersleri.net CRON[25591]: pam_unix(cron:session): session opened for user taylan(uid=1000) by (uid=0)
Aug 19 05:31:01 linuxdersleri.net CRON[25593]: (taylan) CMD (taylan echo "bu bir zamanlanm\304\261s gorev")
```

Eğer yalnızca saat değil, tarih de belirtirseniz tam olarak ilgili tarihteki ilgili saatte kaydı tutulanlar size getirilecektir. Örneğin **2023-08-18 13:30:00** ile  **2023-08-18 14:00:00** arasındaki tüm kayıtları getiriyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl --since "2023-08-18 13:30:00" --until "2023-08-18 14:00:00"
Aug 18 13:30:10 linuxdersleri.net kernel: Linux version 5.15.0-kali3-amd64 (devel@kali.org) (gcc-11 (Debian 11.2.0-14) 11.2.0, GNU ld (GNU Binutils for Deb>
Aug 18 13:30:10 linuxdersleri.net kernel: Command line: BOOT_IMAGE=/boot/vmlinuz-5.15.0-kali3-amd64 root=UUID=491d3534-b3d9-47af-ad63-66b0e72fe8dd ro nouve>
Aug 18 13:30:10 linuxdersleri.net kernel: x86/fpu: x87 FPU will use FXSAVE
Aug 18 13:30:10 linuxdersleri.net kernel: signal: max sigframe size: 1440
Aug 18 13:30:10 linuxdersleri.net kernel: BIOS-provided physical RAM map:
...
..
.
```

Çıktı çok uzun olduğu için ben kısaltarak ekledim. Siz dilerseniz çıktı uzunluğunu `-n` seçeneği ile sınırlayabilirsiniz. Örneğin aynı çıktıyı yalnızca 5 satır basacak şekilde sınırlayalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ journalctl --since "2023-08-18 13:30:00" --until "2023-08-18 14:00:00" -n 5
Aug 18 13:30:10 linuxdersleri.net kernel: Linux version 5.15.0-kali3-amd64 (devel@kali.org) (gcc-11 (Debian 11.2.0-14) 11.2.0, GNU ld (GNU Binutils for Deb>
Aug 18 13:30:10 linuxdersleri.net kernel: Command line: BOOT_IMAGE=/boot/vmlinuz-5.15.0-kali3-amd64 root=UUID=491d3534-b3d9-47af-ad63-66b0e72fe8dd ro nouve>
Aug 18 13:30:10 linuxdersleri.net kernel: x86/fpu: x87 FPU will use FXSAVE
Aug 18 13:30:10 linuxdersleri.net kernel: signal: max sigframe size: 1440
Aug 18 13:30:10 linuxdersleri.net kernel: BIOS-provided physical RAM map:
lines 1-5/5 (END)
```

**journald** servisinin en temel kullanımı bu şekilde. Yardım sayfasından bizzat teyit edebileceğiniz gibi esasen çok fazla ek seçeneği mevcut fakat temel seviye için bahsetmiş olduklarımız yeterli. Daha fazlasını merak ediyorsanız elbette araştırmakta özgürsünüz. 

Böylelikle Linux üzerindeki loglara nasıl ulaşabileceğimizi temel düzeyde görmüş olduk.
