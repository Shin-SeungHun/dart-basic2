import 'package:basic/23_12_05/abstract&interface/tangible_asset.dart';

import 'book.dart';
import 'computer.dart';
import 'patent.dart';

void main() {
  final Computer galaxyBook = Computer(name: '갤럭시북3 프로', price: 1340000, color: 'dark gray', makerName: 'Samsung', weight: 1.17);
  final Computer gram = Computer(name: 'lg gram', price: 1540000, color: 'white', makerName: 'LG', weight: 0.99);

  // print(galaxyBook.toString());
  // print(gram.toString());

  final Book codingBook1 = Book(name: '생존코딩', price: 15000, color: 'white', weight: 0.10, isbn: 'isbn1');
  final Book codingBook2 = Book(name: '될 때까지 안드로이드', price: 20000, color: 'white', weight: 0.20, isbn: 'isbn2');

  // print(codingBook1.toString());
  // print(codingBook2.toString());

  final Patent patent1 = Patent(name: '특허1', price: 1000000);
  final Patent patent2 = Patent(name: '특허2', price: 2000000);

  // print(patent1.toString());
  // print(patent2.toString());

  // 유형 자산 추가
  galaxyBook.tangibleAssetAdd();
  galaxyBook.tangibleAsset();

  gram.tangibleAssetAdd();
  gram.tangibleAsset();

  codingBook1.tangibleAssetAdd();
  codingBook1.tangibleAsset();

  codingBook2.tangibleAssetAdd();
  codingBook2.tangibleAsset();

  // 무형 자산 추가
  patent1.intangibleAssetAdd();
  patent1.intangibleAsset();

  patent2.intangibleAssetAdd();
  patent2.intangibleAsset();

  // 자산 목록 출력
  galaxyBook.asset();
  gram.asset();

  codingBook1.asset();
  codingBook2.asset();

  patent1.asset();
  patent2.asset();

}
