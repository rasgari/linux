# linux education:


===>>> firewall

```bash
systemctl status firewalld.service
systemctl start firewalld.service
systemctl stop firewalld.service
systemctl enable firewalld.service
systemctl disablee firewalld.service
```

===>>> firewall port
```
sudo firewall-cmd --zone=public --add-port=9200/tcp --permanent
sudo firewall-cmd --reload
sudo firewall-cmd --list-ports
sudo firewall-cmd --zone=public --remove-port=9200/tcp --permanent
```

===>>> hard
```
nohup vmkfstools -k CentOs7.0-Kafka.vmdk  > zeroing.log 2>&1 &
```

===>>> docker

```bash
systemctl status docker (images)
```

===>>> volume

```bash
sudo fdisk -l
```

===>>> change access

```bash
sudo chown -R admin:admin docker/
sudo chown -R admin:admin docker/*
sudo chown -R 1001:1001 docker/
sudo chown -R 1001:1001 docker/*
```

===>>> change mod
```bash
sudo chmod -R admin:admin docker/
sudo chmod -R admin:admin docker/*
```

===>>> mount

```bash
sudo fdisk /dev/sda
sudo pvcreate /dev/sda3
sudo vgextend vgdocker /dev/sda3
sudo lvdisplay
sudo lvextend -l +100%FREE /dev/vgdocker/lvdocker
sudo xfs_growfs /mnt/yourmountpoint
```


=======================================================

===>>> squid proxy  برای پروکسی در لینوکس 


===>>> echo $? خروجی دستور قبلی رو بررسی کرد

===>>> search
```bash
find
```

```bash
lsof
```

```bash
lsmod
```

```bash
blkid
```

===>>> volume
```bash
df -h 
free -m
```

```
ls -la
```

===>>>BIOS
```bash
sudo dmidecode -t bios
```

===>>>HARD ADD

```bash
lsblk
sudo pvs
sudo vgs
sudo lvs
```


==========================================

1- bat --> cat

2- exa --> ls

3- autojump --> cd

4- zoxide --> cd

5- httpi --> curl

6- ripgrep --> grep

7- sd --> sed

8- jq --> awk

9- htop --> top

10- fastfetch --> uname

11- ncdu --> du

12- dust --> du

13-  duf --> df

14- dysk --> df

15- fd --> find

16- fossil --> git

17- tldr --> man

18- lstr --> tree

19- poetry --> pipe

20- eza --> ls

====================================


کالی لینوکس از استاندارد سلسله‌مراتب سیستم فایل (FHS) پیروی می‌کند که یک ساختار آشنا و جهانی برای تمام کاربران لینوکس فراهم می‌آورد. دایرکتوری‌هایی که بیشتر به کار شما خواهند آمد عبارتند از:

===>>> /bin - برنامه‌های پایه (مانند ls, cd, cat و غیره)

===>>> /sbin - برنامه‌های سیستمی (مانند fdisk, mkfs, sysctl و غیره)

===>>> /etc - فایل‌های پیکربندی

===>>> /tmp - فایل‌های موقت (که معمولاً هنگام راه‌اندازی مجدد، حذف می‌شوند)

===>>> /usr/bin - برنامه‌ها (مانند apt, ncat, nmap و غیره)

===>>>/usr/share - فایل‌های پشتیبانی برنامه و داده‌ها

=========================================


===>>> search
```
apropos <keyword>
```

=====================================

🔹تولید صدا و بوق!
(اگر کارت صدا فعاله یه بوق کوتاه می‌زنه)

echo -e "\a"
🔹نمایش جملات تصادفی با ابزار fortune

sudo apt install fortune
fortune

🔹  پیدا کردن فایل‌های بزرگ در سیستم
find / -type f -size +100M 2>/dev/null

🔹مانیتور کردن لاگ‌های سیستم در لحظه

tail -f /var/log/syslog

=====================================

دستور 
```
traceroute IP
```
کاربرد: برای بررسی مسیر (Hopها) که بسته‌های شما برای رسیدن به یک مقصد (IP یا دامنه) طی می‌کنن.

این دستور نشون می‌ده ترافیک شما از چه روترها و شبکه‌هایی رد می‌شه تا به مقصد برسه.

```
traceroute 8.8.8.8
```


🔎 خروجی: لیستی از IP روترها/گیت‌وی‌هایی که مسیر رو می‌سازن، همراه با زمان پاسخ (ms).
📌 در ویندوز معادل این دستور:
```
tracert 8.8.8.8
```


دستور
```
netstat -ntlp
```
کاربرد: نشون می‌ده چه سرویس‌ها/پورت‌هایی روی سیستم لینوکس باز هستن و چه پروسه‌هایی گوش می‌کنن (listening).

آپشن‌ها:

-n → نمایش IP و پورت به‌صورت عددی (نه DNS).

-t → فقط TCP connections.

-l → فقط Listening ports (پورت‌هایی که در حال گوش دادن هستن).

-p → نشون می‌ده هر پورت مربوط به کدوم process/program هست.


در سیستم‌های جدیدتر لینوکس، به جای netstat پیشنهاد می‌شه از ss استفاده کنی:
```
ss -ntlp
```

به طور خلاصه:
```
traceroute IP → مسیر بسته‌ها تا مقصد

netstat -ntlp → لیست پورت‌های باز + پروسه‌های مرتبط
```

---

نصب و فعال‌سازی Telnet در CentOS

در CentOS معمولاً به‌صورت پیش‌فرض نصب نیست.

🔹 نصب کلاینت Telnet:
```
sudo yum install -y telnet
```
🔹 برای نصب سرور Telnet (اگر بخوای دیگران به سیستم تو وصل شن):
```
sudo yum install -y telnet-server xinetd
```

سپس سرویس رو فعال کن:
```
sudo systemctl enable xinetd
sudo systemctl start xinetd
```

فایل پیکربندی Telnet در مسیر زیره:
```
/etc/xinetd.d/telnet
```


```
telnet IP Address port
```
for example
```
telnet 192.168.1.10 22
```
اگر پورت باز باشه، پیام مشابه زیر می‌بینی:

```
Trying 192.168.1.10...
Connected to 192.168.1.10.
Escape character is '^]'.
```

❌ اگر پورت بسته یا فایروال مانع باشه:
```
Trying 192.168.1.10...
telnet: Unable to connect to remote host: Connection refused
```



---

