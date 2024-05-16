
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

// To remove all html tags in string
String removeHtmlTags(String htmlString) {
  // Define a regular expression to match HTML tags
  RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

  // Replace HTML tags with an empty string
  return htmlString.replaceAll(exp, '');
}

Size getDeviceSize(context) {
  return MediaQuery.of(context).size;
}

Future<bool> checkInternetConnection() async {
   var connectivityResult = await Connectivity().checkConnectivity();
  if (connectivityResult.contains(ConnectivityResult.none)) {
    return false; // No internet connection
  } else {
    return true; // Internet connection is available
  }
}
