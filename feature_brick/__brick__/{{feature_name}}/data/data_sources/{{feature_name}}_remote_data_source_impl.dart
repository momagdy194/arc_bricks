import 'package:arch/core/data/models/base_response/response_model.dart';
import 'package:arch/core/data/network/dio_services.dart';
import 'package:arch/core/domain/entities/enum/server_error_code.dart';
import 'package:arch/core/domain/entities/failure.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/data/data_sources/{{feature_name.snakeCase()}}_remote_data_source.dart';
import 'package:arch/features/{{feature_name.snakeCase()}}/data/models/{{feature_name.snakeCase()}}_model.dart';

class {{feature_name.pascalCase()}}RemoteDataSourceImpl implements {{feature_name.pascalCase()}}RemoteDataSource {
  final NetworkService _networkService;

  {{feature_name.pascalCase()}}RemoteDataSourceImpl(this._networkService);

  @override
  Future<ResponseModel> get{{feature_name.pascalCase()}}(int id) async {
    try {
      final response = await _networkService.request(
        'mobile/api/{{feature_name.snakeCase()}}/$id',
        httpMethod: HttpMethod.get,
      );
      final model = ResponseModel.fromJson(response.data);
      return model;
    } catch (e) {
      throw ServerFailure(
        errorCode: ServerErrorCode.serverError,
        message: e.toString(),
      );
    }
  }
}