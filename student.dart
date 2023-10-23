 import 'dart:io';

 class Student{
      String? name;
     int? admNo;
     String? emailAddress;
     int? age;
      String? phoneNumber;
      String? course;
      String? highSchoolName;
    Student.mastersStudent(String n,int a,String  e){
     this.name = n;
      this.admNo = a;
      this.emailAddress = e;
    }
   Student.dipStudent(String n, int g,String p,String c,String h,){
      this.name = n;
       this.age = g;
       this.phoneNumber = p;
      this.course = c;
       this.highSchoolName = h; 
    }
    Student.degreeStudent(String n,int a, int g, String p,String c,){
      this.name = n;
       this.admNo = a;
       this.age=g;
       this.phoneNumber = p;
       this.course = c; 
    }
  void printmastersStudentsdetails(){
      print('student information');
      print('Name:$name' '\n''Admission.No:$admNo''\n''EmailAddress:$emailAddress');
    }
    String? getName()=>name;
    int? getAdmNo(){//same as using the return function.
    return admNo;
   }
   String? getEmailAddress(){
     return emailAddress;
    }
   int? getAge(){
    return age;
    }
   String? getPhoneNumber(){
    return phoneNumber;
   }
    String? getCourse(){
     return course;
    }
    String? gethighschoolname(){
     return highSchoolName;
    }
    void setName(String n){
     name =n;
    }
    void setAdmNo(int a){
    admNo =a;
    }
   void setEmailAddress(String e){
    emailAddress = e;
    }
    void setAge(int g){
     age = g;
    }
   void setPhoneNumber(String p){
    phoneNumber = p;
    }
   void setCourse(String c){
    course = c;
    }
   void setHighSchoolName(String h){
    highSchoolName = h;
    }
   }
 void main(){
      Student degreeStudent = new Student.degreeStudent('Ray',003,20, '0746481374', 'Social arts');
   Student dipolmaStudent = new Student.dipStudent('Darwins', 18, '0711734971', 'Full-stake softwaredeveloper', 'Kakamega school');
  Student mastersStudent = new Student.mastersStudent('Jack', 19, 'jackopondo@gmail.com');
   studentsown();
  degreeStudent.getAdmNo();
  print(degreeStudent.admNo);
      degreeStudent.name='Ronnie';
      print(degreeStudent.name);
     degreeStudent.setName('jack');
    print(degreeStudent.name);
     mastersStudent.printmastersStudentsdetails();
   }

  void studentsown(){
   print('Enter your name');
    var name =stdin.readLineSync();
    print('Enter your admission number');
    var admNo =stdin.readLineSync();
    print('Enter your emailadess');
    var emailAddress =stdin.readLineSync();
    var mastersStudent=(name,admNo,emailAddress);
    print(mastersStudent);
 }



