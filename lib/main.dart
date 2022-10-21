import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_ddd_bloc/firebase_options.dart';
import 'package:flutter_firebase_ddd_bloc/injection.dart';
import 'package:flutter_firebase_ddd_bloc/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}
