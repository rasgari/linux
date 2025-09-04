🛠 ساخت و فعال‌سازی  حافظه Swap در لینوکس  

1️⃣ ساخت فایل Swap (اینجا 8 گیگ):

sudo fallocate -l 8G /swapfile


2️⃣ تغییر سطح دسترسی (خیلی مهم!):

sudo chmod 600 /swapfile


3️⃣ فرمت کردن فایل به Swap:

sudo mkswap /swapfile


4️⃣ فعال‌کردن Swap:

sudo swapon /swapfile


5️⃣ بررسی وضعیت Swap:

swapon --show
free -h
اگر می‌خواید بعد از ریبوت هم فعال بمونه، این خط رو به /etc/fstab اضافه کنید:

/swapfile none swap sw 0 0
نویسنده: حسین سیلانی
http://learninghive.ir


======================================

🛠 افزایش  حافظه Swap در لینوکس  

 غیر فعال کردن swap فعلی
sudo swapoff /swapfile


1️⃣ تغییر اندازه فایل Swap (اینجا 10 گیگ):

sudo fallocate -l 10G /swapfile


2️⃣ تغییر سطح دسترسی (خیلی مهم!):

sudo chmod 600 /swapfile


3️⃣ فرمت کردن فایل به Swap:

sudo mkswap /swapfile


4️⃣ فعال‌کردن Swap:

sudo swapon /swapfile


5️⃣ بررسی وضعیت Swap:

swapon --show
free -h
اگر می‌خواید بعد از ریبوت هم فعال بمونه، این خط رو به /etc/fstab اضافه کنید:

/swapfile none swap sw 0 0
نویسنده: حسین سیلانی
http://learninghive.ir

=======================================

