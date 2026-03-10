import 'package:flutter_dotenv/flutter_dotenv.dart';

class LocalConstant {
  static final String accessTokenKey = dotenv.env['accessTokenKey']!;
}
