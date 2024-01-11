import 'package:freezed_annotation/freezed_annotation.dart';


part 'response_failure.g.dart';
part 'response_failure.freezed.dart';

@Freezed()
class ResponseFailure with _$ResponseFailure {
  const factory ResponseFailure({
    String? message,
    int? applicationStatusCode,
    int? httpStatus,
  }) = _ResponseFailure;

  factory ResponseFailure.fromJson(Map<String, dynamic> json) =>
      _$ResponseFailureFromJson(json);
}
