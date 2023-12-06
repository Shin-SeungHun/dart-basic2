import 'dart:math';

import 'package:basic/23_12_05/abstract&interface/intangible_asset.dart';
import 'package:basic/23_12_05/abstract&interface/tangible_asset.dart';

import 'asset.dart';
import 'book.dart';
import 'computer.dart';
import 'patent.dart';

void main() {
  final Computer galaxyBook = Computer(
      name: '갤럭시북3 프로',
      price: 1340000,
      color: 'dark gray',
      makerName: 'Samsung',
      weight: 1.17);
  final Computer gram = Computer(
      name: 'lg gram',
      price: 1540000,
      color: 'white',
      makerName: 'LG',
      weight: 0.99);

  // print(galaxyBook.toString());
  // print(gram.toString());

  List<TangibleAsset> tangibleAssetList = [galaxyBook, gram];
  for (TangibleAsset tangibleAssetLists in tangibleAssetList) {
    print(tangibleAssetLists);
  }

  final Book codingBook1 = Book(
      name: '생존코딩', price: 15000, color: 'white', weight: 0.10, isbn: 'isbn1');
  final Book codingBook2 = Book(
      name: '될 때까지 안드로이드',
      price: 20000,
      color: 'white',
      weight: 0.20,
      isbn: 'isbn2');

  // print(codingBook1.toString());
  // print(codingBook2.toString());

  tangibleAssetList.add(codingBook1);
  tangibleAssetList.add(codingBook2);

  final Patent patent1 = Patent(name: '특허1', price: 1000000, patentNum: 1234);
  final Patent patent2 = Patent(name: '특허2', price: 2000000, patentNum: 5678);

  List<IntangibleAsset> intangibleAssetList = [patent1, patent2];
  for (IntangibleAsset intangibleAssetLists in intangibleAssetList) {
    print(intangibleAssetLists);
  }


  // print(patent1.toString());
  // print(patent2.toString());
}
