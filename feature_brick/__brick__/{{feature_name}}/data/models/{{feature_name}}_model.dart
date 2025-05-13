import 'package:arch/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:logger/logger.dart';

class {{feature_name.pascalCase()}}Model extends {{feature_name.pascalCase()}}Entity {
const {{feature_name.pascalCase()}}Model({
required super.id,
required super.title,
required super.description,
});

factory {{feature_name.pascalCase()}}Model.empty() => const {{feature_name.pascalCase()}}Model(
id: 0,
title: '',
description: '',
);

static {{feature_name.pascalCase()}}Model fromJson(Map<String, dynamic> json) {
try {
return {{feature_name.pascalCase()}}Model(
id: json['id'] is int ? json['id'] : int.tryParse(json['id']?.toString() ?? '0') ?? 0,
title: json['title']?.toString() ?? '',
description: json['description']?.toString() ?? '',
);
} catch (e, st) {
Logger().d(
"Failed to parse {{feature_name.pascalCase()}}Model from data: $json with error: $e and stacktrace: $st",
);
return {{feature_name.pascalCase()}}Model.empty();
}
}
}
