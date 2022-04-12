///
//  Generated code. Do not modify.
//  source: greeter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use resultDescriptor instead')
const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'errors', '3': 1, '4': 3, '5': 9, '10': 'errors'},
  ],
};

/// Descriptor for `Result`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDescriptor = $convert.base64Decode('CgZSZXN1bHQSFgoGZXJyb3JzGAEgAygJUgZlcnJvcnM=');
@$core.Deprecated('Use coordsDescriptor instead')
const Coords$json = const {
  '1': 'Coords',
  '2': const [
    const {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    const {'1': 'lon', '3': 2, '4': 1, '5': 1, '10': 'lon'},
  ],
};

/// Descriptor for `Coords`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coordsDescriptor = $convert.base64Decode('CgZDb29yZHMSEAoDbGF0GAEgASgBUgNsYXQSEAoDbG9uGAIgASgBUgNsb24=');
@$core.Deprecated('Use destinationDescriptor instead')
const Destination$json = const {
  '1': 'Destination',
  '2': const [
    const {'1': 'coords', '3': 1, '4': 1, '5': 11, '6': '.Coords', '10': 'coords'},
    const {'1': 'visit_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'visitTime'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Destination`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List destinationDescriptor = $convert.base64Decode('CgtEZXN0aW5hdGlvbhIfCgZjb29yZHMYASABKAsyBy5Db29yZHNSBmNvb3JkcxI5Cgp2aXNpdF90aW1lGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdmlzaXRUaW1lEiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlvbg==');
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
    const {'1': 'start_date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    const {'1': 'end_date', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDate'},
    const {'1': 'stops', '3': 99, '4': 3, '5': 11, '6': '.Destination', '10': 'stops'},
  ],
};

/// Descriptor for `Trip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripDescriptor = $convert.base64Decode('CgRUcmlwEhcKB3RyaXBfaWQYASABKA1SBnRyaXBJZBIXCgd1c2VyX2lkGAIgASgNUgZ1c2VySWQSOQoKc3RhcnRfZGF0ZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXN0YXJ0RGF0ZRI1CghlbmRfZGF0ZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB2VuZERhdGUSIgoFc3RvcHMYYyADKAsyDC5EZXN0aW5hdGlvblIFc3RvcHM=');
@$core.Deprecated('Use photoDescriptor instead')
const Photo$json = const {
  '1': 'Photo',
  '2': const [
    const {'1': 'photo_id', '3': 1, '4': 1, '5': 13, '10': 'photoId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'extension', '3': 3, '4': 1, '5': 9, '10': 'extension'},
    const {'1': 'date_taken', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dateTaken'},
    const {'1': 'url', '3': 5, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `Photo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List photoDescriptor = $convert.base64Decode('CgVQaG90bxIZCghwaG90b19pZBgBIAEoDVIHcGhvdG9JZBISCgRuYW1lGAIgASgJUgRuYW1lEhwKCWV4dGVuc2lvbhgDIAEoCVIJZXh0ZW5zaW9uEjkKCmRhdGVfdGFrZW4YBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglkYXRlVGFrZW4SEAoDdXJsGAUgASgJUgN1cmw=');
@$core.Deprecated('Use userResponseDescriptor instead')
const UserResponse$json = const {
  '1': 'UserResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.User', '9': 0, '10': 'user'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'error'},
  ],
  '8': const [
    const {'1': 'result'},
  ],
};

/// Descriptor for `UserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userResponseDescriptor = $convert.base64Decode('CgxVc2VyUmVzcG9uc2USGwoEdXNlchgBIAEoCzIFLlVzZXJIAFIEdXNlchIWCgVlcnJvchgCIAEoCUgAUgVlcnJvckIICgZyZXN1bHQ=');
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
    const {'1': 'trips', '3': 2, '4': 3, '5': 11, '6': '.Trip', '10': 'trips'},
  ],
};

/// Descriptor for `AddTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTripRequestDescriptor = $convert.base64Decode('Cg5BZGRUcmlwUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgNUgZ1c2VySWQSGwoFdHJpcHMYAiADKAsyBS5UcmlwUgV0cmlwcw==');
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
@$core.Deprecated('Use addDestPhotoRequestDescriptor instead')
const AddDestPhotoRequest$json = const {
  '1': 'AddDestPhotoRequest',
  '2': const [
    const {'1': 'coords', '3': 1, '4': 1, '5': 11, '6': '.Coords', '10': 'coords'},
    const {'1': 'photos', '3': 99, '4': 3, '5': 11, '6': '.Photo', '10': 'photos'},
  ],
};

/// Descriptor for `AddDestPhotoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDestPhotoRequestDescriptor = $convert.base64Decode('ChNBZGREZXN0UGhvdG9SZXF1ZXN0Eh8KBmNvb3JkcxgBIAEoCzIHLkNvb3Jkc1IGY29vcmRzEh4KBnBob3RvcxhjIAMoCzIGLlBob3RvUgZwaG90b3M=');
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
