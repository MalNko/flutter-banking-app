/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the Property type in your schema. */
class Property extends amplify_core.Model {
  static const classType = const _PropertyModelType();
  final String id;
  final String? _address;
  final String? _propertyType;
  final double? _value;
  final String? _mortgageID;
  final User? _user;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PropertyModelIdentifier get modelIdentifier {
      return PropertyModelIdentifier(
        id: id
      );
  }
  
  String get address {
    try {
      return _address!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get propertyType {
    try {
      return _propertyType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get value {
    try {
      return _value!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get mortgageID {
    return _mortgageID;
  }
  
  User get user {
    try {
      return _user!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Property._internal({required this.id, required address, required propertyType, required value, mortgageID, required user, createdAt, updatedAt}): _address = address, _propertyType = propertyType, _value = value, _mortgageID = mortgageID, _user = user, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Property({String? id, required String address, required String propertyType, required double value, String? mortgageID, required User user}) {
    return Property._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      address: address,
      propertyType: propertyType,
      value: value,
      mortgageID: mortgageID,
      user: user);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Property &&
      id == other.id &&
      _address == other._address &&
      _propertyType == other._propertyType &&
      _value == other._value &&
      _mortgageID == other._mortgageID &&
      _user == other._user;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Property {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("address=" + "$_address" + ", ");
    buffer.write("propertyType=" + "$_propertyType" + ", ");
    buffer.write("value=" + (_value != null ? _value!.toString() : "null") + ", ");
    buffer.write("mortgageID=" + "$_mortgageID" + ", ");
    buffer.write("user=" + (_user != null ? _user!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Property copyWith({String? address, String? propertyType, double? value, String? mortgageID, User? user}) {
    return Property._internal(
      id: id,
      address: address ?? this.address,
      propertyType: propertyType ?? this.propertyType,
      value: value ?? this.value,
      mortgageID: mortgageID ?? this.mortgageID,
      user: user ?? this.user);
  }
  
  Property copyWithModelFieldValues({
    ModelFieldValue<String>? address,
    ModelFieldValue<String>? propertyType,
    ModelFieldValue<double>? value,
    ModelFieldValue<String?>? mortgageID,
    ModelFieldValue<User>? user
  }) {
    return Property._internal(
      id: id,
      address: address == null ? this.address : address.value,
      propertyType: propertyType == null ? this.propertyType : propertyType.value,
      value: value == null ? this.value : value.value,
      mortgageID: mortgageID == null ? this.mortgageID : mortgageID.value,
      user: user == null ? this.user : user.value
    );
  }
  
  Property.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _address = json['address'],
      _propertyType = json['propertyType'],
      _value = (json['value'] as num?)?.toDouble(),
      _mortgageID = json['mortgageID'],
      _user = json['user'] != null
        ? json['user']['serializedData'] != null
          ? User.fromJson(new Map<String, dynamic>.from(json['user']['serializedData']))
          : User.fromJson(new Map<String, dynamic>.from(json['user']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'address': _address, 'propertyType': _propertyType, 'value': _value, 'mortgageID': _mortgageID, 'user': _user?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'address': _address,
    'propertyType': _propertyType,
    'value': _value,
    'mortgageID': _mortgageID,
    'user': _user,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PropertyModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PropertyModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final ADDRESS = amplify_core.QueryField(fieldName: "address");
  static final PROPERTYTYPE = amplify_core.QueryField(fieldName: "propertyType");
  static final VALUE = amplify_core.QueryField(fieldName: "value");
  static final MORTGAGEID = amplify_core.QueryField(fieldName: "mortgageID");
  static final USER = amplify_core.QueryField(
    fieldName: "user",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Property";
    modelSchemaDefinition.pluralName = "Properties";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["id"], name: null),
      amplify_core.ModelIndex(fields: const ["mortgageID"], name: "byMortgage"),
      amplify_core.ModelIndex(fields: const ["userID"], name: "byUser")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Property.ADDRESS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Property.PROPERTYTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Property.VALUE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Property.MORTGAGEID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Property.USER,
      isRequired: true,
      targetNames: ['userID'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _PropertyModelType extends amplify_core.ModelType<Property> {
  const _PropertyModelType();
  
  @override
  Property fromJson(Map<String, dynamic> jsonData) {
    return Property.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Property';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Property] in your schema.
 */
class PropertyModelIdentifier implements amplify_core.ModelIdentifier<Property> {
  final String id;

  /** Create an instance of PropertyModelIdentifier using [id] the primary key. */
  const PropertyModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'PropertyModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PropertyModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}