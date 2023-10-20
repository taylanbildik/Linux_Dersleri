# Servis Yönetimi

Servisler, sürekli olarak çalışan, çeşitli görevleri yerine getiren ve sisteme işlevsellik sağlayan arka plan işlemleridir. Genellikle sistem başlangıcında otomatik olarak başlatılır ve sistem çalıştığı süre boyunca aksini gerektiren bir durum olmadığı sürece çalışırlar.

Sistem üzerindeki servisleri yönetmek için de birden fazla alternatif servis yöneticisi vardır. Fakat biz bu bölümde yalnızca en güncel ve yaygın kullanıma sahip olan “**systemd**” servis yöneticisini ele alıyor olacağız. Dilerseniz alternatif servis yöneticilerini ve bunların farklarını araştırıp öğrenebilirsiniz. 

# systemd

**systemd** yönetimi çok detaylı bir konu olmakla birlikte çoğunlukla en temel işlevlerine ihtiyacımız olduğu için öğrenmek oldukça kolay. Temel işleyişi bildiğimizde spesifik ihtiyaçlara yönelik konfigürasyonları araştırıp uygulamamız zaten mümkün. Bu sebeple biz yalnızca en temel kullanıma odaklanıyor olacağız.

**systemd** aracı, kontrolü altındaki tüm yapıları “**birim**” yani “**unit**” olarak görüyor. Yazıyı hazırladığım sırada araç dokümanlarında yer alan birimlerin tablosu aşağıdaki şekildeydi: 

<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th>Unit Type</th>
      <th>File Extension</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Service unit</td>
      <td>.service</td>
    </tr>
    <tr>
      <td>Target unit</td>
      <td>.target</td>
    </tr>
    <tr>
      <td>Automount unit</td>
      <td>.automount</td>
    </tr>
    <tr>
      <td>Device unit</td>
      <td>.device</td>
    </tr>
    <tr>
      <td>Mount unit</td>
      <td>.mount</td>
    </tr>
    <tr>
      <td>Path unit</td>
      <td>.path</td>
    </tr>
    <tr>
      <td>Scope unit</td>
      <td>.scope</td>
    </tr>
    <tr>
      <td>Slice unit</td>
      <td>.slice</td>
     </tr>
    <tr>
      <td>Snapshot unit</td>
      <td>.snapshot</td>
       </tr>
    <tr>
      <td>Socket unit</td>
      <td>.socket</td>
      </tr>
    <tr>
      <td>Swap unit</td>
      <td>.swap</td>
      </tr>
    <tr>
      <td>Timer unit</td>
      <td>.timer</td>
      </tr>
  </tbody>
</table>

Örneğin systemd üzerinden **servisleri** yönetmek istediğimizde “**service unit**” üzerinde işlem yapmamız gerekiyor. Biz bu bölümde yalnızca servisler özelinde anlatımlar gerçekleştireceğiz. Daha fazlası için ek araştırma yapmanız yeterli. Bu açıklama şu an için pek anlamlı gelmemiş olabilir fakat bölüm sonunda netleşecek. 

**systemd** aracını yönetirken `systemctl` komutunu kullanıyor olacağız. Anlatımlarımıza birimleri listeleyerek başlayalım.

## Birimleri Listelemek

