// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.sts.model.assume_role_with_saml_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/sts/model/assumed_role_user.dart' as _i3;
import 'package:smoke_test/src/sdk/src/sts/model/credentials.dart' as _i2;

part 'assume_role_with_saml_response.g.dart';

/// Contains the response to a successful AssumeRoleWithSAML request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
abstract class AssumeRoleWithSamlResponse
    with _i1.AWSEquatable<AssumeRoleWithSamlResponse>
    implements
        Built<AssumeRoleWithSamlResponse, AssumeRoleWithSamlResponseBuilder> {
  /// Contains the response to a successful AssumeRoleWithSAML request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
  factory AssumeRoleWithSamlResponse({
    _i2.Credentials? credentials,
    _i3.AssumedRoleUser? assumedRoleUser,
    int? packedPolicySize,
    String? subject,
    String? subjectType,
    String? issuer,
    String? audience,
    String? nameQualifier,
    String? sourceIdentity,
  }) {
    return _$AssumeRoleWithSamlResponse._(
      credentials: credentials,
      assumedRoleUser: assumedRoleUser,
      packedPolicySize: packedPolicySize,
      subject: subject,
      subjectType: subjectType,
      issuer: issuer,
      audience: audience,
      nameQualifier: nameQualifier,
      sourceIdentity: sourceIdentity,
    );
  }

  /// Contains the response to a successful AssumeRoleWithSAML request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
  factory AssumeRoleWithSamlResponse.build(
          [void Function(AssumeRoleWithSamlResponseBuilder) updates]) =
      _$AssumeRoleWithSamlResponse;

  const AssumeRoleWithSamlResponse._();

  /// Constructs a [AssumeRoleWithSamlResponse] from a [payload] and [response].
  factory AssumeRoleWithSamlResponse.fromResponse(
    AssumeRoleWithSamlResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    AssumeRoleWithSamlResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssumeRoleWithSamlResponseBuilder b) {}

  /// The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.
  ///
  /// The size of the security token that STS API operations return is not fixed. We strongly recommend that you make no assumptions about the maximum size.
  _i2.Credentials? get credentials;

  /// The identifiers for the temporary security credentials that the operation returns.
  _i3.AssumedRoleUser? get assumedRoleUser;

  /// A percentage value that indicates the packed size of the session policies and session tags combined passed in the request. The request fails if the packed size is greater than 100 percent, which means the policies and tags exceeded the allowed space.
  int? get packedPolicySize;

  /// The value of the `NameID` element in the `Subject` element of the SAML assertion.
  String? get subject;

  /// The format of the name ID, as defined by the `Format` attribute in the `NameID` element of the SAML assertion. Typical examples of the format are `transient` or `persistent`.
  ///
  /// If the format includes the prefix `urn:oasis:names:tc:SAML:2.0:nameid-format`, that prefix is removed. For example, `urn:oasis:names:tc:SAML:2.0:nameid-format:transient` is returned as `transient`. If the format includes any other prefix, the format is returned with no modifications.
  String? get subjectType;

  /// The value of the `Issuer` element of the SAML assertion.
  String? get issuer;

  /// The value of the `Recipient` attribute of the `SubjectConfirmationData` element of the SAML assertion.
  String? get audience;

  /// A hash value based on the concatenation of the following:
  ///
  /// *   The `Issuer` response value.
  ///
  /// *   The Amazon Web Services account ID.
  ///
  /// *   The friendly name (the last part of the ARN) of the SAML provider in IAM.
  ///
  ///
  /// The combination of `NameQualifier` and `Subject` can be used to uniquely identify a federated user.
  ///
  /// The following pseudocode shows how the hash value is calculated:
  ///
  /// `BASE64 ( SHA1 ( "https://example.com/saml" + "123456789012" + "/MySAMLIdP" ) )`
  String? get nameQualifier;

  /// The value in the `SourceIdentity` attribute in the SAML assertion.
  ///
  /// You can require users to set a source identity value when they assume a role. You do this by using the `sts:SourceIdentity` condition key in a role trust policy. That way, actions that are taken with the role are associated with that user. After the source identity is set, the value cannot be changed. It is present in the request for all actions that are taken by the role and persists across [chained role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts#iam-term-role-chaining) sessions. You can configure your SAML identity provider to use an attribute associated with your users, like user name or email, as the source identity when calling `AssumeRoleWithSAML`. You do this by adding an attribute to the SAML assertion. For more information about using source identity, see [Monitor and control actions taken with assumed roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html) in the _IAM User Guide_.
  ///
  /// The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-
  String? get sourceIdentity;
  @override
  List<Object?> get props => [
        credentials,
        assumedRoleUser,
        packedPolicySize,
        subject,
        subjectType,
        issuer,
        audience,
        nameQualifier,
        sourceIdentity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssumeRoleWithSamlResponse');
    helper.add(
      'credentials',
      credentials,
    );
    helper.add(
      'assumedRoleUser',
      assumedRoleUser,
    );
    helper.add(
      'packedPolicySize',
      packedPolicySize,
    );
    helper.add(
      'subject',
      subject,
    );
    helper.add(
      'subjectType',
      subjectType,
    );
    helper.add(
      'issuer',
      issuer,
    );
    helper.add(
      'audience',
      audience,
    );
    helper.add(
      'nameQualifier',
      nameQualifier,
    );
    helper.add(
      'sourceIdentity',
      sourceIdentity,
    );
    return helper.toString();
  }
}

class AssumeRoleWithSamlResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<AssumeRoleWithSamlResponse> {
  const AssumeRoleWithSamlResponseAwsQuerySerializer()
      : super('AssumeRoleWithSamlResponse');

  @override
  Iterable<Type> get types => const [
        AssumeRoleWithSamlResponse,
        _$AssumeRoleWithSamlResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AssumeRoleWithSamlResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssumeRoleWithSamlResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Credentials':
          if (value != null) {
            result.credentials.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Credentials),
            ) as _i2.Credentials));
          }
          break;
        case 'AssumedRoleUser':
          if (value != null) {
            result.assumedRoleUser.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AssumedRoleUser),
            ) as _i3.AssumedRoleUser));
          }
          break;
        case 'PackedPolicySize':
          if (value != null) {
            result.packedPolicySize = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'Subject':
          if (value != null) {
            result.subject = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SubjectType':
          if (value != null) {
            result.subjectType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Issuer':
          if (value != null) {
            result.issuer = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Audience':
          if (value != null) {
            result.audience = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NameQualifier':
          if (value != null) {
            result.nameQualifier = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SourceIdentity':
          if (value != null) {
            result.sourceIdentity = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as AssumeRoleWithSamlResponse);
    final result = <Object?>[
      const _i4.XmlElementName(
        'AssumeRoleWithSamlResponseResponse',
        _i4.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    if (payload.credentials != null) {
      result
        ..add(const _i4.XmlElementName('Credentials'))
        ..add(serializers.serialize(
          payload.credentials!,
          specifiedType: const FullType(_i2.Credentials),
        ));
    }
    if (payload.assumedRoleUser != null) {
      result
        ..add(const _i4.XmlElementName('AssumedRoleUser'))
        ..add(serializers.serialize(
          payload.assumedRoleUser!,
          specifiedType: const FullType(_i3.AssumedRoleUser),
        ));
    }
    if (payload.packedPolicySize != null) {
      result
        ..add(const _i4.XmlElementName('PackedPolicySize'))
        ..add(serializers.serialize(
          payload.packedPolicySize!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.subject != null) {
      result
        ..add(const _i4.XmlElementName('Subject'))
        ..add(serializers.serialize(
          payload.subject!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subjectType != null) {
      result
        ..add(const _i4.XmlElementName('SubjectType'))
        ..add(serializers.serialize(
          payload.subjectType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.issuer != null) {
      result
        ..add(const _i4.XmlElementName('Issuer'))
        ..add(serializers.serialize(
          payload.issuer!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.audience != null) {
      result
        ..add(const _i4.XmlElementName('Audience'))
        ..add(serializers.serialize(
          payload.audience!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nameQualifier != null) {
      result
        ..add(const _i4.XmlElementName('NameQualifier'))
        ..add(serializers.serialize(
          payload.nameQualifier!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sourceIdentity != null) {
      result
        ..add(const _i4.XmlElementName('SourceIdentity'))
        ..add(serializers.serialize(
          payload.sourceIdentity!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}