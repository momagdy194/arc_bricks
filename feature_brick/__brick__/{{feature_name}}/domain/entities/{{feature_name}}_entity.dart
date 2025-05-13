import 'package:equatable/equatable.dart';

class {{feature_name.pascalCase()}}Entity extends Equatable {
final int? id;
final String? title;
final String? description;

const {{feature_name.pascalCase()}}Entity({
required this.id,
required this.title,
required this.description,
});

{{feature_name.pascalCase()}}Entity copyWith({
int? id,
String? title,
String? description,
}) {
return {{feature_name.pascalCase()}}Entity(
id: id ?? this.id,
title: title ?? this.title,
description: description ?? this.description,
);
}

@override
List<Object?> get props => [
id,
title,
description,
];
}
