// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../blocs/posts_bloc.dart';
// import '../../blocs/posts_event.dart';
// import '../../blocs/posts_state.dart';
// import '../widgets/post_item.dart';

// class PostsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Posts'),
//       ),
//       body: BlocBuilder<PostsBloc, PostsState>(
//         builder: (context, state) {
//           if (state is PostsInitial) {
//             context.read<PostsBloc>().add(FetchPosts());
//             return Center(child: CircularProgressIndicator());
//           } else if (state is PostsLoading) {
//             return Center(child: CircularProgressIndicator());
//           } else if (state is PostsLoaded) {
//             return ListView.builder(
//               itemCount: state.posts.length,
//               itemBuilder: (context, index) {
//                 return PostItem(post: state.posts[index]);
//               },
//             );
//           } else if (state is PostsError) {
//             return Center(child: Text('Error: ${state.message}'));
//           }
//           return Container();
//         },
//       ),
//     );
//   }
// }
