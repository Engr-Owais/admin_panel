// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'posts_event.dart';
// import 'posts_state.dart';
// import '../data/posts_repository.dart';
// import '../models/post_model.dart';

// class PostsBloc extends Bloc<PostsEvent, PostsState> {
//   final PostsRepository repository;

//   PostsBloc(this.repository) : super(PostsInitial());

//   @override
//   Stream<PostsState> mapEventToState(PostsEvent event) async* {
//     if (event is FetchPosts) {
//       yield PostsLoading();
//       try {
//         final List<PostModel> posts = await repository.fetchPosts();
//         yield PostsLoaded(posts: posts);
//       } catch (e) {
//         yield PostsError(message: e.toString());
//       }
//     }
//   }
// }
