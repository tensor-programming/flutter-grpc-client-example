///
//  Generated code. Do not modify.
//  source: service.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('User', package: const $pb.PackageName('proto'))
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  User() : super();
  User.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  User.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  User clone() => new User()..mergeFromMessage(this);
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User));
  $pb.BuilderInfo get info_ => _i;
  static User create() => new User();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => new $pb.PbList<User>();
  static User getDefault() => _defaultInstance ??= create()..freeze();
  static User _defaultInstance;

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Message', package: const $pb.PackageName('proto'))
    ..aOS(1, 'id')
    ..aOS(2, 'content')
    ..aOS(3, 'timestamp')
    ..hasRequiredFields = false
  ;

  Message() : super();
  Message.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Message.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Message clone() => new Message()..mergeFromMessage(this);
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message));
  $pb.BuilderInfo get info_ => _i;
  static Message create() => new Message();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => new $pb.PbList<Message>();
  static Message getDefault() => _defaultInstance ??= create()..freeze();
  static Message _defaultInstance;

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get content => $_getS(1, '');
  set content(String v) { $_setString(1, v); }
  bool hasContent() => $_has(1);
  void clearContent() => clearField(2);

  String get timestamp => $_getS(2, '');
  set timestamp(String v) { $_setString(2, v); }
  bool hasTimestamp() => $_has(2);
  void clearTimestamp() => clearField(3);
}

class Connect extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Connect', package: const $pb.PackageName('proto'))
    ..a<User>(1, 'user', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..aOB(2, 'active')
    ..hasRequiredFields = false
  ;

  Connect() : super();
  Connect.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Connect.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Connect clone() => new Connect()..mergeFromMessage(this);
  Connect copyWith(void Function(Connect) updates) => super.copyWith((message) => updates(message as Connect));
  $pb.BuilderInfo get info_ => _i;
  static Connect create() => new Connect();
  Connect createEmptyInstance() => create();
  static $pb.PbList<Connect> createRepeated() => new $pb.PbList<Connect>();
  static Connect getDefault() => _defaultInstance ??= create()..freeze();
  static Connect _defaultInstance;

  User get user => $_getN(0);
  set user(User v) { setField(1, v); }
  bool hasUser() => $_has(0);
  void clearUser() => clearField(1);

  bool get active => $_get(1, false);
  set active(bool v) { $_setBool(1, v); }
  bool hasActive() => $_has(1);
  void clearActive() => clearField(2);
}

class Close extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Close', package: const $pb.PackageName('proto'))
    ..hasRequiredFields = false
  ;

  Close() : super();
  Close.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Close.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Close clone() => new Close()..mergeFromMessage(this);
  Close copyWith(void Function(Close) updates) => super.copyWith((message) => updates(message as Close));
  $pb.BuilderInfo get info_ => _i;
  static Close create() => new Close();
  Close createEmptyInstance() => create();
  static $pb.PbList<Close> createRepeated() => new $pb.PbList<Close>();
  static Close getDefault() => _defaultInstance ??= create()..freeze();
  static Close _defaultInstance;
}

