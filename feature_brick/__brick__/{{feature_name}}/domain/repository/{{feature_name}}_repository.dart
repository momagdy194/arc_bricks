import 'package:arch/core/domain/entities/failure.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/domain/use_cases/get_{{feature_name.snakeCase()}}_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/data/models/{{feature_name.snakeCase()}}_model.dart';

abstract class {{feature_name.pascalCase()}}Repository {
Future<Either<Failure, {{feature_name.pascalCase()}}Model>> call({{feature_name.pascalCase()}}Params params);
}   