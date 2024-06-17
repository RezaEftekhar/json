import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/patch%20request/domain/repository/patch_request.dart';

class PatchRequestUsecase {
  final PatchRequestRepository repository;

  PatchRequestUsecase({required this.repository});

  Future<(Map<String, dynamic>?, Failure?)> call(Map<String, dynamic> param) =>
      repository.patchAllRequests(param);
}
