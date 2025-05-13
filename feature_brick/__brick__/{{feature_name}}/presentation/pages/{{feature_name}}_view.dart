import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


@RoutePage()
class {{feature_name.pascalCase()}}View extends StatelessWidget {
const {{feature_name.pascalCase()}}View({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(body: Column(children: [

Text( '{{feature_name.pascalCase()}}')
],),);
}
}