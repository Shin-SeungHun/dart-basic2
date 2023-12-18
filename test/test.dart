import 'package:basic/23_12_18/even.dart';
import 'package:basic/23_12_18/maximum_value.dart';

import 'package:basic/23_12_18/post_manager.dart';
import 'package:basic/23_12_18/reverse_string.dart';
import 'package:test/test.dart';
import 'package:basic/23_12_18/post.dart';

import 'mock_post_respository_impl.dart';

void main() {
 group('연습문제 1~4', () {
   test('짝수일 경우 true를 반환', () => expect(isEven(4), true));
   test('홀수일 경우 false를 반환', () => expect(isEven(3), false));

   List<int> list1 = [2, 5, 1, 9, 3];
   List<int> list2 = [1, 10, 8, 7, 6];

   test('최대값을 반환', () => expect(findMax(list1), equals(9)));
   test('최대값을 반환', () => expect(findMax(list2), equals(10)));
   // test('최대값을 반환', () => expect(findMax(list1), equals(11)));

   String s1 = 'hello';
   String s2 = 'world';
   test('olleh를 반환한다', () => expect(reverseString(s1), equals('olleh')));
   test('dlrow를 반환한다', () => expect(reverseString(s2), equals('dlrow')));
   // test('dlrow를 반환한다', () => expect(reverseString(s1), equals('dlrow')));

 });
  

  group('연습문제 5', () {
    final MockPostMemoryRepositoryImpl mockRepository =
        MockPostMemoryRepositoryImpl();

    test('postManager addPost test', () async {
      // given 준비
      final PostManager postManager =
          PostManager(postRepository: mockRepository);

      final Post post = Post(userId: 1, id: 1, title: 'title', body: 'body');

      // when 실행
      postManager.addPost(post);

      // then 검증
      final List<Post> result = await postManager.getPosts();
      expect(result[0], equals(post));
    });

    test('deletePost test', () async {
      // given 준비
      final PostManager postManager =
          PostManager(postRepository: mockRepository);

      final Post post = Post(userId: 1, id: 1, title: 'title', body: 'body');

      final Post post2 = Post(userId: 1, id: 1, title: 'title', body: 'body');

      // when 실행
      postManager.deletePost(post);
      postManager.deletePost(post2);

      // then 검증
      final List<Post> result = await postManager.getPosts();
      expect(result.isEmpty, true);
    });
  });
}
