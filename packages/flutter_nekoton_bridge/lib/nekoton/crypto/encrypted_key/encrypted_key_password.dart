import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/export_key_input.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/models/sign_input.dart';
import 'package:flutter_nekoton_bridge/nekoton/crypto/password_cache/password.dart';

part 'encrypted_key_password.freezed.dart';
part 'encrypted_key_password.g.dart';

@freezed
class EncryptedKeyPassword
    with _$EncryptedKeyPassword
    implements ExportKeyInput, SignInput {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EncryptedKeyPassword({
    required String publicKey,
    required Password password,
  }) = _EncryptedKeyPassword;

  factory EncryptedKeyPassword.fromJson(Map<String, dynamic> json) =>
      _$EncryptedKeyPasswordFromJson(json);
}
