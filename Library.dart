import 'Book.dart';
import 'Members.dart';
class Library{
  String? _name;
  String? _address;
  List<Book>? _books;
  List<Member>? _members;

  Library(String name,String address){
    _name=name;
    _address=address;
    _books=[];
    _members=[];
  }
 void getDetails(){
    print('Name:$_name\nAddress:$_address');
    for(var book in _books!){
      book.getDetails();
    }
    for(var member in _members!){
      member.getDetails();
    }
 }

 void addBook(int bookId,String title,String author,DateTime publicationDate,int Copies){
    Book book=new Book(bookId,title,author,publicationDate,Copies);
    _books?.add(book);
 }

 void addMember(int id,String name,String barcode){
Member member=new Member(id,name,barcode);
_members?.add(member);
 }

  void removeBook(int bookId){
  Book? bookFound;
      for (var book in _books!)
      if (book.getBookId(bookId)>=0){
        bookFound=book;
        break;
      }
      if (bookFound != null) {
        _books!.remove(bookFound);
      }
  }

  void issueBook(int bookId,int memberId){
    Member? memberFound;
    for (var member in _members!) {
      if (member.getMemberId(memberId) >= 0) {
        memberFound = member;
        break;
      }
    }
    if (memberFound != null) {
      Book? issueBookFound;
      for (var book in _books!) {
        if (book.getBookId(bookId) >= 0) {
          issueBookFound = book;
          break;
        }
      }
      if (issueBookFound != null) {
          issueBookFound.issueBook(memberFound);
      }
    }
}

}