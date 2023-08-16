import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ko', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? koText = '',
    String? enText = '',
  }) =>
      [koText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // splashLottie
  {
    'dtfjmuzf': {
      'ko': 'Routes',
      'en': 'Routes',
    },
    'cp6d2mx9': {
      'ko': 'Go To Splash Lottie',
      'en': 'Go To Splash Lottie',
    },
    'nurm4vsr': {
      'ko': 'Go To Splash Gif',
      'en': 'Go To Splash Gif',
    },
    'dvvauauh': {
      'ko': 'Home12',
      'en': 'Home12',
    },
    'gqwuvuum': {
      'ko': '2',
      'en': '2',
    },
    'vqa4iqp8': {
      'ko': '3',
      'en': '3',
    },
    'rhft75y3': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // LoginPage
  {
    '26gw4irh': {
      'ko': '카본 트립에 오신것을 환영합니다',
      'en': 'Welcome to Carbon Trip',
    },
    't99u4try': {
      'ko': 'Hello World',
      'en': '',
    },
    'lsfjqd3n': {
      'ko': 'Hello World',
      'en': '',
    },
    '833t7969': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // splashGif
  {
    'ys9rti2l': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // Home12Activity
  {
    'wz1z6k25': {
      'ko': 'Activity',
      'en': 'Activity',
    },
    '1km16g0q': {
      'ko': 'All Activity from this past month.',
      'en': 'All Activity from this past month.',
    },
    'j94p0lhp': {
      'ko': 'Beginning of Activity',
      'en': 'Beginning of Activity',
    },
    '9504fm1o': {
      'ko': 'Page Title',
      'en': 'Page Title',
    },
    'vg6do1tl': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // splashLottieCopy
  {
    '2p0av76q': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // Profile17OtherUser
  {
    't65jcioy': {
      'ko': 'Andres Freddies',
      'en': 'Andres Freddies',
    },
    'gx20tkps': {
      'ko': 'Product Designer',
      'en': 'Product Designer',
    },
    'xh84xmtl': {
      'ko': '@andresfreddies',
      'en': '@andresfreddies',
    },
    'b1fnawps': {
      'ko': 'Recent Work',
      'en': 'Recent work',
    },
    'cwlffdr5': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // Profile08
  {
    'd829ph7w': {
      'ko': 'David Jerome',
      'en': 'David Jerome',
    },
    'o8ty6n14': {
      'ko': 'David.j@gmail.com',
      'en': 'David.j@gmail.com',
    },
    'e46440x1': {
      'ko': 'Passenger Documents',
      'en': 'Passenger Documents',
    },
    'h82ziud7': {
      'ko': 'Tracker Notifications',
      'en': 'Tracker Notifications',
    },
    'wgnwpmau': {
      'ko': 'Help Center',
      'en': 'Help Center',
    },
    'd97vln6t': {
      'ko': 'Settings',
      'en': 'Settings',
    },
    '2u311upm': {
      'ko': 'Phone Number',
      'en': 'Phone Number',
    },
    '94j3odc2': {
      'ko': 'Add Number',
      'en': 'Add Number',
    },
    '2pcqntbl': {
      'ko': 'Language',
      'en': 'Language',
    },
    '5cr24x7l': {
      'ko': 'English (eng)',
      'en': 'English (English)',
    },
    'i1ey4obk': {
      'ko': 'Currency',
      'en': 'Currency',
    },
    'b2sg3jvm': {
      'ko': 'US Dollar (\$)',
      'en': 'US Dollar (\$)',
    },
    'mrxa7dal': {
      'ko': 'Profile Settings',
      'en': 'Profile Settings',
    },
    '6f2vdwd5': {
      'ko': 'Edit Profile',
      'en': 'Edit Profile',
    },
    'fyop93fs': {
      'ko': 'Notification Settings',
      'en': 'Notification Settings',
    },
    'gunbfco1': {
      'ko': 'Log out of account',
      'en': 'Log out of account',
    },
    'ywubcjd5': {
      'ko': 'Log Out?',
      'en': 'Log Out?',
    },
    'imfc5bmw': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // nickname
  {
    'y20xppg2': {
      'ko': '닉네임을\n입력해주세요',
      'en': 'nickname\nPlease enter',
    },
    '44hnqlhe': {
      'ko': 'Label here...',
      'en': '',
    },
    'q4w5nhju': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // welcome
  {
    'h2zganhh': {
      'ko': '귤향과즐님 가입을 축하합니다!',
      'en': 'Congratulations on joining Tangerine Fragrance!',
    },
    'k58e752r': {
      'ko': '(필수) 서비스 이용 약관',
      'en': '(Required) Terms of Service',
    },
    'ypck6xbg': {
      'ko': 'Home',
      'en': '',
    },
  },
  // stepper
  {
    '1n9uzvno': {
      'ko': 'Sales',
      'en': 'Sales',
    },
    'kxbizjvv': {
      'ko': 'Total Sales Today',
      'en': 'Total Sales Today',
    },
    '9zptalqw': {
      'ko': '\$500.20',
      'en': '\$500.20',
    },
    'e6h64ivo': {
      'ko': '55%',
      'en': '55%',
    },
  },
  // stepperCopy
  {
    'q79k102f': {
      'ko': 'Sales',
      'en': 'Sales',
    },
    'tfnsydqh': {
      'ko': 'Total Sales Today',
      'en': 'Total Sales Today',
    },
    'xkykil7w': {
      'ko': '\$500.20',
      'en': '\$500.20',
    },
    '53flqb0a': {
      'ko': '55%',
      'en': '55%',
    },
  },
  // BottomLogin
  {
    '4s68zful': {
      'ko': '로그인하기 어려우신가요?',
      'en': 'Having trouble logging in?',
    },
    'qn3hvxy7': {
      'ko': '소셜 서비스로 로그인 했었는데 지금은 안돼요',
      'en': 'I logged in with a social service, but now I can\'t',
    },
    'wjy2qqmn': {
      'ko':
          '로그인했던 소셜 서비스의 계정을 아예 삭제했거나, 비밀번호를\n변경하신 경우, 해당 소셜 서비스에서 직접 확인한 후에 다시\n로그인이 가능합니다.',
      'en':
          'Deleted the account of the social service you logged in from, or changed the password\nIf you have changed it, check it yourself on the social service and try again.\nYou can log in.',
    },
    'tebrdnv5': {
      'ko': '구글 계정으로 로그인 하려는데 절차가 복잡해요',
      'en':
          'I\'m trying to log in with my Google account, but the process is complicated.',
    },
    'rzn742f0': {
      'ko':
          'Google workspace 계정으로 로그인을 시도한 경우, Google\ndevice policy 앱 다운로드 및 해당 앱 로그인 후 서비스 이용이\n가능합니다. 구글 개인 계정 로그인의 경우는 해당 절차를 밟지\n않으니, 개인 계정 로그인을 권장 드립니다.',
      'en':
          'If you try to log in with your Google workspace account, Google\nAfter downloading the device policy app and logging in to the app, you can use the service\nit\'s possible. In the case of Google personal account login, do not follow the procedure.\nIf not, we recommend that you log in to your personal account.',
    },
  },
  // BottomLoginTC
  {
    '89yvdd88': {
      'ko': '확인',
      'en': 'check',
    },
  },
  // Miscellaneous
  {
    'cqh3zrms': {
      'ko': '',
      'en': '',
    },
    'zgw1h88v': {
      'ko': '',
      'en': '',
    },
    'ajatfja5': {
      'ko': '',
      'en': '',
    },
    'p0h27np5': {
      'ko': '',
      'en': '',
    },
    'oser1ez5': {
      'ko': '',
      'en': '',
    },
    'l03lbsj9': {
      'ko': '',
      'en': '',
    },
    'pmtbsl43': {
      'ko': '',
      'en': '',
    },
    '7s1niji1': {
      'ko': '',
      'en': '',
    },
    'ggzfozt6': {
      'ko': '',
      'en': '',
    },
    'zh9je571': {
      'ko': '',
      'en': '',
    },
    'm6jb11j3': {
      'ko': '',
      'en': '',
    },
    'd7g828lb': {
      'ko': '',
      'en': '',
    },
    'pdosqa2u': {
      'ko': '',
      'en': '',
    },
    'qcj0yio2': {
      'ko': '',
      'en': '',
    },
    '5acl8ibk': {
      'ko': '',
      'en': '',
    },
    '7n6anfyu': {
      'ko': '',
      'en': '',
    },
    'y9v1knv4': {
      'ko': '',
      'en': '',
    },
    '7p4z8rog': {
      'ko': '',
      'en': '',
    },
    'i7uvc93j': {
      'ko': '',
      'en': '',
    },
    'ham7wbpa': {
      'ko': '',
      'en': '',
    },
    '3zn2l2ao': {
      'ko': '',
      'en': '',
    },
    'ib0f02oq': {
      'ko': '',
      'en': '',
    },
    'gg1linrw': {
      'ko': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
