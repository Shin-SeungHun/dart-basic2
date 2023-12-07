import 'book.dart';

void main() {
  final Book originalBook = Book(
    title: '원본',
    publishDate: DateTime(1999, 11, 01),
    comment: '책의 원본이다.',
  );

  // print(originalBook.toString());

  final Book originalBook2 = originalBook;
  // print(originalBook2.toString());
  print(originalBook2 == originalBook); // true
  print('');

  // 얕은 복사는 해시코드 값이 동일함
  print('해시코드 값');
  print(originalBook2.hashCode);
  print(originalBook.hashCode);
  print('');

  // copyWith를 사용하여 깊은복사
  final Book copyBook = originalBook.copyWith(
      title: '복사본',
      publishDate: DateTime(2023, 12, 11),
      comment: '이 책은 ${originalBook.title}의 복사본이다.');

  // 깊은 복사로 서로 해시 코드 값이 다르다.
  print('해시코드 값');
  print(originalBook.hashCode);
  print(copyBook.hashCode);
  print('');

  final Book newBook = Book(
    title: '개정판',
    publishDate: DateTime(2023, 2, 2),
    comment: '개정판이다.',
  );

  final Book otherBook = Book(
    title: '개정판',
    publishDate: DateTime(2023, 2, 2),
    comment: '다른 책',
  );

  // set에 인스턴스 넣기, 동일 객체 판단하는지 확인
  final Set<Book> bookSet = {
    copyBook,
    originalBook,
    newBook,
    otherBook,
  };

  print('set 목록');
  // 중복항목 있는지 확인
  for (Book book in bookSet) {
    print('${book.toString()} 해시값 : ${book.hashCode}');
  }

  print('');

  // set의 목록 데이터를을 list로 변환한다.
  final List<Book> list = bookSet.toList();
  // list인지 확인
  print('리스트 항목');
  print(list.toString());
  print('');
  // 목록을 출간일이 오래된 순으로 정렬
  list.sort(
      (oldBook, newBook) => oldBook.publishDate.compareTo(newBook.publishDate));
  // 정렬되었는지 확인
  print('정렬된 리스트 항목');
  print(list.toString());
}
