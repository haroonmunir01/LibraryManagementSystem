import 'Book.dart';
import 'Members.dart';
class BookCopy {
  int? copyId;
  bool? isAvailable;
  String? author;
  DateTime? dueDate;
  Member? member;

BookCopy(bool isAvailable,int copyId){
  this.isAvailable=isAvailable;
  this.copyId=copyId;
}
  void getDetails() {
    print(
        'Id:$copyId\nIs Available:$isAvailable\nDue Date:$dueDate');
  }

  bool issueBook(Member m){
    if (isAvailable!){
      isAvailable==false;
      dueDate=DateTime.now().add(Duration(days: 14));
      member = m;
      return true;
    }
    return false;
  }

  bool returnBook(){
    if (isAvailable==false){
      isAvailable==true;
      dueDate=null;
      member = null;
      return true;
    }
    return false;
  }
  bool reissueBook(){
    if (isAvailable==false){
      dueDate=DateTime.now().add(Duration(days: 14));
      return true;
    }
    return false;
  }
}