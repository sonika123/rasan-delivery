// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryDetailsResponse _$DeliveryDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DeliveryDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$DeliveryDetailsResponse {
  bool get success => throw _privateConstructorUsedError;
  DeliveryDetailsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryDetailsResponseCopyWith<DeliveryDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDetailsResponseCopyWith<$Res> {
  factory $DeliveryDetailsResponseCopyWith(DeliveryDetailsResponse value,
          $Res Function(DeliveryDetailsResponse) then) =
      _$DeliveryDetailsResponseCopyWithImpl<$Res, DeliveryDetailsResponse>;
  @useResult
  $Res call({bool success, DeliveryDetailsData data});

  $DeliveryDetailsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DeliveryDetailsResponseCopyWithImpl<$Res,
        $Val extends DeliveryDetailsResponse>
    implements $DeliveryDetailsResponseCopyWith<$Res> {
  _$DeliveryDetailsResponseCopyWithImpl(this._value, this._then);

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
              as DeliveryDetailsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryDetailsDataCopyWith<$Res> get data {
    return $DeliveryDetailsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryDetailsResponseImplCopyWith<$Res>
    implements $DeliveryDetailsResponseCopyWith<$Res> {
  factory _$$DeliveryDetailsResponseImplCopyWith(
          _$DeliveryDetailsResponseImpl value,
          $Res Function(_$DeliveryDetailsResponseImpl) then) =
      __$$DeliveryDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, DeliveryDetailsData data});

  @override
  $DeliveryDetailsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeliveryDetailsResponseImplCopyWithImpl<$Res>
    extends _$DeliveryDetailsResponseCopyWithImpl<$Res,
        _$DeliveryDetailsResponseImpl>
    implements _$$DeliveryDetailsResponseImplCopyWith<$Res> {
  __$$DeliveryDetailsResponseImplCopyWithImpl(
      _$DeliveryDetailsResponseImpl _value,
      $Res Function(_$DeliveryDetailsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$DeliveryDetailsResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeliveryDetailsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryDetailsResponseImpl implements _DeliveryDetailsResponse {
  const _$DeliveryDetailsResponseImpl(
      {required this.success, required this.data});

  factory _$DeliveryDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryDetailsResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final DeliveryDetailsData data;

  @override
  String toString() {
    return 'DeliveryDetailsResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDetailsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryDetailsResponseImplCopyWith<_$DeliveryDetailsResponseImpl>
      get copyWith => __$$DeliveryDetailsResponseImplCopyWithImpl<
          _$DeliveryDetailsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _DeliveryDetailsResponse implements DeliveryDetailsResponse {
  const factory _DeliveryDetailsResponse(
      {required final bool success,
      required final DeliveryDetailsData data}) = _$DeliveryDetailsResponseImpl;

  factory _DeliveryDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$DeliveryDetailsResponseImpl.fromJson;

  @override
  bool get success;
  @override
  DeliveryDetailsData get data;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryDetailsResponseImplCopyWith<_$DeliveryDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeliveryDetailsData _$DeliveryDetailsDataFromJson(Map<String, dynamic> json) {
  return _DeliveryDetailsData.fromJson(json);
}

/// @nodoc
mixin _$DeliveryDetailsData {
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Vehicle get vehicle => throw _privateConstructorUsedError;
  List<OrdersListData>? get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryDetailsDataCopyWith<DeliveryDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDetailsDataCopyWith<$Res> {
  factory $DeliveryDetailsDataCopyWith(
          DeliveryDetailsData value, $Res Function(DeliveryDetailsData) then) =
      _$DeliveryDetailsDataCopyWithImpl<$Res, DeliveryDetailsData>;
  @useResult
  $Res call({int id, User user, Vehicle vehicle, List<OrdersListData>? orders});

  $UserCopyWith<$Res> get user;
  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class _$DeliveryDetailsDataCopyWithImpl<$Res, $Val extends DeliveryDetailsData>
    implements $DeliveryDetailsDataCopyWith<$Res> {
  _$DeliveryDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? vehicle = null,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrdersListData>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res> get vehicle {
    return $VehicleCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryDetailsDataImplCopyWith<$Res>
    implements $DeliveryDetailsDataCopyWith<$Res> {
  factory _$$DeliveryDetailsDataImplCopyWith(_$DeliveryDetailsDataImpl value,
          $Res Function(_$DeliveryDetailsDataImpl) then) =
      __$$DeliveryDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, User user, Vehicle vehicle, List<OrdersListData>? orders});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$$DeliveryDetailsDataImplCopyWithImpl<$Res>
    extends _$DeliveryDetailsDataCopyWithImpl<$Res, _$DeliveryDetailsDataImpl>
    implements _$$DeliveryDetailsDataImplCopyWith<$Res> {
  __$$DeliveryDetailsDataImplCopyWithImpl(_$DeliveryDetailsDataImpl _value,
      $Res Function(_$DeliveryDetailsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? vehicle = null,
    Object? orders = freezed,
  }) {
    return _then(_$DeliveryDetailsDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrdersListData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryDetailsDataImpl implements _DeliveryDetailsData {
  const _$DeliveryDetailsDataImpl(
      {required this.id,
      required this.user,
      required this.vehicle,
      final List<OrdersListData>? orders})
      : _orders = orders;

  factory _$DeliveryDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryDetailsDataImplFromJson(json);

  @override
  final int id;
  @override
  final User user;
  @override
  final Vehicle vehicle;
  final List<OrdersListData>? _orders;
  @override
  List<OrdersListData>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeliveryDetailsData(id: $id, user: $user, vehicle: $vehicle, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDetailsDataImpl &&
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
  _$$DeliveryDetailsDataImplCopyWith<_$DeliveryDetailsDataImpl> get copyWith =>
      __$$DeliveryDetailsDataImplCopyWithImpl<_$DeliveryDetailsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _DeliveryDetailsData implements DeliveryDetailsData {
  const factory _DeliveryDetailsData(
      {required final int id,
      required final User user,
      required final Vehicle vehicle,
      final List<OrdersListData>? orders}) = _$DeliveryDetailsDataImpl;

  factory _DeliveryDetailsData.fromJson(Map<String, dynamic> json) =
      _$DeliveryDetailsDataImpl.fromJson;

  @override
  int get id;
  @override
  User get user;
  @override
  Vehicle get vehicle;
  @override
  List<OrdersListData>? get orders;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryDetailsDataImplCopyWith<_$DeliveryDetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get username => throw _privateConstructorUsedError;
  bool? get is_active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String? username, bool? is_active});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? is_active = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, bool? is_active});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? is_active = freezed,
  }) {
    return _then(_$UserImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({this.username, this.is_active});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? username;
  @override
  final bool? is_active;

  @override
  String toString() {
    return 'User(username: $username, is_active: $is_active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, is_active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User({final String? username, final bool? is_active}) =
      _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get username;
  @override
  bool? get is_active;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vehicle _$VehicleFromJson(Map<String, dynamic> json) {
  return _Vehicle.fromJson(json);
}

/// @nodoc
mixin _$Vehicle {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get vehicle_type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res, Vehicle>;
  @useResult
  $Res call({int? id, String? name, String? number, String? vehicle_type});
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res, $Val extends Vehicle>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? vehicle_type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_type: freezed == vehicle_type
          ? _value.vehicle_type
          : vehicle_type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleImplCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$$VehicleImplCopyWith(
          _$VehicleImpl value, $Res Function(_$VehicleImpl) then) =
      __$$VehicleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? number, String? vehicle_type});
}

/// @nodoc
class __$$VehicleImplCopyWithImpl<$Res>
    extends _$VehicleCopyWithImpl<$Res, _$VehicleImpl>
    implements _$$VehicleImplCopyWith<$Res> {
  __$$VehicleImplCopyWithImpl(
      _$VehicleImpl _value, $Res Function(_$VehicleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? vehicle_type = freezed,
  }) {
    return _then(_$VehicleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_type: freezed == vehicle_type
          ? _value.vehicle_type
          : vehicle_type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleImpl implements _Vehicle {
  const _$VehicleImpl({this.id, this.name, this.number, this.vehicle_type});

  factory _$VehicleImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? number;
  @override
  final String? vehicle_type;

  @override
  String toString() {
    return 'Vehicle(id: $id, name: $name, number: $number, vehicle_type: $vehicle_type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.vehicle_type, vehicle_type) ||
                other.vehicle_type == vehicle_type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, number, vehicle_type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleImplCopyWith<_$VehicleImpl> get copyWith =>
      __$$VehicleImplCopyWithImpl<_$VehicleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleImplToJson(
      this,
    );
  }
}

abstract class _Vehicle implements Vehicle {
  const factory _Vehicle(
      {final int? id,
      final String? name,
      final String? number,
      final String? vehicle_type}) = _$VehicleImpl;

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$VehicleImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get number;
  @override
  String? get vehicle_type;
  @override
  @JsonKey(ignore: true)
  _$$VehicleImplCopyWith<_$VehicleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrdersListData _$OrdersListDataFromJson(Map<String, dynamic> json) {
  return _OrdersListData.fromJson(json);
}

/// @nodoc
mixin _$OrdersListData {
  int get id => throw _privateConstructorUsedError;
  int? get user_profile_id => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get customer_name => throw _privateConstructorUsedError;
  String? get shop_name => throw _privateConstructorUsedError;
  ShippingAddressDetails? get shipping_address_details =>
      throw _privateConstructorUsedError;
  String? get total_amount => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get preferable_delivery_time => throw _privateConstructorUsedError;
  String? get delivery_status => throw _privateConstructorUsedError;
  bool? get order_confirmation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersListDataCopyWith<OrdersListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersListDataCopyWith<$Res> {
  factory $OrdersListDataCopyWith(
          OrdersListData value, $Res Function(OrdersListData) then) =
      _$OrdersListDataCopyWithImpl<$Res, OrdersListData>;
  @useResult
  $Res call(
      {int id,
      int? user_profile_id,
      String? phone,
      String? status,
      String? type,
      String? customer_name,
      String? shop_name,
      ShippingAddressDetails? shipping_address_details,
      String? total_amount,
      String? comment,
      String? preferable_delivery_time,
      String? delivery_status,
      bool? order_confirmation});

  $ShippingAddressDetailsCopyWith<$Res>? get shipping_address_details;
}

/// @nodoc
class _$OrdersListDataCopyWithImpl<$Res, $Val extends OrdersListData>
    implements $OrdersListDataCopyWith<$Res> {
  _$OrdersListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_profile_id = freezed,
    Object? phone = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? customer_name = freezed,
    Object? shop_name = freezed,
    Object? shipping_address_details = freezed,
    Object? total_amount = freezed,
    Object? comment = freezed,
    Object? preferable_delivery_time = freezed,
    Object? delivery_status = freezed,
    Object? order_confirmation = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_profile_id: freezed == user_profile_id
          ? _value.user_profile_id
          : user_profile_id // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_name: freezed == customer_name
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      shop_name: freezed == shop_name
          ? _value.shop_name
          : shop_name // ignore: cast_nullable_to_non_nullable
              as String?,
      shipping_address_details: freezed == shipping_address_details
          ? _value.shipping_address_details
          : shipping_address_details // ignore: cast_nullable_to_non_nullable
              as ShippingAddressDetails?,
      total_amount: freezed == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      preferable_delivery_time: freezed == preferable_delivery_time
          ? _value.preferable_delivery_time
          : preferable_delivery_time // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_status: freezed == delivery_status
          ? _value.delivery_status
          : delivery_status // ignore: cast_nullable_to_non_nullable
              as String?,
      order_confirmation: freezed == order_confirmation
          ? _value.order_confirmation
          : order_confirmation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressDetailsCopyWith<$Res>? get shipping_address_details {
    if (_value.shipping_address_details == null) {
      return null;
    }

    return $ShippingAddressDetailsCopyWith<$Res>(
        _value.shipping_address_details!, (value) {
      return _then(_value.copyWith(shipping_address_details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrdersListDataImplCopyWith<$Res>
    implements $OrdersListDataCopyWith<$Res> {
  factory _$$OrdersListDataImplCopyWith(_$OrdersListDataImpl value,
          $Res Function(_$OrdersListDataImpl) then) =
      __$$OrdersListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? user_profile_id,
      String? phone,
      String? status,
      String? type,
      String? customer_name,
      String? shop_name,
      ShippingAddressDetails? shipping_address_details,
      String? total_amount,
      String? comment,
      String? preferable_delivery_time,
      String? delivery_status,
      bool? order_confirmation});

  @override
  $ShippingAddressDetailsCopyWith<$Res>? get shipping_address_details;
}

/// @nodoc
class __$$OrdersListDataImplCopyWithImpl<$Res>
    extends _$OrdersListDataCopyWithImpl<$Res, _$OrdersListDataImpl>
    implements _$$OrdersListDataImplCopyWith<$Res> {
  __$$OrdersListDataImplCopyWithImpl(
      _$OrdersListDataImpl _value, $Res Function(_$OrdersListDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_profile_id = freezed,
    Object? phone = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? customer_name = freezed,
    Object? shop_name = freezed,
    Object? shipping_address_details = freezed,
    Object? total_amount = freezed,
    Object? comment = freezed,
    Object? preferable_delivery_time = freezed,
    Object? delivery_status = freezed,
    Object? order_confirmation = freezed,
  }) {
    return _then(_$OrdersListDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_profile_id: freezed == user_profile_id
          ? _value.user_profile_id
          : user_profile_id // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_name: freezed == customer_name
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      shop_name: freezed == shop_name
          ? _value.shop_name
          : shop_name // ignore: cast_nullable_to_non_nullable
              as String?,
      shipping_address_details: freezed == shipping_address_details
          ? _value.shipping_address_details
          : shipping_address_details // ignore: cast_nullable_to_non_nullable
              as ShippingAddressDetails?,
      total_amount: freezed == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      preferable_delivery_time: freezed == preferable_delivery_time
          ? _value.preferable_delivery_time
          : preferable_delivery_time // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_status: freezed == delivery_status
          ? _value.delivery_status
          : delivery_status // ignore: cast_nullable_to_non_nullable
              as String?,
      order_confirmation: freezed == order_confirmation
          ? _value.order_confirmation
          : order_confirmation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersListDataImpl implements _OrdersListData {
  const _$OrdersListDataImpl(
      {required this.id,
      this.user_profile_id,
      this.phone,
      this.status,
      this.type,
      this.customer_name,
      this.shop_name,
      this.shipping_address_details,
      this.total_amount,
      this.comment,
      this.preferable_delivery_time,
      this.delivery_status,
      this.order_confirmation});

  factory _$OrdersListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersListDataImplFromJson(json);

  @override
  final int id;
  @override
  final int? user_profile_id;
  @override
  final String? phone;
  @override
  final String? status;
  @override
  final String? type;
  @override
  final String? customer_name;
  @override
  final String? shop_name;
  @override
  final ShippingAddressDetails? shipping_address_details;
  @override
  final String? total_amount;
  @override
  final String? comment;
  @override
  final String? preferable_delivery_time;
  @override
  final String? delivery_status;
  @override
  final bool? order_confirmation;

  @override
  String toString() {
    return 'OrdersListData(id: $id, user_profile_id: $user_profile_id, phone: $phone, status: $status, type: $type, customer_name: $customer_name, shop_name: $shop_name, shipping_address_details: $shipping_address_details, total_amount: $total_amount, comment: $comment, preferable_delivery_time: $preferable_delivery_time, delivery_status: $delivery_status, order_confirmation: $order_confirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersListDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_profile_id, user_profile_id) ||
                other.user_profile_id == user_profile_id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.customer_name, customer_name) ||
                other.customer_name == customer_name) &&
            (identical(other.shop_name, shop_name) ||
                other.shop_name == shop_name) &&
            (identical(
                    other.shipping_address_details, shipping_address_details) ||
                other.shipping_address_details == shipping_address_details) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(
                    other.preferable_delivery_time, preferable_delivery_time) ||
                other.preferable_delivery_time == preferable_delivery_time) &&
            (identical(other.delivery_status, delivery_status) ||
                other.delivery_status == delivery_status) &&
            (identical(other.order_confirmation, order_confirmation) ||
                other.order_confirmation == order_confirmation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user_profile_id,
      phone,
      status,
      type,
      customer_name,
      shop_name,
      shipping_address_details,
      total_amount,
      comment,
      preferable_delivery_time,
      delivery_status,
      order_confirmation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersListDataImplCopyWith<_$OrdersListDataImpl> get copyWith =>
      __$$OrdersListDataImplCopyWithImpl<_$OrdersListDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersListDataImplToJson(
      this,
    );
  }
}

abstract class _OrdersListData implements OrdersListData {
  const factory _OrdersListData(
      {required final int id,
      final int? user_profile_id,
      final String? phone,
      final String? status,
      final String? type,
      final String? customer_name,
      final String? shop_name,
      final ShippingAddressDetails? shipping_address_details,
      final String? total_amount,
      final String? comment,
      final String? preferable_delivery_time,
      final String? delivery_status,
      final bool? order_confirmation}) = _$OrdersListDataImpl;

  factory _OrdersListData.fromJson(Map<String, dynamic> json) =
      _$OrdersListDataImpl.fromJson;

  @override
  int get id;
  @override
  int? get user_profile_id;
  @override
  String? get phone;
  @override
  String? get status;
  @override
  String? get type;
  @override
  String? get customer_name;
  @override
  String? get shop_name;
  @override
  ShippingAddressDetails? get shipping_address_details;
  @override
  String? get total_amount;
  @override
  String? get comment;
  @override
  String? get preferable_delivery_time;
  @override
  String? get delivery_status;
  @override
  bool? get order_confirmation;
  @override
  @JsonKey(ignore: true)
  _$$OrdersListDataImplCopyWith<_$OrdersListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingAddressDetails _$ShippingAddressDetailsFromJson(
    Map<String, dynamic> json) {
  return _ShippingAddressDetails.fromJson(json);
}

/// @nodoc
mixin _$ShippingAddressDetails {
  int get id => throw _privateConstructorUsedError;
  bool? get is_default => throw _privateConstructorUsedError;
  ProvinceCityArea? get province => throw _privateConstructorUsedError;
  ProvinceCityArea? get city => throw _privateConstructorUsedError;
  ProvinceCityArea? get area => throw _privateConstructorUsedError;
  String? get detail_address => throw _privateConstructorUsedError;
  String? get map_latitude => throw _privateConstructorUsedError;
  String? get map_longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingAddressDetailsCopyWith<ShippingAddressDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressDetailsCopyWith<$Res> {
  factory $ShippingAddressDetailsCopyWith(ShippingAddressDetails value,
          $Res Function(ShippingAddressDetails) then) =
      _$ShippingAddressDetailsCopyWithImpl<$Res, ShippingAddressDetails>;
  @useResult
  $Res call(
      {int id,
      bool? is_default,
      ProvinceCityArea? province,
      ProvinceCityArea? city,
      ProvinceCityArea? area,
      String? detail_address,
      String? map_latitude,
      String? map_longitude});

  $ProvinceCityAreaCopyWith<$Res>? get province;
  $ProvinceCityAreaCopyWith<$Res>? get city;
  $ProvinceCityAreaCopyWith<$Res>? get area;
}

/// @nodoc
class _$ShippingAddressDetailsCopyWithImpl<$Res,
        $Val extends ShippingAddressDetails>
    implements $ShippingAddressDetailsCopyWith<$Res> {
  _$ShippingAddressDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_default = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? area = freezed,
    Object? detail_address = freezed,
    Object? map_latitude = freezed,
    Object? map_longitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_default: freezed == is_default
          ? _value.is_default
          : is_default // ignore: cast_nullable_to_non_nullable
              as bool?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceCityArea?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as ProvinceCityArea?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as ProvinceCityArea?,
      detail_address: freezed == detail_address
          ? _value.detail_address
          : detail_address // ignore: cast_nullable_to_non_nullable
              as String?,
      map_latitude: freezed == map_latitude
          ? _value.map_latitude
          : map_latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      map_longitude: freezed == map_longitude
          ? _value.map_longitude
          : map_longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProvinceCityAreaCopyWith<$Res>? get province {
    if (_value.province == null) {
      return null;
    }

    return $ProvinceCityAreaCopyWith<$Res>(_value.province!, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProvinceCityAreaCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $ProvinceCityAreaCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProvinceCityAreaCopyWith<$Res>? get area {
    if (_value.area == null) {
      return null;
    }

    return $ProvinceCityAreaCopyWith<$Res>(_value.area!, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShippingAddressDetailsImplCopyWith<$Res>
    implements $ShippingAddressDetailsCopyWith<$Res> {
  factory _$$ShippingAddressDetailsImplCopyWith(
          _$ShippingAddressDetailsImpl value,
          $Res Function(_$ShippingAddressDetailsImpl) then) =
      __$$ShippingAddressDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool? is_default,
      ProvinceCityArea? province,
      ProvinceCityArea? city,
      ProvinceCityArea? area,
      String? detail_address,
      String? map_latitude,
      String? map_longitude});

  @override
  $ProvinceCityAreaCopyWith<$Res>? get province;
  @override
  $ProvinceCityAreaCopyWith<$Res>? get city;
  @override
  $ProvinceCityAreaCopyWith<$Res>? get area;
}

/// @nodoc
class __$$ShippingAddressDetailsImplCopyWithImpl<$Res>
    extends _$ShippingAddressDetailsCopyWithImpl<$Res,
        _$ShippingAddressDetailsImpl>
    implements _$$ShippingAddressDetailsImplCopyWith<$Res> {
  __$$ShippingAddressDetailsImplCopyWithImpl(
      _$ShippingAddressDetailsImpl _value,
      $Res Function(_$ShippingAddressDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_default = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? area = freezed,
    Object? detail_address = freezed,
    Object? map_latitude = freezed,
    Object? map_longitude = freezed,
  }) {
    return _then(_$ShippingAddressDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_default: freezed == is_default
          ? _value.is_default
          : is_default // ignore: cast_nullable_to_non_nullable
              as bool?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceCityArea?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as ProvinceCityArea?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as ProvinceCityArea?,
      detail_address: freezed == detail_address
          ? _value.detail_address
          : detail_address // ignore: cast_nullable_to_non_nullable
              as String?,
      map_latitude: freezed == map_latitude
          ? _value.map_latitude
          : map_latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      map_longitude: freezed == map_longitude
          ? _value.map_longitude
          : map_longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingAddressDetailsImpl implements _ShippingAddressDetails {
  const _$ShippingAddressDetailsImpl(
      {required this.id,
      this.is_default,
      this.province,
      this.city,
      this.area,
      this.detail_address,
      this.map_latitude,
      this.map_longitude});

  factory _$ShippingAddressDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingAddressDetailsImplFromJson(json);

  @override
  final int id;
  @override
  final bool? is_default;
  @override
  final ProvinceCityArea? province;
  @override
  final ProvinceCityArea? city;
  @override
  final ProvinceCityArea? area;
  @override
  final String? detail_address;
  @override
  final String? map_latitude;
  @override
  final String? map_longitude;

  @override
  String toString() {
    return 'ShippingAddressDetails(id: $id, is_default: $is_default, province: $province, city: $city, area: $area, detail_address: $detail_address, map_latitude: $map_latitude, map_longitude: $map_longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingAddressDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_default, is_default) ||
                other.is_default == is_default) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.detail_address, detail_address) ||
                other.detail_address == detail_address) &&
            (identical(other.map_latitude, map_latitude) ||
                other.map_latitude == map_latitude) &&
            (identical(other.map_longitude, map_longitude) ||
                other.map_longitude == map_longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, is_default, province, city,
      area, detail_address, map_latitude, map_longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingAddressDetailsImplCopyWith<_$ShippingAddressDetailsImpl>
      get copyWith => __$$ShippingAddressDetailsImplCopyWithImpl<
          _$ShippingAddressDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingAddressDetailsImplToJson(
      this,
    );
  }
}

abstract class _ShippingAddressDetails implements ShippingAddressDetails {
  const factory _ShippingAddressDetails(
      {required final int id,
      final bool? is_default,
      final ProvinceCityArea? province,
      final ProvinceCityArea? city,
      final ProvinceCityArea? area,
      final String? detail_address,
      final String? map_latitude,
      final String? map_longitude}) = _$ShippingAddressDetailsImpl;

  factory _ShippingAddressDetails.fromJson(Map<String, dynamic> json) =
      _$ShippingAddressDetailsImpl.fromJson;

  @override
  int get id;
  @override
  bool? get is_default;
  @override
  ProvinceCityArea? get province;
  @override
  ProvinceCityArea? get city;
  @override
  ProvinceCityArea? get area;
  @override
  String? get detail_address;
  @override
  String? get map_latitude;
  @override
  String? get map_longitude;
  @override
  @JsonKey(ignore: true)
  _$$ShippingAddressDetailsImplCopyWith<_$ShippingAddressDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProvinceCityArea _$ProvinceCityAreaFromJson(Map<String, dynamic> json) {
  return _ProvinceCityArea.fromJson(json);
}

/// @nodoc
mixin _$ProvinceCityArea {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceCityAreaCopyWith<ProvinceCityArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCityAreaCopyWith<$Res> {
  factory $ProvinceCityAreaCopyWith(
          ProvinceCityArea value, $Res Function(ProvinceCityArea) then) =
      _$ProvinceCityAreaCopyWithImpl<$Res, ProvinceCityArea>;
  @useResult
  $Res call({int id, String? name});
}

/// @nodoc
class _$ProvinceCityAreaCopyWithImpl<$Res, $Val extends ProvinceCityArea>
    implements $ProvinceCityAreaCopyWith<$Res> {
  _$ProvinceCityAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProvinceCityAreaImplCopyWith<$Res>
    implements $ProvinceCityAreaCopyWith<$Res> {
  factory _$$ProvinceCityAreaImplCopyWith(_$ProvinceCityAreaImpl value,
          $Res Function(_$ProvinceCityAreaImpl) then) =
      __$$ProvinceCityAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name});
}

/// @nodoc
class __$$ProvinceCityAreaImplCopyWithImpl<$Res>
    extends _$ProvinceCityAreaCopyWithImpl<$Res, _$ProvinceCityAreaImpl>
    implements _$$ProvinceCityAreaImplCopyWith<$Res> {
  __$$ProvinceCityAreaImplCopyWithImpl(_$ProvinceCityAreaImpl _value,
      $Res Function(_$ProvinceCityAreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_$ProvinceCityAreaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvinceCityAreaImpl implements _ProvinceCityArea {
  const _$ProvinceCityAreaImpl({required this.id, this.name});

  factory _$ProvinceCityAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvinceCityAreaImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ProvinceCityArea(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceCityAreaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinceCityAreaImplCopyWith<_$ProvinceCityAreaImpl> get copyWith =>
      __$$ProvinceCityAreaImplCopyWithImpl<_$ProvinceCityAreaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvinceCityAreaImplToJson(
      this,
    );
  }
}

abstract class _ProvinceCityArea implements ProvinceCityArea {
  const factory _ProvinceCityArea({required final int id, final String? name}) =
      _$ProvinceCityAreaImpl;

  factory _ProvinceCityArea.fromJson(Map<String, dynamic> json) =
      _$ProvinceCityAreaImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ProvinceCityAreaImplCopyWith<_$ProvinceCityAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
