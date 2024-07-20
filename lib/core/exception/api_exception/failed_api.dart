import 'package:api_integration2/core/exception/api_exception/base_exception.dart';

class ApiRequestFailedException extends BaseException {
  final int? statuscode;
  ApiRequestFailedException({this.statuscode})
      : super("Api request failed with statuscode $statuscode");
}
