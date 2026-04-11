import 'package:get/get.dart';
import 'package:shop/viewmodals/user.dart';

class UserController extends GetxController {
  var user = UserInfo.fromJSON({}).obs;
  void updateUserInfo(UserInfo newUser) {
    user.value = newUser;
  }
}
