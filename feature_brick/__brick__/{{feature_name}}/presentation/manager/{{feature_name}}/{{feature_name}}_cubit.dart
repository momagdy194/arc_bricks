import 'package:arch/core/domain/entities/failure.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/domain/use_cases/get_{{feature_name.snakeCase()}}_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
 
part '../../../../{{feature_name}}/presentation/manager/{{feature_name}}/{{feature_name.snakeCase()}}_state.dart';

@injectable
class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
{{feature_name.pascalCase()}}Cubit(this.useCase) : super({{feature_name.pascalCase()}}Initial());

final Get{{feature_name.pascalCase()}}UseCase useCase;

Future<void> execute({
required String exampleField1,
required String exampleField2,
}) async {
emit({{feature_name.pascalCase()}}Loading());
final result = await useCase.call(
{{feature_name.pascalCase()}}Params(
exampleField1: exampleField1,
exampleField2: exampleField2,
id: 0,),
);
result.fold(
(e) => emit({{feature_name.pascalCase()}}Failed(e)),
(value) => emit({{feature_name.pascalCase()}}Success(value)),
);
}
}