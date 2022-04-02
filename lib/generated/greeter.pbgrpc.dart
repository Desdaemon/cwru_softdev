///
//  Generated code. Do not modify.
//  source: greeter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'greeter.pb.dart' as $0;
export 'greeter.pb.dart';

class UsersClient extends $grpc.Client {
  static final _$register = $grpc.ClientMethod<$0.RegisterRequest, $0.User>(
      '/Users/register',
      ($0.RegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.User>(
      '/Users/login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));

  UsersClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.User> register($0.RegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> login($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }
}

abstract class UsersServiceBase extends $grpc.Service {
  $core.String get $name => 'Users';

  UsersServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RegisterRequest, $0.User>(
        'register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.User>(
        'login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
  }

  $async.Future<$0.User> register_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.User> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.User> register(
      $grpc.ServiceCall call, $0.RegisterRequest request);
  $async.Future<$0.User> login($grpc.ServiceCall call, $0.LoginRequest request);
}

class TripsClient extends $grpc.Client {
  static final _$tripsOf =
      $grpc.ClientMethod<$0.TripsOfRequest, $0.TripsOfResponse>(
          '/Trips/tripsOf',
          ($0.TripsOfRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TripsOfResponse.fromBuffer(value));
  static final _$addTrip = $grpc.ClientMethod<$0.AddTripRequest, $0.Result>(
      '/Trips/addTrip',
      ($0.AddTripRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Result.fromBuffer(value));
  static final _$deleteTrip =
      $grpc.ClientMethod<$0.DeleteTripRequest, $0.Result>(
          '/Trips/deleteTrip',
          ($0.DeleteTripRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Result.fromBuffer(value));
  static final _$addPhotoToDestination =
      $grpc.ClientMethod<$0.AddDestPhotoRequest, $0.Result>(
          '/Trips/addPhotoToDestination',
          ($0.AddDestPhotoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Result.fromBuffer(value));
  static final _$photosOf =
      $grpc.ClientMethod<$0.PhotosOfRequest, $0.PhotosOfResponse>(
          '/Trips/photosOf',
          ($0.PhotosOfRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PhotosOfResponse.fromBuffer(value));

  TripsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TripsOfResponse> tripsOf($0.TripsOfRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tripsOf, request, options: options);
  }

  $grpc.ResponseFuture<$0.Result> addTrip($0.AddTripRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addTrip, request, options: options);
  }

  $grpc.ResponseFuture<$0.Result> deleteTrip($0.DeleteTripRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTrip, request, options: options);
  }

  $grpc.ResponseFuture<$0.Result> addPhotoToDestination(
      $0.AddDestPhotoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPhotoToDestination, request, options: options);
  }

  $grpc.ResponseStream<$0.PhotosOfResponse> photosOf($0.PhotosOfRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$photosOf, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class TripsServiceBase extends $grpc.Service {
  $core.String get $name => 'Trips';

  TripsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TripsOfRequest, $0.TripsOfResponse>(
        'tripsOf',
        tripsOf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TripsOfRequest.fromBuffer(value),
        ($0.TripsOfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddTripRequest, $0.Result>(
        'addTrip',
        addTrip_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddTripRequest.fromBuffer(value),
        ($0.Result value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteTripRequest, $0.Result>(
        'deleteTrip',
        deleteTrip_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteTripRequest.fromBuffer(value),
        ($0.Result value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddDestPhotoRequest, $0.Result>(
        'addPhotoToDestination',
        addPhotoToDestination_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddDestPhotoRequest.fromBuffer(value),
        ($0.Result value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PhotosOfRequest, $0.PhotosOfResponse>(
        'photosOf',
        photosOf_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.PhotosOfRequest.fromBuffer(value),
        ($0.PhotosOfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.TripsOfResponse> tripsOf_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TripsOfRequest> request) async {
    return tripsOf(call, await request);
  }

  $async.Future<$0.Result> addTrip_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddTripRequest> request) async {
    return addTrip(call, await request);
  }

  $async.Future<$0.Result> deleteTrip_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteTripRequest> request) async {
    return deleteTrip(call, await request);
  }

  $async.Future<$0.Result> addPhotoToDestination_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddDestPhotoRequest> request) async {
    return addPhotoToDestination(call, await request);
  }

  $async.Stream<$0.PhotosOfResponse> photosOf_Pre($grpc.ServiceCall call,
      $async.Future<$0.PhotosOfRequest> request) async* {
    yield* photosOf(call, await request);
  }

  $async.Future<$0.TripsOfResponse> tripsOf(
      $grpc.ServiceCall call, $0.TripsOfRequest request);
  $async.Future<$0.Result> addTrip(
      $grpc.ServiceCall call, $0.AddTripRequest request);
  $async.Future<$0.Result> deleteTrip(
      $grpc.ServiceCall call, $0.DeleteTripRequest request);
  $async.Future<$0.Result> addPhotoToDestination(
      $grpc.ServiceCall call, $0.AddDestPhotoRequest request);
  $async.Stream<$0.PhotosOfResponse> photosOf(
      $grpc.ServiceCall call, $0.PhotosOfRequest request);
}
