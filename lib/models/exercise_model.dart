class ExerciseModel {
  final int id;
  final String exerciseName;
  final String exerciseImgUrl;
  final int noOfMin;
  final bool isCompleted;

  ExerciseModel({
    required this.id,
    required this.exerciseName,
    required this.exerciseImgUrl,
    required this.noOfMin,
    required this.isCompleted,
  });
}
