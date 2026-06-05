import 'package:cli/cli.dart' as cli;

void main(){
  User user = User(name: "Alice", location: "Raumaraispark");
  print(user.greet());
}

class User {
    
    String name;
    String location;
    
    // User(this.name, this.location);
    User({
      required this.name,
      required this.location,
    });

String greet() {
    return "Hello, my name is $name and I am from $location.";
  }
}