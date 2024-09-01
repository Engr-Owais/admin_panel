import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytest/data/posts_repository.dart';
import '../models/post_model.dart';

// States
abstract class PostState {}

class PostInitial extends PostState {}

class PostLoading extends PostState {}

class PostLoaded extends PostState {
  final List<PostModel> posts;
  PostLoaded(this.posts);
}

class PostError extends PostState {
  final String message;
  PostError(this.message);
}

// Cubit
class PostCubit extends Cubit<PostState> {
  final PostRepository _repository;

  PostCubit(this._repository) : super(PostInitial());

  Future<void> fetchPosts() async {
    emit(PostLoading());
    try {
      final posts = await _repository.fetchPosts();
      emit(PostLoaded(posts));
    } catch (e) {
      emit(PostError(e.toString()));
    }
  }
}
