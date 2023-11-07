import 'package:network/service/api_constants.dart';
import 'package:network/service/remote_source.dart';
import 'package:shared_dependency/shared_dependency.dart';

class HttpClient {
  final dio = Dio();

  Future<RemoteSource<dynamic>> _handleResult<T>(Response response) async {
    if (response.statusCode != null) {
      if (response.statusCode! >= 200 && response.statusCode! < 299) {
        return RemoteSource.success(data: response);
      } else {
        return RemoteSource.error(
            code: response.statusCode!, message: response.statusMessage ?? '');
      }
    } else {
      if (response.statusMessage?.contains('"SocketException') == true) {
        return const RemoteSource.error(
            code: 999, message: 'No Internet Connection');
      } else {
        return const RemoteSource.error(
            code: 999, message: 'Something went wrong, please try again later');
      }
    }
  }

  Future<RemoteSource<dynamic>> get(String url, dynamic query) async {
    Response response;
    response =
        await dio.get(ApiConstants.BASE_URL + url, queryParameters: query);
    return _handleResult(response);
  }
}
