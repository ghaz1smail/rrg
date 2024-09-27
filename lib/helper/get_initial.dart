import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rrg/app/app_assets.dart';
import 'package:rrg/app/app_data.dart';
import 'package:rrg/app/app_theme.dart';
import 'package:rrg/controller/auth_controller.dart';
import 'package:rrg/helper/custom_formats.dart';
import 'package:rrg/helper/custom_ui.dart';
import 'package:rrg/helper/firebase_options.dart';

class GetInitial {
  initialApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    Get.put(AuthController());
    // Get.put(UserController());
    // Get.put(AdminController());
    await GetStorage.init();
  }
}

FirebaseAuth firebaseAuth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseStorage firebaseStorage = FirebaseStorage.instance;
AppData appData = AppData();
AppAssets appAssets = AppAssets();
AppTheme appTheme = AppTheme();
GetStorage getStorage = GetStorage();
CustomUi customUi = CustomUi();
CustomFormats customFormats = CustomFormats();
AuthController authController = Get.find<AuthController>();
// UserController userController = Get.find<UserController>();
// AdminController adminController = Get.find<AdminController>();

Color colorCompute(color) {
  return Color(int.parse(color.toString())).computeLuminance() > 0.5
      ? Colors.black
      : Colors.white;
}
