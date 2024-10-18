import'Bookcopy.dart';
import'Members.dart';
class Book{

  int? _bookId;
  String? _title;
  String? _author;
  DateTime? _publicationDate;
  List<BookCopy>? _copies;

  Book(int bookId,String title,String author,DateTime publicationDate,int Copies){
    _bookId=bookId;
    _title=title;
    _author=author;
    _publicationDate=publicationDate;
    _copies=[];
    for(int i=0;i < Copies;i++){
    BookCopy book=new BookCopy(true, i+1);
    _copies?.add(book);
    }
  }

  void getDetails(){
    print('Title:$_title\nAuthor:$_author\nPublish Date:$_publicationDate\nAvailable Copies:${_copies?.where((isAvailable) =>true).length}');
  }

  int getBookId(int id){
    if (id==_bookId){
      return _bookId!;
    }
    return -1;
  }

  bool issueBook(Member member){
    for (var copy in _copies!){
      if(copy.issueBook(member)){
        return true;
      }
    }
    return false;
  }

}