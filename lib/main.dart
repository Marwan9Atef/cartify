import 'package:cartify/cartify.dart';
import 'package:cartify/core/di/service_locator.dart';
import 'package:cartify/core/init/dot_env_init.dart';
import 'package:cartify/core/init/observer_init.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenvInit();
  await configureDependencies();
  observerInit();
  runApp(const Cartify());
}
