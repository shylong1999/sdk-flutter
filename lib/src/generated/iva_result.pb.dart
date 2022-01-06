///
//  Generated code. Do not modify.
//  source: iva_result.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'iva_result'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group')
    ..hasRequiredFields = false
  ;

  Request._() : super();
  factory Request({
    $core.String? taskId,
    $core.String? group,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (group != null) {
      _result.group = group;
    }
    return _result;
  }
  factory Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Request clone() => Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request)) as Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(4)
  $core.String get group => $_getSZ(1);
  @$pb.TagNumber(4)
  set group($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasGroup() => $_has(1);
  @$pb.TagNumber(4)
  void clearGroup() => clearField(4);
}

class ResultResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResultResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'iva_result'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'featureId', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sourceUrl')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..pc<Label>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'labels', $pb.PbFieldType.PM, subBuilder: Label.create)
    ..hasRequiredFields = false
  ;

  ResultResponse._() : super();
  factory ResultResponse({
    $core.String? taskId,
    $core.int? featureId,
    $core.String? sourceUrl,
    $fixnum.Int64? timestamp,
    $core.Iterable<Label>? labels,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (featureId != null) {
      _result.featureId = featureId;
    }
    if (sourceUrl != null) {
      _result.sourceUrl = sourceUrl;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (labels != null) {
      _result.labels.addAll(labels);
    }
    return _result;
  }
  factory ResultResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultResponse clone() => ResultResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultResponse copyWith(void Function(ResultResponse) updates) => super.copyWith((message) => updates(message as ResultResponse)) as ResultResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultResponse create() => ResultResponse._();
  ResultResponse createEmptyInstance() => create();
  static $pb.PbList<ResultResponse> createRepeated() => $pb.PbList<ResultResponse>();
  @$core.pragma('dart2js:noInline')
  static ResultResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultResponse>(create);
  static ResultResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get featureId => $_getIZ(1);
  @$pb.TagNumber(2)
  set featureId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFeatureId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeatureId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sourceUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set sourceUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSourceUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSourceUrl() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get timestamp => $_getI64(3);
  @$pb.TagNumber(4)
  set timestamp($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Label> get labels => $_getList(4);
}

class EventResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EventResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'iva_result'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'featureId', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sourceUrl')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..pc<Label>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'labels', $pb.PbFieldType.PM, subBuilder: Label.create)
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'videoUrl')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  EventResponse._() : super();
  factory EventResponse({
    $core.String? taskId,
    $core.int? featureId,
    $core.String? sourceUrl,
    $core.String? description,
    $core.Iterable<Label>? labels,
    $core.Iterable<$core.String>? images,
    $core.String? videoUrl,
    $fixnum.Int64? timestamp,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (featureId != null) {
      _result.featureId = featureId;
    }
    if (sourceUrl != null) {
      _result.sourceUrl = sourceUrl;
    }
    if (description != null) {
      _result.description = description;
    }
    if (labels != null) {
      _result.labels.addAll(labels);
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (videoUrl != null) {
      _result.videoUrl = videoUrl;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory EventResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventResponse clone() => EventResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventResponse copyWith(void Function(EventResponse) updates) => super.copyWith((message) => updates(message as EventResponse)) as EventResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventResponse create() => EventResponse._();
  EventResponse createEmptyInstance() => create();
  static $pb.PbList<EventResponse> createRepeated() => $pb.PbList<EventResponse>();
  @$core.pragma('dart2js:noInline')
  static EventResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventResponse>(create);
  static EventResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get featureId => $_getIZ(1);
  @$pb.TagNumber(2)
  set featureId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFeatureId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeatureId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sourceUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set sourceUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSourceUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSourceUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Label> get labels => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get images => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get videoUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set videoUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVideoUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearVideoUrl() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get timestamp => $_getI64(7);
  @$pb.TagNumber(8)
  set timestamp($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimestamp() => clearField(8);
}

class Label extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Label', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'iva_result'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<Instance>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'instances', $pb.PbFieldType.PM, subBuilder: Instance.create)
    ..hasRequiredFields = false
  ;

  Label._() : super();
  factory Label({
    $core.String? name,
    $core.Iterable<Instance>? instances,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (instances != null) {
      _result.instances.addAll(instances);
    }
    return _result;
  }
  factory Label.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Label.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Label clone() => Label()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Label copyWith(void Function(Label) updates) => super.copyWith((message) => updates(message as Label)) as Label; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Label create() => Label._();
  Label createEmptyInstance() => create();
  static $pb.PbList<Label> createRepeated() => $pb.PbList<Label>();
  @$core.pragma('dart2js:noInline')
  static Label getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Label>(create);
  static Label? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Instance> get instances => $_getList(1);
}

class Instance extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Instance', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'iva_result'), createEmptyInstance: create)
    ..aOM<BoundingBox>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boundingBox', subBuilder: BoundingBox.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confidence', $pb.PbFieldType.OF)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'additionalInfo')
    ..hasRequiredFields = false
  ;

  Instance._() : super();
  factory Instance({
    BoundingBox? boundingBox,
    $core.double? confidence,
    $core.String? additionalInfo,
  }) {
    final _result = create();
    if (boundingBox != null) {
      _result.boundingBox = boundingBox;
    }
    if (confidence != null) {
      _result.confidence = confidence;
    }
    if (additionalInfo != null) {
      _result.additionalInfo = additionalInfo;
    }
    return _result;
  }
  factory Instance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Instance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Instance clone() => Instance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Instance copyWith(void Function(Instance) updates) => super.copyWith((message) => updates(message as Instance)) as Instance; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Instance create() => Instance._();
  Instance createEmptyInstance() => create();
  static $pb.PbList<Instance> createRepeated() => $pb.PbList<Instance>();
  @$core.pragma('dart2js:noInline')
  static Instance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Instance>(create);
  static Instance? _defaultInstance;

  @$pb.TagNumber(1)
  BoundingBox get boundingBox => $_getN(0);
  @$pb.TagNumber(1)
  set boundingBox(BoundingBox v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoundingBox() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoundingBox() => clearField(1);
  @$pb.TagNumber(1)
  BoundingBox ensureBoundingBox() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get confidence => $_getN(1);
  @$pb.TagNumber(2)
  set confidence($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfidence() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfidence() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get additionalInfo => $_getSZ(2);
  @$pb.TagNumber(3)
  set additionalInfo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAdditionalInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdditionalInfo() => clearField(3);
}

class BoundingBox extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BoundingBox', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'iva_result'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  BoundingBox._() : super();
  factory BoundingBox({
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
  }) {
    final _result = create();
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory BoundingBox.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoundingBox.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoundingBox clone() => BoundingBox()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoundingBox copyWith(void Function(BoundingBox) updates) => super.copyWith((message) => updates(message as BoundingBox)) as BoundingBox; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoundingBox create() => BoundingBox._();
  BoundingBox createEmptyInstance() => create();
  static $pb.PbList<BoundingBox> createRepeated() => $pb.PbList<BoundingBox>();
  @$core.pragma('dart2js:noInline')
  static BoundingBox getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoundingBox>(create);
  static BoundingBox? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get width => $_getN(2);
  @$pb.TagNumber(3)
  set width($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get height => $_getN(3);
  @$pb.TagNumber(4)
  set height($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => clearField(4);
}

