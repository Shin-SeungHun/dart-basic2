import 'package:basic/23_12_18/post.dart';
import 'package:basic/23_12_18/post_repository.dart';

class MockPostMemoryRepositoryImpl implements PostRepository {
  final List<Post> _postList = [];

  @override
  Future<List<Post>> getPosts() async {
    return _postList;
  }

  @override
  Future<void> addPost(Post post) async {
    _postList.add(post);
  }

  @override
  Future<void> deletePost(Post post) async {
    _postList.remove(post);
  }

  @override
  Future<void> updatePost(Post post) async {
    int index = _postList.indexWhere((e) => e.id == post.id);
    if (index != -1) {
      _postList[index] = post;
    }
  }
}
