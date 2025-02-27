import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/transaction.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/transaction_id.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/models/transactions_batch_info.dart';

part 'transactions_list.freezed.dart';
part 'transactions_list.g.dart';

@freezed
class TransactionsList with _$TransactionsList {
  const factory TransactionsList({
    required List<Transaction> transactions,
    @JsonKey(includeIfNull: false) TransactionId? continuation,
    TransactionsBatchInfo? info,
  }) = _TransactionsList;

  factory TransactionsList.fromJson(Map<String, dynamic> json) =>
      _$TransactionsListFromJson(json);
}
