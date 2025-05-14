import 'package:arch/core/domain/entities/failure.dart';
import 'package:arch/core/domain/use_cases/use_case.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/domain/repository/{{feature_name.snakeCase()}}_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';


class Get{{feature_name.pascalCase()}}UseCase extends UseCase<{{feature_name.pascalCase()}}Entity, {{feature_name.pascalCase()}}Params> {
final {{feature_name.pascalCase()}}Repository repository;

Get{{feature_name.pascalCase()}}UseCase(this.repository);

@override
Future<Either<Failure, {{feature_name.pascalCase()}}Entity>> call({{feature_name.pascalCase()}}Params params) async {
return repository.call(params);
}
}

class {{feature_name.pascalCase()}}Params extends Equatable {
final String exampleField1;
final String exampleField2;
final int id;

const {{feature_name.pascalCase()}}Params({
required this.exampleField1,
required this.exampleField2,
required this.id,
});

@override
List<Object?> get props => [exampleField1, exampleField2,id];
}
