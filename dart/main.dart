class Person {
  String name = 'Wojtek';
  int age = 26;

  void greet() {
    print('Hi, I\'m ' + name + ' and I\'m ' + age.toString() + 'years old');
  }

  Person.veryOld(this.name) {
    age = 60;
  }
}

class Animal {
  String race;
  String gender;
  int age;

// Curly braces makes arguments optional
  // Animal({String inputRace, String inputGender, int age}) {
  //   race = inputRace;
  //   gender = inputGender;
  //   this.age = age;
  // }

  Animal(this.race, this.gender, this.age);
}

double addNumbers(int x, double y) {
  return x + y;
}

void main() {
  print('Hello world!');

// Types and functions
  double sum = addNumbers(2, 3.1);
  print(sum);

  var sum2 = addNumbers(2, 1.11);
  print(sum2 + 1);

// Classes
  var p1 = Person.veryOld('Wojtek');
  p1.greet();
  p1.name = 'Andrew';
  p1.age = 34;
  p1.greet();

  // var a1 = Animal(inputRace: 'Cat', inputGender: 'Female', age: 12);

  var a1 = Animal('Cat', 'Female', 12);
  print(a1.race);

  // if-else

  var isLoggedIn = false;
  var userName = 'Wojtek';
  var password = 'test';
  var age = 26;
  var hasCorrectCredentials = userName == 'Wojtek' && password == 'test';

  if (userName == 'Wojtek' && password == 'test' || age > 20) {
    print('Logged in');
  } else if (isLoggedIn) {
    print('Overruled!');
  } else {
    print('Failed');
  }

  // null
  var userName = null;

  // userName = 20 // cant assign to variable of type null
  if (userName != null) {
    print('Username exists');
  }
}
