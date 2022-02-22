///
//  Generated code. Do not modify.
//  source: greeter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use coordDescriptor instead')
const Coord$json = const {
  '1': 'Coord',
  '2': const [
    const {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    const {'1': 'long', '3': 2, '4': 1, '5': 1, '10': 'long'},
  ],
};

/// Descriptor for `Coord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coordDescriptor = $convert.base64Decode('CgVDb29yZBIQCgNsYXQYASABKAFSA2xhdBISCgRsb25nGAIgASgBUgRsb25n');
@$core.Deprecated('Use resultDescriptor instead')
const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'success'},
    const {'1': 'reason', '3': 2, '4': 1, '5': 11, '6': '.Result.Error', '9': 0, '10': 'reason'},
  ],
  '3': const [Result_Error$json],
  '8': const [
    const {'1': 'result'},
  ],
};

@$core.Deprecated('Use resultDescriptor instead')
const Result_Error$json = const {
  '1': 'Error',
  '2': const [
    const {'1': 'errors', '3': 1, '4': 3, '5': 9, '10': 'errors'},
  ],
};

/// Descriptor for `Result`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDescriptor = $convert.base64Decode('CgZSZXN1bHQSGgoHc3VjY2VzcxgBIAEoCEgAUgdzdWNjZXNzEicKBnJlYXNvbhgCIAEoCzINLlJlc3VsdC5FcnJvckgAUgZyZWFzb24aHwoFRXJyb3ISFgoGZXJyb3JzGAEgAygJUgZlcnJvcnNCCAoGcmVzdWx0');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 13, '10': 'userId'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEhcKB3VzZXJfaWQYASABKA1SBnVzZXJJZBIaCgh1c2VybmFtZRgCIAEoCVIIdXNlcm5hbWUSFAoFZW1haWwYAyABKAlSBWVtYWls');
@$core.Deprecated('Use tripDescriptor instead')
const Trip$json = const {
  '1': 'Trip',
  '2': const [
    const {'1': 'trip_id', '3': 1, '4': 1, '5': 13, '10': 'tripId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 13, '10': 'userId'},
    const {'1': 'stops', '3': 99, '4': 3, '5': 11, '6': '.Coord', '10': 'stops'},
  ],
};

/// Descriptor for `Trip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripDescriptor = $convert.base64Decode('CgRUcmlwEhcKB3RyaXBfaWQYASABKA1SBnRyaXBJZBIXCgd1c2VyX2lkGAIgASgNUgZ1c2VySWQSHAoFc3RvcHMYYyADKAsyBi5Db29yZFIFc3RvcHM=');
@$core.Deprecated('Use photoDescriptor instead')
const Photo$json = const {
  '1': 'Photo',
  '2': const [
    const {'1': 'photo_id', '3': 1, '4': 1, '5': 13, '10': 'photoId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'extension', '3': 3, '4': 1, '5': 9, '10': 'extension'},
    const {'1': 'data', '3': 99, '4': 1, '5': 12, '9': 0, '10': 'data'},
    const {'1': 'url', '3': 100, '4': 1, '5': 9, '9': 0, '10': 'url'},
  ],
  '8': const [
    const {'1': 'source'},
  ],
};

/// Descriptor for `Photo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List photoDescriptor = $convert.base64Decode('CgVQaG90bxIZCghwaG90b19pZBgBIAEoDVIHcGhvdG9JZBISCgRuYW1lGAIgASgJUgRuYW1lEhwKCWV4dGVuc2lvbhgDIAEoCVIJZXh0ZW5zaW9uEhQKBGRhdGEYYyABKAxIAFIEZGF0YRISCgN1cmwYZCABKAlIAFIDdXJsQggKBnNvdXJjZQ==');
@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode('Cg9SZWdpc3RlclJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhQKBWVtYWlsGAIgASgJUgVlbWFpbBIaCghwYXNzd29yZBgDIAEoCVIIcGFzc3dvcmQ=');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'identity', '3': 1, '4': 1, '5': 9, '10': 'identity'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSGgoIaWRlbnRpdHkYASABKAlSCGlkZW50aXR5EhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use addTripRequestDescriptor instead')
const AddTripRequest$json = const {
  '1': 'AddTripRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 13, '10': 'userId'},
    const {'1': 'stops', '3': 99, '4': 3, '5': 11, '6': '.Coord', '10': 'stops'},
  ],
};

/// Descriptor for `AddTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTripRequestDescriptor = $convert.base64Decode('Cg5BZGRUcmlwUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgNUgZ1c2VySWQSHAoFc3RvcHMYYyADKAsyBi5Db29yZFIFc3RvcHM=');
@$core.Deprecated('Use deleteTripRequestDescriptor instead')
const DeleteTripRequest$json = const {
  '1': 'DeleteTripRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 13, '10': 'userId'},
    const {'1': 'trip_id', '3': 2, '4': 1, '5': 13, '10': 'tripId'},
  ],
};

