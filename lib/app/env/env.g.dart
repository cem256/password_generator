// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _Env {
  static const List<int> _enviedkeysecretKey = <int>[
    191716881,
    3187697979,
    252074081,
    541431634,
    2788467388,
    2347255634,
    1362584228,
    3141790872,
    764085016,
    89399988,
  ];

  static const List<int> _envieddatasecretKey = <int>[
    191716933,
    3187697922,
    252074011,
    541431568,
    2788467445,
    2347255652,
    1362584301,
    3141790972,
    764085088,
    89400051,
  ];

  static final String secretKey = String.fromCharCodes(List<int>.generate(
    _envieddatasecretKey.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatasecretKey[i] ^ _enviedkeysecretKey[i]));
}
