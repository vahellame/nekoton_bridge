// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_sign_params_by_account_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeyPasswordByAccountId _$DerivedKeyPasswordByAccountIdFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyPasswordByAccountIdByAccountId.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyPasswordByAccountId {
  String get masterKey => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeyPasswordByAccountIdCopyWith<DerivedKeyPasswordByAccountId>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyPasswordByAccountIdCopyWith<$Res> {
  factory $DerivedKeyPasswordByAccountIdCopyWith(
          DerivedKeyPasswordByAccountId value,
          $Res Function(DerivedKeyPasswordByAccountId) then) =
      _$DerivedKeyPasswordByAccountIdCopyWithImpl<$Res,
          DerivedKeyPasswordByAccountId>;
  @useResult
  $Res call({String masterKey, int accountId, Password password});

  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyPasswordByAccountIdCopyWithImpl<$Res,
        $Val extends DerivedKeyPasswordByAccountId>
    implements $DerivedKeyPasswordByAccountIdCopyWith<$Res> {
  _$DerivedKeyPasswordByAccountIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? accountId = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DerivedKeyPasswordByAccountIdByAccountIdCopyWith<$Res>
    implements $DerivedKeyPasswordByAccountIdCopyWith<$Res> {
  factory _$$_DerivedKeyPasswordByAccountIdByAccountIdCopyWith(
          _$_DerivedKeyPasswordByAccountIdByAccountId value,
          $Res Function(_$_DerivedKeyPasswordByAccountIdByAccountId) then) =
      __$$_DerivedKeyPasswordByAccountIdByAccountIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String masterKey, int accountId, Password password});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$_DerivedKeyPasswordByAccountIdByAccountIdCopyWithImpl<$Res>
    extends _$DerivedKeyPasswordByAccountIdCopyWithImpl<$Res,
        _$_DerivedKeyPasswordByAccountIdByAccountId>
    implements _$$_DerivedKeyPasswordByAccountIdByAccountIdCopyWith<$Res> {
  __$$_DerivedKeyPasswordByAccountIdByAccountIdCopyWithImpl(
      _$_DerivedKeyPasswordByAccountIdByAccountId _value,
      $Res Function(_$_DerivedKeyPasswordByAccountIdByAccountId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? accountId = null,
    Object? password = null,
  }) {
    return _then(_$_DerivedKeyPasswordByAccountIdByAccountId(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DerivedKeyPasswordByAccountIdByAccountId
    implements _DerivedKeyPasswordByAccountIdByAccountId {
  const _$_DerivedKeyPasswordByAccountIdByAccountId(
      {required this.masterKey,
      required this.accountId,
      required this.password});

  factory _$_DerivedKeyPasswordByAccountIdByAccountId.fromJson(
          Map<String, dynamic> json) =>
      _$$_DerivedKeyPasswordByAccountIdByAccountIdFromJson(json);

  @override
  final String masterKey;
  @override
  final int accountId;
  @override
  final Password password;

  @override
  String toString() {
    return 'DerivedKeyPasswordByAccountId(masterKey: $masterKey, accountId: $accountId, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DerivedKeyPasswordByAccountIdByAccountId &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, accountId, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DerivedKeyPasswordByAccountIdByAccountIdCopyWith<
          _$_DerivedKeyPasswordByAccountIdByAccountId>
      get copyWith => __$$_DerivedKeyPasswordByAccountIdByAccountIdCopyWithImpl<
          _$_DerivedKeyPasswordByAccountIdByAccountId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DerivedKeyPasswordByAccountIdByAccountIdToJson(
      this,
    );
  }
}

abstract class _DerivedKeyPasswordByAccountIdByAccountId
    implements DerivedKeyPasswordByAccountId {
  const factory _DerivedKeyPasswordByAccountIdByAccountId(
          {required final String masterKey,
          required final int accountId,
          required final Password password}) =
      _$_DerivedKeyPasswordByAccountIdByAccountId;

  factory _DerivedKeyPasswordByAccountIdByAccountId.fromJson(
          Map<String, dynamic> json) =
      _$_DerivedKeyPasswordByAccountIdByAccountId.fromJson;

  @override
  String get masterKey;
  @override
  int get accountId;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeyPasswordByAccountIdByAccountIdCopyWith<
          _$_DerivedKeyPasswordByAccountIdByAccountId>
      get copyWith => throw _privateConstructorUsedError;
}