Sistemimizde aktif olan tüm birimleri listelemek için `systemctl list-units` komutunu kullanıyoruz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl list-units
  UNIT                                                                                     LOAD   ACTIVE SUB       DESCRIPTION                                                   >
  proc-sys-fs-binfmt_misc.automount                                                        loaded active waiting   Arbitrary Executable File Formats File System Automount Point >
  sys-devices-pci0000:00-0000:00:01.1-ata2-host3-target3:0:0-3:0:0:0-block-sr0.device      loaded active plugged   VBOX_CD-ROM
  sys-devices-pci0000:00-0000:00:03.0-net-eth0.device                                      loaded active plugged   82540EM Gigabit Ethernet Controller (PRO/1000 MT Desktop Adapt>
  sys-devices-pci0000:00-0000:00:05.0-sound-card0-controlC0.device                         loaded active plugged   /sys/devices/pci0000:00/0000:00:05.0/sound/card0/controlC0
  sys-devices-pci0000:00-0000:00:0d.0-ata3-host0-target0:0:0-0:0:0:0-block-sdd-sdd1.device loaded active plugged   VBOX_HARDDISK 1
  sys-devices-pci0000:00-0000:00:0d.0-ata3-host0-target0:0:0-0:0:0:0-block-sdd-sdd2.device loaded active plugged   VBOX_HARDDISK 2
  sys-devices-pci0000:00-0000:00:0d.0-ata3-host0-target0:0:0-0:0:0:0-block-sdd-sdd5.device loaded active plugged   VBOX_HARDDISK 5
  sys-devices-pci0000:00-0000:00:0d.0-ata3-host0-target0:0:0-0:0:0:0-block-sdd.device      loaded active plugged   VBOX_HARDDISK
  sys-devices-pci0000:00-0000:00:0d.0-ata4-host2-target2:0:0-2:0:0:0-block-sda-sda1.device loaded active plugged   VBOX_HARDDISK 1
  sys-devices-pci0000:00-0000:00:0d.0-ata4-host2-target2:0:0-2:0:0:0-block-sda.device      loaded active plugged   VBOX_HARDDISK
  sys-devices-pci0000:00-0000:00:0d.0-ata5-host4-target4:0:0-4:0:0:0-block-sdb.device      loaded active plugged   VBOX_HARDDISK
  sys-devices-pci0000:00-0000:00:0d.0-ata6-host5-target5:0:0-5:0:0:0-block-sdc.device      loaded active plugged   VBOX_HARDDISK
  sys-devices-pci0000:00-0000:00:0e.0-nvme-nvme0-nvme0n1.device                            loaded active plugged   ORCL-VBOX-NVME-VER12
  sys-devices-pci0000:00-0000:00:0e.0-nvme-nvme0-nvme0n2.device                            loaded active plugged   ORCL-VBOX-NVME-VER12
  sys-devices-platform-serial8250-tty-ttyS0.device                                         loaded active plugged   /sys/devices/platform/serial8250/tty/ttyS0
  sys-devices-platform-serial8250-tty-ttyS1.device                                         loaded active plugged   /sys/devices/platform/serial8250/tty/ttyS1
  sys-devices-platform-serial8250-tty-ttyS2.device                                         loaded active plugged   /sys/devices/platform/serial8250/tty/ttyS2
  sys-devices-platform-serial8250-tty-ttyS3.device                                         loaded active plugged   /sys/devices/platform/serial8250/tty/ttyS3
  sys-devices-virtual-misc-rfkill.device                                                   loaded active plugged   /sys/devices/virtual/misc/rfkill
  sys-module-configfs.device                                                               loaded active plugged   /sys/module/configfs
  sys-module-fuse.device                                                                   loaded active plugged   /sys/module/fuse
```

Ben çıktıları kısaltarak ekledim, fakat siz kendi konsolunuz üzerinde pek çok farklı türde “**unit**” yani “**birim**” olduğunu bizzat görebilirsiniz. Zaten birimler, “**.automount”**, “**.device”**, “**.service”** şeklinde isminin sonunda nokta ve birim ismiyle açıkça belirtiliyor. 

Buradaki çıktılarda yalnızca aktif olan yani halihazırda çalışmakta olan birimler listelenmiş oldu. Eğer sistemdeki tüm birimleri listelemek istersek `systemctl list-units —all` komutunu kullanabiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl list-units --all
  UNIT                                                                                                   LOAD      ACTIVE   SUB       DESCRIPTION                                >
  proc-sys-fs-binfmt_misc.automount                                                                      loaded    active   waiting   Arbitrary Executable File Formats File Syst>
  dev-cdrom.device                                                                                       loaded    active   plugged   VBOX_CD-ROM
  dev-disk-by\x2did-ata\x2dVBOX_CD\x2dROM_VB2\x2d01700376.device                                         loaded    active   plugged   VBOX_CD-ROM
  dev-disk-by\x2did-ata\x2dVBOX_HARDDISK_VB3ccf8e6f\x2da9e91513.device                                   loaded    active   plugged   VBOX_HARDDISK
  dev-disk-by\x2did-ata\x2dVBOX_HARDDISK_VB45786de4\x2d3738de63.device                                   loaded    active   plugged   VBOX_HARDDISK
  dev-disk-by\x2did-ata\x2dVBOX_HARDDISK_VB45786de4\x2d3738de63\x2dpart1.device                          loaded    active   plugged   VBOX_HARDDISK 1
  dev-disk-by\x2did-ata\x2dVBOX_HARDDISK_VB45786de4\x2d3738de63\x2dpart2.device                          loaded    active   plugged   VBOX_HARDDISK 2
  dev-disk-by\x2did-ata\x2dVBOX_HARDDISK_VB45786de4\x2d3738de63\x2dpart5.device                          loaded    active   plugged   VBOX_HARDDISK 5
  dev-disk-by\x2did-ata\x2dVBOX_HARDDISK_VBda1e68a2\x2d30c6e453.device                                   loaded    active   plugged   VBOX_HARDDISK
  dev-disk-by\x2did-ata\x2dVBOX_HARDDISK_VBe669bbe4\x2d6b8b9ee2.device                                   loaded    active   plugged   VBOX_HARDDISK
  dev-disk-by\x2did-ata\x2dVBOX_HARDDISK_VBe669bbe4\x2d6b8b9ee2\x2dpart1.device                          loaded    active   plugged   VBOX_HARDDISK 1
  dev-disk-by\x2did-lvm\x2dpv\x2duuid\x2d5JMH8c\x2dE6sH\x2dCU8Q\x2dffxQ\x2dM2Qf\x2dibd9\x2diwfl4z.device loaded    active   plugged   ORCL-VBOX-NVME-VER12
  dev-disk-by\x2did-lvm\x2dpv\x2duuid\x2dx0PYst\x2d25V2\x2drYcj\x2dxXIC\x2dEAvQ\x2dKFun\x2d11WCWu.device loaded    active   plugged   VBOX_HARDDISK 1
```

Ben çıktıları kısalttığım için inaktif olanlar buraya eklediğim çıktılarda gözükmüyor ancak `—state=inactive` seçeneği ile inaktif olanları da özellikle filtreleyebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl list-units --all --state=inactive                                                                                                                             
  UNIT                                                                                 LOAD      ACTIVE   SUB  DESCRIPTION                                                       >
● home.mount                                                                           not-found inactive dead home.mount
  proc-sys-fs-binfmt_misc.mount                                                        loaded    inactive dead Arbitrary Executable File Formats File System
● tmp.mount                                                                            not-found inactive dead tmp.mount                                                         >
  systemd-ask-password-console.path                                                    loaded    inactive dead Dispatch Password Requests to Console Directory Watch             >
  apparmor.service                                                                     loaded    inactive dead Load AppArmor profiles
● auditd.service                                                                       not-found inactive dead auditd.service
  auth-rpcgss-module.service                                                           loaded    inactive dead Kernel Module supporting RPCSEC_GSS
● console-screen.service                                                               not-found inactive dead console-screen.service
  dm-event.service                                                                     loaded    inactive dead Device-mapper event daemon
  dpkg-db-backup.service                                                               loaded    inactive dead Daily dpkg database backup service
  e2scrub_all.service                                                                  loaded    inactive dead Online ext4 Metadata Check for All Filesystems
  e2scrub_reap.service                                                                 loaded    inactive dead Remove Stale Online ext4 Metadata Check Snapshots
  emergency.service                                                                    loaded    inactive dead Emergency Shell
```

Gördüğünüz gibi yalnızca inaktif olanları da filtrelemiş olduk.

Eğer spesifik olarak bir servisin durumunu sorgulamak istersek `status` seçeneğini kullanabiliyoruz. Ben denemek için **apache2** servisini sorguluyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status apache2
○ apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; disabled; vendor preset: disabled)
     Active: inactive (dead)
       Docs: https://httpd.apache.org/docs/2.4/
```

<p class="mavi"><strong>ℹ️ Not:</strong> Sizin kullanmakta olduğunuz sistemde <strong>apache</strong> servisi farklı bir kısayol ismi ile tanımlı olabilir. Örneğin Apache servisi, Red Hat üzerinde <strong>httpd</strong> olarak geçiyor. Birimleri listelediğiniz çıktılardan, sizin sisteminizdeki ismini öğrenebilirsiniz. Ayrıca apache için sizin sisteminizde tanımlı bir servis mevcut olmayabilir. Ben yalnızca kendi sistemimden örnek vermek için <strong>apache</strong> ismi üzerinden apache servisinde uygulamalar gerçekleştiriyorum. Buradaki anlatımları takip etmek için siz dilediğiniz bir servisi kullanabilirsiniz.</p>

# Unit(Birim) Yönetimi

## Başlatmak | `start`

İnaktif durumdaki bir birimi başlatmak için `sudo systemctl start birim-adı` şeklinde komutumuzu girebiliyoruz. Ben denemek için kapalı olan **apache2.service** isimli servisi başlatmak istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo systemctl start apache2.service 
[sudo] password for taylan: 

┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status apache2.service 
● apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; disabled; vendor preset: disabled)
     Active: active (running) since Mon 2023-07-24 10:08:06 EDT; 6s ago
       Docs: https://httpd.apache.org/docs/2.4/
    Process: 15355 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
   Main PID: 15390 (apache2)
      Tasks: 6 (limit: 12719)
     Memory: 19.2M
        CPU: 110ms
     CGroup: /system.slice/apache2.service
             ├─15390 /usr/sbin/apache2 -k start
             ├─15391 /usr/sbin/apache2 -k start
             ├─15392 /usr/sbin/apache2 -k start
             ├─15393 /usr/sbin/apache2 -k start
             ├─15394 /usr/sbin/apache2 -k start
             └─15395 /usr/sbin/apache2 -k start

