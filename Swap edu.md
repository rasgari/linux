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
**حذف  فایل swap در لینوکس**، مراحل دقیق به ترتیب زیر هستند:


### 1️⃣ خاموش و غیرفعال کردن Swap

ابتدا باید swap فعال را خاموش کنید تا بتوانید آن را حذف کنید. فرض می‌کنیم فایل swap شما /swapfile است:

sudo swapoff /swapfile

این دستور فایل swap را غیرفعال می‌کند.


### 2️⃣ حذف فایل Swap

بعد از غیرفعال کردن، خود فایل را می‌توانید پاک کنید:

sudo rm /swapfile

### 3️⃣ حذف از /etc/fstab (اختیاری اما مهم)

اگر فایل swap در فهرست /etc/fstab برای فعال شدن خودکار بعد از ریبوت اضافه شده بود، باید خط مربوطه را حذف یا کامنت کنید:

sudo nano /etc/fstab

و خطی که شبیه این است را حذف یا # بگذارید:

/swapfile none swap sw 0 0

سپس فایل را ذخیره و ببندید.


### 4️⃣ بررسی حذف

می‌توانید با دستور زیر مطمئن شوید که swap فعال نیست:

swapon --show
free -h

اگر درست حذف شده باشد، هیچ swap فایلی نشان داده نمی‌شود و مقدار Swap برابر صفر خواهد بود.
نویسنده: حسین سیلانی
http://learninghive.ir

======================================


