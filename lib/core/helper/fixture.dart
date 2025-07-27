import 'dart:io';

String fixture(String name) => File('lib/core/jsons/$name.json').readAsStringSync();
