import 'dart:io';

fixture(String name) => File('lib/core/jsons/$name.json').readAsStringSync();
