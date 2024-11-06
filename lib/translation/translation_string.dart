import 'package:get/get.dart';

class TranslationString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "home": "Home",
          "get_post": "Get Post",
          "wallet": "Wallet",
          "statistics": "Statistics",
          "profile": "Profile"
        },
        "hi_IN": {
          "home": "होम",
          "get_post": "पोस्ट प्राप्त करें",
          "wallet": "बटुआ",
          "statistics": "आंकड़े",
          "profile": "प्रोफ़ाइल"
        }
      };
}
