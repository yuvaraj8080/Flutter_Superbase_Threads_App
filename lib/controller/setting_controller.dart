import 'package:get/get.dart';
import 'package:threads_clone/routes/route_names.dart';
import 'package:threads_clone/services/supabase_service.dart';
import 'package:threads_clone/utils/storage/storage.dart';
import 'package:threads_clone/utils/storage/storage_key.dart';

class SettingController extends GetxController {

  //// THIS IS THE LOGOUT METHOD ////

  void logout() async {

    //// REMOVE USER SESSION FROM LOCAL STORAGE ////
    Storage.session.remove(StorageKey.session);
    SupabaseService.client.auth.signOut();

    Get.offAllNamed(RouteNames.login);

  }
}
