import 'package:flutter/material.dart';
import 'package:rrg/helper/get_initial.dart';
import 'package:rrg/helper/my_app.dart';

Future<void> main() async {
  await GetInitial().initialApp();
  runApp(const MyApp());
}
