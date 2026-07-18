# COMPUX — qurish va o'rnatish qo'llanmasi

COMPUX — Linux asosidagi, Windows uslubidagi ish stoliga ega, boshqa kompyuterlarga o'rnatiladigan operatsion tizim.

Bu papkada tizimni **avtomatik quradigan** fayllar bor. Sizga kod yozish shart emas — faqat quyidagi qadamlarni bajarasiz.

---

## 1-QADAM: GitHub'ga hisob oching

1. https://github.com saytiga kiring
2. "Sign up" tugmasini bosib, bepul hisob oching (email va parol yetarli)

---

## 2-QADAM: Yangi repository (loyiha) yarating

1. GitHub'ga kirgach, yuqori o'ngdagi **"+"** belgisini bosing → **"New repository"**
2. Repository name: `compux-os`
3. **Public** tanlangan bo'lsin (bepul Actions uchun)
4. "Create repository" tugmasini bosing

---

## 3-QADAM: Fayllarni yuklang

1. Ochilgan sahifada **"uploading an existing file"** havolasini bosing
2. Kompyuteringizdagi `compux-os-linux` papkasi ichidagi **barcha fayl va papkalarni** (shu jumladan yashirin `.github` papkasini ham) shu yerga sudrab tashlang (drag & drop)
3. Pastda "Commit changes" tugmasini bosing

> **Muhim:** `.github` papkasi ko'rinmasligi mumkin (u yashirin papka). Agar brauzeringiz uni ko'rsatmasa, papkani ZIP qilib keyin GitHub'ga yuklashdan oldin oching, yoki GitHub Desktop dasturidan foydalaning (repo → "Add local folder").

---

## 4-QADAM: Avtomatik qurishni ishga tushiring

