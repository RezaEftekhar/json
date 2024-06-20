import 'package:bloc/bloc.dart';
import 'package:json_place_holder/Features/posts/domain/entity/posts_entity.dart';
import 'package:json_place_holder/Features/posts/domain/usecase/get_posts_usecase.dart';
import 'package:json_place_holder/Features/posts/domain/usecase/patch_request_usecase.dart';
import 'package:json_place_holder/Features/posts/domain/usecase/post_requests_usecase.dart';
import 'package:json_place_holder/Features/posts/domain/usecase/put_post_request_usecase.dart';
part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetPostsUsecase getUsecase;
  final PostRequestUsecase postUsecase;
  final PatchRequestUsecase patchusecase;
  final PutPostRequestUsecase putUsecase;
  PostsBloc(
      {required this.patchusecase,
      required this.getUsecase,
      required this.postUsecase,
      required this.putUsecase})
      : super(PostsInitial()) {
    on<GetAllPosts>(getPosts);
    on<PostRequests>((event, emit) async {
      emit(PostsLoading());
      var (data, error) =
          await postUsecase.call({'title': event.title, 'body': event.body});

      data != null
          ? emit(PostRequestsCompleted())
          : emit(PostsError(error: error.toString()));
    });

    on<PatchRequests>(
      (event, emit) async {
        emit(PostsLoading());
        var (data, error) =
            await patchusecase.call({'title': event.title, 'body': event.body});

        data != null
            ? emit(PatchRequestsCompleted())
            : emit(PostsError(error: error.toString()));
      },
    );

    on<UpdatePost>(
      (event, emit) async {
        emit(PostsLoading());
        var (data, error) =
            await putUsecase.call({'title': event.title, 'body': event.body});
        data != null
            ? emit(UpdatePostCompleted())
            : emit(PostsError(error: error.toString()));
      },
    );
  }

  void getPosts(event, emit) async {
    emit(PostsLoading());
    var (data, error) = await getUsecase.call();

    data != null
        ? emit(GetPostsCompleted(posts: data))
        : emit(PostsError(error: error.toString()));
  }
}