Jul 24 10:08:01 linuxdersleri.net systemd[1]: Starting The Apache HTTP Server...
Jul 24 10:08:06 linuxdersleri.net systemd[1]: Started The Apache HTTP Server.
```

Ben **apache2.service** şeklinde birimin türünü(**.service**) açıkça belirttim fakat **apache2** isminde başka bir birim türü yoksa **apache2.service** yerine doğrudan **apache2** şeklinde de girebilirdim. 

## Durdurmak | `stop`

Çalışmakta olan birimi durdurmak için `sudo systemctl stop birim-adı` komutunu kullanabiliyoruz. Ben başlattığım apache2 servis birimini durduracağım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo systemctl stop apache2

┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status apache2
○ apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; disabled; vendor preset: disabled)
     Active: inactive (dead)
       Docs: https://httpd.apache.org/docs/2.4/

Jul 24 10:08:01 linuxdersleri.net systemd[1]: Starting The Apache HTTP Server...
Jul 24 10:08:06 linuxdersleri.net systemd[1]: Started The Apache HTTP Server.
Jul 24 10:08:33 linuxdersleri.net systemd[1]: Stopping The Apache HTTP Server...
Jul 24 10:08:38 linuxdersleri.net systemd[1]: apache2.service: Deactivated successfully.
Jul 24 10:08:38 linuxdersleri.net systemd[1]: Stopped The Apache HTTP Server.
```
İlgili birimin durdurulduğunu `status` seçeneği ile teyit etmiş olduk. En alttaki log kayıtlarında hangi işlemin hangi sırada gerçekleştirildiği de açıkça belirtiliyor zaten.

## Yeniden Başlatmak | `restart` `reload`

Birimi yeniden başlatmak için `restart` seçeneğini kullanabiliyoruz. Örneğin birim dosyası üzerinde konfigürasyon değişikliği yaptığınızda, ilgili birimde bu değişikliğin geçerli olması için o birimi yeniden başlatabilirsiniz. Bu seçenek, hem kapalı hem de halihazırda çalışmakta olan birimin yeniden başlatılmasını sağlıyor. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo systemctl restart apache2.service 

┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status apache2.service 
● apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; disabled; vendor preset: disabled)
     Active: active (running) since Mon 2023-07-24 10:09:17 EDT; 23s ago
       Docs: https://httpd.apache.org/docs/2.4/
    Process: 15683 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
   Main PID: 15749 (apache2)
      Tasks: 6 (limit: 12719)
     Memory: 12.1M
        CPU: 60ms
     CGroup: /system.slice/apache2.service
             ├─15749 /usr/sbin/apache2 -k start
             ├─15754 /usr/sbin/apache2 -k start
             ├─15755 /usr/sbin/apache2 -k start
             ├─15756 /usr/sbin/apache2 -k start
             ├─15757 /usr/sbin/apache2 -k start
             └─15758 /usr/sbin/apache2 -k start

Jul 24 10:09:12 linuxdersleri.net systemd[1]: Starting The Apache HTTP Server...
Jul 24 10:09:17 linuxdersleri.net systemd[1]: Started The Apache HTTP Server.
```

Eğer servisi kesintiye uğratmadan yalnızca konfigürasyon değişikliklerinin geçerli olmasını isterseniz `restart` yerine `reload` seçeneğini kullanabilirsiniz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo systemctl reload apache2.service                                                                                                                  

┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status apache2.service                                                                                                                   
● apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; disabled; vendor preset: disabled)
     Active: active (running) since Mon 2023-07-24 10:09:17 EDT; 56s ago
       Docs: https://httpd.apache.org/docs/2.4/
    Process: 15683 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
    Process: 15939 ExecReload=/usr/sbin/apachectl graceful (code=exited, status=0/SUCCESS)
   Main PID: 15749 (apache2)
      Tasks: 6 (limit: 12719)
     Memory: 12.3M
        CPU: 149ms
     CGroup: /system.slice/apache2.service
             ├─15749 /usr/sbin/apache2 -k start
             ├─15983 /usr/sbin/apache2 -k start
             ├─15984 /usr/sbin/apache2 -k start
             ├─15985 /usr/sbin/apache2 -k start
             ├─15986 /usr/sbin/apache2 -k start
             └─15987 /usr/sbin/apache2 -k start

Jul 24 10:09:12 linuxdersleri.net systemd[1]: Starting The Apache HTTP Server...
Jul 24 10:09:17 linuxdersleri.net systemd[1]: Started The Apache HTTP Server.
Jul 24 10:10:01 linuxdersleri.net systemd[1]: Reloading The Apache HTTP Server...
Jul 24 10:10:11 linuxdersleri.net systemd[1]: Reloaded The Apache HTTP Server.
```


