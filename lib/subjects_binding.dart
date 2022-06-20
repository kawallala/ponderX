import 'package:get/get.dart';
import 'package:ponder_x/subjects_score_controller.dart';

class SubjectsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubjectsScoreController());
  }
// default dependencies
}
