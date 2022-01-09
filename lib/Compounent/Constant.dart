import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const Color kDefaultColor = Color.fromRGBO(18, 140, 126, 1);

TextStyle kHintStyle() {
  return const TextStyle(
    color: Colors.grey,
  );
}

TextStyle kMainStyle() {
  return const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
}

TextStyle kStatusUpdatesStyle() {
  return const TextStyle(
    fontSize: 15,
    color: Colors.grey,
    fontWeight: FontWeight.w600,
  );
}
