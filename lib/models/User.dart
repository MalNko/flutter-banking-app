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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the User type in your schema. */
class User extends amplify_core.Model {
  static const classType = const _UserModelType();
  final String id;
  final String? _name;
  final String? _email;
  final String? _phoneNumber;
  final String? _profilePicture;
  final List<Account>? _accounts;
  final List<Card>? _cards;
  final List<Loan>? _loans;
  final List<Property>? _properties;
  final List<Notification>? _notifications;
  final List<SupportTicket>? _supportTickets;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UserModelIdentifier get modelIdentifier {
      return UserModelIdentifier(
        id: id
      );
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get phoneNumber {
    return _phoneNumber;
  }
  
  String? get profilePicture {
    return _profilePicture;
  }
  
  List<Account>? get accounts {
    return _accounts;
  }
  
  List<Card>? get cards {
    return _cards;
  }
  
  List<Loan>? get loans {
    return _loans;
  }
  
  List<Property>? get properties {
    return _properties;
  }
  
  List<Notification>? get notifications {
    return _notifications;
  }
  
  List<SupportTicket>? get supportTickets {
    return _supportTickets;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const User._internal({required this.id, required name, required email, phoneNumber, profilePicture, accounts, cards, loans, properties, notifications, supportTickets, createdAt, updatedAt}): _name = name, _email = email, _phoneNumber = phoneNumber, _profilePicture = profilePicture, _accounts = accounts, _cards = cards, _loans = loans, _properties = properties, _notifications = notifications, _supportTickets = supportTickets, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory User({String? id, required String name, required String email, String? phoneNumber, String? profilePicture, List<Account>? accounts, List<Card>? cards, List<Loan>? loans, List<Property>? properties, List<Notification>? notifications, List<SupportTicket>? supportTickets}) {
    return User._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      profilePicture: profilePicture,
      accounts: accounts != null ? List<Account>.unmodifiable(accounts) : accounts,
      cards: cards != null ? List<Card>.unmodifiable(cards) : cards,
      loans: loans != null ? List<Loan>.unmodifiable(loans) : loans,
      properties: properties != null ? List<Property>.unmodifiable(properties) : properties,
      notifications: notifications != null ? List<Notification>.unmodifiable(notifications) : notifications,
      supportTickets: supportTickets != null ? List<SupportTicket>.unmodifiable(supportTickets) : supportTickets);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
      id == other.id &&
      _name == other._name &&
      _email == other._email &&
      _phoneNumber == other._phoneNumber &&
      _profilePicture == other._profilePicture &&
      DeepCollectionEquality().equals(_accounts, other._accounts) &&
      DeepCollectionEquality().equals(_cards, other._cards) &&
      DeepCollectionEquality().equals(_loans, other._loans) &&
      DeepCollectionEquality().equals(_properties, other._properties) &&
      DeepCollectionEquality().equals(_notifications, other._notifications) &&
      DeepCollectionEquality().equals(_supportTickets, other._supportTickets);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("phoneNumber=" + "$_phoneNumber" + ", ");
    buffer.write("profilePicture=" + "$_profilePicture" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  User copyWith({String? name, String? email, String? phoneNumber, String? profilePicture, List<Account>? accounts, List<Card>? cards, List<Loan>? loans, List<Property>? properties, List<Notification>? notifications, List<SupportTicket>? supportTickets}) {
    return User._internal(
      id: id,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      profilePicture: profilePicture ?? this.profilePicture,
      accounts: accounts ?? this.accounts,
      cards: cards ?? this.cards,
      loans: loans ?? this.loans,
      properties: properties ?? this.properties,
      notifications: notifications ?? this.notifications,
      supportTickets: supportTickets ?? this.supportTickets);
  }
  
  User copyWithModelFieldValues({
    ModelFieldValue<String>? name,
    ModelFieldValue<String>? email,
    ModelFieldValue<String?>? phoneNumber,
    ModelFieldValue<String?>? profilePicture,
    ModelFieldValue<List<Account>?>? accounts,
    ModelFieldValue<List<Card>?>? cards,
    ModelFieldValue<List<Loan>?>? loans,
    ModelFieldValue<List<Property>?>? properties,
    ModelFieldValue<List<Notification>?>? notifications,
    ModelFieldValue<List<SupportTicket>?>? supportTickets
  }) {
    return User._internal(
      id: id,
      name: name == null ? this.name : name.value,
      email: email == null ? this.email : email.value,
      phoneNumber: phoneNumber == null ? this.phoneNumber : phoneNumber.value,
      profilePicture: profilePicture == null ? this.profilePicture : profilePicture.value,
      accounts: accounts == null ? this.accounts : accounts.value,
      cards: cards == null ? this.cards : cards.value,
      loans: loans == null ? this.loans : loans.value,
      properties: properties == null ? this.properties : properties.value,
      notifications: notifications == null ? this.notifications : notifications.value,
      supportTickets: supportTickets == null ? this.supportTickets : supportTickets.value
    );
  }
  
  User.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _email = json['email'],
      _phoneNumber = json['phoneNumber'],
      _profilePicture = json['profilePicture'],
      _accounts = json['accounts']  is Map
        ? (json['accounts']['items'] is List
          ? (json['accounts']['items'] as List)
              .where((e) => e != null)
              .map((e) => Account.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['accounts'] is List
          ? (json['accounts'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Account.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _cards = json['cards']  is Map
        ? (json['cards']['items'] is List
          ? (json['cards']['items'] as List)
              .where((e) => e != null)
              .map((e) => Card.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['cards'] is List
          ? (json['cards'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Card.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _loans = json['loans']  is Map
        ? (json['loans']['items'] is List
          ? (json['loans']['items'] as List)
              .where((e) => e != null)
              .map((e) => Loan.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['loans'] is List
          ? (json['loans'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Loan.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _properties = json['properties']  is Map
        ? (json['properties']['items'] is List
          ? (json['properties']['items'] as List)
              .where((e) => e != null)
              .map((e) => Property.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['properties'] is List
          ? (json['properties'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Property.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _notifications = json['notifications']  is Map
        ? (json['notifications']['items'] is List
          ? (json['notifications']['items'] as List)
              .where((e) => e != null)
              .map((e) => Notification.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['notifications'] is List
          ? (json['notifications'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Notification.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _supportTickets = json['supportTickets']  is Map
        ? (json['supportTickets']['items'] is List
          ? (json['supportTickets']['items'] as List)
              .where((e) => e != null)
              .map((e) => SupportTicket.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['supportTickets'] is List
          ? (json['supportTickets'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => SupportTicket.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'email': _email, 'phoneNumber': _phoneNumber, 'profilePicture': _profilePicture, 'accounts': _accounts?.map((Account? e) => e?.toJson()).toList(), 'cards': _cards?.map((Card? e) => e?.toJson()).toList(), 'loans': _loans?.map((Loan? e) => e?.toJson()).toList(), 'properties': _properties?.map((Property? e) => e?.toJson()).toList(), 'notifications': _notifications?.map((Notification? e) => e?.toJson()).toList(), 'supportTickets': _supportTickets?.map((SupportTicket? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'email': _email,
    'phoneNumber': _phoneNumber,
    'profilePicture': _profilePicture,
    'accounts': _accounts,
    'cards': _cards,
    'loans': _loans,
    'properties': _properties,
    'notifications': _notifications,
    'supportTickets': _supportTickets,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<UserModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<UserModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final PHONENUMBER = amplify_core.QueryField(fieldName: "phoneNumber");
  static final PROFILEPICTURE = amplify_core.QueryField(fieldName: "profilePicture");
  static final ACCOUNTS = amplify_core.QueryField(
    fieldName: "accounts",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Account'));
  static final CARDS = amplify_core.QueryField(
    fieldName: "cards",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Card'));
  static final LOANS = amplify_core.QueryField(
    fieldName: "loans",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Loan'));
  static final PROPERTIES = amplify_core.QueryField(
    fieldName: "properties",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Property'));
  static final NOTIFICATIONS = amplify_core.QueryField(
    fieldName: "notifications",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Notification'));
  static final SUPPORTTICKETS = amplify_core.QueryField(
    fieldName: "supportTickets",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'SupportTicket'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";
    
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
      amplify_core.ModelIndex(fields: const ["email"], name: "byEmail")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.PHONENUMBER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.PROFILEPICTURE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.ACCOUNTS,
      isRequired: false,
      ofModelName: 'Account',
      associatedKey: Account.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CARDS,
      isRequired: false,
      ofModelName: 'Card',
      associatedKey: Card.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.LOANS,
      isRequired: false,
      ofModelName: 'Loan',
      associatedKey: Loan.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.PROPERTIES,
      isRequired: false,
      ofModelName: 'Property',
      associatedKey: Property.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.NOTIFICATIONS,
      isRequired: false,
      ofModelName: 'Notification',
      associatedKey: Notification.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.SUPPORTTICKETS,
      isRequired: false,
      ofModelName: 'SupportTicket',
      associatedKey: SupportTicket.USER
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

class _UserModelType extends amplify_core.ModelType<User> {
  const _UserModelType();
  
  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'User';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [User] in your schema.
 */
class UserModelIdentifier implements amplify_core.ModelIdentifier<User> {
  final String id;

  /** Create an instance of UserModelIdentifier using [id] the primary key. */
  const UserModelIdentifier({
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
  String toString() => 'UserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}