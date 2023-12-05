import 'book.dart';
import 'computer.dart';
import 'patent.dart';

void main() {
  Computer galaxyBook = Computer(name: '갤럭시북3 프로', price: 1340000, color: 'dark gray', makerName: 'Samsung', weight: 1.17, assetList: []);
  Computer gram = Computer(name: 'lg gram', price: 1540000, color: 'white', makerName: 'LG', weight: 0.99, assetList: []);

  // print(galaxyBook.toString());
  // print(gram.toString());

  Book codingBook1 = Book(name: '생존코딩', price: 15000, color: 'white', weight: 0.10, isbn: 'isbn1', assetList: []);
  Book codingBook2 = Book(name: '될 때까지 안드로이드', price: 20000, color: 'white', weight: 0.20, isbn: 'isbn2', assetList: []);

  // print(codingBook1.toString());
  // print(codingBook2.toString());

  Patent  patent1 = Patent(name: '특허1', price: 1000000, assetList: []);
  Patent  patent2 = Patent(name: '특허2', price: 2000000, assetList: []);

  // print(patent1.toString());
  // print(patent2.toString());

  galaxyBook.tangibleAssetAdd();
  galaxyBook.tangibleAsset();

  gram.tangibleAssetAdd();
  gram.tangibleAsset();

  codingBook1.tangibleAssetAdd();
  codingBook1.tangibleAsset();

  codingBook2.tangibleAssetAdd();
  codingBook2.tangibleAsset();

  patent1.intangibleAssetAdd();
  patent1.intangibleAsset();

  patent2.intangibleAssetAdd();
  patent2.intangibleAsset();

}
