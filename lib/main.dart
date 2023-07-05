import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/media_query.dart';

void main() {
  // untuk set app hanya bisa menghadap ke atas
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]);

  runApp(MediaQueryApp());
}
