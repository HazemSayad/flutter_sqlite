import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

const idColumn = 'id';
const textColumn = 'text';
const isOwnerColumn = 'is_owner';

class DatabaseNote {
  final int id;
  final String text;
  final bool isOwner;

  DatabaseNote({
    required this.id,
    required this.text,
    required this.isOwner,
  });

  DatabaseNote.fromRow(Map<String, Object?> map)
      : id = map[idColumn] as int,
        text = map[textColumn] as String,
        isOwner = (map[isOwnerColumn] as int) == 1 ? true : false;
}
