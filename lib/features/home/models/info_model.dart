import 'package:mbs/config/config.dart';

class InfoModel {
  final String title;
  final String? description;
  final List<String>? points;
  final String image;

  InfoModel({
    required this.title,
    required this.image,
    this.description,
    this.points,
  });

  static List<InfoModel> get demoList {
    return [
      InfoModel(
        title: "The secret to mind blowings mornings!",
        description:
            "Start the day with engaging your body physically, mentally and spiritually.",
        image: AssetPath.girlYoga,
      ),
      InfoModel(
        title: "Warm-up your bosy within an hour",
        points: [
          "Dynamic warm ups",
          "Spirited Yoga asanas",
          "Effective physical exercises",
          "Whole body engaging movements",
        ],
        image: AssetPath.girlWarmUp,
      ),
      InfoModel(
        title: "We are invested in your success!",
        description:
            "We prioritise your well-being and promise to provide you with a healthy lifestyle and empower you with a successful morning routine",
        image: AssetPath.boy,
      ),
    ];
  }
}
