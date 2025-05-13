import 'package:arch/core/data/repositories/base_repository_impl.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/data/data_sources/{{feature_name.snakeCase()}}_remote_data_source.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/domain/repository/{{feature_name.snakeCase()}}_repository.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/domain/use_cases/get_{{feature_name.snakeCase()}}_use_case.dart';
import 'package:arch/core/domain/entities/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/data/models/{{feature_name.snakeCase()}}_model.dart';

class {{feature_name.pascalCase()}}RepositoryImpl extends BaseRepositoryImpl implements {{feature_name.pascalCase()}}Repository {
  final {{feature_name.pascalCase()}}RemoteDataSource remote;

  {{feature_name.pascalCase()}}RepositoryImpl(super._logger, {required this.remote});

  @override
  Future<Either<Failure, {{feature_name.pascalCase()}}Model>> call({{feature_name.pascalCase()}}Params params) {
    return request(() async {
      final response = await remote.get{{feature_name.pascalCase()}}(params.id);
      final model = {{feature_name.pascalCase()}}Model.fromJson(response.data);
      return right(model);
    });
  }
} 