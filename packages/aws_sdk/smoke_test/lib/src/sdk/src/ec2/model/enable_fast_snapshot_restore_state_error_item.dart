// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_fast_snapshot_restore_state_error_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_state_error.dart';

part 'enable_fast_snapshot_restore_state_error_item.g.dart';

/// Contains information about an error that occurred when enabling fast snapshot restores.
abstract class EnableFastSnapshotRestoreStateErrorItem
    with
        _i1.AWSEquatable<EnableFastSnapshotRestoreStateErrorItem>
    implements
        Built<EnableFastSnapshotRestoreStateErrorItem,
            EnableFastSnapshotRestoreStateErrorItemBuilder> {
  /// Contains information about an error that occurred when enabling fast snapshot restores.
  factory EnableFastSnapshotRestoreStateErrorItem({
    String? availabilityZone,
    EnableFastSnapshotRestoreStateError? error,
  }) {
    return _$EnableFastSnapshotRestoreStateErrorItem._(
      availabilityZone: availabilityZone,
      error: error,
    );
  }

  /// Contains information about an error that occurred when enabling fast snapshot restores.
  factory EnableFastSnapshotRestoreStateErrorItem.build(
      [void Function(EnableFastSnapshotRestoreStateErrorItemBuilder)
          updates]) = _$EnableFastSnapshotRestoreStateErrorItem;

  const EnableFastSnapshotRestoreStateErrorItem._();

  static const List<
          _i2.SmithySerializer<EnableFastSnapshotRestoreStateErrorItem>>
      serializers = [
    EnableFastSnapshotRestoreStateErrorItemEc2QuerySerializer()
  ];

  /// The Availability Zone.
  String? get availabilityZone;

  /// The error.
  EnableFastSnapshotRestoreStateError? get error;
  @override
  List<Object?> get props => [
        availabilityZone,
        error,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableFastSnapshotRestoreStateErrorItem')
          ..add(
            'availabilityZone',
            availabilityZone,
          )
          ..add(
            'error',
            error,
          );
    return helper.toString();
  }
}

class EnableFastSnapshotRestoreStateErrorItemEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<EnableFastSnapshotRestoreStateErrorItem> {
  const EnableFastSnapshotRestoreStateErrorItemEc2QuerySerializer()
      : super('EnableFastSnapshotRestoreStateErrorItem');

  @override
  Iterable<Type> get types => const [
        EnableFastSnapshotRestoreStateErrorItem,
        _$EnableFastSnapshotRestoreStateErrorItem,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableFastSnapshotRestoreStateErrorItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableFastSnapshotRestoreStateErrorItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'error':
          result.error.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EnableFastSnapshotRestoreStateError),
          ) as EnableFastSnapshotRestoreStateError));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EnableFastSnapshotRestoreStateErrorItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnableFastSnapshotRestoreStateErrorItemResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableFastSnapshotRestoreStateErrorItem(:availabilityZone, :error) =
        object;
    if (availabilityZone != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (error != null) {
      result$
        ..add(const _i2.XmlElementName('Error'))
        ..add(serializers.serialize(
          error,
          specifiedType: const FullType(EnableFastSnapshotRestoreStateError),
        ));
    }
    return result$;
  }
}