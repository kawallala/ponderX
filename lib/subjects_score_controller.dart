import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubjectsScoreController extends GetxController {
  final title = "PonderX".obs;
  // Scores
  final languageScore = 0.obs;
  final mathematicsScore = 0.obs;
  final scienceScore = 0.obs;
  final historyScore = 0.obs;

  // Controllers
  final languageScoreEditingController = TextEditingController(text: '0');
  final mathematicsScoreEditingController = TextEditingController(text: '0');
  final scienceScoreEditingController = TextEditingController(text: '0');
  final historyScoreEditingController = TextEditingController(text: '0');

  updateScores() {
    languageScore(int.parse(languageScoreEditingController.text));
    mathematicsScore(int.parse(mathematicsScoreEditingController.text));
    scienceScore(int.parse(scienceScoreEditingController.text));
    historyScore(int.parse(historyScoreEditingController.text));
  }
// final storeName = "bepis".obs;
// final followerCount = 0.obs;
// final storeStatus = true.obs;
// final followerList = [].obs;
// final reviews = <StoreReviews> [].obs;
// final storeNameEditingController  = TextEditingController();
// final reviewEditingController = TextEditingController();
// final followerController = TextEditingController();
// final reviewNameController = TextEditingController();
//
// updateStoreName(String name) {
//   storeName(name);
// }
//
// updateFollowerCount() {
//   followerCount(followerCount.value + 1);
// }
//
// void storeStatusOpen(bool isOpen) {
//   storeStatus(isOpen);
// }
}
