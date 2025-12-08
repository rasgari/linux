نحوه استفاده
۱) فایل را ذخیره کن:
```
nano monitor-procs.sh
```

Paste کن و ذخیره کن.

۲) قابل‌اجرا کن:
```
chmod +x monitor-procs.sh
```
۳) اجرا:
```
./monitor-procs.sh
```
📄 نمونه خروجی واقعی
```
=========================================
   Zombie & Orphan Process Scanner
=========================================

🔍 Checking for Zombie Processes...
✅ No Zombie processes found.

🔍 Checking for Orphan Processes...
👶 Orphan Processes Found:
1234     1      S    /usr/bin/myapp
8789     1      S    /usr/bin/other

=========================================
  Summary:
🧟 Zombies: 0
👶 Orphans: 2
=========================================
Done.

```
