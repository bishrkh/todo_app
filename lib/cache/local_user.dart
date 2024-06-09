import 'package:todo_app/cache/cache_helper.dart';
import 'package:todo_app/core/api/end_points.dart';
import 'package:todo_app/features/auth/data/models/user_model.dart';

class LocalUser {
  static Future<void> saveUser(User user) async {
    id = user.id.toString();
    token = user.token;
    userName = user.username;
    email = user.email;
    firstName = user.firstName;
    lastName = user.lastName;
    gender = user.gender;
    image = user.image;
    await CacheHelper().saveData(key: Apikeys.id, value: user.id);
    await CacheHelper().saveData(key: Apikeys.token, value: user.token);
    await CacheHelper().saveData(key: Apikeys.username, value: user.username);
    await CacheHelper().saveData(key: Apikeys.email, value: user.email);
    await CacheHelper().saveData(key: Apikeys.firstName, value: user.firstName);
    await CacheHelper().saveData(key: Apikeys.lastName, value: user.lastName);
    await CacheHelper().saveData(key: Apikeys.gender, value: user.gender);
    await CacheHelper().saveData(key: Apikeys.image, value: user.image);
  }

  static String? id = CacheHelper().getData(key: Apikeys.id);
  static String? token = CacheHelper().getData(key: Apikeys.token);
  static String? userName = CacheHelper().getData(key: Apikeys.username);
  static String? email = CacheHelper().getData(key: Apikeys.email);
  static String? firstName = CacheHelper().getData(key: Apikeys.firstName);
  static String? lastName = CacheHelper().getData(key: Apikeys.lastName);
  static String? gender = CacheHelper().getData(key: Apikeys.gender);
  static String? image = CacheHelper().getData(key: Apikeys.image);
}