/// Descriptor for `DeleteTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTripRequestDescriptor = $convert.base64Decode('ChFEZWxldGVUcmlwUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgNUgZ1c2VySWQSFwoHdHJpcF9pZBgCIAEoDVIGdHJpcElk');
@$core.Deprecated('Use addPhotoRequestDescriptor instead')
const AddPhotoRequest$json = const {
  '1': 'AddPhotoRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 13, '10': 'userId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'extension', '3': 3, '4': 1, '5': 9, '10': 'extension'},
    const {'1': 'data', '3': 99, '4': 1, '5': 12, '9': 0, '10': 'data'},
    const {'1': 'url', '3': 100, '4': 1, '5': 9, '9': 0, '10': 'url'},
  ],
  '8': const [
    const {'1': 'source'},
  ],
};

/// Descriptor for `AddPhotoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPhotoRequestDescriptor = $convert.base64Decode('Cg9BZGRQaG90b1JlcXVlc3QSFwoHdXNlcl9pZBgBIAEoDVIGdXNlcklkEhIKBG5hbWUYAiABKAlSBG5hbWUSHAoJZXh0ZW5zaW9uGAMgASgJUglleHRlbnNpb24SFAoEZGF0YRhjIAEoDEgAUgRkYXRhEhIKA3VybBhkIAEoCUgAUgN1cmxCCAoGc291cmNl');
@$core.Deprecated('Use tripsOfRequestDescriptor instead')
const TripsOfRequest$json = const {
  '1': 'TripsOfRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 13, '10': 'userId'},
  ],
};

/// Descriptor for `TripsOfRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripsOfRequestDescriptor = $convert.base64Decode('Cg5Ucmlwc09mUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgNUgZ1c2VySWQ=');
@$core.Deprecated('Use tripsOfResponseDescriptor instead')
const TripsOfResponse$json = const {
  '1': 'TripsOfResponse',
  '2': const [
    const {'1': 'trips', '3': 99, '4': 3, '5': 11, '6': '.Trip', '10': 'trips'},
  ],
};

/// Descriptor for `TripsOfResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripsOfResponseDescriptor = $convert.base64Decode('Cg9Ucmlwc09mUmVzcG9uc2USGwoFdHJpcHMYYyADKAsyBS5UcmlwUgV0cmlwcw==');
@$core.Deprecated('Use photosOfRequestDescriptor instead')
const PhotosOfRequest$json = const {
  '1': 'PhotosOfRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 13, '10': 'userId'},
    const {'1': 'trip_id', '3': 2, '4': 1, '5': 13, '10': 'tripId'},
  ],
};

/// Descriptor for `PhotosOfRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List photosOfRequestDescriptor = $convert.base64Decode('Cg9QaG90b3NPZlJlcXVlc3QSFwoHdXNlcl9pZBgBIAEoDVIGdXNlcklkEhcKB3RyaXBfaWQYAiABKA1SBnRyaXBJZA==');
@$core.Deprecated('Use photosOfResponseDescriptor instead')
const PhotosOfResponse$json = const {
  '1': 'PhotosOfResponse',
  '2': const [
    const {'1': 'photo', '3': 1, '4': 1, '5': 11, '6': '.Photo', '10': 'photo'},
  ],
};

/// Descriptor for `PhotosOfResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List photosOfResponseDescriptor = $convert.base64Decode('ChBQaG90b3NPZlJlc3BvbnNlEhwKBXBob3RvGAEgASgLMgYuUGhvdG9SBXBob3Rv');