## Birimlerin Aktif Pasif Hale Getirilmesi

Birimleri yalnızca manuel olarak başlatıp, durdurmamız gerekmiyor. Sistem başlangıcında otomatik olarak başlatılmasını istediğimiz birimleri **systemd** üzerinden “**enabled**” yani “aktif” şekilde tanımlamamız yeterli.

### Aktifleştirmek | `enable`

Ben denemek için apache2 servisini aktifleştirmek üzere `sudo systemctl enable apache2` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo systemctl enable apache2
Synchronizing state of apache2.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable apache2
Created symlink /etc/systemd/system/multi-user.target.wants/apache2.service → /lib/systemd/system/apache2.service.

┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status apache2
● apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: disabled)
     Active: active (running) since Mon 2023-07-24 10:09:17 EDT; 19min ago
       Docs: https://httpd.apache.org/docs/2.4/
   Main PID: 15749 (apache2)
      Tasks: 6 (limit: 12719)
     Memory: 12.3M
        CPU: 220ms
     CGroup: /system.slice/apache2.service
             ├─15749 /usr/sbin/apache2 -k start
             ├─15983 /usr/sbin/apache2 -k start
             ├─15984 /usr/sbin/apache2 -k start
             ├─15985 /usr/sbin/apache2 -k start
             ├─15986 /usr/sbin/apache2 -k start
             └─15987 /usr/sbin/apache2 -k start

Jul 24 10:09:12 linuxdersleri.net systemd[1]: Starting The Apache HTTP Server...
Jul 24 10:09:17 linuxdersleri.net systemd[1]: Started The Apache HTTP Server.
Jul 24 10:10:01 linuxdersleri.net systemd[1]: Reloading The Apache HTTP Server...
Jul 24 10:10:11 linuxdersleri.net systemd[1]: Reloaded The Apache HTTP Server.
```

**apache2** servisi “**enable**” yani “aktif” hale gelmiş oldu. Yani sistem başlangıcında otomatik olarak başlatılıyor olacak. 

### Devre Dışı Bırakmak | `disable`

Eğer aktifleştirilmiş bir birimi pasif konuma getirmek istersek `disable` yani “devre dışı bırakma” seçeneğini kullanabiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo systemctl disable apache2                                                                                                                 
Synchronizing state of apache2.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install disable apache2
Removed /etc/systemd/system/multi-user.target.wants/apache2.service.

┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status apache2                                                                                                                          
● apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; disabled; vendor preset: disabled)
     Active: active (running) since Mon 2023-07-24 10:09:17 EDT; 21min ago
       Docs: https://httpd.apache.org/docs/2.4/
   Main PID: 15749 (apache2)
      Tasks: 6 (limit: 12719)
     Memory: 12.3M
        CPU: 227ms
     CGroup: /system.slice/apache2.service
             ├─15749 /usr/sbin/apache2 -k start
             ├─15983 /usr/sbin/apache2 -k start
             ├─15984 /usr/sbin/apache2 -k start
             ├─15985 /usr/sbin/apache2 -k start
             ├─15986 /usr/sbin/apache2 -k start
             └─15987 /usr/sbin/apache2 -k start

Jul 24 10:09:12 linuxdersleri.net systemd[1]: Starting The Apache HTTP Server...
Jul 24 10:09:17 linuxdersleri.net systemd[1]: Started The Apache HTTP Server.
Jul 24 10:10:01 linuxdersleri.net systemd[1]: Reloading The Apache HTTP Server...
Jul 24 10:10:11 linuxdersleri.net systemd[1]: Reloaded The Apache HTTP Server.
```

Gördüğünüz gibi `enable` seçeneği ile aktifleştiriyorken, `disable` seçeneği ile de pasif konuma getirebiliyoruz. 

# Birimleri Gruplamak | Target

Farklı durumlar için farklı birimlerin sistem açılışında otomatik olarak aktifleştirilmesini isteyebiliriz. systemd bu durumlar için “**target**” ismi verilen birimleri kullanıyor. target sayesinde sistem başlangıcında başlatılmasını istediğimiz tüm birimleri gruplayabiliyoruz. Temel target birimlerini listeleyecek olursak:

- *poweroff*
- *rescue*
- *multi-user*
- *graphical*
- *reboot*

Bu target’lar, içerisinde amaçları doğrultusunda uygun olan birimleri barındıran gruplardır. Örneğin poweroff.target aslında systemd’nin tüm birimleri sonlandırması sonucu sistemin kapanmasını sağlayan gruptur. 

