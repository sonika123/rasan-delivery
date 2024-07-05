// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileResponse _$UserProfileResponseFromJson(Map<String, dynamic> json) {
  return _UserProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserProfileData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileResponseCopyWith<UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseCopyWith<$Res> {
  factory $UserProfileResponseCopyWith(
          UserProfileResponse value, $Res Function(UserProfileResponse) then) =
      _$UserProfileResponseCopyWithImpl<$Res, UserProfileResponse>;
  @useResult
  $Res call({bool success, String? message, UserProfileData data});

  $UserProfileDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserProfileResponseCopyWithImpl<$Res, $Val extends UserProfileResponse>
    implements $UserProfileResponseCopyWith<$Res> {
  _$UserProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res> get data {
    return $UserProfileDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileResponseImplCopyWith<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  factory _$$UserProfileResponseImplCopyWith(_$UserProfileResponseImpl value,
          $Res Function(_$UserProfileResponseImpl) then) =
      __$$UserProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, UserProfileData data});

  @override
  $UserProfileDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserProfileResponseImplCopyWithImpl<$Res>
    extends _$UserProfileResponseCopyWithImpl<$Res, _$UserProfileResponseImpl>
    implements _$$UserProfileResponseImplCopyWith<$Res> {
  __$$UserProfileResponseImplCopyWithImpl(_$UserProfileResponseImpl _value,
      $Res Function(_$UserProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$UserProfileResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileResponseImpl implements _UserProfileResponse {
  const _$UserProfileResponseImpl(
      {required this.success, this.message, required this.data});

  factory _$UserProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  @override
  final UserProfileData data;

  @override
  String toString() {
    return 'UserProfileResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileResponseImplCopyWith<_$UserProfileResponseImpl> get copyWith =>
      __$$UserProfileResponseImplCopyWithImpl<_$UserProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _UserProfileResponse implements UserProfileResponse {
  const factory _UserProfileResponse(
      {required final bool success,
      final String? message,
      required final UserProfileData data}) = _$UserProfileResponseImpl;

  factory _UserProfileResponse.fromJson(Map<String, dynamic> json) =
      _$UserProfileResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  UserProfileData get data;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileResponseImplCopyWith<_$UserProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) {
  return _UserProfileData.fromJson(json);
}

/// @nodoc
mixin _$UserProfileData {
  int get id => throw _privateConstructorUsedError;
  bool get is_submitted => throw _privateConstructorUsedError;
  bool get is_verified => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get full_name => throw _privateConstructorUsedError;
  String? get alternate_phone => throw _privateConstructorUsedError;
  String? get date_of_birth => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  BaseImageResponse? get profile_picture => throw _privateConstructorUsedError;
  ShopInfo? get shop => throw _privateConstructorUsedError;
  List<UserLocationData>? get addresses => throw _privateConstructorUsedError;
  ExtraInfo? get extra_info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDataCopyWith<UserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDataCopyWith<$Res> {
  factory $UserProfileDataCopyWith(
          UserProfileData value, $Res Function(UserProfileData) then) =
      _$UserProfileDataCopyWithImpl<$Res, UserProfileData>;
  @useResult
  $Res call(
      {int id,
      bool is_submitted,
      bool is_verified,
      String phone,
      String? full_name,
      String? alternate_phone,
      String? date_of_birth,
      String? previous,
      BaseImageResponse? profile_picture,
      ShopInfo? shop,
      List<UserLocationData>? addresses,
      ExtraInfo? extra_info});

  $BaseImageResponseCopyWith<$Res>? get profile_picture;
  $ShopInfoCopyWith<$Res>? get shop;
  $ExtraInfoCopyWith<$Res>? get extra_info;
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res, $Val extends UserProfileData>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_submitted = null,
    Object? is_verified = null,
    Object? phone = null,
    Object? full_name = freezed,
    Object? alternate_phone = freezed,
    Object? date_of_birth = freezed,
    Object? previous = freezed,
    Object? profile_picture = freezed,
    Object? shop = freezed,
    Object? addresses = freezed,
    Object? extra_info = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_submitted: null == is_submitted
          ? _value.is_submitted
          : is_submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      is_verified: null == is_verified
          ? _value.is_verified
          : is_verified // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      alternate_phone: freezed == alternate_phone
          ? _value.alternate_phone
          : alternate_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      date_of_birth: freezed == date_of_birth
          ? _value.date_of_birth
          : date_of_birth // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_picture: freezed == profile_picture
          ? _value.profile_picture
          : profile_picture // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopInfo?,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<UserLocationData>?,
      extra_info: freezed == extra_info
          ? _value.extra_info
          : extra_info // ignore: cast_nullable_to_non_nullable
              as ExtraInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseImageResponseCopyWith<$Res>? get profile_picture {
    if (_value.profile_picture == null) {
      return null;
    }

    return $BaseImageResponseCopyWith<$Res>(_value.profile_picture!, (value) {
      return _then(_value.copyWith(profile_picture: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopInfoCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $ShopInfoCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtraInfoCopyWith<$Res>? get extra_info {
    if (_value.extra_info == null) {
      return null;
    }

    return $ExtraInfoCopyWith<$Res>(_value.extra_info!, (value) {
      return _then(_value.copyWith(extra_info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileDataImplCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$$UserProfileDataImplCopyWith(_$UserProfileDataImpl value,
          $Res Function(_$UserProfileDataImpl) then) =
      __$$UserProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool is_submitted,
      bool is_verified,
      String phone,
      String? full_name,
      String? alternate_phone,
      String? date_of_birth,
      String? previous,
      BaseImageResponse? profile_picture,
      ShopInfo? shop,
      List<UserLocationData>? addresses,
      ExtraInfo? extra_info});

  @override
  $BaseImageResponseCopyWith<$Res>? get profile_picture;
  @override
  $ShopInfoCopyWith<$Res>? get shop;
  @override
  $ExtraInfoCopyWith<$Res>? get extra_info;
}

/// @nodoc
class __$$UserProfileDataImplCopyWithImpl<$Res>
    extends _$UserProfileDataCopyWithImpl<$Res, _$UserProfileDataImpl>
    implements _$$UserProfileDataImplCopyWith<$Res> {
  __$$UserProfileDataImplCopyWithImpl(
      _$UserProfileDataImpl _value, $Res Function(_$UserProfileDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_submitted = null,
    Object? is_verified = null,
    Object? phone = null,
    Object? full_name = freezed,
    Object? alternate_phone = freezed,
    Object? date_of_birth = freezed,
    Object? previous = freezed,
    Object? profile_picture = freezed,
    Object? shop = freezed,
    Object? addresses = freezed,
    Object? extra_info = freezed,
  }) {
    return _then(_$UserProfileDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_submitted: null == is_submitted
          ? _value.is_submitted
          : is_submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      is_verified: null == is_verified
          ? _value.is_verified
          : is_verified // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      alternate_phone: freezed == alternate_phone
          ? _value.alternate_phone
          : alternate_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      date_of_birth: freezed == date_of_birth
          ? _value.date_of_birth
          : date_of_birth // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_picture: freezed == profile_picture
          ? _value.profile_picture
          : profile_picture // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopInfo?,
      addresses: freezed == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<UserLocationData>?,
      extra_info: freezed == extra_info
          ? _value.extra_info
          : extra_info // ignore: cast_nullable_to_non_nullable
              as ExtraInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileDataImpl implements _UserProfileData {
  const _$UserProfileDataImpl(
      {required this.id,
      required this.is_submitted,
      required this.is_verified,
      required this.phone,
      this.full_name,
      this.alternate_phone,
      this.date_of_birth,
      this.previous,
      this.profile_picture,
      this.shop,
      final List<UserLocationData>? addresses,
      this.extra_info})
      : _addresses = addresses;

  factory _$UserProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileDataImplFromJson(json);

  @override
  final int id;
  @override
  final bool is_submitted;
  @override
  final bool is_verified;
  @override
  final String phone;
  @override
  final String? full_name;
  @override
  final String? alternate_phone;
  @override
  final String? date_of_birth;
  @override
  final String? previous;
  @override
  final BaseImageResponse? profile_picture;
  @override
  final ShopInfo? shop;
  final List<UserLocationData>? _addresses;
  @override
  List<UserLocationData>? get addresses {
    final value = _addresses;
    if (value == null) return null;
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ExtraInfo? extra_info;

  @override
  String toString() {
    return 'UserProfileData(id: $id, is_submitted: $is_submitted, is_verified: $is_verified, phone: $phone, full_name: $full_name, alternate_phone: $alternate_phone, date_of_birth: $date_of_birth, previous: $previous, profile_picture: $profile_picture, shop: $shop, addresses: $addresses, extra_info: $extra_info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_submitted, is_submitted) ||
                other.is_submitted == is_submitted) &&
            (identical(other.is_verified, is_verified) ||
                other.is_verified == is_verified) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.alternate_phone, alternate_phone) ||
                other.alternate_phone == alternate_phone) &&
            (identical(other.date_of_birth, date_of_birth) ||
                other.date_of_birth == date_of_birth) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.profile_picture, profile_picture) ||
                other.profile_picture == profile_picture) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            (identical(other.extra_info, extra_info) ||
                other.extra_info == extra_info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      is_submitted,
      is_verified,
      phone,
      full_name,
      alternate_phone,
      date_of_birth,
      previous,
      profile_picture,
      shop,
      const DeepCollectionEquality().hash(_addresses),
      extra_info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      __$$UserProfileDataImplCopyWithImpl<_$UserProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileDataImplToJson(
      this,
    );
  }
}

abstract class _UserProfileData implements UserProfileData {
  const factory _UserProfileData(
      {required final int id,
      required final bool is_submitted,
      required final bool is_verified,
      required final String phone,
      final String? full_name,
      final String? alternate_phone,
      final String? date_of_birth,
      final String? previous,
      final BaseImageResponse? profile_picture,
      final ShopInfo? shop,
      final List<UserLocationData>? addresses,
      final ExtraInfo? extra_info}) = _$UserProfileDataImpl;

  factory _UserProfileData.fromJson(Map<String, dynamic> json) =
      _$UserProfileDataImpl.fromJson;

  @override
  int get id;
  @override
  bool get is_submitted;
  @override
  bool get is_verified;
  @override
  String get phone;
  @override
  String? get full_name;
  @override
  String? get alternate_phone;
  @override
  String? get date_of_birth;
  @override
  String? get previous;
  @override
  BaseImageResponse? get profile_picture;
  @override
  ShopInfo? get shop;
  @override
  List<UserLocationData>? get addresses;
  @override
  ExtraInfo? get extra_info;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopInfo _$ShopInfoFromJson(Map<String, dynamic> json) {
  return _ShopInfo.fromJson(json);
}

/// @nodoc
mixin _$ShopInfo {
  String? get name => throw _privateConstructorUsedError;
  String? get pan_vat_number => throw _privateConstructorUsedError;
  bool? get is_submitted => throw _privateConstructorUsedError;
  bool? get is_verified => throw _privateConstructorUsedError;
  BaseImageResponse? get store_photo => throw _privateConstructorUsedError;
  BaseImageResponse? get citizenship_front =>
      throw _privateConstructorUsedError;
  BaseImageResponse? get citizenship_back => throw _privateConstructorUsedError;
  BaseImageResponse? get pan_vat_certificate =>
      throw _privateConstructorUsedError;
  BaseImageResponse? get house_rent_agreement =>
      throw _privateConstructorUsedError;
  String? get retailer_agreement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopInfoCopyWith<ShopInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopInfoCopyWith<$Res> {
  factory $ShopInfoCopyWith(ShopInfo value, $Res Function(ShopInfo) then) =
      _$ShopInfoCopyWithImpl<$Res, ShopInfo>;
  @useResult
  $Res call(
      {String? name,
      String? pan_vat_number,
      bool? is_submitted,
      bool? is_verified,
      BaseImageResponse? store_photo,
      BaseImageResponse? citizenship_front,
      BaseImageResponse? citizenship_back,
      BaseImageResponse? pan_vat_certificate,
      BaseImageResponse? house_rent_agreement,
      String? retailer_agreement});

  $BaseImageResponseCopyWith<$Res>? get store_photo;
  $BaseImageResponseCopyWith<$Res>? get citizenship_front;
  $BaseImageResponseCopyWith<$Res>? get citizenship_back;
  $BaseImageResponseCopyWith<$Res>? get pan_vat_certificate;
  $BaseImageResponseCopyWith<$Res>? get house_rent_agreement;
}

/// @nodoc
class _$ShopInfoCopyWithImpl<$Res, $Val extends ShopInfo>
    implements $ShopInfoCopyWith<$Res> {
  _$ShopInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? pan_vat_number = freezed,
    Object? is_submitted = freezed,
    Object? is_verified = freezed,
    Object? store_photo = freezed,
    Object? citizenship_front = freezed,
    Object? citizenship_back = freezed,
    Object? pan_vat_certificate = freezed,
    Object? house_rent_agreement = freezed,
    Object? retailer_agreement = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pan_vat_number: freezed == pan_vat_number
          ? _value.pan_vat_number
          : pan_vat_number // ignore: cast_nullable_to_non_nullable
              as String?,
      is_submitted: freezed == is_submitted
          ? _value.is_submitted
          : is_submitted // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_verified: freezed == is_verified
          ? _value.is_verified
          : is_verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      store_photo: freezed == store_photo
          ? _value.store_photo
          : store_photo // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      citizenship_front: freezed == citizenship_front
          ? _value.citizenship_front
          : citizenship_front // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      citizenship_back: freezed == citizenship_back
          ? _value.citizenship_back
          : citizenship_back // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      pan_vat_certificate: freezed == pan_vat_certificate
          ? _value.pan_vat_certificate
          : pan_vat_certificate // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      house_rent_agreement: freezed == house_rent_agreement
          ? _value.house_rent_agreement
          : house_rent_agreement // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      retailer_agreement: freezed == retailer_agreement
          ? _value.retailer_agreement
          : retailer_agreement // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseImageResponseCopyWith<$Res>? get store_photo {
    if (_value.store_photo == null) {
      return null;
    }

    return $BaseImageResponseCopyWith<$Res>(_value.store_photo!, (value) {
      return _then(_value.copyWith(store_photo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseImageResponseCopyWith<$Res>? get citizenship_front {
    if (_value.citizenship_front == null) {
      return null;
    }

    return $BaseImageResponseCopyWith<$Res>(_value.citizenship_front!, (value) {
      return _then(_value.copyWith(citizenship_front: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseImageResponseCopyWith<$Res>? get citizenship_back {
    if (_value.citizenship_back == null) {
      return null;
    }

    return $BaseImageResponseCopyWith<$Res>(_value.citizenship_back!, (value) {
      return _then(_value.copyWith(citizenship_back: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseImageResponseCopyWith<$Res>? get pan_vat_certificate {
    if (_value.pan_vat_certificate == null) {
      return null;
    }

    return $BaseImageResponseCopyWith<$Res>(_value.pan_vat_certificate!,
        (value) {
      return _then(_value.copyWith(pan_vat_certificate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseImageResponseCopyWith<$Res>? get house_rent_agreement {
    if (_value.house_rent_agreement == null) {
      return null;
    }

    return $BaseImageResponseCopyWith<$Res>(_value.house_rent_agreement!,
        (value) {
      return _then(_value.copyWith(house_rent_agreement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShopInfoImplCopyWith<$Res>
    implements $ShopInfoCopyWith<$Res> {
  factory _$$ShopInfoImplCopyWith(
          _$ShopInfoImpl value, $Res Function(_$ShopInfoImpl) then) =
      __$$ShopInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? pan_vat_number,
      bool? is_submitted,
      bool? is_verified,
      BaseImageResponse? store_photo,
      BaseImageResponse? citizenship_front,
      BaseImageResponse? citizenship_back,
      BaseImageResponse? pan_vat_certificate,
      BaseImageResponse? house_rent_agreement,
      String? retailer_agreement});

  @override
  $BaseImageResponseCopyWith<$Res>? get store_photo;
  @override
  $BaseImageResponseCopyWith<$Res>? get citizenship_front;
  @override
  $BaseImageResponseCopyWith<$Res>? get citizenship_back;
  @override
  $BaseImageResponseCopyWith<$Res>? get pan_vat_certificate;
  @override
  $BaseImageResponseCopyWith<$Res>? get house_rent_agreement;
}

/// @nodoc
class __$$ShopInfoImplCopyWithImpl<$Res>
    extends _$ShopInfoCopyWithImpl<$Res, _$ShopInfoImpl>
    implements _$$ShopInfoImplCopyWith<$Res> {
  __$$ShopInfoImplCopyWithImpl(
      _$ShopInfoImpl _value, $Res Function(_$ShopInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? pan_vat_number = freezed,
    Object? is_submitted = freezed,
    Object? is_verified = freezed,
    Object? store_photo = freezed,
    Object? citizenship_front = freezed,
    Object? citizenship_back = freezed,
    Object? pan_vat_certificate = freezed,
    Object? house_rent_agreement = freezed,
    Object? retailer_agreement = freezed,
  }) {
    return _then(_$ShopInfoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pan_vat_number: freezed == pan_vat_number
          ? _value.pan_vat_number
          : pan_vat_number // ignore: cast_nullable_to_non_nullable
              as String?,
      is_submitted: freezed == is_submitted
          ? _value.is_submitted
          : is_submitted // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_verified: freezed == is_verified
          ? _value.is_verified
          : is_verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      store_photo: freezed == store_photo
          ? _value.store_photo
          : store_photo // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      citizenship_front: freezed == citizenship_front
          ? _value.citizenship_front
          : citizenship_front // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      citizenship_back: freezed == citizenship_back
          ? _value.citizenship_back
          : citizenship_back // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      pan_vat_certificate: freezed == pan_vat_certificate
          ? _value.pan_vat_certificate
          : pan_vat_certificate // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      house_rent_agreement: freezed == house_rent_agreement
          ? _value.house_rent_agreement
          : house_rent_agreement // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
      retailer_agreement: freezed == retailer_agreement
          ? _value.retailer_agreement
          : retailer_agreement // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopInfoImpl implements _ShopInfo {
  const _$ShopInfoImpl(
      {this.name,
      this.pan_vat_number,
      this.is_submitted,
      this.is_verified,
      this.store_photo,
      this.citizenship_front,
      this.citizenship_back,
      this.pan_vat_certificate,
      this.house_rent_agreement,
      this.retailer_agreement});

  factory _$ShopInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopInfoImplFromJson(json);

  @override
  final String? name;
  @override
  final String? pan_vat_number;
  @override
  final bool? is_submitted;
  @override
  final bool? is_verified;
  @override
  final BaseImageResponse? store_photo;
  @override
  final BaseImageResponse? citizenship_front;
  @override
  final BaseImageResponse? citizenship_back;
  @override
  final BaseImageResponse? pan_vat_certificate;
  @override
  final BaseImageResponse? house_rent_agreement;
  @override
  final String? retailer_agreement;

  @override
  String toString() {
    return 'ShopInfo(name: $name, pan_vat_number: $pan_vat_number, is_submitted: $is_submitted, is_verified: $is_verified, store_photo: $store_photo, citizenship_front: $citizenship_front, citizenship_back: $citizenship_back, pan_vat_certificate: $pan_vat_certificate, house_rent_agreement: $house_rent_agreement, retailer_agreement: $retailer_agreement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pan_vat_number, pan_vat_number) ||
                other.pan_vat_number == pan_vat_number) &&
            (identical(other.is_submitted, is_submitted) ||
                other.is_submitted == is_submitted) &&
            (identical(other.is_verified, is_verified) ||
                other.is_verified == is_verified) &&
            (identical(other.store_photo, store_photo) ||
                other.store_photo == store_photo) &&
            (identical(other.citizenship_front, citizenship_front) ||
                other.citizenship_front == citizenship_front) &&
            (identical(other.citizenship_back, citizenship_back) ||
                other.citizenship_back == citizenship_back) &&
            (identical(other.pan_vat_certificate, pan_vat_certificate) ||
                other.pan_vat_certificate == pan_vat_certificate) &&
            (identical(other.house_rent_agreement, house_rent_agreement) ||
                other.house_rent_agreement == house_rent_agreement) &&
            (identical(other.retailer_agreement, retailer_agreement) ||
                other.retailer_agreement == retailer_agreement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      pan_vat_number,
      is_submitted,
      is_verified,
      store_photo,
      citizenship_front,
      citizenship_back,
      pan_vat_certificate,
      house_rent_agreement,
      retailer_agreement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopInfoImplCopyWith<_$ShopInfoImpl> get copyWith =>
      __$$ShopInfoImplCopyWithImpl<_$ShopInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopInfoImplToJson(
      this,
    );
  }
}

abstract class _ShopInfo implements ShopInfo {
  const factory _ShopInfo(
      {final String? name,
      final String? pan_vat_number,
      final bool? is_submitted,
      final bool? is_verified,
      final BaseImageResponse? store_photo,
      final BaseImageResponse? citizenship_front,
      final BaseImageResponse? citizenship_back,
      final BaseImageResponse? pan_vat_certificate,
      final BaseImageResponse? house_rent_agreement,
      final String? retailer_agreement}) = _$ShopInfoImpl;

  factory _ShopInfo.fromJson(Map<String, dynamic> json) =
      _$ShopInfoImpl.fromJson;

  @override
  String? get name;
  @override
  String? get pan_vat_number;
  @override
  bool? get is_submitted;
  @override
  bool? get is_verified;
  @override
  BaseImageResponse? get store_photo;
  @override
  BaseImageResponse? get citizenship_front;
  @override
  BaseImageResponse? get citizenship_back;
  @override
  BaseImageResponse? get pan_vat_certificate;
  @override
  BaseImageResponse? get house_rent_agreement;
  @override
  String? get retailer_agreement;
  @override
  @JsonKey(ignore: true)
  _$$ShopInfoImplCopyWith<_$ShopInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtraInfo _$ExtraInfoFromJson(Map<String, dynamic> json) {
  return _ExtraInfo.fromJson(json);
}

/// @nodoc
mixin _$ExtraInfo {
  double? get loyalty_points => throw _privateConstructorUsedError;
  double? get cashback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtraInfoCopyWith<ExtraInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraInfoCopyWith<$Res> {
  factory $ExtraInfoCopyWith(ExtraInfo value, $Res Function(ExtraInfo) then) =
      _$ExtraInfoCopyWithImpl<$Res, ExtraInfo>;
  @useResult
  $Res call({double? loyalty_points, double? cashback});
}

/// @nodoc
class _$ExtraInfoCopyWithImpl<$Res, $Val extends ExtraInfo>
    implements $ExtraInfoCopyWith<$Res> {
  _$ExtraInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loyalty_points = freezed,
    Object? cashback = freezed,
  }) {
    return _then(_value.copyWith(
      loyalty_points: freezed == loyalty_points
          ? _value.loyalty_points
          : loyalty_points // ignore: cast_nullable_to_non_nullable
              as double?,
      cashback: freezed == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraInfoImplCopyWith<$Res>
    implements $ExtraInfoCopyWith<$Res> {
  factory _$$ExtraInfoImplCopyWith(
          _$ExtraInfoImpl value, $Res Function(_$ExtraInfoImpl) then) =
      __$$ExtraInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? loyalty_points, double? cashback});
}

/// @nodoc
class __$$ExtraInfoImplCopyWithImpl<$Res>
    extends _$ExtraInfoCopyWithImpl<$Res, _$ExtraInfoImpl>
    implements _$$ExtraInfoImplCopyWith<$Res> {
  __$$ExtraInfoImplCopyWithImpl(
      _$ExtraInfoImpl _value, $Res Function(_$ExtraInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loyalty_points = freezed,
    Object? cashback = freezed,
  }) {
    return _then(_$ExtraInfoImpl(
      loyalty_points: freezed == loyalty_points
          ? _value.loyalty_points
          : loyalty_points // ignore: cast_nullable_to_non_nullable
              as double?,
      cashback: freezed == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtraInfoImpl implements _ExtraInfo {
  const _$ExtraInfoImpl({this.loyalty_points, this.cashback});

  factory _$ExtraInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraInfoImplFromJson(json);

  @override
  final double? loyalty_points;
  @override
  final double? cashback;

  @override
  String toString() {
    return 'ExtraInfo(loyalty_points: $loyalty_points, cashback: $cashback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraInfoImpl &&
            (identical(other.loyalty_points, loyalty_points) ||
                other.loyalty_points == loyalty_points) &&
            (identical(other.cashback, cashback) ||
                other.cashback == cashback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, loyalty_points, cashback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraInfoImplCopyWith<_$ExtraInfoImpl> get copyWith =>
      __$$ExtraInfoImplCopyWithImpl<_$ExtraInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraInfoImplToJson(
      this,
    );
  }
}

abstract class _ExtraInfo implements ExtraInfo {
  const factory _ExtraInfo(
      {final double? loyalty_points, final double? cashback}) = _$ExtraInfoImpl;

  factory _ExtraInfo.fromJson(Map<String, dynamic> json) =
      _$ExtraInfoImpl.fromJson;

  @override
  double? get loyalty_points;
  @override
  double? get cashback;
  @override
  @JsonKey(ignore: true)
  _$$ExtraInfoImplCopyWith<_$ExtraInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
