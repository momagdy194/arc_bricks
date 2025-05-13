import 'package:equatable/equatable.dart';





import 'package:arch/features/{{feature_name.snakeCase()}}/presentation/manager/{{feature_name.snakeCase()}}/{{feature_name.snakeCase()}}_cubit.dart';
import 'package:arch/injection/injection.dart';
 
import '../{{feature_name}}/data/data_sources/{{feature_name.snakeCase()}}_remote_data_source.dart';
import '../{{feature_name}}/data/repository/{{feature_name.snakeCase()}}_repository_impl.dart';
import '../{{feature_name}}/domain/repository/{{feature_name.snakeCase()}}_repository.dart';
import '../{{feature_name}}/domain/use_cases/get_{{feature_name.snakeCase()}}_use_case.dart';
import '../{{feature_name}}/data/data_sources/{{feature_name.snakeCase()}}_remote_data_source_impl.dart';
 


class {{feature_name.pascalCase()}}DI {
  void init() {
    final sl = InjectionContainer.locator;
    // 💼 Presentation Layer
    sl.registerFactory(() => {{feature_name.pascalCase()}}Cubit(sl()));

    // 📦 Domain Layer - Use Cases
    sl.registerLazySingleton(() => Get{{feature_name.pascalCase()}}UseCase(sl()));

    // 🌐 Data Layer - Data Sources
    sl.registerLazySingleton<{{feature_name.pascalCase()}}RemoteDataSource>(
      () => {{feature_name.pascalCase()}}RemoteDataSourceImpl(sl()),
    );

    // 📦 Data Layer - Repository Implementation
    sl.registerLazySingleton<{{feature_name.pascalCase()}}Repository>(
      () => {{feature_name.pascalCase()}}RepositoryImpl(sl(), remote: sl()),
    );
  }
}