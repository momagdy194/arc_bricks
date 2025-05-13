part of '{{feature_name}}_cubit.dart';

sealed class {{feature_name.pascalCase()}}State extends Equatable {}

final class {{feature_name.pascalCase()}}Initial extends {{feature_name.pascalCase()}}State {
@override
List<Object> get props => [];
}

final class {{feature_name.pascalCase()}}Loading extends {{feature_name.pascalCase()}}State {
@override
List<Object> get props => [];
}

final class {{feature_name.pascalCase()}}Success extends {{feature_name.pascalCase()}}State {
final dynamic data;

{{feature_name.pascalCase()}}Success(this.data);

@override
List<Object> get props => [data];
}

final class {{feature_name.pascalCase()}}Failed extends {{feature_name.pascalCase()}}State {
final Failure failure;

{{feature_name.pascalCase()}}Failed(this.failure);

@override
List<Object> get props => [failure];
}
