import 'package:hive/hive.dart';

part 'contacts.g.dart';

@HiveType(typeId: 0)
class Contact extends HiveObject {
  @HiveField(0)
  late String name;
  @HiveField(1)
  late String image;
  @HiveField(2)
  late String email;
  @HiveField(3)  
  late String phone;
  @HiveField(4)
  late DateTime createdDate;
}
