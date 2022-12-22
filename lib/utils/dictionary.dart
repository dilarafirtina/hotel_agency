import "package:get/get.dart";

class Dictionary extends Translations {
  Map<String, Map<String, String>> map = {
    "en": {"aa": "bb"}
  };

  @override
  Map<String, Map<String, String>> get keys => map;
}

  // Map<String, Map<String, String>> get keys => {
  //       "en": {"Hello": "Hello %s"},
  //       "tr": {
  //         "Hello": "Merhaba %s",
  //         "Login": "Giriş",
  //         "Forgot Password": "Şifremi Unuttum",
  //         "Remember Me": "Beni hatırla",
  //         "Password required": "Şifre giriniz",
  //         "Password": "Şifre",
  //         "Error": "Hata %s",
  //         "Login Failure": "Giriş Hatası",
  //         "Please check your mail and password":
  //             "Kullanıcı kodu ve şifresini kontrol ediniz.",
  //         "Warning": "Dikkat",
  //         "User not found": "Kullanıcı bulunamadı",
  //         "Please enter your mail address": "Mail adresinizi giriniz",
  //         "Sign Out": "Çıkış",
  //         "Wellcome": "Hoşgeldiniz",
  //         "Language": "Dil",
  //         "Reservation": "Rezervasyon",
  //         "Discover": "Keşfet",
  //         "OnlineCheckin": "Hızlı Checkin",
  //         "I'm in Ela Excellence": "Ela Excellence'dayim",
  //         "Sign Up": "Kayıt ol",
  //         "First time here?": "İlk defa mı buradasınız?",
  //         "Sign in": "Giriş",
  //         "You need": "Giriş",
  //         "to login": "yapmanız gerekiyor",
  //         "EMail": "Mail",
  //         "I would like to get personalised notifications about campaigns and promotions.":
  //             "Kampanyalar ve indirimler ile ilgili bildirim almayı kabul ediyorum.",
  //         "(PDPA) Clarification text. I accept my data to be processed within this scope.":
  //             "KVKK konunu kapsamında bilgilerimin işlenmesini kabul ediyorum.",
  //         "When": "Ne Zaman",
  //         "Persons": "Kaç Kişi",
  //         "Additional Notes": "Ekleyecekleriniz",
  //         "Oops, something": "Bazı şeyler",
  //         "was not right": "yanlış gitti",
  //         "Please try again later.": "Daha sonra tekrar deneyin.",
  //         "Book": "Masa",
  //         "table": "Ayırtın",
  //         "Restaurants": "Restoran",
  //         "Adult": "Kişi",
  //         "Child": "Çocuk",
  //         "Baby": "Bebek",
  //         "Continue": "Devam",
  //         "First Name": "Adınız",
  //         "Last Name": "Soyadınız",
  //         "Birth Date": "Doğum Tarihi",
  //         "Mail": "Email",
  //         "Phone Number": "Telefon numarası",
  //         "Verify Password": "Şifre Onay",
  //         "Let us": "Sizi",
  //         "know you": "tanıyalım",
  //         "We are": "Çok",
  //         "sorry": "üzgünüz",
  //         "Babysitter": "Bebek bakıcı",
  //         "Service": "Hizmeti",
  //         "Enjoy The": "Akdeniz'de",
  //         "Mediterranean Sea": "keyfinize bakın",
  //         "Contact us": "Bize yazın",
  //         "Write a message ...": "Mesajınız",
  //         "Your opinion": "Görüşünüz",
  //         "is important": "önemlidir",
  //         "Get Directions": "Yol Tarifi",
  //         "Call Us": "Bizi Arayın",
  //         "Write us": "Bize Yazın",
  //         "Web Site": "Web Sitemiz",
  //         "WhatsApp": "WhatsApp",
  //         "Dry Cleaning": "Kuru Temizleme",
  //         "Date": "Tarih",
  //         "Time": "Saat",
  //         "Dear Guest,For laundry services, you can deliver your requests between 09.00 – 18.00.":
  //             "Sevgili misafirmiz, kuru temizleme servisimiz saat 09:00 - 18:00 arasında hizmet vermektedir.",
  //         "Note: Please share your laundry form with us until 12:00 pm, in order we can submit your request on the same day.":
  //             "Not : Size aynı gün içinde teslim edebilmemiz, lütfen kuru temizleme isteklerinizi saat 12:00 'a kadar gönderiniz",
  //         "All laundry forms after 12.00 pm, will be ready and delivered the next day.":
  //             "Saat 12:00 'dan sonra alınan kuru temizleme talepleri ertesi gün teslim edilebilir. ",
  //         "We wish you a nice and pleasant holidays.":
  //             "Mutlu tatiller dileriz.",
  //         "We are ready": "Sizin için",
  //         "for you": "buradayız",
  //         "Your form has been submitted successfully.":
  //             "Talebiniz başarı ile alındı.",
  //         "Thank you.": "Teşekkürler.",
  //         "Request": "Talebi",
  //         "Housekeeping": "Kat Hizmetleri",
  //         "Services": "Hizmetler",
  //         "Late": "Geç",
  //         "Check-out": "Ayrılış",
  //         "Approx. Departure": "Çıkış Saatiniz",
  //         "Laundry": "Çamaşır",
  //         "From Time": "Saat",
  //         "Maintenance": "Teknik Servis",
  //         "Your": "Size ait",
  //         "My Requests": "Taleplerim",
  //         "Accomodations": "Konaklamalar",
  //         "Messages": "Mesajlarınız",
  //         "Relax yourself": "Kendinizi",
  //         "with SPA treatments": "SPA 'da şımartın",
  //         "Transfer": "Transfer",
  //         "From Where": "Nereden",
  //         "To Where": "Nereye",
  //         "Tray": "Oda Servisi",
  //         "Collection": "Toplama",
  //         "Lost in app.": "Kayboldum",
  //         "Let\"s go home": "Başa dön",
  //         "Wake Up": "Uyandırma",
  //         "When would like to wake up?": "Ne zaman uyandırılmak istersiniz?",
  //         "Until": "Saat Kaça Kadar",
  //         "How many Kids?": "Kaç çocuğunuz var?",
  //         "How old are they?": "Çocuklarınız kaç yaşında?",
  //         "Let\"s go": "Devam",
  //         "Hope to see you soon.": "Yakında tekrar görüşmek üzere.",
  //         "My Profile": "Bilgilerim",
  //         "My Accommodations": "Konaklamalarım",
  //         "Sorry, I don't find anything": "Üzgünüm, hiçbirşey bulamadım.",
  //         "No permission": "Yetkiniz yok, üzgünüm.",
  //         "Please,check your internet connection":
  //             "Lütfen, internet bağlantınızı kontrol esder misiniz?",
  //         "Your passwords does not match. Please check.":
  //             "Şifre bilgilerinizi kontrol ediniz.",
  //         "Enter your password.": "Şifre giriniz",
  //         "Verify your password.": "Şifrenizi tekrar giriniz.",
  //         "From": "Saat Kaçtan",
  //         "Place Of Departure": "Nereden",
  //         "Place Of Arrival": "Nereye",
  //         "I could not recognize you!": "Siz tanıyamadım!"
  //       },
  //       "de": {
  //         "Hello": "Hallo %s",
  //         "Login": "Anmeldung",
  //         "Forgot Password": "Passwort vergessen",
  //         "Remember Me": "Erinne dich an mich",
  //         "Password required": "Geben Sie Ihr Passwort ein",
  //         "Password": "Passwort",
  //         "Error": "Fehler %s",
  //         "Login Failure": "Fehler bei der Anmeldung",
  //         "Please check your mail and password":
  //             "Bitte kontrollieren Sie Ihren Anmeldenamen und Ihr Passwort.",
  //         "Warning": "Vorsicht",
  //         "User not found": "Der Nutzer wurde nicht gefunden",
  //         "Please enter your mail address": "Geben Sie Ihre E-Mail Adresse an",
  //         "Sign Out": "Abmelden",
  //         "Wellcome": "Herzlich willkommen",
  //         "Language": "Sprache",
  //         "Reservation": "Reservierung",
  //         "Discover": "Entdecke",
  //         "Online Checkin": "Schnelles Einchecken",
  //         "I'm in Ela Excellence": "Ich bin im Ela Excellence",
  //         "Sign Up": "Melden Sie Sich an",
  //         "First time here?": "Sind Sie zum ersten Mal hier?",
  //         "Sign in": "Anmelden",
  //         "You need": "Sie müssen",
  //         "to login": "Sich anmelden",
  //         "EMail": "E-Mail",
  //         "I would like to get personalised notifications about campaigns and promotions.":
  //             "dede",
  //         "(PDPA) Clarification text. I accept my data to be processed within this scope.":
  //             "dede111",
  //         "When": "Wann",
  //         "Persons": "Wieviele Personen",
  //         "Additional Notes": "Ihre Notizen",
  //         "Oops, something": "Etwas ist",
  //         "was not right": "schiefgelaufen",
  //         "Please try again later.": "Versuchen Sie es bitte später nochmal.",
  //         "Book": "Reservieren",
  //         "table": "Sie einen Tisch",
  //         "Restaurants": "Restaurant",
  //         "Adult": "Erwachsene",
  //         "Child": "Kinder",
  //         "Baby": "Babys",
  //         "Continue": "Weiter",
  //         "First Name": "Name",
  //         "Last Name": "Nachname",
  //         "Birth Date": "Geburtsdatum",
  //         "Mail": "Email",
  //         "Phone Number": "Telefonnummer",
  //         "Verify Password": "Passwort bestätigen",
  //         "Let us": "Über",
  //         "know you": "Sie",
  //         "We are": "Es tut",
  //         "sorry": "uns leid.",
  //         "Babysitter": "Bebek Bakımı",
  //         "Service": "Dienstleistung",
  //         "Enjoy The": "Geniessen Sie ",
  //         "Mediterranean Sea": "das Mittelmeer",
  //         "Contact us": "Kontaktieren Sie uns.",
  //         "Write a message ...": "Schreiben Sie eine Nachricht",
  //         "Your opinion": "Ihre Meinung",
  //         "is important": "ist wichtig",
  //         "Get Directions": "Wegbeschreibung",
  //         "Call Us": "Rufen Sie uns an",
  //         "Write us": "Schreiben Sie uns",
  //         "Web Site": "Webseite",
  //         "WhatsApp": "WhatsApp",
  //         "Dry Cleaning": "Chemische Reinigung",
  //         "Date": "Datum",
  //         "Time": "Uhrzeit",
  //         "Dear Guest,For laundry services, you can deliver your requests between 09.00 – 18.00.":
  //             "Sehr geehrter Gast, unsere Wäscherei bietet Dienstleistungen zwischen 09.00-18.00 Uhr an.",
  //         "Note: Please share your laundry form with us until 12:00 pm, in order we can submit your request on the same day.":
  //             "Anmerkung: Damit wir Ihnen Ihre Wäasche am gleichen Tag zustellen können, müssen Sie sie bis 12.00 Uhr abgeben.",
  //         "All laundry forms after 12.00 pm, will be ready and delivered the next day.":
  //             "Wäsche, die nach 12.00 Uhr abgegeben wird, kann erst am nächsten Tag zugestellt werden.",
  //         "We wish you a nice and pleasant holidays.":
  //             "Wir wünschen Ihnen einen schönen Urlaub.",
  //         "We are ready": "Wir sind",
  //         "for you": "für Sie da.",
  //         "Your form has been submitted successfully.":
  //             "Ihre Notiz wurde erfolgreich versendet.",
  //         "Thank you.": "Dankeschön.",
  //         "Request": "Anfrage",
  //         "Housekeeping": "Haushaltshilfe",
  //         "Services": "Dienstleistungen",
  //         "Late": "spät",
  //         "Check-out": "Abreise",
  //         "Approx. Departure": "Uhrzeit der Abreise",
  //         "Laundry": "Wäscherei",
  //         "From Time": "von .. bis",
  //         "Maintenance": "Technische Dienstleistung",
  //         "Your": "Ihre",
  //         "Requests": "Anfragen",
  //         "Accomodations": "Übernachtungen",
  //         "Messages": "Ihre Nachrichten",
  //         "Relax yourself": "Verwöhnen Sie Sich",
  //         "with SPA treatments": "mit den Spa Dienstleistungen",
  //         "Transfer": "Transfer",
  //         "From": "Von wo",
  //         "Where": "Wohin",
  //         "Tray": "Zimmerservice",
  //         "Collection": "Abholung",
  //         "Lost in app.": "Ich habe mich verlaufen",
  //         "Let\"s go home": "zur Startseite",
  //         "Wake Up": "Aufweckdienst",
  //         "When would like to wake up?": "Wann möchten Sie geweckt werden?",
  //         "Until": "Kadar",
  //         "How many Kids?": "Kaç çocuğunuz var?",
  //         "How old are they?": "Çocuklarınız kaç yaşında?",
  //         "Let\"s go": "Weitermachen",
  //         "Hope to see you soon.": "Hoffe dich bald zu sehen.",
  //         "My Profile": "Mein Profil",
  //         "My Accommodations": "Meine Unterkünfte",
  //         "Sorry, I don't find anything": "Tut mir leid, ich finde nichts.",
  //         "Your passwords does not match. Please check.":
  //             "Deine Passwörter stimmen nicht überein.",
  //         "Place Of Departure": "Abfahrtsort",
  //         "Place Of Arrival": "Ankunftsort",
  //         "I could not recognize you!": "Ich konnte dich nicht erkennen!"
  //       },
  //       "ru": {
  //         "Hello": "Здравствуйте %s",
  //         "Login": "Вход",
  //         "Forgot Password": "Забыл шифр",
  //         "Remember Me": "Запомнить меня",
  //         "Password required": "Ввести шифр",
  //         "Password": "Шифр",
  //         "Error": "Ошибка",
  //         "Login Failure": "Ошибка ввода",
  //         "Please check your mail and password":
  //             "Проверить код пользователя и пароль.",
  //         "Warning": "Внимание",
  //         "User not found": "Пользователь не найден",
  //         "Please enter your mail address": "Введите свой почтовый адрес",
  //         "Sign Out": "Выход",
  //         "Wellcome": "Добро пожаловать",
  //         "Language": "Язык",
  //         "Reservation": "Резервирование",
  //         "Discover": "Откройте для себя",
  //         "Online Checkin": "Быстрая регистрация",
  //         "I'm in Ela Excellence": "Я в Ela Excellence",
  //         "Sign Up": "Войти",
  //         "First time here?": "Впервые здесь?",
  //         "Sign in": "Вход",
  //         "You need": "Вам",
  //         "to login": "необходимо авторизоваться",
  //         "EMail": "Mail",
  //         "I would like to get personalised notifications about campaigns and promotions.":
  //             "Я хочу получать персонализированные уведомления о кампаниях и рекламных акциях",
  //         "(PDPA) Clarification text. I accept my data to be processed within this scope.":
  //             "Пояснительный текст ». Я согласен с тем, что мои данные будут обрабатываться в в  этих рамках.",
  //         "When": "Когда",
  //         "Persons": "Сколько человек",
  //         "Additional Notes": "Что добавить",
  //         "Oops, something": "еще что-то",
  //         "was not right": "Что-то пошло не так",
  //         "Please try again later.": "Повторите попытку позже",
  //         "Book": "Стол",
  //         "table": "Отделите",
  //         "Restaurants": "Ресторан",
  //         "Adult": "Количество",
  //         "Child": "Дети",
  //         "Baby": "Младенцы",
  //         "Continue": "Продолжить",
  //         "First Name": "Имя",
  //         "Last Name": "Фамилия",
  //         "Birth Date": "Дата рождения",
  //         "Mail": "Электронная почта",
  //         "Phone Number": "Номер телефона",
  //         "Verify Password": "Подтвердить шифр",
  //         "Let us": "Вы",
  //         "know you": "давайте узнаем",
  //         "We are": "Много",
  //         "sorry": "сожалеем",
  //         "Babysitter": "Няня",
  //         "Service": "Обслуживание",
  //         "Enjoy The": "На Средиземноморье",
  //         "Mediterranean Sea": "Наслаждайтесь",
  //         "Contact us": "Напишите нам",
  //         "Write a message ...": "Сообщение",
  //         "Your opinion": "Ваше мнение",
  //         "is important": "важно",
  //         "Get Directions": "Маршруты",
  //         "Call Us": "Позвоните нам",
  //         "Write us": "Напишите нам",
  //         "Web Site": "Наш сайт",
  //         "WhatsApp": "Ватсапп",
  //         "Dry Cleaning": "Химчистка",
  //         "Date": "Дата",
  //         "Time": "ремя",
  //         "Dear Guest,For laundry services, you can deliver your requests between 09.00 – 18.00.":
  //             "Уважаемый гость, наша химчистка работает с 09:00 до 18:00.",
  //         "Note: Please share your laundry form with us until 12:00 pm, in order we can submit your request on the same day.":
  //             "Примечание: отправляйте запросы в химчистку до 12:00, чтобы мы могли доставить  вам вещи в тот же день",
  //         "All laundry forms after 12.00 pm, will be ready and delivered the next day.":
  //             "Запросы на химчистку, полученные после 12:00, могут быть оставлены на следующий день",
  //         "We wish you a nice and pleasant holidays.":
  //             "Желаем вам приятного отдыха",
  //         "We are ready": "Для Вас",
  //         "for you": "Мы здесь",
  //         "Your form has been submitted successfully.":
  //             "Ваш запрос успешно принят",
  //         "Thank you.": "Спасибо",
  //         "Request": "Запрос",
  //         "Housekeeping": "Уборка",
  //         "Services": "Услуги",
  //         "Late": "Поздно",
  //         "Check-out": "Выезд",
  //         "Approx. Departure": "Время выезда",
  //         "Laundry": "рачечная",
  //         "From Time": "Время",
  //         "Maintenance": "Техническое обслуживание",
  //         "Your": "Для Вас",
  //         "Requests": "Запросы",
  //         "Accomodations": "Размещение",
  //         "Messages": "Ваши сообщения",
  //         "Relax yourself": "Вы сами",
  //         "with SPA treatments": "Побалуйте себя в СПА",
  //         "Transfer": "Трансфер",
  //         "From": "Откуда",
  //         "Where": "Куда",
  //         "Tray": "Обслуживание в номерах",
  //         "Collection": "Коллекция",
  //         "Lost in app.": "Я зарегистрировался",
  //         "Let\"s go home": "Вернуться к началу",
  //         "Wake Up": "Разбудить",
  //         "When would like to wake up?":
  //             "Когда вы хотите, что бы Вас разбудили",
  //         "Hope to see you soon.": "Надеюсь увидеть вас в ближайшее время.",
  //         "My Profile": "Мой профайл",
  //         "My Accommodations": "Мое жилье",
  //         "Sorry, I don't find anything": "Извини ничего не нахожу",
  //         "Your passwords does not match. Please check.":
  //             "Ваши пароли не совпадают. пожалуйста, проверьте.",
  //         "Place Of Departure": "Место отправления",
  //         "Place Of Arrival": "Место прибытия",
  //         "I could not recognize you!": "Я не узнал тебя!"
  //       }
  //     };

