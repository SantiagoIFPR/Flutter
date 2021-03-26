import 'package:flutter/material.dart';
import 'package:produtos_crud/app/injection.dart';

import 'app/my_app.dart';

void main() {
  setupInjection();
  runApp(MyApp());
}