import 'package:basic/23_12_18/post.dart';
import 'package:basic/23_12_18/post_repository.dart';

class PostManager {
  final PostRepository _postRepository;

  const PostManager({
    required PostRepository postRepository,
  }) : _postRepository = postRepository;

  Future<List<Post>> getPosts() async {
    return await _postRepository.getPosts();
  }

  Future<void> addPost(Post post) async {
    await _postRepository.addPost(post);
  }

  Future<void> deletePost(Post post) async {
    await _postRepository.deletePost(post);
  }

  Future<void> updatePost(Post post) async {
    await _postRepository.updatePost(post);
  }


}
