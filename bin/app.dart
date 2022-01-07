void main(List<String> args) {
  List<Person> persons = [
    Person('Administrator', 32),
    Person('User', 52),
    Person('Administrator', 20),
    Person('Merchant', 52),
    Person('Administrator', 23),
    Person('User', 22),
    Person('Merchant', 22),
    Person('User', 12),
    Person('Merchant', 15),
  ];

  //  =====
  //  this is the sorting of ages, from smallest to largest (ascending int)
  //  persons.sort((p1, p2) => p2.age! - p1.age!);
  //  =====
  //  this is the sorting of role, from smallest to largest (ascending String)
  //  persons.sort((p1, p2) => p1.role!.compareTo(p2.role!));
  //  =====
  //  this is a list in order of role and age,
  //  smallest to largest from role Merchant first
  persons.sort((p1, p2) {
    if (p1.roleWeight! - p2.roleWeight! != 0) {
      return p1.roleWeight! - p2.roleWeight!;
    } else {
      return p1.age!.compareTo(p2.age!);
    }
  });

  persons.forEach((e) {
    print(e.role.toString() + '-' + e.age.toString());
  });
}

class Person {
  final String? role;
  final int? age;

  Person(this.role, this.age);

  int? get roleWeight {
    switch (role) {
      case 'Merchant':
        return 1;
        break;
      case 'Administrator':
        return 2;
        break;
      default:
        return 3;
    }
  }
}
