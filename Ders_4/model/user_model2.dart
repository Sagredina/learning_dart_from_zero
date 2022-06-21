class User2 {
  late String name;
  late int money;
  late int? age;
  late String? city;

  late final String userCode;

  User2(this.name, this.money, this.age, this.city) {
  userCode = (city ?? "istanbul") + name;
}
}