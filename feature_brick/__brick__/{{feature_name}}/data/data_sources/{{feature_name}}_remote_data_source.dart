import 'package:arch/core/data/models/base_response/response_model.dart';


abstract interface class {{feature_name.pascalCase()}}RemoteDataSource {
Future<ResponseModel> get{{feature_name.pascalCase()}}(int id);
}