// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deliveries_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveriesListResponse _$DeliveriesListResponseFromJson(
    Map<String, dynamic> json) {
  return _DeliveriesListResponse.fromJson(json);
}

/// @nodoc
mixin _$DeliveriesListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<DeliveriesData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveriesListResponseCopyWith<DeliveriesListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveriesListResponseCopyWith<$Res> {
  factory $DeliveriesListResponseCopyWith(DeliveriesListResponse value,
          $Res Function(DeliveriesListResponse) then) =
      _$DeliveriesListResponseCopyWithImpl<$Res, DeliveriesListResponse>;
  @useResult
  $Res call({bool success, List<DeliveriesData> data});
}

/// @nodoc
class _$DeliveriesListResponseCopyWithImpl<$Res,
        $Val extends DeliveriesListResponse>
    implements $DeliveriesListResponseCopyWith<$Res> {
  _$DeliveriesListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DeliveriesData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveriesListResponseImplCopyWith<$Res>
    implements $DeliveriesListResponseCopyWith<$Res> {
  factory _$$DeliveriesListResponseImplCopyWith(
          _$DeliveriesListResponseImpl value,
          $Res Function(_$DeliveriesListResponseImpl) then) =
      __$$DeliveriesListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<DeliveriesData> data});
}

/// @nodoc
class __$$DeliveriesListResponseImplCopyWithImpl<$Res>
    extends _$DeliveriesListResponseCopyWithImpl<$Res,
        _$DeliveriesListResponseImpl>
    implements _$$DeliveriesListResponseImplCopyWith<$Res> {
  __$$DeliveriesListResponseImplCopyWithImpl(
      _$DeliveriesListResponseImpl _value,
      $Res Function(_$DeliveriesListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$DeliveriesListResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DeliveriesData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveriesListResponseImpl implements _DeliveriesListResponse {
  const _$DeliveriesListResponseImpl(
      {required this.success, required final List<DeliveriesData> data})
      : _data = data;

  factory _$DeliveriesListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveriesListResponseImplFromJson(json);

  @override
  final bool success;
  final List<DeliveriesData> _data;
  @override
  List<DeliveriesData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DeliveriesListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveriesListResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveriesListResponseImplCopyWith<_$DeliveriesListResponseImpl>
      get copyWith => __$$DeliveriesListResponseImplCopyWithImpl<
          _$DeliveriesListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveriesListResponseImplToJson(
      this,
    );
  }
}

abstract class _DeliveriesListResponse implements DeliveriesListResponse {
  const factory _DeliveriesListResponse(
      {required final bool success,
      required final List<DeliveriesData> data}) = _$DeliveriesListResponseImpl;

  factory _DeliveriesListResponse.fromJson(Map<String, dynamic> json) =
      _$DeliveriesListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<DeliveriesData> get data;
  @override
  @JsonKey(ignore: true)
  _$$DeliveriesListResponseImplCopyWith<_$DeliveriesListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeliveriesData _$DeliveriesDataFromJson(Map<String, dynamic> json) {
  return _DeliveriesData.fromJson(json);
}

/// @nodoc
mixin _$DeliveriesData {
  int get id => throw _privateConstructorUsedError;
  int? get user => throw _privateConstructorUsedError;
  int? get vehicle => throw _privateConstructorUsedError;
  List<int>? get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveriesDataCopyWith<DeliveriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveriesDataCopyWith<$Res> {
  factory $DeliveriesDataCopyWith(
          DeliveriesData value, $Res Function(DeliveriesData) then) =
      _$DeliveriesDataCopyWithImpl<$Res, DeliveriesData>;
  @useResult
  $Res call({int id, int? user, int? vehicle, List<int>? orders});
}

/// @nodoc
class _$DeliveriesDataCopyWithImpl<$Res, $Val extends DeliveriesData>
    implements $DeliveriesDataCopyWith<$Res> {
  _$DeliveriesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? vehicle = freezed,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as int?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveriesDataImplCopyWith<$Res>
    implements $DeliveriesDataCopyWith<$Res> {
  factory _$$DeliveriesDataImplCopyWith(_$DeliveriesDataImpl value,
          $Res Function(_$DeliveriesDataImpl) then) =
      __$$DeliveriesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int? user, int? vehicle, List<int>? orders});
}

/// @nodoc
class __$$DeliveriesDataImplCopyWithImpl<$Res>
    extends _$DeliveriesDataCopyWithImpl<$Res, _$DeliveriesDataImpl>
    implements _$$DeliveriesDataImplCopyWith<$Res> {
  __$$DeliveriesDataImplCopyWithImpl(
      _$DeliveriesDataImpl _value, $Res Function(_$DeliveriesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? vehicle = freezed,
    Object? orders = freezed,
  }) {
    return _then(_$DeliveriesDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as int?,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveriesDataImpl implements _DeliveriesData {
  const _$DeliveriesDataImpl(
      {required this.id, this.user, this.vehicle, final List<int>? orders})
      : _orders = orders;

  factory _$DeliveriesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveriesDataImplFromJson(json);

  @override
  final int id;
  @override
  final int? user;
  @override
  final int? vehicle;
  final List<int>? _orders;
  @override
  List<int>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeliveriesData(id: $id, user: $user, vehicle: $vehicle, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveriesDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, vehicle,
      const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveriesDataImplCopyWith<_$DeliveriesDataImpl> get copyWith =>
      __$$DeliveriesDataImplCopyWithImpl<_$DeliveriesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveriesDataImplToJson(
      this,
    );
  }
}

abstract class _DeliveriesData implements DeliveriesData {
  const factory _DeliveriesData(
      {required final int id,
      final int? user,
      final int? vehicle,
      final List<int>? orders}) = _$DeliveriesDataImpl;

  factory _DeliveriesData.fromJson(Map<String, dynamic> json) =
      _$DeliveriesDataImpl.fromJson;

  @override
  int get id;
  @override
  int? get user;
  @override
  int? get vehicle;
  @override
  List<int>? get orders;
  @override
  @JsonKey(ignore: true)
  _$$DeliveriesDataImplCopyWith<_$DeliveriesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
