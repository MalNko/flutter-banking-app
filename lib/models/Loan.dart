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


/** This is an auto generated class representing the Loan type in your schema. */
class Loan extends amplify_core.Model {
  static const classType = const _LoanModelType();
  final String id;
  final String? _loanType;
  final double? _amount;
  final double? _interestRate;
  final amplify_core.TemporalDate? _dueDate;
  final User? _user;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  LoanModelIdentifier get modelIdentifier {
      return LoanModelIdentifier(
        id: id
      );
  }
  
  String get loanType {
    try {
      return _loanType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get amount {
    try {
      return _amount!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get interestRate {
    try {
      return _interestRate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get dueDate {
    try {
      return _dueDate!;
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
  
  const Loan._internal({required this.id, required loanType, required amount, required interestRate, required dueDate, required user, createdAt, updatedAt}): _loanType = loanType, _amount = amount, _interestRate = interestRate, _dueDate = dueDate, _user = user, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Loan({String? id, required String loanType, required double amount, required double interestRate, required amplify_core.TemporalDate dueDate, required User user}) {
    return Loan._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      loanType: loanType,
      amount: amount,
      interestRate: interestRate,
      dueDate: dueDate,
      user: user);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Loan &&
      id == other.id &&
      _loanType == other._loanType &&
      _amount == other._amount &&
      _interestRate == other._interestRate &&
      _dueDate == other._dueDate &&
      _user == other._user;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Loan {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("loanType=" + "$_loanType" + ", ");
    buffer.write("amount=" + (_amount != null ? _amount!.toString() : "null") + ", ");
    buffer.write("interestRate=" + (_interestRate != null ? _interestRate!.toString() : "null") + ", ");
    buffer.write("dueDate=" + (_dueDate != null ? _dueDate!.format() : "null") + ", ");
    buffer.write("user=" + (_user != null ? _user!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Loan copyWith({String? loanType, double? amount, double? interestRate, amplify_core.TemporalDate? dueDate, User? user}) {
    return Loan._internal(
      id: id,
      loanType: loanType ?? this.loanType,
      amount: amount ?? this.amount,
      interestRate: interestRate ?? this.interestRate,
      dueDate: dueDate ?? this.dueDate,
      user: user ?? this.user);
  }
  
  Loan copyWithModelFieldValues({
    ModelFieldValue<String>? loanType,
    ModelFieldValue<double>? amount,
    ModelFieldValue<double>? interestRate,
    ModelFieldValue<amplify_core.TemporalDate>? dueDate,
    ModelFieldValue<User>? user
  }) {
    return Loan._internal(
      id: id,
      loanType: loanType == null ? this.loanType : loanType.value,
      amount: amount == null ? this.amount : amount.value,
      interestRate: interestRate == null ? this.interestRate : interestRate.value,
      dueDate: dueDate == null ? this.dueDate : dueDate.value,
      user: user == null ? this.user : user.value
    );
  }
  
  Loan.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _loanType = json['loanType'],
      _amount = (json['amount'] as num?)?.toDouble(),
      _interestRate = (json['interestRate'] as num?)?.toDouble(),
      _dueDate = json['dueDate'] != null ? amplify_core.TemporalDate.fromString(json['dueDate']) : null,
      _user = json['user'] != null
        ? json['user']['serializedData'] != null
          ? User.fromJson(new Map<String, dynamic>.from(json['user']['serializedData']))
          : User.fromJson(new Map<String, dynamic>.from(json['user']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'loanType': _loanType, 'amount': _amount, 'interestRate': _interestRate, 'dueDate': _dueDate?.format(), 'user': _user?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'loanType': _loanType,
    'amount': _amount,
    'interestRate': _interestRate,
    'dueDate': _dueDate,
    'user': _user,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<LoanModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<LoanModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final LOANTYPE = amplify_core.QueryField(fieldName: "loanType");
  static final AMOUNT = amplify_core.QueryField(fieldName: "amount");
  static final INTERESTRATE = amplify_core.QueryField(fieldName: "interestRate");
  static final DUEDATE = amplify_core.QueryField(fieldName: "dueDate");
  static final USER = amplify_core.QueryField(
    fieldName: "user",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Loan";
    modelSchemaDefinition.pluralName = "Loans";
    
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
      key: Loan.LOANTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Loan.AMOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Loan.INTERESTRATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Loan.DUEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Loan.USER,
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

class _LoanModelType extends amplify_core.ModelType<Loan> {
  const _LoanModelType();
  
  @override
  Loan fromJson(Map<String, dynamic> jsonData) {
    return Loan.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Loan';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Loan] in your schema.
 */
class LoanModelIdentifier implements amplify_core.ModelIdentifier<Loan> {
  final String id;

  /** Create an instance of LoanModelIdentifier using [id] the primary key. */
  const LoanModelIdentifier({
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
  String toString() => 'LoanModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is LoanModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}