class User {
  String? name;
  String? email;
  String? password;
  String? phoneNumber;
  usersignUp(String n, String e, String p, String pn) {
    name = n;
    email = e;
    password = p;
    phoneNumber = pn;
  }

  userlogIn(String n, String p) {
    name = n;
    password = p;
    
  }
}
