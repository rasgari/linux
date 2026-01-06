# cockpit

Cockpit یک ابزار مدیریت سرور لینوکسی مبتنی بر وب است که به ادمین‌ها اجازه می‌دهد بدون نیاز به SSH مداوم، وضعیت سیستم، سرویس‌ها و منابع را به‌صورت گرافیکی و لحظه‌ای مدیریت کنند. این ابزار توسط Red Hat توسعه داده شده و روی اکثر توزیع‌های لینوکس (RHEL, CentOS, Rocky, Alma, Ubuntu, Debian) پشتیبانی می‌شود.

سرفصل‌های دوره Cockpit

معرفی Cockpit و معماری آن

نصب و راه‌اندازی Cockpit روی توزیع‌های مختلف

احراز هویت، مدیریت کاربران و نقش‌ها

مانیتورینگ CPU، RAM، Disk و Network

مدیریت سرویس‌ها با systemd

مدیریت لاگ‌ها (journald)

مدیریت Storage (LVM، Disk، Mount)

مدیریت شبکه و Interfaceها

مدیریت کانتینرها (Podman / Docker)

مدیریت چند سرور از یک پنل

امنیت، SSL و محدودسازی دسترسی

Troubleshooting و Best Practiceها

نحوه نصب Cockpit

روی Ubuntu / Debian:
```
sudo apt update
sudo apt install cockpit -y
sudo systemctl enable --now cockpit
```

روی CentOS / Rocky / Alma / RHEL:
```
sudo dnf install cockpit -y
sudo systemctl enable --now cockpit.socket
```

در صورت فعال بودن فایروال:
```
sudo firewall-cmd --add-service=cockpit --permanent
sudo firewall-cmd --reload
```
نحوه راه‌اندازی و دسترسی

Cockpit به‌صورت پیش‌فرض روی پورت 9090 اجرا می‌شود.
دسترسی از مرورگر:
```
https://SERVER-IP:9090
```

لاگین با همان یوزر و پسورد لینوکس انجام می‌شود (نیازی به یوزر جداگانه نیست).

نحوه استفاده از Cockpit

پس از ورود، داشبورد وضعیت کلی سیستم (Load، Memory، Disk، Network) را نمایش می‌دهد. از بخش Services می‌توان سرویس‌ها را Start/Stop/Restart کرد. در بخش Logs لاگ‌های systemd به‌صورت زنده دیده می‌شوند. قسمت Storage امکان مدیریت دیسک، پارتیشن و LVM را می‌دهد. بخش Terminal یک ترمینال SSH مستقیم داخل مرورگر است. همچنین می‌توان چند سرور را به یک Cockpit متصل و از یک پنل مدیریت کرد.

مزایا و کاربردها

Cockpit سبک، امن، متن‌باز و مناسب DevOps، SysAdmin و محیط‌های Production است. برای مانیتورینگ سریع، مدیریت سرویس‌ها، عیب‌یابی و حتی مصاحبه‌های فنی یک ابزار بسیار کاربردی محسوب می‌شود.
