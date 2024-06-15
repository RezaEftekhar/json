import 'package:get_it/get_it.dart';
import 'package:json_place_holder/albums/data/dataSource/albums_dataSource.dart';
import 'package:json_place_holder/albums/data/repository_impl/albums_repository_impl.dart';
import 'package:json_place_holder/albums/domain/repository/albums_repository.dart';
import 'package:json_place_holder/albums/domain/usecase/albums_usecase.dart';
import 'package:json_place_holder/albums/presentation/bloc/albums_bloc.dart';
import 'package:json_place_holder/comments/data/dataSource/comments_data_source.dart';
import 'package:json_place_holder/comments/data/repository_impl/comments_repository_mpl.dart';
import 'package:json_place_holder/comments/domain/repository/comments_repo.dart';
import 'package:json_place_holder/comments/domain/usecase/comments_usecase.dart';
import 'package:json_place_holder/comments/presentation/bloc/comments_bloc.dart';
import 'package:json_place_holder/core/network/api_provider.dart';
import 'package:json_place_holder/photos/data/dataSource/photos_data_source.dart';
import 'package:json_place_holder/photos/data/repository_impl/photos_repository_impl.dart';
import 'package:json_place_holder/photos/domain/repository/photos_repository.dart';
import 'package:json_place_holder/photos/domain/usecase/get_photos_usecase.dart';
import 'package:json_place_holder/photos/presentation/bloc/photos_bloc.dart';
import 'package:json_place_holder/posts/data/dataSourse/posts_dataSource.dart';
import 'package:json_place_holder/posts/data/repository_impl.dart/posts_repository_impl.dart';
import 'package:json_place_holder/posts/domain/repository/posts_repo.dart';
import 'package:json_place_holder/posts/domain/usecase/get_posts_usecase.dart';
import 'package:json_place_holder/posts/presentation/bloc/posts_bloc.dart';
import 'package:json_place_holder/todos/data/data_source/todos_data_source.dart';
import 'package:json_place_holder/todos/data/repository_impl/todos_repository_impl.dart';
import 'package:json_place_holder/todos/domain/repository/todos_repository.dart';
import 'package:json_place_holder/todos/domain/usecase/get_todos_usecase.dart';
import 'package:json_place_holder/todos/presentation/bloc/todos_bloc.dart';
import 'package:json_place_holder/users/data/data_source.dart/users_data_source.dart';
import 'package:json_place_holder/users/data/repository_impl/users_repository_impl.dart';
import 'package:json_place_holder/users/domain/repository/users_repository.dart';
import 'package:json_place_holder/users/domain/usecase/get_users_usecase.dart';
import 'package:json_place_holder/users/presentation/bloc/user_bloc.dart';

final getIt = GetIt.instance;

void setUpLocator() {
  //api provider dependency
  getIt.registerSingleton<ApiProvider>(ApiProvider());

  //Posts feature dependencies
  getIt.registerSingleton<PostRemoteDataSource>(
      PostRemoteDateSourseImpl(apiProvider: getIt<ApiProvider>()));

  getIt.registerSingleton<PostRepo>(
      PostsRepositoryImpl(postRemoteDs: getIt<PostRemoteDataSource>()));

  getIt.registerSingleton<GetPostsUsecase>(
      GetPostsUsecase(repository: getIt<PostRepo>()));
  getIt.registerSingleton<PostsBloc>(
      PostsBloc(usecase: getIt<GetPostsUsecase>()));

  //Comments feature dependencies
  getIt.registerSingleton<CommentsRemoteDs>(
      CommentsDataSourceImpl(apiProvider: getIt<ApiProvider>()));

  getIt.registerSingleton<CommentsRepository>(
      CommentsRepositoryImpl(dataSource: getIt<CommentsRemoteDs>()));
  getIt.registerSingleton<CommentsUsecase>(
      CommentsUsecase(repository: getIt<CommentsRepository>()));

  getIt.registerSingleton<CommentsBloc>(
      CommentsBloc(usecase: getIt<CommentsUsecase>()));

  // albums feature dependencies
  getIt.registerSingleton<AlbumsRemoteDs>(
      AlbumsRemoteDataSourceImpl(apiProvider: getIt<ApiProvider>()));
  getIt.registerSingleton<AlbumsRepository>(
      AlbumsRepositoryImpl(dataSource: getIt<AlbumsRemoteDs>()));
  getIt.registerSingleton<AlbumsUsecase>(
      AlbumsUsecase(repository: getIt<AlbumsRepository>()));
  getIt.registerSingleton<AlbumsBloc>(
      AlbumsBloc(usecase: getIt<AlbumsUsecase>()));

  //Photos feature dependenceies
  getIt.registerSingleton<PhotosRemoteDs>(
      PhotosDataSourceImpl(apiprovider: getIt<ApiProvider>()));
  getIt.registerSingleton<PhotosRepository>(
      PhotosRepositoryImpl(dataSource: getIt<PhotosRemoteDs>()));
  getIt.registerSingleton<GetPhotosUsecase>(
      GetPhotosUsecase(repository: getIt<PhotosRepository>()));
  getIt.registerSingleton<PhotosBloc>(
      PhotosBloc(usecase: getIt<GetPhotosUsecase>()));

  //todos feature dependencies
  getIt.registerSingleton<TodosRemoteDs>(
      TodosDataSourceImpl(apiProvider: getIt<ApiProvider>()));
  getIt.registerSingleton<TodosRepository>(
      TodosRepositoryImpl(dataSource: getIt<TodosRemoteDs>()));
  getIt.registerSingleton<GetTodosUsuecase>(
      GetTodosUsuecase(repository: getIt<TodosRepository>()));
  getIt.registerSingleton<TodosBloc>(
      TodosBloc(usecase: getIt<GetTodosUsuecase>()));

  //users feature dependencies
  getIt.registerSingleton<UsersRemoteDs>(
      UsersDtaSourceImpl(apiProvider: getIt<ApiProvider>()));
  getIt.registerSingleton<UsersRepository>(
      UsersRepositoryImpl(dataSource: getIt<UsersRemoteDs>()));
  getIt.registerSingleton<GetUsersUsecase>(
      GetUsersUsecase(repository: getIt<UsersRepository>()));
  getIt.registerSingleton<UserBloc>(UserBloc(usecase: getIt<GetUsersUsecase>()));
      
}
