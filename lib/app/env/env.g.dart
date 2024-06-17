// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _Env {
  static const List<int> _enviedkeysecretKey = <int>[
    3706252654,
    2960400860,
    537033295,
    76347113,
    1153245479,
    337130774,
    590495643,
    4070997015,
    2909385965,
    3282655029,
  ];

  static const List<int> _envieddatasecretKey = <int>[
    3706252602,
    2960400869,
    537033269,
    76347051,
    1153245550,
    337130784,
    590495698,
    4070997107,
    2909385877,
    3282655090,
  ];

  static final String secretKey = String.fromCharCodes(List<int>.generate(
    _envieddatasecretKey.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatasecretKey[i] ^ _enviedkeysecretKey[i]));
}