Kullanmakta olduğunuz sistemdeki varsayılan target bilgisini öğrenmek için `systemctl get-default` komutunu girebilirsiniz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl get-default 
graphical.target
```

Benim kullanmakta olduğum sistem **graphical.target** seviyesinde başlatıldığı için otomatik olarak ağ destekleri grafiksel çok kullanıcılı sistem için gerekli olan birimler de başlatılmış oluyor. Bu sayede grafiksel arayüze sahip olan, ağa bağlanabilen, çok kullanıcılı işletim sistemini yönetebiliyorum.

Eğer varsayılan target birimini değiştirmek istersek `set-default` seçeneğinin ardından ilgili target biriminin tam ismini girebiliriz. Fakat ben öncelikle mevcut sistemimde tanımlı olan tüm targetleri öğrenmek üzere `systemctl list-units —type target —all` komutunu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl list-units --type target --all                                                                                                                
  UNIT                                                                                 LOAD   ACTIVE   SUB    DESCRIPTION                                  >
  basic.target                                                                         loaded active   active Basic System
  blockdev@dev-disk-by\x2duuid-00253fba\x2dff78\x2d4f04\x2db189\x2dfbc974082345.target loaded inactive dead   Block Device Preparation for /dev/disk/by-uui>
  blockdev@dev-disk-by\x2duuid-491d3534\x2db3d9\x2d47af\x2dad63\x2d66b0e72fe8dd.target loaded inactive dead   Block Device Preparation for /dev/disk/by-uui>
  blockdev@dev-sda5.target                                                             loaded inactive dead   Block Device Preparation for /dev/sda5
  cryptsetup.target                                                                    loaded active   active Local Encrypted Volumes
  emergency.target                                                                     loaded inactive dead   Emergency Mode
  first-boot-complete.target                                                           loaded inactive dead   First Boot Complete
  getty-pre.target                                                                     loaded inactive dead   Preparation for Logins
  getty.target                                                                         loaded active   active Login Prompts
  graphical.target                                                                     loaded active   active Graphical Interface
  initrd-root-fs.target                                                                loaded inactive dead   Initrd Root File System
  initrd-usr-fs.target                                                                 loaded inactive dead   Initrd /usr File System
  integritysetup.target                                                                loaded active   active Local Integrity Protected Volumes
  local-fs-pre.target                                                                  loaded active   active Preparation for Local File Systems
  local-fs.target                                                                      loaded active   active Local File Systems
  multi-user.target                                                                    loaded active   active Multi-User System
  network-online.target                                                                loaded inactive dead   Network is Online
  network-pre.target                                                                   loaded inactive dead   Preparation for Network
  network.target                                                                       loaded active   active Network
  nfs-client.target                                                                    loaded active   active NFS client services
  nss-lookup.target                                                                    loaded inactive dead   Host and Network Name Lookups
  nss-user-lookup.target                                                               loaded inactive dead   User and Group Name Lookups
  paths.target                                                                         loaded active   active Path Units
  remote-fs-pre.target                                                                 loaded active   active Preparation for Remote File Systems
  remote-fs.target                                                                     loaded active   active Remote File Systems
  rescue.target                                                                        loaded inactive dead   Rescue Mode
  shutdown.target                                                                      loaded inactive dead   System Shutdown
  slices.target                                                                        loaded active   active Slice Units
  sockets.target                                                                       loaded active   active Socket Units
  sound.target                                                                         loaded active   active Sound Card
  stunnel.target                                                                       loaded active   active TLS tunnels for network services - per-config>
  swap.target                                                                          loaded active   active Swaps
  sysinit.target                                                                       loaded active   active System Initialization
  time-set.target                                                                      loaded active   active System Time Set
  time-sync.target                                                                     loaded inactive dead   System Time Synchronized
  timers.target                                                                        loaded active   active Timer Units
  umount.target                                                                        loaded inactive dead   Unmount All Filesystems
  veritysetup.target                                                                   loaded active   active Local Verity Protected Volumes

LOAD   = Reflects whether the unit definition was properly loaded.
ACTIVE = The high-level unit activation state, i.e. generalization of SUB.
SUB    = The low-level unit activation state, values depend on unit type.
38 loaded units listed.
To show all installed unit files use 'systemctl list-unit-files'.
```

Bakın benim sistemimde, başta vermiş olduğum standart tablodan çok daha fazla target tanımlı gözüküyor. Dilersek biz de spesifik bir amaç için bir target birimi oluşturup bu birimin başlatması gereken birimleri bu birim altında gruplayabiliriz. Bu konuya değinmeyeceğiz fakat hazır yeri gelmişken, ihtiyaca yönelik olarak tüm birimleri konfigüre edebileceğimize vurgu yapmak istedim.

Ben varsayılan target seviyesini değiştirmeyi örneklemek için **graphical.target** yerine **multi-user.target**’ı varsayılan olarak tanımlamak istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl get-default 
graphical.target

┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo systemctl set-default multi-user.target                                                                                                                 
Created symlink /etc/systemd/system/default.target → /lib/systemd/system/multi-user.target.

┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl get-default                                                                                                                 
multi-user.target
```

Gördüğünüz gibi varsayılan target değişmiş oldu. Bu değişiklik sistem başlangıcında geçerli olacak.

Eğer değişikliğin anında mevcut oturum için geçerli olmasını istersek `sudo systemctl isolate isim.target` şeklinde komutumuzu girebiliriz. Örneğin `sudo systemctl isolate reboot.target` komutunu girecek olursak, **reboot.target** birimi konfigürasyonları sebebiyle sistemin yeniden başlatılmasını sağlayacaktır. Bu komutu onayladığınız anda sisteminiz yeniden başlatılacaktır. Çünkü **reboot.target** birimi bunun için özel olarak konfigüre edilmiştir. 

Ayrıca birimleri aktif ve pasif şekilde tanımlarken, komut çıktılarında ilgili birimin multi-user.target ile ilişkili olan dosya konumuna sembolik olarak bağlandığını da görmüştük. Bu sayede sistem multi-user.target birimi ile başlatılırken, aktifleştirmiş olduğumuz birim de bu grup dahilinde başlatılmış oluyor.


<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code>┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo systemctl enable apache2
Synchronizing state of apache2.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable apache2
<span class="mavi">Created symlink /etc/systemd/system/multi-user.target.wants/apache2.service → /lib/systemd/system/apache2.service.</span>
</code></pre></div></div>


<p class="mavi">Bakın multi-user.target birimi altına bu servis sembolik olan bağlanmış oldu. Bu sayede sistem multi-user.target birimi ile başlatılırken bu servis de otomatik olarak başlatılıyor olacak.</p>

Eğer bu birimi devredışı bırakırsak da bu sembolik link silinecek. Hemen deneyelim.

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code>┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo systemctl disable apache2.service                             
Synchronizing state of apache2.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install disable apache2                 
<span class="kirmizi">Removed /etc/systemd/system/multi-user.target.wants/apache2.service.</span>
</code></pre></div></div>

<p class="kirmizi">İlgili sembolik linkin silinmesiyle bu servis de pasif konumuna geçerek, mult-user.target birimi ile ilişkisi kesilmiş oldu. Bu sebeple sistem başlangıcında bu servis birimi otomatik olarak başlatılmayacak.</p>

Ayrıca ben örnek olarak **graphical.target** yerine **multi-user.target** birimini varsayılan target birimi olarak ayarladım ama aslında **graphical.target** birimi de arkaplanda **multi-user.target** birimini kullanıyor. Tek fark grafiksel kullanıcı arayüzü için gerekli olan ek birimleri de dahil etmiş olması. Bu durumu teyit etmek için `cat /lib/systemd/system/graphical.target` komutu ile **graphical.target** birim dosyasını inceleyebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /lib/systemd/system/graphical.target                                                                                         
#  SPDX-License-Identifier: LGPL-2.1-or-later
#
#  This file is part of systemd.
#
#  systemd is free software; you can redistribute it and/or modify it
#  under the terms of the GNU Lesser General Public License as published by
#  the Free Software Foundation; either version 2.1 of the License, or
#  (at your option) any later version.

[Unit]
Description=Graphical Interface
Documentation=man:systemd.special(7)
Requires=multi-user.target
Wants=display-manager.service
Conflicts=rescue.service rescue.target
After=multi-user.target rescue.service rescue.target display-manager.service
AllowIsolate=yes
```

