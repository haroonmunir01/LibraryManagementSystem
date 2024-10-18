
import "Library.dart";
void main(){
  print('===== Welcome To The Library =====');
  Library library=new Library("Bahria", "Karachi,Pakistan");
  library.addBook(123, 'Harry Potter', 'J.K Rowling', DateTime(1994), 5);
  library.addMember(240, 'Haroon', 'ab123');
  library.issueBook(123, 240);
  library.getDetails();
}