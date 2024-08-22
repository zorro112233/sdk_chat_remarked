import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdk_chat_remarked/src/domain/meta.cg.dart';

part 'gen/meta.cg.f.dart';
part 'gen/meta.cg.g.dart';

/// Meta данные
@freezed
class MetaDto with _$MetaDto {
  /// Meta данные
  const factory MetaDto({
    int? page,
    int? perPage,
    int? count,
    int? total,
    int? idOrder,
  }) = _MetaDto;

  /// конструктор
  const MetaDto._();

  /// используем фабричный конструктор
  factory MetaDto.fromJson(Map<String, dynamic> json) =>
      _$MetaDtoFromJson(json);

  /// toDomain
  Meta toDomain() {
    return Meta(
      page: page ?? 0,
      perPage: perPage ?? 0,
      count: count ?? 0,
      total: total ?? 0,
      idOrder: idOrder ?? 0,
    );
  }
}
