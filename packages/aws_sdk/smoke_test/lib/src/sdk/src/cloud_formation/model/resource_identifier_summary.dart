// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.resource_identifier_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'resource_identifier_summary.g.dart';

/// Describes the target resources of a specific type in your import template (for example, all `AWS::S3::Bucket` resources) and the properties you can provide during the import to identify resources of that type.
abstract class ResourceIdentifierSummary
    with _i1.AWSEquatable<ResourceIdentifierSummary>
    implements
        Built<ResourceIdentifierSummary, ResourceIdentifierSummaryBuilder> {
  /// Describes the target resources of a specific type in your import template (for example, all `AWS::S3::Bucket` resources) and the properties you can provide during the import to identify resources of that type.
  factory ResourceIdentifierSummary({
    String? resourceType,
    List<String>? logicalResourceIds,
    List<String>? resourceIdentifiers,
  }) {
    return _$ResourceIdentifierSummary._(
      resourceType: resourceType,
      logicalResourceIds:
          logicalResourceIds == null ? null : _i2.BuiltList(logicalResourceIds),
      resourceIdentifiers: resourceIdentifiers == null
          ? null
          : _i2.BuiltList(resourceIdentifiers),
    );
  }

  /// Describes the target resources of a specific type in your import template (for example, all `AWS::S3::Bucket` resources) and the properties you can provide during the import to identify resources of that type.
  factory ResourceIdentifierSummary.build(
          [void Function(ResourceIdentifierSummaryBuilder) updates]) =
      _$ResourceIdentifierSummary;

  const ResourceIdentifierSummary._();

  static const List<_i3.SmithySerializer> serializers = [
    ResourceIdentifierSummaryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceIdentifierSummaryBuilder b) {}

  /// The template resource type of the target resources, such as `AWS::S3::Bucket`.
  String? get resourceType;

  /// The logical IDs of the target resources of the specified `ResourceType`, as defined in the import template.
  _i2.BuiltList<String>? get logicalResourceIds;

  /// The resource properties you can provide during the import to identify your target resources. For example, `BucketName` is a possible identifier property for `AWS::S3::Bucket` resources.
  _i2.BuiltList<String>? get resourceIdentifiers;
  @override
  List<Object?> get props => [
        resourceType,
        logicalResourceIds,
        resourceIdentifiers,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceIdentifierSummary');
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'logicalResourceIds',
      logicalResourceIds,
    );
    helper.add(
      'resourceIdentifiers',
      resourceIdentifiers,
    );
    return helper.toString();
  }
}

class ResourceIdentifierSummaryAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ResourceIdentifierSummary> {
  const ResourceIdentifierSummaryAwsQuerySerializer()
      : super('ResourceIdentifierSummary');

  @override
  Iterable<Type> get types => const [
        ResourceIdentifierSummary,
        _$ResourceIdentifierSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ResourceIdentifierSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceIdentifierSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ResourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LogicalResourceIds':
          if (value != null) {
            result.logicalResourceIds.replace((const _i3.XmlBuiltListSerializer(
                    indexer: _i3.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
          }
          break;
        case 'ResourceIdentifiers':
          if (value != null) {
            result.resourceIdentifiers.replace(
                (const _i3.XmlBuiltListSerializer(
                        indexer: _i3.XmlIndexer.awsQueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ResourceIdentifierSummary);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ResourceIdentifierSummaryResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.resourceType != null) {
      result
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.logicalResourceIds != null) {
      result
        ..add(const _i3.XmlElementName('LogicalResourceIds'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.logicalResourceIds!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.resourceIdentifiers != null) {
      result
        ..add(const _i3.XmlElementName('ResourceIdentifiers'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.resourceIdentifiers!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}