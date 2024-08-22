import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/meta.cg.f.dart';

/// Meta данные
@freezed
class Meta with _$Meta {
  /// Meta данные
  const factory Meta({
    required int page,
    required int perPage,
    required int count,
    required int total,
    required int idOrder,
  }) = _Meta;

  /// Заглушка
  static const empty = Meta(
    page: 0,
    perPage: 0,
    count: 0,
    total: 0,
    idOrder: 0,
  );
}
