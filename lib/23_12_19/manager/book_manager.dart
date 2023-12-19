import 'dart:math';

import '../model/book.dart';

class BookManager{
  final List<Book> _bookList = [];

  /// 신규 도서 등록
  void addBook({required Book book}) {
    _bookList.add(book);
    print('도서 등록 완료');
    print('${book.toString()}\n');
  }

  // 4자리 랜던 아이디 생성
  int generateRandomNumber() {
    while (true) {
      Random random = Random();
      int id = random.nextInt(9000) + 1000;
      if (getIdBooks(id: id).isEmpty) return id;
    }
  }

  // id로 책 정보 조회 List 리턴
  Iterable<Book> getIdBooks({required int id}) {
    return _bookList.where((book) => book.id == id);
  }

  /// 전체 도서 목록
  void getAllBookList() {
    int total = _bookList.length;

    if (total == 0) return print('도서 [ 0 ] ');

    print('도서 총 [ $total ] ');
    for (var book in _bookList) {
      int index = _bookList.indexOf(book) + 1;
      print('$index . $book');
    }

    print("");
  }
}