class QuestionCardModel {
  final String title, description;
  final void Function() onTap;

  QuestionCardModel(
      {required this.title, required this.description, required this.onTap});
}
