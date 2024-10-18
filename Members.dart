import 'Book.dart';
import 'Bookcopy.dart';
class Member{
  int? _id;
  String? _name;
  String? _barcode;
  List<BookCopy>? _checkoutBooks;
  double _fine=0;

  Member(int id,String name,String barcode){
      _id=id;
      _name=name;
      _barcode=barcode;
      _checkoutBooks=[];
  }

  void getDetails(){
    print('Barcode:$_barcode\nName:$_name');
    for(var book in _checkoutBooks!){
      book.getDetails();
    }
  }

  void addCheckoutBook(BookCopy book){
    _checkoutBooks!.add(book);
  }

  void RemoveCheckoutBook(BookCopy book){
    _checkoutBooks!.remove(book);
  }

  void addFine(int days){
    _fine=days*2;
  }

  void removeFine(double amount){
    if (_fine>=amount){
      _fine-=amount;
    }
  }
  
  void checkFine(){
    print('Fine:$_fine\$');
  }

  int getMemberId(int id){
    if (id==_id){
      return _id!;
    }
    return -1;
  }

}