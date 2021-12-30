import 'package:freezed_annotation/freezed_annotation.dart';
part 'entity_failures.freezed.dart';

@freezed
abstract class EntityFailures with _$EntityFailures {
  const factory EntityFailures.emptyImage({required String msg}) = _EmptyImage;
  const factory EntityFailures.unexpected({required String msg}) = _Unexpected;
}
