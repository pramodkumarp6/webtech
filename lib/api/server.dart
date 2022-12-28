// ignore_for_file: file_names, avoid_print

import 'AppUrl.dart';
import 'package:http/http.dart' as http;

Future<String> userRequestServer() async {
  final response = await http.get(Uri.parse(AppUrl.baseurl));

  try{
    
  }
  
}
