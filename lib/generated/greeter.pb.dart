///
//  Generated code. Do not modify.
//  source: greeter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;

class Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Result', createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errors')
    ..hasRequiredFields = false
  ;

  Result._() : super();
  factory Result({
    $core.Iterable<$core.String>? errors,
  }) {
    final _result = create();
    if (errors != null) {
      _result.errors.addAll(errors);
    }
    return _result;
  }
  factory Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Result clone() => Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Result copyWith(void Function(Result) updates) => super.copyWith((message) => updates(message as Result)) as Result; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Result create() => Result._();
  Result createEmptyInstance() => create();
  static $pb.PbList<Result> createRepeated() => $pb.PbList<Result>();
  @$core.pragma('dart2js:noInline')
  static Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Result>(create);
  static Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get errors => $_getList(0);
}

class Coords extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Coords', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lon', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Coords._() : super();
  factory Coords({
    $core.double? lat,
    $core.double? lon,
  }) {
    final _result = create();
    if (lat != null) {
      _result.lat = lat;
    }
    if (lon != null) {
      _result.lon = lon;
    }
    return _result;
  }
  factory Coords.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Coords.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Coords clone() => Coords()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Coords copyWith(void Function(Coords) updates) => super.copyWith((message) => updates(message as Coords)) as Coords; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Coords create() => Coords._();
  Coords createEmptyInstance() => create();
  static $pb.PbList<Coords> createRepeated() => $pb.PbList<Coords>();
  @$core.pragma('dart2js:noInline')
  static Coords getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Coords>(create);
  static Coords? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get lon => $_getN(1);
  @$pb.TagNumber(2)
  set lon($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLon() => $_has(1);
  @$pb.TagNumber(2)
  void clearLon() => clearField(2);
}

