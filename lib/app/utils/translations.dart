// ignore_for_file: equal_keys_in_map

import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'tm': {
          'aboutUs': 'Biz barada',
          'addCart': 'Sebede goş',
          'addCash': 'Töleg geçirmek',
          'added': 'Goşuldy',
          'addedSubtitle': 'Sebede haryt goşuldy ',
          'addMoney': 'Hasap doldurmak',
          'agree': 'Tassyklamak',
          'alreadyExist': 'Maglumatlar öň bizde bar eken. Maglumatalaryňyzy gözden geçiriň',
          'balance': 'Hasap',
          'call': 'Jaň et',
          'cart': 'Sebet',
          'cartEmpty': 'Sebediňiz boş',
          'cartEmptySubtitle': 'Sebediňize hiç zat goşmadyňyz.',
          'category': 'Kategoriýa',
          'categoryName1': 'Alkogolsyz içgi',
          'categoryName2': 'Arassa suwlar',
          'categoryName3': 'Gazlandyrylan alkogolsyz icgi',
          'categoryName4': 'Kompot',
          'categoryName5': 'Mineral suwlar',
          'categoryName6': 'Miwe şireleri',
          'categoryName7': 'Sowuk çaý',
          'categoryName8': 'Sowuk kofe',
          'categoryName9': 'Witamin energiýa içgisi',
          'come': 'Geldi',
          'contactInformation': 'Habarlaşmak üçin : ',
          'copySucces': 'Tassyklandy',
          'countProducts': 'Harytlar : ',
          'createdAt': 'Goýulan Senesi : ',
          'data': 'Maglumat :',
          'data1': 'Maşyn ady :',
          'data2': 'Kategoriýa :',
          'data3': 'Görülme sany :',
          'data4': 'Ýüklenme Sany :',
          'data5': 'Goşmaça Maglumat :',
          'deliveryFree': 'Hormatly ulanyjylar harytlary "MUGT" görnüşde saýlan salgyňyza, bellenen wagtda eltip berýäris',
          'description': "Düşündiriş",
          'download': 'Ýükle',
          'downloaded': 'Ýüklänlerim',
          'downloadFiles': 'Ýüklemek',
          'emptyCart': 'Sebet boş',
          'emptyCartSubtitle': 'Sargyt etmek üçin sebediňizi haryt goşuň',
          'error': 'Ýalňyşlyk ýüze çykdy täzeden synanşyň',
          'errorData': 'Girizeň maglumatyňyz ýalňyş !',
          'errorEmpty': 'Tekst gutusy boş bolup bilmez',
          'errorPassword': 'Parol azyndan 6 haryp bolmaly',
          'errorPassword2': 'Parolyňyz ýalňyş',
          'errorPhoneCount': 'Telefon belgiňiz 8 sanly bolmaly.',
          'favorites': 'Halanlarym',
          'fixMachine': 'Bejeriş Hyzmaty',
          'giveLike': 'Bizi Play marketde bahalandyryň',
          'home': 'Baş sahypa',
          'juices': 'Miwe Şireleri',
          'locations': 'Salgylarym',
          'log_out_title': 'Siz hakykatdanda ulgamdan çykmak isleýärsiňizmi ?',
          'log_out': 'Ulgamdan çyk',
          'login': 'Ulgama gir',
          'loginError': 'Ulgama giriň',
          'loginError1': 'Hyzmaty ýerine ýetirmek üçin ulgama giriň',
          'loginErrorSubtitle': 'Sargyt etmek üçin ulgama giriň',
          'loginErrorSubtitle1': 'Hyzmaty ýerine etmek üçin ulgama giriň',
          'machinePart': 'Sapaklar',
          'machines': 'Maşynlar',
          'maxPrice': 'Iň gymmat',
          'message': 'Programma içine azyndan 50 TMT we ondan köp möçberde pul salyp bilýärsiňiz.\nEger pul saljak bolsaňyz "Jaň et" knopkasyna basyp habarlaşyp bilersiňiz',
          'minPrice': 'Iň arzan',
          'money_error_subtitle': 'Hasabyňyzy doldurmagyňyzy haýyş edýäris',
          'money_error_title': 'Pul ýetenok',
          'no': 'Ýok',
          'noConnection1': 'Aragatnaşyk ýok',
          'noConnection2': 'Internede baglanyp bolmady.Internet sazlamalaryňyzy barlap gaýtadan synanşyň !',
          'noConnection3': 'Täzeden synanş',
          'noData': 'Maglumat ýüklenmedi, täzeden synanşyň',
          'noData1': 'Wagtlaýynça maglumat ýok !',
          'noFile': 'Hiç hili Faýl ýok. Biz bilen habarlaşyň',
          'noMoney': 'Pul ýok',
          'noMoneySubtitle': 'Hyzmaty ýerine ýetirmek üçin Puluňyz ýetenok',
          'note': 'Bellik',
          'notification': 'Bildirişler',
          'notWork': 'Işlänok',
          'notWorkSubtitle': 'Waglaýynça hyzmat işlänok',
          'order': 'Sargyt',
          'orderAdress': 'Eltip bermek üçin salgyňyz',
          'orderProducts': 'Sargyt et',
          'orders': 'Sargytlarym',
          'orderSubtitle': 'Sargydyňyz ýerine ýetirmek üçin nobata goýuldy',
          'otp': 'Sms kod',
          'otpCheck': 'Otp Werfikasiýa',
          'otpErrorSubtitle': 'Sms koduňyzy ýene bir gezek barlaň',
          'otpErrorTitle': 'SMS kod ýalňyşlygy',
          'otpSubtitle': 'Telefon belgiňize gelen sms kody giriziň',
          'otpTitle': 'Ýazan belgiňize sms arkaly kod ugradylar.',
          'ourDeliveryService': 'Eltip bermek we töleg',
          'phoneNumber': 'Telefon belgiňiz',
          'priceProduct': 'Jemi Bahasy : ',
          'priceRange': 'Baha aralygy',
          'productAddToFav': 'Haryt halanlarym goşuldy',
          'products': 'Harytlar',
          'profil': 'Ulanyjy',
          'questions': 'Köp soralýan soraglar ?',
          'questions': 'Köp soralýan soraglar ?',
          'select_language': 'Dil saýlaň',
          'selectCityTitle': 'Welaýat saýlaň',
          'selectDate': 'Eltip bermeli wagty saýlaň',
          'selectDateTitle': 'Sargyt eltip bermeli wagty :',
          'selectMachine': 'Tikin maşyn görnüşi saýlaň',
          'settings': 'Sazlamalar',
          'share': 'Programmany paýlaş',
          'shareUs': 'Programmany paýlaş',
          'signIn1': 'Familýaňyz',
          'signIn2': 'Adyňyz',
          'signInDialog': 'Ulgama girmek üçin ulanyjy maglumatlary doly we dogry şekilde dolduruň',
          'signUp': 'Hasaba al',
          'filter': 'Filter',
          'sort': 'Yzygiderlik',
          'sortCreatedAtHighToLow': 'Senesi boýunça (ilki täzeler)',
          'sortCreatedAtLowToHigh': 'Senesi boýunça (ilki köneler)',
          'sortDefault': 'Adaty',
          'sortPriceHighToLow': 'Baha boýunça (ilki arzanlar)',
          'sortPriceLowToHigh': 'Baha boýunça (ilki gymmatlar)',
          'sortViews': 'Görülme sany boýunça',
          'transferUSB': 'USB geçir',
          'userName': 'Ulanyjy ady',
          'versia': 'Wersiýa',
          'waiting': 'Garaşylýar',
          'yes': 'Hawwa',
          'viewCount': 'Görülme Sany :',
          "brandPP": "Brand",
          "brands": 'Brendler',
          "callNumber": "Telefon Belgilerimiz",
          "cash": "Nagt",
          "cashSubtitle": "Sargydy alan wagtyňyz nagt görnüşde hasaplaşmak",
          "categoriesMini": 'Kategoriýalar',
          "creditCart": "Kart",
          "creditCartSubtitle": "Sargydy alan wagtyňyz töleg terminaly arkaly hasaplaşmak",
          "deleteFavProduct": "Halanlarymy boşat !",
          "deleteFavProductSubtitle": "Siz hakykatdanam Halanlarymy boşatmakçymy ?",
          "discountedItems": 'Arzanladyşdaky harytlar',
          "recomendedItems": 'Maslahat berilýän önümler',
          "doYouWantToDeleteCart": 'Sebedi boşat !',
          "doYouWantToDeleteCartSubtitle": 'Siz hakykatdanam Sebedi boşatmakçymy ?',
          "hastags": "Haştaglar",
          "minSumCount": "Sargydyňyzyň jemi azyndan 50 manat bolmaly",
          "newItems": 'Täze harytlar',
          "orderAgreeSubTitle": 'Sargyt eden Suwlaryňyz "BLOK" görnüşinde eltip berilýändir.',
          "orderAgreeTitle": 'Sargyt tassyklaň !',
          "orderDeleted": 'Pozuldy',
          "orderDeletedSubtitle": 'Harytlar Sebetden aýyryldy',
          "paymentMethod": "Töleg görnüşi",
          "sameProducts": 'Meňzeş harytlar',
          "search": "Gözleg",
          "trendingItems": "Meşhur harytlar",
          "userInfo": 'Ulanyjy maglumatlary :',
          "videos": 'Gysga wideolar',
          "shopByBrand": 'Brand boýunça söwda',
          "inOurHands": 'Elimizde bar harytlar',
          'price': "Bahasy :",
          "chooseTheColor": "Renk saýlaň : ",
          "chooseTheSize": "Razmer :",
          'order_status_wait': "Sargyt\nedilenler",
          'order_status_come': "Gelenler",
          'order_status_submission': "Tabşyrylanlar",
          'referal_Code': 'Referal Kod',
          'terms_and_conditions': 'Ulanyş şertleri we düzgünleri',
          'addAddress': 'Salgy goş',
          'address': 'Öý salgyňyz',
          'add': 'Goş',
          'deleteAddress': 'Salgylarym',
          'deleteAddressTitle': 'Siz hakykatdanda Salgylarymy pozmak isleýärsiňizmi ?',
          'referalKod': 'Referal kod',
          'referalKod1': 'Referal kodyňyz',
          'referalKodUsedUser': 'Kody ulanan ulanyjylar',
          'referalKodEarnedMoney': 'Jemi gazanç :',
          'copySuccesSubtitle': 'Göçürme ýerine ýetirildi',
          ////
          'imageDownloadSubtitle':'Surat ýüklendi',
          'imageDownloadTitle':'Ýüklendi',
          'read': 'Oka',
          'skip': 'Geç',
          'books': 'Kitaplar',
          'videos': 'Wideolar',
          'poets': 'Hudož',
          'poets1': 'Türkmen Halk Suratkeşleri',
          'usedBook':'Peýdalanylan kitaplar',
          'usedBook1':'Bu programmada şu kitaplar peýdalanyldy',
          'appColor':'Programma reňki',
          'appColor1':'Reňk saýlaň',
          'appColor2':'Reňk 1',
          'appColor3':'Reňk 2',
          'appColor4':'Reňk 3',
        },
        'ru': {
          
          'appColor2':'Цвет  1',
          'appColor3':'Цвет  2',
          'appColor4':'Цвет  3',
          'appColor':'Цвет программы',
          'appColor1':'Выберите цвет',
          'usedBook1':'В этой программе использовались следующие книги',

          'usedBook':'Подержанные книги',

          'books': 'Книги',
          'videos': 'Ролики',
          'poets': 'Художники',
          'poets1': 'Туркменские народные артисты',
          'aboutUs': 'О нас',
          'addCart': 'В корзину',
          'addCash': 'Перевод платежа',
          'added': 'Добавлено',
          'addedSubtitle': 'Добавлено в корзину',
          'addMoney': 'Заполнить хэш',
          'agree': 'Подтверждение',
          'alreadyExist': 'У нас уже есть данные. Проверьте свою информацию',
          'balance': 'Счет',
          'call': 'Звонить',
          'cart': 'Корзина',
          'cartEmpty': 'Ваша корзина пуста',
          'cartEmptySubtitle': 'Вы ничего не добавили в корзину.',
          'category': 'Категория',
          'categoryName1': 'Безалкогольный напиток',
          'categoryName2': 'Чистые воды',
          'categoryName3': 'Безалкогольный напиток',
          'categoryName4': 'Компот',
          'categoryName5': 'Минеральные воды',
          'categoryName6': 'Фруктовые соки',
          'categoryName7': 'Холодный чай',
          'categoryName8': 'Холодный кофе',
          'categoryName9': 'Витаминный энергетический напиток',
          'come': 'Пришел',
          'contactInformation': 'Связываться :',
          'copySucces': 'Подтвержденный',
          'countProducts': 'Товары : ',
          'createdAt': 'Дата публикации:',
          'data': 'Информация :',
          'data1': 'Название швейной машины :',
          'data2': 'Категория :',
          'data3': 'Количество просмотров :',
          'data4': 'Количество загрузок :',
          'data5': 'Дополнительная информация :',
          'deliveryFree': 'Уважаемые пользователи, мы доставляем товар по выбранному вами адресу "БЕСПЛАТНО" в назначенное время.',
          'description': "Описание",
          'download': 'Скачать',
          'downloaded': 'Мои загрузки',
          'downloadFiles': 'Загрузить',
          'emptyCart': 'Корзина пуста',
          'emptyCartSubtitle': 'Добавьте товары в корзину для заказа',
          'error': 'Произошла ошибка. Пожалуйста, попробуйте еще раз',
          'errorData': 'Ваши данные для входа неверны!',
          'errorEmpty': 'Текстовое поле не может быть пустым',
          'errorPassword': 'Пароль должен содержать не менее 6 символов',
          'errorPassword2': 'Ваш пароль неверен',
          'errorPhoneCount': 'Ваш номер телефона должен состоять из 8 цифр.',
          'favorites': 'Избранное',
          'fixMachine': 'Техническое обслуживание',
          'giveLike': 'Оцените нас на Play Market',
          'home': 'Главное',
          'juices': 'Фруктовые соки',
          'locations': 'Мои адреса',
          'log_out_title': 'Вы действительно хотите выйти из приложения?',
          'log_out': 'Выйти',
          'loginError': 'Войти',
          'loginError1': 'Войдите, чтобы выполнить услугу',
          'loginErrorSubtitle': 'Войдите, чтобы заказать',
          'loginErrorSubtitle1': 'Войдите, чтобы выполнить услугу',
          'machinePart': 'Уроки',
          'machines': 'Машины',
          'maxPrice': 'Дорогой',
          'message': 'Вы можете внести в программу не менее 50 TMT и более. \nЕсли вы хотите внести депозит, пожалуйста, свяжитесь с нами, нажав кнопку "Позвонить".',
          'minPrice': 'Дешевый',
          'money_error_subtitle': 'Пожалуйста, заполните свой аккаунт',
          'money_error_title': 'Недостаточно средств',
          'no': 'Нет',
          'noConnection1': 'Нет связи',
          'noConnection2': 'Невозможно подключиться к Интернету. Пожалуйста проверьте настройки Интернета и повторите попытку!',
          'noConnection3': 'Попробуйте снова',
          'noData': 'Не удалось загрузить данные. Повторите попытку.',
          'noData1': 'Временно нет информации!',
          'noFile': 'Файлов нет. Свяжитесь с нами',
          'noMoney': 'Нет денег',
          'noMoneySubtitle': 'У вас недостаточно денег для выполнения услуги',
          'note': 'Примечание',
          'notification': 'Уведомления',
          'notWork': 'Не работает',
          'notWorkSubtitle': 'Служба предупреждений не работает',
          'order': 'Заказ',
          'orderAdress': 'Ваш адрес доставки',
          'orderProducts': 'Разместить заказ',
          'orders': 'Мои заказы',
          'orderSubtitle': 'Ваш заказ поставлен в очередь на выполнение',
          'otp': 'Код из смс',
          'otpCheck': 'OTP подтверждение',
          'otpErrorSubtitle': 'Пожалуйста, проверьте ваш смс-код еще раз',
          'otpErrorTitle': 'Ошибка кода СМС',
          'otpSubtitle': 'Введите SMS-код, полученный на ваш телефон',
          'ourDeliveryService': 'Доставка и оплата',
          'phoneNumber': 'Ваш номер телефона',
          'priceProduct': 'Итоговая цена : ',
          'priceRange': 'Ценовой диапазон',
          'productAddToFav': 'Товары добавлены в избранное',
          'products': 'Товары',
          'profil': 'Пользователь',
          'questions': 'Вопросы ?',
          'questions': 'Вопросы ?',
          'select_language': 'Выберите язык',
          'selectCityTitle': 'Выберите провинцию',
          'selectDate': 'Выберите дату доставки',
          'selectDateTitle': 'Время доставки заказа :',
          'selectMachine': 'Выберите тип швейной машины',
          'settings': 'Настройки',
          'share': 'Поделитесь приложением',
          'shareUs': 'Поделитесь приложением',
          'signUp': 'Регистрация',
          'filter': 'Фильтр',
          'sort': 'Сортировать',
          'sortCreatedAtHighToLow': 'По дате добавления (сначала новые)',
          'sortCreatedAtLowToHigh': 'По дате добавления (сначала старые)',
          'sortDefault': 'По умолчанию',
          'sortPriceHighToLow': 'По цене (сначала дешевле)',
          'sortPriceLowToHigh': 'По цене (сначала дороже)',
          'sortViews': 'По количеству просмотров',
          'termsAndCondition': 'Правила и условия пользования',
          'transferUSB': 'Передача USB',
          'userName': 'Имя пользователя',
          'versia': 'Версия',
          'waiting': 'Ожидал',
          'yes': 'Да',
          "brandPP": "Бренд",
          "brands": 'Бренды',
          "callNumber": "Наши номера телефонов",
          "cash": "Денежные средства",
          "cashSubtitle": "Оплата наличными при получении заказа",
          "categoriesMini": 'Категории',
          "creditCart": "Кредитная карта",
          "creditCartSubtitle": "Расчет через платежный терминал при получении заказа",
          "deleteFavProduct": "Удалить мои избранные !",
          "deleteFavProductSubtitle": "Вы уверены, что хотите удалить избранное ?",
          "discountedItems": 'Товары со скидкой',
          "recomendedItems": 'Рекомендуемые продукты',
          "doYouWantToDeleteCart": 'Пустая корзина !',
          "doYouWantToDeleteCartSubtitle": 'Вы уверены, что хотите удалить корзину?',
          "hastags": "Хэштеги",
          "minSumCount": "К сожалению, сумма заказа должна быть не менее 50 манатов.",
          "newItems": 'Новые товары',
          "orderAgreeSubTitle": 'Заказанные Вами Воды поставляются в форме "БЛОК".',
          "orderAgreeTitle": 'Подтвердить заказ !',
          "orderDeleted": 'Удалено',
          "orderDeletedSubtitle": 'Заказы удалены из корзины',
          "paymentMethod": "Способ оплаты ",
          "sameProducts": 'Те же продукты',
          "search": "Найти в Injir",
          "trendingItems": "Популярные товары",
          "userInfo": 'Информация о пользователе :',
          "videos": 'Короткие видео',
          "shopByBrand": 'Поиск по бренду',
          "inOurHands": 'Товары в наших руках',
          'price': "Цена :",
          "chooseTheColor": "Выберите цвет : ",
          "chooseTheSize": "Размер :",
          'order_status_wait': "Заказанные товары",
          'order_status_come': "Прибытие",
          'order_status_submission': "Доставленный",
          'referal_Code': 'Промо-код',
          'terms_and_conditions': 'Условия и положения',
          'addAddress': 'Добавить адрес',
          'address': 'Ваш домашний адрес',
          'add': 'Добавлять',
          'deleteAddress': 'Мой адрес',
          'deleteAddressTitle': '  Вы уверены, что удалили все адреса в приложении ? ',
          'referalKodEarnedMoney': 'Общий доход :',
          'referalKodUsedUser': 'Пользователи, использующие код',
          'referalKod1': 'Ваш реферальный код',
          'referalKod': 'Промо-код',
          'copySuccesSubtitle': 'Перенос завершен',
        },
        'en': {
          'books': 'Books',
          'videos': 'Videos',
          'poets': 'Poets',
          'referalKodEarnedMoney': 'Total income :',
          'referalKodUsedUser': 'Who used your referal code',
          'referalKod1': 'Your referal code',
          'referalKod': 'Referal Code',
          'copySuccesSubtitle': 'Перенос завершен',
          'deleteAddress': 'My address',
          'deleteAddressTitle': 'Are you sure to delete all addresses in the App ?',
          'add': 'Add',
          'addAddress': 'Add address',
          'address': 'Home location',
          'price': "Price :",
          'aboutUs': 'About Us',
          'addCart': 'Add to Cart',
          'addCash': 'Transfer Payment',
          'added': 'Added',
          'addedSubtitle': 'Item added to cart',
          'addMoney': 'Add Account',
          'agree': 'Confirm',
          'alreadyExist': 'We already have the data. Check your information',
          'balance': 'Account',
          'call': 'Call',
          'cart': 'Cart',
          'cartEmpty': 'Your cart is empty',
          'cartEmptySubtitle': 'You have not added anything to your cart.',
          'category': 'Category',
          'categoryName1': 'Non Alcholic Soft drink',
          'categoryName2': 'Clean Waters',
          'categoryName3': 'Soft Drink',
          'categoryName4': 'Compote',
          'categoryName5': 'Mineral waters',
          'categoryName6': 'Fruit Juices',
          'categoryName7': 'Cold Tea',
          'categoryName8': 'Cold Coffee',
          'categoryName9': 'Vitamin Energy Drink',
          'come': "Delivered",
          'contactInformation': 'To contact: ',
          'copySuccess': 'Confirmed',
          'countProducts': 'Maps: ',
          'createdAt': 'Created At: ',
          'data': 'Information:',
          'data1': 'Machine name:',
          'data2': 'Category:',
          'data3': 'View count : ',
          'data4': 'Number of Downloads:',
          'data5': 'Additional Information:',
          'deliveryFree': 'Dear users, we deliver the goods to your chosen address "FREE" at the appointed times',
          'description': "Description",
          'download': 'Download',
          'downloaded': 'Downloaded',
          'downloadFiles': 'Download',
          'emptyCart': 'Cart is empty',
          'emptyCartSubtitle': 'Add items to your cart to checkout',
          'error': 'An error occurred, please try again',
          'errorData': 'Your login information is incorrect!',
          'errorEmpty': 'Text box cannot be empty',
          'errorPassword': 'Password must be at least 6 characters long',
          'errorPassword2': 'Your password is incorrect',
          'errorPhoneCount': 'Your phone number must be 8 digits long.',
          'favorites': 'My favorites',
          'fixMachine': 'Maintenance Service',
          'giveLike': 'Rate us on Play Market',
          'home': 'Home',
          'juices': 'Fruit Juices',
          'locations': 'Locations',
          'log_out_title': 'Are you sure you want to log out?',
          'log_out': 'Log out',
          'login': 'Log in',
          'loginError': 'Log in',
          'loginError1': 'Log in to run the service',
          'loginErrorSubtitle': 'Login to order',
          'loginErrorSubtitle1': 'Login to perform service',
          'machinePart': 'Parts',
          'machines': 'Machines',
          'maxPrice': 'Most expensive',
          'message': 'You can deposit at least 50 TMT and more in the program.\nIf you want to deposit, please contact us by clicking the "Call" button',
          'minPrice': 'Cheapest',
          'money_error_subtitle': 'Please top up your account',
          'money_error_title': 'Money not available',
          'no': 'No',
          'noConnection1': 'No connection',
          'noConnection2': 'Could not connect to the Internet. Please check your Internet settings and try again!',
          'noConnection3': 'Retry',
          'noData': 'Data not loaded, please try again',
          'noData1': 'Temporarily no data!',
          'noMoney': 'No Money',
          'noMoneySubtitle': 'You do not have enough money to perform the service',
          'note': 'Note',
          'notification': 'Notifications',
          'notWork': 'Not work',
          'notWorkSubtitle': 'Warning service not working',
          'order': 'Order',
          'orderAddress': 'Delivery Address',
          'orderProducts': 'Order',
          'orders': 'My orders',
          'orderSubtitle': 'Your order has been queued for execution',
          'otp': 'Sms Code',
          'otpCheck': 'Otp Verification',
          'otpErrorSubtitle': 'Please check your sms code again',
          'otpErrorTitle': 'SMS code error',
          'otpSubtitle': 'Enter the SMS code received on your phone number',
          'otpTitle': 'A code has been sent via SMS to the number you entered.',
          'ourDeliveryService': 'Delivery and Payment',
          'phoneNumber': 'Your phone number',
          'priceProduct': 'Total Price: ',
          'priceRange': 'Price Range',
          'products': 'Products',
          'profile': 'User',
          'questions': 'Frequently Asked Questions?',
          'questions': 'Frequently Asked Questions?',
          'select_language': 'Select a language',
          'selectCityTitle': 'Select City',
          'selectDate': 'Select a delivery date',
          'selectDateTitle': 'Order delivery time :',
          'selectMachine': 'Select sewing machine type',
          'settings': 'Settings',
          'share': 'Share the app',
          'shareUs': 'Share the app',
          'signIn1': 'Your Surname',
          'signIn2': 'Your Name',
          'signInDialog': 'Please fill in the user information completely and correctly to sign in to the device',
          'signUp': 'Sign Up',
          'filter': 'Filter',
          'sort': 'Sort',
          'sortCreatedAtHighToLow': 'By Date (newest first)',
          'sortCreatedAtLowToHigh': 'By Date (oldest first)',
          'sortDefault': 'Default',
          'sortPriceHighToLow': 'By Price (Lowest First)',
          'sortPriceLowToHigh': 'By Price (initial values)',
          'sortViews': 'By view count',
          'transferUSB': 'Transfer USB',
          'userName': 'Username',
          'versia': 'Version',
          'waiting': 'Waiting',
          'yes': 'Yes',
          'z': 'View Count:',
          "brandPP": "Brand",
          "brands": 'Brands',
          "callNumber": "Phone Numbers",
          "cash": "Cash",
          "cashSubtitle": "Payment in cash when you receive the order",
          "categoriesMini": 'Categories',
          "creditCart": "Credit Card",
          "creditCartSubtitle": "Settlement through the payment terminal when you receive the order",
          "deleteFavProduct": "Delete my favorites !",
          "deleteFavProductSubtitle": "Are you sure you want to delete favorites ?",
          "discountedItems": 'Discounted Items',
          "recomendedItems": 'Recommended Products',
          "doYouWantToDeleteCart": 'Empty cart !',
          "doYouWantToDeleteCartSubtitle": 'Are you sure you want to delete the cart?',
          "hastags": "Hashtags",
          "minSumCount": "Sorry, your order must be at least 50 TMT in total.",
          "newItems": 'New Items',
          "orderAgreeSubTitle": 'The Waters you ordered are delivered in "BLOCK" form.',
          "orderAgreeTitle": 'Confirm Order !',
          "orderDeleted": 'Deleted',
          "orderDeletedSubtitle": 'Orders Deleted from Cart',
          "paymentMethod": "Payment Method",
          "sameProducts": 'Same Products',
          "search": "Search",
          "trendingItems": "Trending Items",
          "userInfo": 'User Info :',
          "videos": 'Short Videos',
          "shopByBrand": 'Shop By Brand',
          "inOurHands": 'Goods in Our Hands',
          "chooseTheColor": "Choose the Color :",
          "chooseTheSize": "Choose the Size : ",
          'order_status_wait': "Ordered items",
          'order_status_come': "Arrivals",
          'order_status_submission': "Submissions",
          'referal_Code': 'Referral code',
          'terms_and_conditions': 'Terms and Conditions',
        },
      };
}