Şimdi buradaki konfigürasyonları açıklayacak olursak:

**`Requires=multi-user.target`**: Bu satır, **kesin bağımlılığı** belirtiyor. Yani, mevcut birim çalıştırılmadan önce **multi-user.target** birimi de çalıştırılmalıdır. Eğer **multi-user.target** çalıştırılamazsa, bu birim yani **graphical.target** birimi de çalıştırılmayacaktır.

**`Wants=display-manager.service`**: Bu satır, birim dosyanın **display-manager.service** birimini bağımlılık olarak **istediğini** belirtir. **`Requires`**'dan farklı olarak, **`Wants`** bağımlılığı zorunlu kılmaz. Eğer display-manager.service mevcut değilse, bu birim hala çalıştırılabilir. Ancak eğer varsa, display-manager.service ile birlikte çalışacaktır.

**`Conflicts=rescue.service rescue.target`**: Bu satır, birim dosyanın **rescue.service** veya **rescue.target** ile **çakışmaması** gerektiğini belirtir. Yani, eğer rescue.service veya rescue.target çalışıyorsa, bu birim çalıştırılmaz.

**`After=multi-user.target rescue.service rescue.target display-manager.service`**: Bu satır, birimin çalıştırılması gereken **sıralamayı** belirtir. Yani mevcut graphical.target birimi, multi-user.target, rescue.service, rescue.target ve display-manager.service birimlerinden **sonra** çalıştırılmalıdır. Bu, belirli bir sıra sağlamak için kullanılır.

**`AllowIsolate=yes`**: Bu satır, bu birimin "`isolate`" komutunu destekleyeceğini belirtir. `isolete` komutu ile **anında target birimlerinde geçiş** yapabileceğinizi biliyorsunuz, işte bu tanımlama buna izin veriyor.

Gördüğünüz gibi grafiksel arayüz için gereken **display-manager.service** ve çok kullanıcılı standart sistem yönetimi için gerekli olan **multi-user.target** kullanılarak **graphical.target** birimi meydana getirilimiş. Bu sayede grafiksel arayüzlü çok kullanıcılı bir sistem için gereken tüm birimler başlatılabiliyor.

Buradaki kısa açıklamayla, birimlerin nasıl aktif ve pasif olarak tanımlandığı ve target birimlerinin bu konudaki işlevi biraz daha net anlaşılmıştır diye umuyorum.

# Yeni Servis Tanımlaması

Basit bir örnek olarak kendimize yeni bir servis tanımlamayı deneyebiliriz. Ben servis olarak arka planda çalıştırılması için bir betik hazırlamak istiyorum. 

Örnek olarak; çalıştığı her dakika boyunca ***/home/taylan/Desktop/zaman.log*** isimli dosyaya çalışma saatlerini bastıran bir betik kullanacağım. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat > zaman.sh
#! /usr/bin/bash

while true; do
    date >> /home/taylan/Desktop/zaman.log
    sleep 60 
done

┌──(taylan㉿linuxdersleri)-[~]
└─$ chmod +x zaman.sh 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ./zaman.sh

┌──(taylan㉿linuxdersleri)-[~]
└─$ cat ~/Desktop/zaman.log 
Wed Jul 26 10:05:24 AM EDT 2023
```

Betik dosyamı hazırladım ve sorunsuzca çalıştığını da teyit ettim. Şimdi bu betik dosyasının servis olarak arka planda çalışması için tanımlama yapalım. 

Servis dosyasını `/etc/systemd/system/` dizini altında ***servis-ismi.service*** ismiyle oluşturmamız gerekiyor. Dosya isminde Türkçe karakter kullanmayın. Yeni servis dosyası oluşturmak için `nano` aracından faydalanabilirsiniz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo nano /etc/systemd/system/zaman.service
[sudo] password for taylan:
```

Öncelikle tanımlamayı yapıp dosyamızı kaydedelim. 

```bash
[Unit]
Description=zaman.sh isimli betik dosyasını çalıştıran servisin açıklamasıdır.

[Service]                                                                    
ExecStart=/home/taylan/zaman.sh                                              
                                                                             
[Install]                                                                    
WantedBy=multi-user.target
```

**`[Unit]`**, birim hakkında bilgi girdiğimiz bölümdür. `Description` seçeneğinin ardından, mevcut birim hakkında **açıklama** ekliyoruz. 

**`[Service]`** servisle ilgili konfigürasyonları tanımlayabileceğimiz başlıktır. Bu başlık altında servisin çalışma şekli hakkında ihtiyacımıza yönelik tanımlamalarda bulunabiliyoruz. Ben yalnızca ***/home/taylan/zaman.sh*** konumundaki betik dosyasını çalıştırmak istediğim için “`ExecStart=`” tanımından sonra bu betik dosyasının tam konumunu girdim. Siz çalıştırmak istediğiniz dosyanın tam konumunu belirtebilirsiniz.

