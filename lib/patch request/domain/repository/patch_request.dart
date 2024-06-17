
import 'package:json_place_holder/core/error/failure.dart';

abstract class PatchRequestRepository{
  Future<(Map<String,dynamic>?,Failure?)> patchAllRequests(Map<String,dynamic>request);
}