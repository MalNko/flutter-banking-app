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


/** This is an auto generated class representing the SupportTicket type in your schema. */
class SupportTicket extends amplify_core.Model {
  static const classType = const _SupportTicketModelType();
  final String id;
  final String? _subject;
  final String? _description;
  final String? _status;
  final amplify_core.TemporalDateTime? _dateOpened;
  final User? _user;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  SupportTicketModelIdentifier get modelIdentifier {
      return SupportTicketModelIdentifier(
        id: id
      );
  }
  
  String get subject {
    try {
      return _subject!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get description {
    try {
      return _description!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get status {
    try {
      return _status!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get dateOpened {
    try {
      return _dateOpened!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  const SupportTicket._internal({required this.id, required subject, required description, required status, required dateOpened, required user, createdAt, updatedAt}): _subject = subject, _description = description, _status = status, _dateOpened = dateOpened, _user = user, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory SupportTicket({String? id, required String subject, required String description, required String status, required amplify_core.TemporalDateTime dateOpened, required User user}) {
    return SupportTicket._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      subject: subject,
      description: description,
      status: status,
      dateOpened: dateOpened,
      user: user);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupportTicket &&
      id == other.id &&
      _subject == other._subject &&
      _description == other._description &&
      _status == other._status &&
      _dateOpened == other._dateOpened &&
      _user == other._user;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("SupportTicket {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("subject=" + "$_subject" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("status=" + "$_status" + ", ");
    buffer.write("dateOpened=" + (_dateOpened != null ? _dateOpened!.format() : "null") + ", ");
    buffer.write("user=" + (_user != null ? _user!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  SupportTicket copyWith({String? subject, String? description, String? status, amplify_core.TemporalDateTime? dateOpened, User? user}) {
    return SupportTicket._internal(
      id: id,
      subject: subject ?? this.subject,
      description: description ?? this.description,
      status: status ?? this.status,
      dateOpened: dateOpened ?? this.dateOpened,
      user: user ?? this.user);
  }
  
  SupportTicket copyWithModelFieldValues({
    ModelFieldValue<String>? subject,
    ModelFieldValue<String>? description,
    ModelFieldValue<String>? status,
    ModelFieldValue<amplify_core.TemporalDateTime>? dateOpened,
    ModelFieldValue<User>? user
  }) {
    return SupportTicket._internal(
      id: id,
      subject: subject == null ? this.subject : subject.value,
      description: description == null ? this.description : description.value,
      status: status == null ? this.status : status.value,
      dateOpened: dateOpened == null ? this.dateOpened : dateOpened.value,
      user: user == null ? this.user : user.value
    );
  }
  
  SupportTicket.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _subject = json['subject'],
      _description = json['description'],
      _status = json['status'],
      _dateOpened = json['dateOpened'] != null ? amplify_core.TemporalDateTime.fromString(json['dateOpened']) : null,
      _user = json['user'] != null
        ? json['user']['serializedData'] != null
          ? User.fromJson(new Map<String, dynamic>.from(json['user']['serializedData']))
          : User.fromJson(new Map<String, dynamic>.from(json['user']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'subject': _subject, 'description': _description, 'status': _status, 'dateOpened': _dateOpened?.format(), 'user': _user?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'subject': _subject,
    'description': _description,
    'status': _status,
    'dateOpened': _dateOpened,
    'user': _user,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<SupportTicketModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<SupportTicketModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final SUBJECT = amplify_core.QueryField(fieldName: "subject");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final STATUS = amplify_core.QueryField(fieldName: "status");
  static final DATEOPENED = amplify_core.QueryField(fieldName: "dateOpened");
  static final USER = amplify_core.QueryField(
    fieldName: "user",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SupportTicket";
    modelSchemaDefinition.pluralName = "SupportTickets";
    
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
      amplify_core.ModelIndex(fields: const ["userID"], name: "byUser")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: SupportTicket.SUBJECT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: SupportTicket.DESCRIPTION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: SupportTicket.STATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: SupportTicket.DATEOPENED,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: SupportTicket.USER,
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

class _SupportTicketModelType extends amplify_core.ModelType<SupportTicket> {
  const _SupportTicketModelType();
  
  @override
  SupportTicket fromJson(Map<String, dynamic> jsonData) {
    return SupportTicket.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'SupportTicket';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [SupportTicket] in your schema.
 */
class SupportTicketModelIdentifier implements amplify_core.ModelIdentifier<SupportTicket> {
  final String id;

  /** Create an instance of SupportTicketModelIdentifier using [id] the primary key. */
  const SupportTicketModelIdentifier({
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
  String toString() => 'SupportTicketModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is SupportTicketModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}