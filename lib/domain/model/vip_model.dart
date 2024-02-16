class VipModel {
  final String image; //الصوره
  final String level; //المستوى
  final String priceUnit; // ثمن الوحده
  final String dailyTasks; //مهمات اليوميه
  final String cost; //التكلفه الاجماليه
  final String textButton; // نص الزر
  final String identity; //الهويه
  final bool button;

  VipModel(
      {required this.button,
      required this.image,
      required this.level,
      required this.priceUnit,
      required this.dailyTasks,
      required this.cost,
      required this.textButton,
      required this.identity});
}
