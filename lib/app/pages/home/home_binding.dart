import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:github_users/app/data/providers/user_provider.dart';
import 'package:github_users/app/data/repositories/user_repository.dart';
import 'package:github_users/app/pages/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(
        userRepository: UserRepository(
          userProvider: UserProvider(
            dio: Dio(),
          ),
        ),
      ),
    );
  }
}
