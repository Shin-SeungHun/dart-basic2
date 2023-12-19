import 'dart:math';
import 'package:basic/23_12_19/model/user.dart';

class UserManager {
  final List<User> _userList = [];

  // 신규 회원 등록
  void sign({required User user}) {
    _userList.add(user);
    print('회원가입되었습니다.');
    print('${user.toString()}\n');
  }

  Iterable<User> getIdUserList({required int id}) {
    return _userList.where((user) => user.id == id);
  }

  int generateRandomId() {
    while (true) {
      Random random = Random();
      int id = random.nextInt(9000) + 1000;
      if (getIdUserList(id: id).isEmpty) return id;
    }
  }

  void getAllUserList() {
    int totalUserList = _userList.length;
    if (totalUserList == 0) {
      return print('등록된 회원 수 [ 0 ]');
    }

    print('등록된 총 회원 [ $totalUserList ]');
    for (var user in _userList) {
      int index = _userList.indexOf(user) + 1;
      print('$index . $user');
    }
    print('');
  }

  void getUserList({required Iterable<User> getUserList}) {
    int totalUserList = _userList.length;
    if (totalUserList == 0) {
      return print('등록된 회원 수 [ 0 ]');
    }
    print('등록된 총 회원 [ $totalUserList ]');
    for (var user in getUserList) {
      int index = _userList.indexOf(user) + 1;
      print('$index . $user');
    }
    print('');
  }

  void deleteUserList({required Iterable<User> getUserList}) {
    int oldTotalUserList = _userList.length;
    if (oldTotalUserList == 0) {
      return;
    }

    _userList.removeWhere(
        (user) => getUserList.any((getUser) => getUser.id == user.id));

    if ((oldTotalUserList - _userList.length) > 0) {
      print('회원 탈퇴되었습니다.');
    } else {
      print('삭제할 정보가 없습니다.');
    }
  }

  void updateUserList({required User getUserList}) {
    print(getUserList.toString());

    int oldTotalUserList = _userList.length;
    if (oldTotalUserList == 0) {
      return;
    }

    for (var user in _userList) {
      if (user.id == getUserList.id) {
        user.name == getUserList.name;
        user.birth == getUserList.birth;
        user.address == getUserList.address;
        user.contact == getUserList.contact;
        print('회원정보를 수정하셨습니다.');
      }
    }
    print('');
  }
}
