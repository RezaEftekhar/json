class TodosEntity {
  final int? userId;
  final int? id;
  final String? title;
  final bool? completed;

  TodosEntity(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});
}
