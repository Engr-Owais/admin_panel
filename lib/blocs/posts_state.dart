import '../models/post_model.dart';

abstract class PostsState {}

class PostsInitial extends PostsState {}

class PostsLoading extends PostsState {}

class PostsLoaded extends PostsState {
  final List<PostModel> posts;

  PostsLoaded({required this.posts});
}

class PostsError extends PostsState {
  final String message;

  PostsError({required this.message});
}
