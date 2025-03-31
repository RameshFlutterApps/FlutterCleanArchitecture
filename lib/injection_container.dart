import 'core/network/network_info.dart';
import 'features/posts/data/datasources/local_data_source.dart';
import 'features/posts/data/datasources/remote_data_source.dart';
import 'features/posts/data/repositories/post_repository_impl.dart';
import 'features/posts/domain/repositories/posts_repository.dart';
import 'features/posts/domain/usecases/get_all_posts.dart';
import 'features/posts/presentation/bloc/posts/posts_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - posts

  // Bloc

  sl.registerFactory(() => PostsBloc(getAllPosts: sl()));

  // Use Cases

  sl.registerLazySingleton(() => GetAllPostsUsecase(sl()));

  // Repository

  sl.registerLazySingleton<PostsRepository>(
    () => PostsRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );

  // Data Sources

  sl.registerLazySingleton<PostRemoteDataSource>(
    () => PostRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<PostLocalDataSource>(
    () => PostLocalDataSourceImpl(sharedPreferences: sl()),
  );

  //! Core

  // External

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl<InternetConnectionChecker>()));
}
