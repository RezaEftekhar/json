import 'package:bloc/bloc.dart';
import 'package:json_place_holder/posts/domain/entity/posts_entity.dart';
import 'package:json_place_holder/posts/domain/usecase/get_posts_usecase.dart';
part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetPostsUsecase usecase;
  PostsBloc({required this.usecase}) : super(PostsInitial()) {
    on<GetAllPosts>(getPosts);
  }

  
  void getPosts(event, emit) async {
    emit(GetPostsLoading());
    var (data, error) = await usecase.call();

    data != null
        ? emit(GetPostsCompleted(posts: data))
        : emit(GetPostsError(error: error.toString()));
  }
}
