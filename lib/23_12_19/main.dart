import 'dart:io';
import 'package:basic/23_12_19/model/user.dart';
import 'package:basic/23_12_19/manager/user_manager.dart';
import 'model/book.dart';


UserManager userManager = UserManager();

void main() {
  init();
}

void init() {
  while (true) {
    print('1.회원 관리 / 2.도서 관리 / 3.종료');

    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        user();
        break;
      case '2':
        library();
        break;
      case '3':
        exit(0);

      default:
        print('1~3만 입력하세요');
        break;
    }
  }
}

void user() {
  print('0.뒤로 / 1.회원 가입 / 2.전체 회원 목록 / 3.회원 정보 수정 / 4.회원 정보 삭제');

  String? input = stdin.readLineSync();

  switch (input) {
    case '0':
      init();
      break;
    case '1':
      sign();
      break;
    case '2':
      allUserList();
      break;
    case '3':
      editUser();
      break;
    case '4':
      deleteUser();
      break;

    default:
      print('0~5만 입력하세요');
      break;
  }
}

/// 회원 가입
void sign() {
  print('회원 등록화면');

  print('이름을 입력해주세요');
  String name = stdin.readLineSync() ?? '';

  while (name.isEmpty) {
    name = stdin.readLineSync() ?? '';
    print('이름을 입력해주세요');
  }

  print('주소를 입력해주세요');
  String address = stdin.readLineSync() ?? '';

  while (address.isEmpty) {
    address = stdin.readLineSync() ?? '';
    print('주소를 입력해주세요');
  }

  print('연락처를 입력해주세요');
  String contact = stdin.readLineSync() ?? '';

  while (contact.isEmpty) {
    contact = stdin.readLineSync() ?? '';
    print('연락처를 입력해주세요');
  }

  print('생일을 입력해주세요');
  DateTime? birth;

  String birthInput = stdin.readLineSync() ?? '';
  while (birthInput.isEmpty) {
    print('생일을 입력해주세요');
    birthInput = stdin.readLineSync() ?? '';
  }

  try {
    birth = DateTime.parse(birthInput);
  } catch (e) {
    print('올바른 날짜 형식이 아닙니다. (yyyy-MM-dd)\n');
    return sign();
  }

  int newId = userManager.generateRandomId();

  userManager.sign(
      user: User(
          id: newId,
          name: name,
          address: address,
          contact: contact,
          birth: birth));
}

/// 회원 정보 삭제
void deleteUser() {
  print('회원 탈퇴');
  print('삭제할 id 조회');
  String _id = stdin.readLineSync() ?? '0';
  if (_id == '0') {
    return print('삭제할 정보가 없습니다.');
  }

  Iterable<User> userList = userManager.getIdUserList(id: int.parse(_id));

  if (userList.isNotEmpty) {
    User userToDelete = userList.first;

    print('삭제할 회원 정보:');
    print(userToDelete);

    print('정말로 삭제하시겠습니까? (y/n)');
    String confirmation = stdin.readLineSync()?.toLowerCase() ?? 'n';

    if (confirmation == 'y') {
      userManager.deleteUserList(getUserList: userList);
      print('회원이 삭제되었습니다.');
    } else {
      print('삭제가 취소되었습니다.');
    }
  } else {
    print('해당 ID에 대한 회원 정보를 찾을 수 없습니다.');
  }
}

/// 회원 정보 수정
void editUser() {
  print('회원 정보 수정');
  print('수정할 회원 아이디를 입력하세요');
  String _id = stdin.readLineSync() ?? '0';
  if (_id == '0') {
    return print('수정할 정보가 없습니다.');
  }

  Iterable<User> userList = userManager.getIdUserList(id: int.parse(_id));

  if (userList.isNotEmpty) {
    User userToEdit = userList.first;

    print('수정할 회원 정보:');
    print(userToEdit);

    print('정말로 수정하시겠습니까? (y/n)');
    String confirmation = stdin.readLineSync()?.toLowerCase() ?? 'n';

    if (confirmation == 'y') {
      userManager.updateUserList(
          getUserList: modifyUserList(id: userToEdit.id));
      print('회원 정보가 수정되었습니다.');
    } else {
      print('수정이 취소되었습니다.');
    }
  } else {
    print('해당 ID에 대한 회원 정보를 찾을 수 없습니다.');
  }
}

/// 입력값만 받아서 userManager 클래스에서 처리
modifyUserList({required int id}) {
  print('수정할 이름을 입력해주세요');
  String newName = stdin.readLineSync() ?? '';

  print('수정할 생일을 입력해주세요');
  DateTime? newBirth;

  String newBirthInput = stdin.readLineSync() ?? '';
  while (newBirthInput.isEmpty) {
    print('생일을 입력해주세요');
    newBirthInput = stdin.readLineSync() ?? '';
  }
  try {
    newBirth = DateTime.parse(newBirthInput);
  } catch (e) {
    print('올바른 날짜 형식이 아닙니다. (yyyy-MM-dd)\n');
    return;
  }

  print('수정할 주소를 입력해주세요');
  String newAddress = stdin.readLineSync() ?? '';

  print('수정할 연락처를 입력해주세요');
  String newContact = stdin.readLineSync() ?? '';
  return User(
      id: id,
      name: newName,
      address: newAddress,
      contact: newContact,
      birth: newBirth);
}

/// 전체 회원 목록
void allUserList() {
  userManager.getAllUserList();
}


void printUserList({required Iterable<User> userList}) {
  userManager.getUserList(getUserList: userList);
}



Book book =
    Book(id: 1, title: 'title', author: 'author', publicationDate: null);
Book book2 =
    Book(id: 2, title: 'title', author: 'author', publicationDate: null);
Book book3 =
    Book(id: 3, title: 'title', author: 'author', publicationDate: null);

List<Book> bookList = [book, book2, book3];

void library() {
  print('도서관리 화면');

  print('대출할 책 id');
  String _id = stdin.readLineSync() ?? '0';
  if (_id == '0' || _id.isEmpty) {
    print('');
  }
  Iterable<Book> books = getIdBooks(id: int.parse(_id));
  // print('대출할 책 이름');
}

Iterable<Book> getIdBooks({required int id}) {
  return bookList.where((book) => book.id == id);
}