1. Repository sahifasida yuqoridagi **"Actions"** bo'limiga o'ting
2. Chapda **"COMPUX ISO qurish"** ishchi jarayonini tanlang
3. O'ng tomonda **"Run workflow"** tugmasini bosing → yana **"Run workflow"**
4. Kuting — bu jarayon **40-90 daqiqa** davom etadi (GitGitHub serverida, sizning kompyuteringiz band bo'lmaydi)
5. Jarayon yashil ✔ belgisi bilan tugaguncha sahifani vaqti-vaqti bilan yangilab turing

---

## 5-QADAM: Tayyor ISO faylni yuklab oling

1. Tugagan jarayon (workflow run) ichiga kiring
2. Pastda **"Artifacts"** bo'limida **"COMPUX-ISO"** ni bosib yuklab oling
3. ZIP fayl ichidan `COMPUX.iso` faylni chiqarib oling

---

## 6-QADAM: Flashkaga yozing

1. **Rufus** dasturini yuklab oling: https://rufus.ie
2. Kamida 8GB flashkani kompyuterga ulang (⚠️ flashkadagi barcha fayllar o'chadi)
3. Rufus'ni oching → "SELECT" tugmasi bilan `COMPUX.iso` faylni tanlang
4. "START" tugmasini bosing, tugashini kuting

---

## 7-QADAM: Boshqa kompyuterga o'rnating

1. Flashkani o'rnatmoqchi bo'lgan kompyuterga ulang
2. Kompyuterni yoqing va darhol **F12**, **F2** yoki **Esc** tugmasini bosib turing (kompyuter modeliga qarab) — "Boot Menu" chiqadi
3. Flashkani tanlang
4. COMPUX yuklanadi → ekrandagi o'rnatuvchi (Calamares) orqali "Next, Next, Install" qilib bosib chiqasiz — xuddi Windows o'rnatishga o'xshaydi
5. Tugagach, flashkani chiqarib, kompyuterni qayta yoqing

---

## Ichida nima bor?

- **Ish stoli:** XFCE (yengil, tezkor) + Windows uslubidagi Arc-Dark tema va Papirus ikonalar
- **Taskbar:** pastda, "Boshlash" tugmasi (Start menu), ochiq oynalar, virtual ish stollari almashtirgichi, quvvat/tovush/tarmoq ikonalari, soat
- **Oynalar:** minimize/maximize/close tugmalari o'ngda, soyalar bilan, chekka/oynaga "yopishtirish" (snap), 4 ta virtual ish stoli (Task View o'rnida)
- **Sozlamalar (Settings):** tarmoq, tovush, displey, foydalanuvchilar — bitta grafik oynada
- **Task Manager:** ishlayotgan dasturlar/jarayonlarni ko'rish va to'xtatish
- **Qidiruv:** Boshlash menyusi va Fayl menejeridan fayl/dastur qidirish
- **Bildirishnomalar:** Action Center o'rnida xabarnomalar markazi
- **Savat (Recycle Bin):** o'chirilgan fayllarni tiklash
- **Skrinshot:** PrintScreen tugmasi bilan ekran suratini olish
- **Ekranni qulflash:** parol bilan qulflash imkoniyati
- **Disk boshqaruvi:** disklarni bo'lish/formatlash, USB'ni xavfsiz chiqarish
- **Uskunalar haqida ma'lumot:** Device Manager o'rnida ulangan qurilmalar ro'yxati
- **Arxiv:** zip, rar, 7z fayllarni ochish/yaratish
- **Bluetooth:** simsiz quloqchin, sichqoncha va boshqa qurilmalarni ulash
- **Printer:** CUPS orqali avtomatik tanish va sozlash
- **Drayverlar:** "Additional Drivers" vositasi orqali Nvidia/AMD va boshqa drayverlarni keyinchalik osongina o'zingiz o'rnatishingiz uchun tayyorlangan (linux-firmware oldindan bor)
- **Disk shifrlash:** o'rnatish jarayonida diskni parol bilan shifrlash imkoniyati (BitLocker o'rnida)
- **Tizimni tiklash:** Timeshift orqali tizim nusxasini olish va kerak bo'lsa qaytarish (System Restore o'rnida)
- **Til:** o'zbekcha (lotin) va inglizcha klaviatura, Alt+Shift bilan almashtiriladi
- **Masofaviy ish stoli:** boshqa kompyuterga ulanish (Remmina) va o'z kompyuteringizga masofadan ulanishga ruxsat berish (xrdp)
- **Bulut xotira:** Google/onlayn hisoblarni ulash, Nextcloud orqali fayl sinxronlash
- **Ish stoli widget'lari:** ob-havo, protsessor/xotira yuklamasi ko'rsatkichi panelda
- **Bir nechta tema:** standart Arc-Dark'dan tashqari Materia va Numix temalarini ham tanlash mumkin
- **O'yinlar:** Steam oldindan o'rnatilgan
- **O'rnatilgan dasturlar:** Firefox, LibreOffice (Word/Excel o'rnida), GIMP (Photoshop o'rnida), VLC, Rasm ko'ruvchi, Fayl menejeri, Matn muharriri, Kalkulyator, Wine (Windows dasturlari uchun)
- **O'rnatuvchi:** Calamares — COMPUX logo va rangi bilan brendlangan, bosqichma-bosqich grafik o'rnatish jarayoni

**Antivirus qo'shilmagan** — so'rovingizga ko'ra qo'shilmadi.

## Dasturlarni o'rnatish — istalgan turdagi

**Linux dasturlari (minglab bepul dastur):**
- "Dastur do'koni" (Software) ilovasini oching → qidiring → "O'rnatish" bosing
- Telegram, Discord, Chrome, Spotify, Steam, VS Code va boshqa ko'plab mashhur dastur shu yerda bor

**Windows dasturlari (.exe fayllar):**
- `.exe` faylni yuklab oling, ustida o'ng tugma → "Open With Wine"
- Yoki PlayOnLinux orqali qulayroq, bosqichma-bosqich o'rnatish

## Tizim xususiyatlari (Windows'dagi "Mening kompyuterim > Xususiyatlar" o'rnida)

Ish stolida **"Kompyuter xususiyatlari"** ikonkasi bor — bosilsa, real vaqtda protsessor, RAM, video karta, disk holati va o'rnatilgan sana ko'rsatiladigan oyna ochiladi (COMPUX brendi bilan). Xuddi shu narsani Fayl menejerida istalgan joyga o'ng tugma bosib, **"Xususiyatlar (Tizim haqida)"** orqali ham chaqirish mumkin.

## Parametr (Sozlamalar) ichidagi qo'shimcha qulayliklar

Sozlamalar ilovasi endi **"Parametr"** deb ataladi. Ichida quyidagilar bor — barchasi standart holatda o'chiq, kerak bo'lsagina yoqasiz:

- **Quvvat rejimlari:** Tejash / Balanslangan / Yuqori unumdorlik — Parametr → Quvvat bo'limidan tanlanadi
- **Virtual PDF printer:** istalgan hujjatni "Chop etish" desangiz, printerlar ro'yxatida "Print to PDF" ham chiqadi
- **Shrift boshqaruvi:** Parametr yoki alohida Font Manager orqali yangi shriftlar qo'shish/o'chirish
- **Belgilar jadvali/emoji:** Character Map orqali maxsus belgi va emoji qo'yish

## Fayl/papkani parol bilan qulflash

ZuluCrypt o'rnatilgan — bu orqali istalgan faylni yoki papkani alohida parol bilan qulflab qo'yish mumkin (Windows'dagi EFS o'rnida). Ustiga o'ng tugma bosib "Shifrlangan konteyner yaratish" ni tanlaysiz, parol qo'yasiz — endi o'sha faylni faqat parol bilan ocha olasiz.

## Bir nechta monitor (ikkinchi ekran)

Ikkinchi monitorni ulasangiz, tizim avtomatik taniydi va sozlamalarni eslab qoladi (autorandr). Kengaytirish, dublikatlash yoki faqat bitta ekranda ishlashni Sozlamalar → Displey bo'limidan yoki tezkor "arandr" vositasi orqali tanlaysiz. Har xil brendlar (Nvidia/AMD/Intel) uchun keng drayver qo'llabi (xserver-xorg-video-all) oldindan o'rnatilgan, shuning uchun ulaganda "ekran ko'rinmayapti" muammosi kamayadi.

## Windows dasturlarini (.exe) ishga tushirish

COMPUX'da **Wine** oldindan o'rnatilgan — bu Windows dasturlarini Linux ichida ishga tushirishga yordam beruvchi vosita.

**Qanday ishlatiladi:**
1. Windows dasturining `.exe` o'rnatuvchi faylini yuklab oling (masalan Yuklab olishlar papkasiga)
2. Fayl ustida o'ng tugmani bosing → **"Open With Wine Windows Program Loader"**
3. Dastur xuddi Windows'dagidek o'rnatiladi va ishga tushadi

**Bilishingiz kerak bo'lgan narsa:**
- Eski, oddiy dasturlar va ko'plab o'yinlar odatda yaxshi ishlaydi
- Yangi, og'ir dasturlar (masalan eng yangi AutoCAD, ba'zi zamonaviy o'yinlar) ishlamasligi yoki muammo berishi mumkin — bu Wine'ning tabiiy cheklovi, 100% kafolat yo'q
- Qaysi dastur ishlashini oldindan bilish uchun: winehq.org/compat saytida dastur nomini qidirib ko'rish mumkin
- Agar dastur ishga tushmasa, **PlayOnLinux** yoki **Winetricks** dasturlari orqali qo'shimcha sozlash (kerakli kutubxonalarni o'rnatish) yordam berishi mumkin — bular ham oldindan o'rnatilgan

## Keyingi qadamlar (agar kerak bo'lsa)

- Nomni, wallpaper'ni yoki dasturlar ro'yxatini o'zgartirish uchun `config/package-lists/custom.list.chroot` faylini tahrirlab, qayta yuklashingiz kifoya — Actions avtomatik qayta quradi
- Logo va wallpaper `config/includes.chroot/usr/share/backgrounds/compux/` papkasida
