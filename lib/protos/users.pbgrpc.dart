///
//  Generated code. Do not modify.
//  source: users.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'users.pb.dart' as $0;
export 'users.pb.dart';

class userServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.login, $0.details>(
      '/users.userService/Login',
      ($0.login value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.details.fromBuffer(value));
  static final _$verification = $grpc.ClientMethod<$0.verify, $0.details>(
      '/users.userService/Verification',
      ($0.verify value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.details.fromBuffer(value));
  static final _$registration = $grpc.ClientMethod<$0.register, $0.details>(
      '/users.userService/Registration',
      ($0.register value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.details.fromBuffer(value));
  static final _$create = $grpc.ClientMethod<$0.register, $0.details>(
      '/users.userService/Create',
      ($0.register value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.details.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.information, $0.details>(
      '/users.userService/Update',
      ($0.information value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.details.fromBuffer(value));
  static final _$remove = $grpc.ClientMethod<$0.information, $0.details>(
      '/users.userService/Remove',
      ($0.information value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.details.fromBuffer(value));
  static final _$display = $grpc.ClientMethod<$0.information, $0.User>(
      '/users.userService/Display',
      ($0.information value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.information, $0.User>(
      '/users.userService/List',
      ($0.information value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));

  userServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.details> login($0.login request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.details> verification($0.verify request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$verification, request, options: options);
  }

  $grpc.ResponseFuture<$0.details> registration($0.register request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$registration, request, options: options);
  }

  $grpc.ResponseFuture<$0.details> create($0.register request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.details> update($0.information request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.details> remove($0.information request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$remove, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> display($0.information request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$display, request, options: options);
  }

  $grpc.ResponseStream<$0.User> list($0.information request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class userServiceBase extends $grpc.Service {
  $core.String get $name => 'users.userService';

  userServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.login, $0.details>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.login.fromBuffer(value),
        ($0.details value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.verify, $0.details>(
        'Verification',
        verification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.verify.fromBuffer(value),
        ($0.details value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.register, $0.details>(
        'Registration',
        registration_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.register.fromBuffer(value),
        ($0.details value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.register, $0.details>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.register.fromBuffer(value),
        ($0.details value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.information, $0.details>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.information.fromBuffer(value),
        ($0.details value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.information, $0.details>(
        'Remove',
        remove_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.information.fromBuffer(value),
        ($0.details value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.information, $0.User>(
        'Display',
        display_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.information.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.information, $0.User>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.information.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
  }

  $async.Future<$0.details> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.login> request) async {
    return login(call, await request);
  }

  $async.Future<$0.details> verification_Pre(
      $grpc.ServiceCall call, $async.Future<$0.verify> request) async {
    return verification(call, await request);
  }

  $async.Future<$0.details> registration_Pre(
      $grpc.ServiceCall call, $async.Future<$0.register> request) async {
    return registration(call, await request);
  }

  $async.Future<$0.details> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.register> request) async {
    return create(call, await request);
  }

  $async.Future<$0.details> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.information> request) async {
    return update(call, await request);
  }

  $async.Future<$0.details> remove_Pre(
      $grpc.ServiceCall call, $async.Future<$0.information> request) async {
    return remove(call, await request);
  }

  $async.Future<$0.User> display_Pre(
      $grpc.ServiceCall call, $async.Future<$0.information> request) async {
    return display(call, await request);
  }

  $async.Stream<$0.User> list_Pre(
      $grpc.ServiceCall call, $async.Future<$0.information> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$0.details> login($grpc.ServiceCall call, $0.login request);
  $async.Future<$0.details> verification(
      $grpc.ServiceCall call, $0.verify request);
  $async.Future<$0.details> registration(
      $grpc.ServiceCall call, $0.register request);
  $async.Future<$0.details> create($grpc.ServiceCall call, $0.register request);
  $async.Future<$0.details> update(
      $grpc.ServiceCall call, $0.information request);
  $async.Future<$0.details> remove(
      $grpc.ServiceCall call, $0.information request);
  $async.Future<$0.User> display(
      $grpc.ServiceCall call, $0.information request);
  $async.Stream<$0.User> list($grpc.ServiceCall call, $0.information request);
}
