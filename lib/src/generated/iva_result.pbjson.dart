///
//  Generated code. Do not modify.
//  source: iva_result.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use requestDescriptor instead')
const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    const {'1': 'group', '3': 4, '4': 1, '5': 9, '10': 'group'},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode('CgdSZXF1ZXN0EhcKB3Rhc2tfaWQYASABKAlSBnRhc2tJZBIUCgVncm91cBgEIAEoCVIFZ3JvdXA=');
@$core.Deprecated('Use resultResponseDescriptor instead')
const ResultResponse$json = const {
  '1': 'ResultResponse',
  '2': const [
    const {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    const {'1': 'feature_id', '3': 2, '4': 1, '5': 5, '10': 'featureId'},
    const {'1': 'source_url', '3': 3, '4': 1, '5': 9, '10': 'sourceUrl'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'labels', '3': 5, '4': 3, '5': 11, '6': '.iva_result.Label', '10': 'labels'},
  ],
};

/// Descriptor for `ResultResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultResponseDescriptor = $convert.base64Decode('Cg5SZXN1bHRSZXNwb25zZRIXCgd0YXNrX2lkGAEgASgJUgZ0YXNrSWQSHQoKZmVhdHVyZV9pZBgCIAEoBVIJZmVhdHVyZUlkEh0KCnNvdXJjZV91cmwYAyABKAlSCXNvdXJjZVVybBIcCgl0aW1lc3RhbXAYBCABKANSCXRpbWVzdGFtcBIpCgZsYWJlbHMYBSADKAsyES5pdmFfcmVzdWx0LkxhYmVsUgZsYWJlbHM=');
@$core.Deprecated('Use eventResponseDescriptor instead')
const EventResponse$json = const {
  '1': 'EventResponse',
  '2': const [
    const {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    const {'1': 'feature_id', '3': 2, '4': 1, '5': 5, '10': 'featureId'},
    const {'1': 'source_url', '3': 3, '4': 1, '5': 9, '10': 'sourceUrl'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'labels', '3': 5, '4': 3, '5': 11, '6': '.iva_result.Label', '10': 'labels'},
    const {'1': 'images', '3': 6, '4': 3, '5': 9, '10': 'images'},
    const {'1': 'video_url', '3': 7, '4': 1, '5': 9, '10': 'videoUrl'},
    const {'1': 'timestamp', '3': 8, '4': 1, '5': 3, '10': 'timestamp'},
  ],
};

/// Descriptor for `EventResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventResponseDescriptor = $convert.base64Decode('Cg1FdmVudFJlc3BvbnNlEhcKB3Rhc2tfaWQYASABKAlSBnRhc2tJZBIdCgpmZWF0dXJlX2lkGAIgASgFUglmZWF0dXJlSWQSHQoKc291cmNlX3VybBgDIAEoCVIJc291cmNlVXJsEiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlvbhIpCgZsYWJlbHMYBSADKAsyES5pdmFfcmVzdWx0LkxhYmVsUgZsYWJlbHMSFgoGaW1hZ2VzGAYgAygJUgZpbWFnZXMSGwoJdmlkZW9fdXJsGAcgASgJUgh2aWRlb1VybBIcCgl0aW1lc3RhbXAYCCABKANSCXRpbWVzdGFtcA==');
@$core.Deprecated('Use labelDescriptor instead')
const Label$json = const {
  '1': 'Label',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'instances', '3': 2, '4': 3, '5': 11, '6': '.iva_result.Instance', '10': 'instances'},
  ],
};

/// Descriptor for `Label`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelDescriptor = $convert.base64Decode('CgVMYWJlbBISCgRuYW1lGAEgASgJUgRuYW1lEjIKCWluc3RhbmNlcxgCIAMoCzIULml2YV9yZXN1bHQuSW5zdGFuY2VSCWluc3RhbmNlcw==');
@$core.Deprecated('Use instanceDescriptor instead')
const Instance$json = const {
  '1': 'Instance',
  '2': const [
    const {'1': 'bounding_box', '3': 1, '4': 1, '5': 11, '6': '.iva_result.BoundingBox', '10': 'boundingBox'},
    const {'1': 'confidence', '3': 2, '4': 1, '5': 2, '10': 'confidence'},
    const {'1': 'additional_info', '3': 3, '4': 1, '5': 9, '10': 'additionalInfo'},
  ],
};

/// Descriptor for `Instance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List instanceDescriptor = $convert.base64Decode('CghJbnN0YW5jZRI6Cgxib3VuZGluZ19ib3gYASABKAsyFy5pdmFfcmVzdWx0LkJvdW5kaW5nQm94Ugtib3VuZGluZ0JveBIeCgpjb25maWRlbmNlGAIgASgCUgpjb25maWRlbmNlEicKD2FkZGl0aW9uYWxfaW5mbxgDIAEoCVIOYWRkaXRpb25hbEluZm8=');
@$core.Deprecated('Use boundingBoxDescriptor instead')
const BoundingBox$json = const {
  '1': 'BoundingBox',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
    const {'1': 'width', '3': 3, '4': 1, '5': 2, '10': 'width'},
    const {'1': 'height', '3': 4, '4': 1, '5': 2, '10': 'height'},
  ],
};

/// Descriptor for `BoundingBox`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boundingBoxDescriptor = $convert.base64Decode('CgtCb3VuZGluZ0JveBIMCgF4GAEgASgCUgF4EgwKAXkYAiABKAJSAXkSFAoFd2lkdGgYAyABKAJSBXdpZHRoEhYKBmhlaWdodBgEIAEoAlIGaGVpZ2h0');
