import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/known_payload.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/ton_wallet/models/wallet_interaction_method.dart';

part 'wallet_interaction_info.freezed.dart';
part 'wallet_interaction_info.g.dart';

@freezed
class WalletInteractionInfo with _$WalletInteractionInfo {
  const factory WalletInteractionInfo({
    @JsonKey(includeIfNull: false) String? recipient,
    @JsonKey(includeIfNull: false) KnownPayload? knownPayload,
    required WalletInteractionMethod method,
  }) = _WalletInteractionInfo;

  factory WalletInteractionInfo.fromJson(Map<String, dynamic> json) =>
      _$WalletInteractionInfoFromJson(json);
}
