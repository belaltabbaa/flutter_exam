import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

setup() async {
  sl.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );
}
