import 'package:flutter/material.dart';

extension ContextUtil on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  ThemeData get theme => Theme.of(this);
  bool get isDarkMode => theme.brightness == Brightness.dark;
  Size get screenSize => mediaQuery.size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  EdgeInsets get padding => mediaQuery.padding;
  EdgeInsets get viewInsets => mediaQuery.viewInsets;
  double get statusBarHeight => padding.top;
  double get bottomBarHeight => padding.bottom;
  double get keyboardHeight => viewInsets.bottom;
}