import 'dart:convert';
import 'package:crypto/crypto.dart';

abstract final class EncryptionUtils {
  EncryptionUtils._();

  static List<int> generateEncryptionKeyFromSecretKey(String password) {
    return sha256.convert(utf8.encode(password)).bytes;
  }
}