**`[Install]`** başlığı ise, bu birimin ne zaman yani hangi target ile başlatılacağını belirtmemizi sağlıyor. Ben standart olan çok kullanıcılı **multi-user.target** grubunu belirttim. Bu sayede sistem başlangıcında multi-user.target başlatılacağı için, eğer aktifleştirirsem otomatik olarak benim tanımladığım bu servis de başlatılıp, betik dosyası çalıştırılıyor olacak.

Bu değişikliğin geçerli olması için **systemd** aracının konfigürasyon değişikliklerini tanıması üzere `sudo systemctl daemon-reload` komutunu girmemiz gerek.

```bash
┌──(taylan㉿linuxdersleri)-[~]                                               
└─$ sudo systemctl daemon-reload
                                                                             
┌──(taylan㉿linuxdersleri)-[~]                                               
└─$ systemctl status zaman
○ zaman.service - zaman.sh isimli betik dosyasını çalıştıran servisin açıklamasıdır.
     Loaded: loaded (/etc/systemd/system/zaman.service; disabled; vendor preset: disabled)
     Active: inactive (dead)
```

Çıktıdaki “loaded” ifadesine bakarak, servisin **systemd** tarafından tanındığını(bu konfigürasyon dosyasının yüklendiğini) görebiliyoruz. Fakat **status** çıktısından bizzat teyit edebildiğimiz gibi bu servis şu anda çalışmıyor ve ayrıca aktif durumda da değil. Yani sistem başlangıcında otomatik olarak başlatılmayacak çünkü “**pasif**” yani “**disabled**” olarak tanımlı gözüküyor.

Servisi başlatmak için `sudo systemctl start zaman.service` şeklinde komutumuzu girebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo systemctl start zaman                                                                                                                          

┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status zaman.service 
● zaman.service - zaman.sh isimli betik dosyasını çalıştıran servisin açıklamasıdır.
     Loaded: loaded (/etc/systemd/system/zaman.service; disabled; vendor preset: disabled)
     Active: active (running) since Wed 2023-07-26 10:45:43 EDT; 9s ago
   Main PID: 11958 (zaman.sh)
      Tasks: 2 (limit: 12719)
     Memory: 584.0K
        CPU: 9ms
     CGroup: /system.slice/zaman.service
             ├─11958 /usr/bin/bash /home/taylan/zaman.sh
             └─11960 sleep 60

Jul 26 10:45:43 linuxdersleri.net systemd[1]: Started zaman.sh isimli betik dosyasını çalıştıran servisin açıklamasıdır..
```

Servisimiz şu anda çalışıyor fakat sistem başlangıcında otomatik olarak başlatılmayacak. Eğer başlatılmasını istiyorsak `sudo systemctl enable zaman.service` komutu ile aktifleştirebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo systemctl enable zaman.service 
Created symlink /etc/systemd/system/multi-user.target.wants/zaman.service → /etc/systemd/system/zaman.service.

┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status zaman.service 
● zaman.service - zaman.sh isimli betik dosyasını çalıştıran servisin açıklamasıdır.
     Loaded: loaded (/etc/systemd/system/zaman.service; enabled; vendor preset: disabled)
     Active: active (running) since Wed 2023-07-26 10:45:43 EDT; 2min 36s ago
   Main PID: 11958 (zaman.sh)
      Tasks: 2 (limit: 12719)
     Memory: 596.0K
        CPU: 21ms
     CGroup: /system.slice/zaman.service
             ├─11958 /usr/bin/bash /home/taylan/zaman.sh
             └─12459 sleep 60

Jul 26 10:45:43 linuxdersleri.net systemd[1]: Started zaman.sh isimli betik dosyasını çalıştıran servisin açıklamasıdır..
```

Servis, multi-user.target ile ilişkili olan dizine sembolik linkle bağlanmış oldu. Yani artık böylelikle sistemimiz multi-user.target ile başlatıldığında “**zaman.service**” birimi de otomatik olarak başlatılacak. Teyit etmek isterseniz sisteminizi yeniden başlatıp deneyebilirsiniz. 

Elbette servisi nasıl sonlandırabileceğinizi ve pasif hale getirebileceğinizi de biliyorsunuz. Eğer servisi kalıcı olarak silmek isterseniz de, oluşturduğunuz servis birimi dosyasını silmeniz yeterli. 

Biz burada yalnızca çok basit düzeyde servis tanımlamayı ele aldık. Fakat servisin yerine getireceği görevlere göre tanımlanması gereken konfigürasyonalar çok çeşitli olabilir. 

Örneğin apache2 servisini incelemek için `cat /lib/systemd/system/apache2.service` komutunu girelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /lib/systemd/system/apache2.service
[Unit]
Description=The Apache HTTP Server
After=network.target remote-fs.target nss-lookup.target
Documentation=https://httpd.apache.org/docs/2.4/

[Service]
Type=forking
Environment=APACHE_STARTED_BY_SYSTEMD=true
ExecStart=/usr/sbin/apachectl start
ExecStop=/usr/sbin/apachectl graceful-stop
ExecReload=/usr/sbin/apachectl graceful
KillMode=mixed
PrivateTmp=true
Restart=on-abort

