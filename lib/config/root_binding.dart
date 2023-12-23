import 'package:airweconnect/controller/get_help_controller.dart';
import 'package:airweconnect/controller/splace_controller.dart';
import 'package:get/get.dart';

class RootBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(GetHelpController());
  }
}