import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseNote {
  final int id;
  final int text;
  final bool isOwner;

  DatabaseNote({
    required this.id,
    required this.text,
    required this.isOwner,
  });
}