[Install]
WantedBy=multi-user.target
```

Gördüğünüz gibi bizim tanımladığımıza ek olarak daha farklı konfigürasyonlar da mevcut. Tüm konfigürasyonlardan bahsetmemiz mümkün değil. Çünkü hepsi ihtiyaca yönelik olarak tanımlanıyor. Yani sık kullanılmayanların akılda kalması veya tüm konfigürasyonların bilinmesi gibi bir durum mümkün değil. İhtiyaç duyduğunuz konfigürasyonları öğrenmek için systemd aracının manual sayfalarını ve interneti kullanabilirsiniz. 

Ayrıca dikkat ettiyseniz, araçlarla birlikte gelen servisler, ***/lib/systemd/system/*** dizini altında tutuluyor. Gerekirse buradan ilgili servis birimlerinin konfigürasyonlarına göz atıp düzenleyebilirsiniz. 

# Zamanlanmış Görevler : cron | systemd timer

Belirli görevlerin tanımlandıkları zaman aralıklarında otomatik olarak çalıştırılması için **cron** ile zamanlanmış görevler tanımlayabiliyoruz. Fakat ben **cron** yapısına değinmekten ziyade daha güncel olan systemd aracının benzer amaçla sunduğu **timer** birimini ele almak istiyorum. Daha önce nasıl yeni bir servis tanımlayabileceğimize değindiğimiz için aslında bizim için çok kolay olacak.

Ben denemek için daha önce oluşturduğum servisi kullanarak, betik dosyasının spesifik bir aralıkta çalıştırılması için tanımlamada bulunacağım. Bunun için `nano /lib/systemd/system/zaman.timer` komutu ile zamanlanmış görev için **timer** birim dosyası oluşturalım.

```bash
[Unit]
Description=zaman.service için zamanlanmış görev tanımı

[Timer]
OnBootSec=1min
OnCalendar=*:*:0/30
Unit=zaman.service

[Install]
WantedBy=multi-user.target
```

**`[Timer]`** başlığı altında hangi servisin hangi sıklıkla çalıştırılması gerektiğini tanımlayabiliyoruz. 

`OnBootSec` seçeneği, **1min** tanımlamasıyla systemd aracının bu zamanlanmış görevi sistem başlatıldıktan **1 dakika sonra** tetiklemesi gerektiği belirtiyor. Eğer anında geçerli olması gerekiyorsa **0min** şeklinde de tanımlanabilir.

Tanımlamak için **`YYYY-MM-DD HH:MM:SS`** modeli kullanıyor. 

Yani: `Yıl-Ay-Gün Saat:Dakika:Saniye` şeklinde tanımlayabiliyoruz.

Ben örnek olarak 30 saniyede bir çalıştırılacak şekilde zamanladım. Fakat daha net anlaşılması için birkaç farklı tanımlamayı örnekleyecek olursak:

Spesifik bir tarih için, örneğin 2023 yılının 12. ayının 1. gününde 23.59 da çalışması için: 

```bash
OnCalendar=2023-12-01 23:59:00 
```

Her gün saat 9.30 da çalışması için:

```bash
OnCalendar=*-*-* 09:30:00
```

Her gün sabah 12 ve akşam 12 de çalışması için: 

```bash
OnCalendar=*-*-* 12:00:00
OnCalendar=*-*-* 00:00:00
```

Her saat çalışması için:

```bash
OnCalendar=*-*-* *:00:00
```

İki saatte bir çalışması için

```bash
OnCalendar=*-*-* 00/2:00:00
```

Buradaki taksim işaretinden sonraki sayı, tekrar edecek olan sayının katlarını belirtiyor. Bu sayede 00'dan başlayıp 2'şer şer artarak 2 saatte bir çalıştırılmış olacak.

Her dakika çalıştırmak için:

```bash
OnCalendar=*-*-* *:*:00
```

5 dakikadaki bir çalıştırmak için:

```bash
OnCalendar=*-*-* *:00/5:00
```

20 saniyede bir çalıştırmak için:

```bash
OnCalendar=*-*-* *:*:00/20
```

Pazartesiden cumaya her saat çalıştırmak için:

```bash
OnCalendar=Mon..Fri *-*-* *:00:00
```

Yalnızca hafta sonları 6 saatte bir çalıştırmak için:

```bash
OnCalendar=Sat,Sun *-*-* 00/6:00:00
```

Yalnızca pazartesi çarşamba ve cuma günleri her saat başında çalıştırmak için:

```bash
OnCalendar=Mon,Wed,Fri *-*-* *:00:00
```

Yılın ilk altı ayında 10 günde bir kez çalıştırmak için:

```bash
OnCalendar=Jan..Jun/10 00:00:00
```

Liste bu şekilde uzar gider. Tanımlama aşamasında emin olamazsanız, interneti kullanabilirsiniz. Zaten sıklıkla zamanlanmış görevler tanımlamayacağınız için hatırlamamanız veya karıştırmanız olağan.

Zamanlanmış görevi timer birimi olarak tanımladıktan sonra, çalışması için aktifleştirmemiz gerek. Bunun için de `systemctl enable zaman.timer` komutunu kullanıyoruz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl enable zaman.timer 
Created symlink /etc/systemd/system/multi-user.target.wants/zaman.timer → /lib/systemd/system/zaman.timer.

┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status zaman.timer                                                                                                                            
○ zaman.timer - zaman.service için zamanlanmış görev tanımı
     Loaded: loaded (/lib/systemd/system/zaman.timer; enabled; vendor preset: enabled)
     Active: inactive (dead)
    Trigger: n/a
   Triggers: ● zaman.service
```

zaman.timer birimi de multi-user.target birimine sembolik linkle dahil edildiği için biz devredışı bırakana kadar sistem başlangıcında otomatik olarak başlatılıyor olacak. Ayrıca `status` komutunun çıktısında gördüğünüz gibi tanımladığım “zaman.timer” zamanlanmış görevi “zaman.service” servisini tetikleyecek şekilde aktif olarak çalışıyor. Ve sistem başlangıcından 1 dakika sonra da her 30 saniyede bir çalışmaya devam edecek. 

İşte zamanlanmış görev tanımlamak da bu kadar kolay.

Anlatım boyunca tekrar tekrar dile getirdiğim üzere, elbette systemd aracının tüm özellikleri ve kullanım detayları bu bölümde bahsetmiş olduklarımdan ibaret değil. Fakat temel sistem yönetimi kapsamında servis yönetimi için bu kadarlık bilgi yeterli. Özellikle konfigürasyonlar söz konusu olduğunda sıklıkla yardım sayfalarından ve internetteki kaynaklardan yardım almamız da son derece doğal, en azından ben öyle yapıyorum :) Yardım sayfalarını biraz kurcalayacak olursanız, ne kadar geniş çaplı bilgi birikimi olduğunu bizzat görebilirsiniz.
