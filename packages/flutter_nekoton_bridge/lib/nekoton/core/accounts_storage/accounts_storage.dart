import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:rxdart/rxdart.dart';

/// Implementations of nekoton's AccountsStorage
class AccountsStorage {
  final Storage storage;
  late AccountsStorageImpl accountsStorage;

  final _accountsSubject = BehaviorSubject<List<AssetsList>>();

  AccountsStorage._(this.storage);

  static Future<AccountsStorage> create({required Storage storage}) async {
    final instance = AccountsStorage._(storage);

    final lib = createLib();
    instance.accountsStorage = await lib.newStaticMethodAccountsStorageImpl(
      storage: storage.storage,
    );

    await instance._updateData();

    return instance;
  }

  /// Get list of accounts that stores in AccountsStorage in that moment.
  List<AssetsList> get accounts => _accountsSubject.value;

  /// Stream of accounts that could be listened outside
  Stream<List<AssetsList>> get accountsStream => _accountsSubject.stream;

  /// Get list of accounts or throw error
  Future<List<AssetsList>> getEntries() async {
    final encoded = await accountsStorage.getEntries();
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return decoded
        .map((e) => AssetsList.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Add new account to storage and return its address or throw error
  Future<String> addAccount(AccountToAdd account) async {
    final encoded =
        await accountsStorage.addAccount(account: jsonEncode(account));
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    await _updateData();
    return AssetsList.fromJson(decoded).address;
  }

  /// Add list of new accounts to storage and return its addresses.
  Future<List<String>> addAccounts(List<AccountToAdd> account) async {
    final encoded =
        await accountsStorage.addAccounts(accounts: jsonEncode(account));
    final decoded = jsonDecode(encoded) as List<dynamic>;
    await _updateData();
    return decoded
        .map((e) => AssetsList.fromJson(e as Map<String, dynamic>).address)
        .toList();
  }

  /// Add new account to storage and return its instance or throw error
  Future<void> renameAccount(String accountAddress, String name) async {
    await accountsStorage.renameAccount(
      accountAddress: accountAddress,
      name: name,
    );
    await _updateData();
  }

  /// Add token wallet signature to account (add new token to account aka enable it via slider).
  /// [accountAddress] - address of account
  /// [networkGroup] - name of network group where this token must be visible, could be found in
  ///   connection info
  /// [rootTokenContract] - address of token in blockchain.
  /// Return updated AssetsList or throw error.
  Future<AssetsList> addTokenWallet({
    required String accountAddress,
    required String networkGroup,
    required String rootTokenContract,
  }) async {
    final encoded = await accountsStorage.addTokenWallet(
      accountAddress: accountAddress,
      networkGroup: networkGroup,
      rootTokenContract: rootTokenContract,
    );
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    await _updateData();
    return AssetsList.fromJson(decoded);
  }

  /// Remove token wallet signature from account (remove token from account aka disable it via slider).
  /// [accountAddress] - address of account
  /// [networkGroup] - name of network group where this token must be visible, could be found in
  ///   connection info
  /// [rootTokenContract] - address of token in blockchain.
  /// Return updated AssetsList or throw error.
  Future<AssetsList> removeTokenWallet({
    required String accountAddress,
    required String networkGroup,
    required String rootTokenContract,
  }) async {
    final encoded = await accountsStorage.removeTokenWallet(
      accountAddress: accountAddress,
      networkGroup: networkGroup,
      rootTokenContract: rootTokenContract,
    );
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    await _updateData();
    return AssetsList.fromJson(decoded);
  }

  /// Remove account from storage and return true if it was removed or false.
  /// [accountAddress] - address of account
  /// Return if asset was removed or throw error.
  Future<bool> removeAccount(String accountAddress) async {
    final encoded = await accountsStorage.removeAccount(
      accountAddress: accountAddress,
    );
    if (encoded == null) return false;
    await _updateData();
    return true;
  }

  /// Remove list of account addresses that were removed from storage.
  /// [accountAddresses] - list of addresses of accounts.
  /// Return list of addresses that were removed or throw error.
  Future<List<String>> removeAccounts(List<String> accountAddresses) async {
    final encoded = await accountsStorage.removeAccounts(
      accountAddresses: accountAddresses,
    );
    final decoded = jsonDecode(encoded) as List<dynamic>;
    await _updateData();
    return decoded
        .map((e) => AssetsList.fromJson(e as Map<String, dynamic>).address)
        .toList();
  }

  /// Clear storage and remove all data or throw error
  Future<void> clear() async {
    await accountsStorage.clear();
    await _updateData();
  }

  /// Reload storage and read all data again or throw error.
  Future<void> reload() async {
    await accountsStorage.reload();
    await _updateData();
  }

  /// Check if [data] is correct for storage.
  static Future<bool> verifyData(String data) {
    final lib = createLib();
    return lib.verifyDataStaticMethodAccountsStorageImpl(data: data);
  }

  Future<void> _updateData() async {
    final keys = await getEntries();
    _accountsSubject.add(keys);
  }

  void dispose() {
    _accountsSubject.close();
    accountsStorage.innerStorage.dispose();
  }
}
