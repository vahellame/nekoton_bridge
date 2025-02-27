import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password.dart';

part 'derived_key_sign_params_by_public_key.freezed.dart';
part 'derived_key_sign_params_by_public_key.g.dart';

@freezed
class DerivedKeyPasswordByPublicKey with _$DerivedKeyPasswordByPublicKey {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DerivedKeyPasswordByPublicKey({
    required String masterKey,
    required String publicKey,
    required Password password,
  }) = _DerivedKeyPasswordByPublicKeyByPublicKey;

  factory DerivedKeyPasswordByPublicKey.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyPasswordByPublicKeyFromJson(json);
}
