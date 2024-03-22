import 'package:mbs/config/config.dart';

class SuccessModel {
  final String iconPath;
  final String label;
  final String value;

  SuccessModel({
    required this.iconPath,
    required this.label,
    required this.value,
  });

  static List<SuccessModel?> get demo {
    return [
      SuccessModel(
        iconPath: AssetPath.iconInstructor,
        label: "Qualified instructors",
        value: "1",
      ),
      null,
      SuccessModel(
        iconPath: AssetPath.iconEnrolled,
        label: "Enrolled Members",
        value: "20",
      ),
      null,
      SuccessModel(
        iconPath: AssetPath.iconSession,
        label: "Session",
        value: "5",
      ),
      null,
      SuccessModel(
        iconPath: AssetPath.iconSmily,
        label: "Happy customers",
        value: "14",
      ),
    ];
  }
}
