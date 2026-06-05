import 'package:cli/cli.dart' as cli;

// Getters and setters are methods used to control access to an object's properties (fields)

void main() {
//   var person = Person();
// person.name = 'Shelter';


// print(person.surname); // Output: 0

// print(person.name);

var person = Person();
print(person.fullName); // Output: "SHELTER SIBANDA"

var obj = BankAccount();
obj.balance = -1000; // Using the setter to set the balance
print(obj.balance); // Using the getter to retrieve the balance

var user = User("John Doe");
print(user.fullName);

Location location = Location();
location.address = " 123 Main Street ";
print(location.address); // Output: "123 Main Street"

var student = Student();

student.name = "Jacob"; // Setting the name using the setter
print(student.name); // Getting the name using the getter

}

class Person{
  String firstName = 'Shelter';
  String lastName = 'Sibanda';

  String get fullName {

String fullName = '$firstName $lastName';

print('Accessing full name');

    return fullName.toUpperCase();
  }

}

class BankAccount{
  double _balance = 0;

  double get balance => _balance;

// balance cannot be negative or less than 0
  set balance(double amount){
    if (amount >= 0){
      _balance = amount;
    } 
  }
}

class User{
  String name;

  User(this.name);

  String get fullName => name.toUpperCase();
}

class Location{
  String _address = "";

  set address(String value){
    _address = value.trim();
  }
  String get address => _address;
}


class Student{
  String _name = "";

  set name(String value){
    _name = value;
  }

  String get name => _name;
}