class Destination extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Destination', createEmptyInstance: create)
    ..aOM<Coords>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coords', subBuilder: Coords.create)
    ..aOM<$1.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'visitTime', subBuilder: $1.Timestamp.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  Destination._() : super();
  factory Destination({
    Coords? coords,
    $1.Timestamp? visitTime,
    $core.String? description,
  }) {
    final _result = create();
    if (coords != null) {
      _result.coords = coords;
    }
    if (visitTime != null) {
      _result.visitTime = visitTime;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory Destination.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Destination.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Destination clone() => Destination()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Destination copyWith(void Function(Destination) updates) => super.copyWith((message) => updates(message as Destination)) as Destination; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Destination create() => Destination._();
  Destination createEmptyInstance() => create();
  static $pb.PbList<Destination> createRepeated() => $pb.PbList<Destination>();
  @$core.pragma('dart2js:noInline')
  static Destination getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Destination>(create);
  static Destination? _defaultInstance;

  @$pb.TagNumber(1)
  Coords get coords => $_getN(0);
  @$pb.TagNumber(1)
  set coords(Coords v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoords() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoords() => clearField(1);
  @$pb.TagNumber(1)
  Coords ensureCoords() => $_ensure(0);

  @$pb.TagNumber(3)
  $1.Timestamp get visitTime => $_getN(1);
  @$pb.TagNumber(3)
  set visitTime($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVisitTime() => $_has(1);
  @$pb.TagNumber(3)
  void clearVisitTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureVisitTime() => $_ensure(1);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
    $core.int? userId,
    $core.String? username,
    $core.String? email,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (username != null) {
      _result.username = username;
    }
    if (email != null) {
      _result.email = email;
    }
    return _result;
  }
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);
}

class Trip extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Trip', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU3)
    ..aOM<$1.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate', subBuilder: $1.Timestamp.create)
    ..pc<Destination>(99, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stops', $pb.PbFieldType.PM, subBuilder: Destination.create)
    ..hasRequiredFields = false
  ;

  Trip._() : super();
  factory Trip({
    $core.int? tripId,
    $core.int? userId,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
    $core.Iterable<Destination>? stops,
  }) {
    final _result = create();
    if (tripId != null) {
      _result.tripId = tripId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (endDate != null) {
      _result.endDate = endDate;
    }
    if (stops != null) {
      _result.stops.addAll(stops);
    }
    return _result;
  }
  factory Trip.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Trip.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Trip clone() => Trip()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Trip copyWith(void Function(Trip) updates) => super.copyWith((message) => updates(message as Trip)) as Trip; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Trip create() => Trip._();
  Trip createEmptyInstance() => create();
  static $pb.PbList<Trip> createRepeated() => $pb.PbList<Trip>();
  @$core.pragma('dart2js:noInline')
  static Trip getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Trip>(create);
  static Trip? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get tripId => $_getIZ(0);
  @$pb.TagNumber(1)
  set tripId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $1.Timestamp get startDate => $_getN(2);
  @$pb.TagNumber(3)
  set startDate($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartDate() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureStartDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get endDate => $_getN(3);
  @$pb.TagNumber(4)
  set endDate($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndDate() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureEndDate() => $_ensure(3);

  @$pb.TagNumber(99)
  $core.List<Destination> get stops => $_getList(4);
}

class Photo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Photo', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photoId', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extension')
    ..aOM<$1.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateTaken', subBuilder: $1.Timestamp.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  Photo._() : super();
  factory Photo({
    $core.int? photoId,
    $core.String? name,
    $core.String? extension_3,
    $1.Timestamp? dateTaken,
    $core.String? url,
  }) {
    final _result = create();
    if (photoId != null) {
      _result.photoId = photoId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (extension_3 != null) {
      _result.extension_3 = extension_3;
    }
    if (dateTaken != null) {
      _result.dateTaken = dateTaken;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory Photo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Photo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Photo clone() => Photo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Photo copyWith(void Function(Photo) updates) => super.copyWith((message) => updates(message as Photo)) as Photo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Photo create() => Photo._();
  Photo createEmptyInstance() => create();
  static $pb.PbList<Photo> createRepeated() => $pb.PbList<Photo>();
  @$core.pragma('dart2js:noInline')
  static Photo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Photo>(create);
  static Photo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get photoId => $_getIZ(0);
  @$pb.TagNumber(1)
  set photoId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhotoId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhotoId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get extension_3 => $_getSZ(2);
  @$pb.TagNumber(3)
  set extension_3($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtension_3() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtension_3() => clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get dateTaken => $_getN(3);
  @$pb.TagNumber(4)
  set dateTaken($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDateTaken() => $_has(3);
  @$pb.TagNumber(4)
  void clearDateTaken() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureDateTaken() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get url => $_getSZ(4);
  @$pb.TagNumber(5)
  set url($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearUrl() => clearField(5);
}

enum UserResponse_Result {
  user, 
  error, 
  notSet
}

class UserResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, UserResponse_Result> _UserResponse_ResultByTag = {
    1 : UserResponse_Result.user,
    2 : UserResponse_Result.error,
    0 : UserResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserResponse', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<User>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: User.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..hasRequiredFields = false
  ;

  UserResponse._() : super();
  factory UserResponse({
    User? user,
    $core.String? error,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory UserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserResponse clone() => UserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserResponse copyWith(void Function(UserResponse) updates) => super.copyWith((message) => updates(message as UserResponse)) as UserResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserResponse create() => UserResponse._();
  UserResponse createEmptyInstance() => create();
  static $pb.PbList<UserResponse> createRepeated() => $pb.PbList<UserResponse>();
  @$core.pragma('dart2js:noInline')
  static UserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserResponse>(create);
  static UserResponse? _defaultInstance;

  UserResponse_Result whichResult() => _UserResponse_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

class RegisterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  RegisterRequest._() : super();
  factory RegisterRequest({
    $core.String? username,
    $core.String? email,
    $core.String? password,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory RegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest)) as RegisterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterRequest create() => RegisterRequest._();
  RegisterRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest> createRepeated() => $pb.PbList<RegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest>(create);
  static RegisterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);
}

class LoginRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identity')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  LoginRequest._() : super();
  factory LoginRequest({
    $core.String? identity,
    $core.String? password,
  }) {
    final _result = create();
    if (identity != null) {
      _result.identity = identity;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory LoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)) as LoginRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identity => $_getSZ(0);
  @$pb.TagNumber(1)
  set identity($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class AddTripRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddTripRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU3)
    ..pc<Trip>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trips', $pb.PbFieldType.PM, subBuilder: Trip.create)
    ..hasRequiredFields = false
  ;

  AddTripRequest._() : super();
  factory AddTripRequest({
    $core.int? userId,
    $core.Iterable<Trip>? trips,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (trips != null) {
      _result.trips.addAll(trips);
    }
    return _result;
  }
  factory AddTripRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTripRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddTripRequest clone() => AddTripRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddTripRequest copyWith(void Function(AddTripRequest) updates) => super.copyWith((message) => updates(message as AddTripRequest)) as AddTripRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddTripRequest create() => AddTripRequest._();
  AddTripRequest createEmptyInstance() => create();
  static $pb.PbList<AddTripRequest> createRepeated() => $pb.PbList<AddTripRequest>();
  @$core.pragma('dart2js:noInline')
  static AddTripRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddTripRequest>(create);
  static AddTripRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Trip> get trips => $_getList(1);
}

class DeleteTripRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteTripRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  DeleteTripRequest._() : super();
  factory DeleteTripRequest({
    $core.int? userId,
    $core.int? tripId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (tripId != null) {
      _result.tripId = tripId;
    }
    return _result;
  }
  factory DeleteTripRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTripRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTripRequest clone() => DeleteTripRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTripRequest copyWith(void Function(DeleteTripRequest) updates) => super.copyWith((message) => updates(message as DeleteTripRequest)) as DeleteTripRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteTripRequest create() => DeleteTripRequest._();
  DeleteTripRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteTripRequest> createRepeated() => $pb.PbList<DeleteTripRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteTripRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTripRequest>(create);
  static DeleteTripRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get tripId => $_getIZ(1);
  @$pb.TagNumber(2)
  set tripId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTripId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTripId() => clearField(2);
}

class AddDestPhotoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddDestPhotoRequest', createEmptyInstance: create)
    ..aOM<Coords>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coords', subBuilder: Coords.create)
    ..pc<Photo>(99, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photos', $pb.PbFieldType.PM, subBuilder: Photo.create)
    ..hasRequiredFields = false
  ;

  AddDestPhotoRequest._() : super();
  factory AddDestPhotoRequest({
    Coords? coords,
    $core.Iterable<Photo>? photos,
  }) {
    final _result = create();
    if (coords != null) {
      _result.coords = coords;
    }
    if (photos != null) {
      _result.photos.addAll(photos);
    }
    return _result;
  }
  factory AddDestPhotoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDestPhotoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDestPhotoRequest clone() => AddDestPhotoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDestPhotoRequest copyWith(void Function(AddDestPhotoRequest) updates) => super.copyWith((message) => updates(message as AddDestPhotoRequest)) as AddDestPhotoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddDestPhotoRequest create() => AddDestPhotoRequest._();
  AddDestPhotoRequest createEmptyInstance() => create();
  static $pb.PbList<AddDestPhotoRequest> createRepeated() => $pb.PbList<AddDestPhotoRequest>();
  @$core.pragma('dart2js:noInline')
  static AddDestPhotoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDestPhotoRequest>(create);
  static AddDestPhotoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Coords get coords => $_getN(0);
  @$pb.TagNumber(1)
  set coords(Coords v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoords() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoords() => clearField(1);
  @$pb.TagNumber(1)
  Coords ensureCoords() => $_ensure(0);

  @$pb.TagNumber(99)
  $core.List<Photo> get photos => $_getList(1);
}

class TripsOfRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TripsOfRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  TripsOfRequest._() : super();
  factory TripsOfRequest({
    $core.int? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory TripsOfRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TripsOfRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TripsOfRequest clone() => TripsOfRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TripsOfRequest copyWith(void Function(TripsOfRequest) updates) => super.copyWith((message) => updates(message as TripsOfRequest)) as TripsOfRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TripsOfRequest create() => TripsOfRequest._();
  TripsOfRequest createEmptyInstance() => create();
  static $pb.PbList<TripsOfRequest> createRepeated() => $pb.PbList<TripsOfRequest>();
  @$core.pragma('dart2js:noInline')
  static TripsOfRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TripsOfRequest>(create);
  static TripsOfRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class TripsOfResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TripsOfResponse', createEmptyInstance: create)
    ..pc<Trip>(99, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trips', $pb.PbFieldType.PM, subBuilder: Trip.create)
    ..hasRequiredFields = false
  ;

  TripsOfResponse._() : super();
  factory TripsOfResponse({
    $core.Iterable<Trip>? trips,
  }) {
    final _result = create();
    if (trips != null) {
      _result.trips.addAll(trips);
    }
    return _result;
  }
  factory TripsOfResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TripsOfResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TripsOfResponse clone() => TripsOfResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TripsOfResponse copyWith(void Function(TripsOfResponse) updates) => super.copyWith((message) => updates(message as TripsOfResponse)) as TripsOfResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TripsOfResponse create() => TripsOfResponse._();
  TripsOfResponse createEmptyInstance() => create();
  static $pb.PbList<TripsOfResponse> createRepeated() => $pb.PbList<TripsOfResponse>();
  @$core.pragma('dart2js:noInline')
  static TripsOfResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TripsOfResponse>(create);
  static TripsOfResponse? _defaultInstance;

  @$pb.TagNumber(99)
  $core.List<Trip> get trips => $_getList(0);
}

class PhotosOfRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PhotosOfRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  PhotosOfRequest._() : super();
  factory PhotosOfRequest({
    $core.int? userId,
    $core.int? tripId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (tripId != null) {
      _result.tripId = tripId;
    }
    return _result;
  }
  factory PhotosOfRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PhotosOfRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PhotosOfRequest clone() => PhotosOfRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PhotosOfRequest copyWith(void Function(PhotosOfRequest) updates) => super.copyWith((message) => updates(message as PhotosOfRequest)) as PhotosOfRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PhotosOfRequest create() => PhotosOfRequest._();
  PhotosOfRequest createEmptyInstance() => create();
  static $pb.PbList<PhotosOfRequest> createRepeated() => $pb.PbList<PhotosOfRequest>();
  @$core.pragma('dart2js:noInline')
  static PhotosOfRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PhotosOfRequest>(create);
  static PhotosOfRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get tripId => $_getIZ(1);
  @$pb.TagNumber(2)
  set tripId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTripId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTripId() => clearField(2);
}

class PhotosOfResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PhotosOfResponse', createEmptyInstance: create)
    ..aOM<Photo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photo', subBuilder: Photo.create)
    ..hasRequiredFields = false
  ;

  PhotosOfResponse._() : super();
  factory PhotosOfResponse({
    Photo? photo,
  }) {
    final _result = create();
    if (photo != null) {
      _result.photo = photo;
    }
    return _result;
  }
  factory PhotosOfResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PhotosOfResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PhotosOfResponse clone() => PhotosOfResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PhotosOfResponse copyWith(void Function(PhotosOfResponse) updates) => super.copyWith((message) => updates(message as PhotosOfResponse)) as PhotosOfResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PhotosOfResponse create() => PhotosOfResponse._();
  PhotosOfResponse createEmptyInstance() => create();
  static $pb.PbList<PhotosOfResponse> createRepeated() => $pb.PbList<PhotosOfResponse>();
  @$core.pragma('dart2js:noInline')
  static PhotosOfResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PhotosOfResponse>(create);
  static PhotosOfResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Photo get photo => $_getN(0);
  @$pb.TagNumber(1)
  set photo(Photo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoto() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoto() => clearField(1);
  @$pb.TagNumber(1)
  Photo ensurePhoto() => $_ensure(0);
}

