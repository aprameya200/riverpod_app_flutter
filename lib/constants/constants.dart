
//network constants
import 'dart:ui';

import 'package:flutter/services.dart';

String port = "3100";
String endpoint = "http://192.168.28.92:$port";


void changeSystemNavigationColor(Color color){
  SystemUiOverlayStyle(systemNavigationBarColor: color);
}
