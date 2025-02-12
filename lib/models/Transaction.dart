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


/** This is an auto generated class representing the Transaction type in your schema. */
class Transaction extends amplify_core.Model {
  static const classType = const _TransactionModelType();
  final String id;
  final double? _amount;
  final String? _transactionType;
  final amplify_core.TemporalDateTime? _date;
  final String? _description;
  final String? _category;
  final Account? _account;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  TransactionModelIdentifier get modelIdentifier {
      return TransactionModelIdentifier(
        id: id
      );
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
  
  String get transactionType {
    try {
      return _transactionType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get date {
    try {
      return _date!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get description {
    return _description;
  }
  
  String? get category {
    return _category;
  }
  
  Account get account {
    try {
      return _account!;
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
  
  const Transaction._internal({required this.id, required amount, required transactionType, required date, description, category, required account, createdAt, updatedAt}): _amount = amount, _transactionType = transactionType, _date = date, _description = description, _category = category, _account = account, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Transaction({String? id, required double amount, required String transactionType, required amplify_core.TemporalDateTime date, String? description, String? category, required Account account}) {
    return Transaction._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      amount: amount,
      transactionType: transactionType,
      date: date,
      description: description,
      category: category,
      account: account);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Transaction &&
      id == other.id &&
      _amount == other._amount &&
      _transactionType == other._transactionType &&
      _date == other._date &&
      _description == other._description &&
      _category == other._category &&
      _account == other._account;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Transaction {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("amount=" + (_amount != null ? _amount!.toString() : "null") + ", ");
    buffer.write("transactionType=" + "$_transactionType" + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("category=" + "$_category" + ", ");
    buffer.write("account=" + (_account != null ? _account!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Transaction copyWith({double? amount, String? transactionType, amplify_core.TemporalDateTime? date, String? description, String? category, Account? account}) {
    return Transaction._internal(
      id: id,
      amount: amount ?? this.amount,
      transactionType: transactionType ?? this.transactionType,
      date: date ?? this.date,
      description: description ?? this.description,
      category: category ?? this.category,
      account: account ?? this.account);
  }
  
  Transaction copyWithModelFieldValues({
    ModelFieldValue<double>? amount,
    ModelFieldValue<String>? transactionType,
    ModelFieldValue<amplify_core.TemporalDateTime>? date,
    ModelFieldValue<String?>? description,
    ModelFieldValue<String?>? category,
    ModelFieldValue<Account>? account
  }) {
    return Transaction._internal(
      id: id,
      amount: amount == null ? this.amount : amount.value,
      transactionType: transactionType == null ? this.transactionType : transactionType.value,
      date: date == null ? this.date : date.value,
      description: description == null ? this.description : description.value,
      category: category == null ? this.category : category.value,
      account: account == null ? this.account : account.value
    );
  }
  
  Transaction.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _amount = (json['amount'] as num?)?.toDouble(),
      _transactionType = json['transactionType'],
      _date = json['date'] != null ? amplify_core.TemporalDateTime.fromString(json['date']) : null,
      _description = json['description'],
      _category = json['category'],
      _account = json['account'] != null
        ? json['account']['serializedData'] != null
          ? Account.fromJson(new Map<String, dynamic>.from(json['account']['serializedData']))
          : Account.fromJson(new Map<String, dynamic>.from(json['account']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'amount': _amount, 'transactionType': _transactionType, 'date': _date?.format(), 'description': _description, 'category': _category, 'account': _account?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'amount': _amount,
    'transactionType': _transactionType,
    'date': _date,
    'description': _description,
    'category': _category,
    'account': _account,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<TransactionModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<TransactionModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final AMOUNT = amplify_core.QueryField(fieldName: "amount");
  static final TRANSACTIONTYPE = amplify_core.QueryField(fieldName: "transactionType");
  static final DATE = amplify_core.QueryField(fieldName: "date");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final CATEGORY = amplify_core.QueryField(fieldName: "category");
  static final ACCOUNT = amplify_core.QueryField(
    fieldName: "account",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Account'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Transaction";
    modelSchemaDefinition.pluralName = "Transactions";
    
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
      amplify_core.ModelIndex(fields: const ["accountID"], name: "byAccount")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.AMOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.TRANSACTIONTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.DATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.CATEGORY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Transaction.ACCOUNT,
      isRequired: true,
      targetNames: ['accountID'],
      ofModelName: 'Account'
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

class _TransactionModelType extends amplify_core.ModelType<Transaction> {
  const _TransactionModelType();
  
  @override
  Transaction fromJson(Map<String, dynamic> jsonData) {
    return Transaction.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Transaction';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Transaction] in your schema.
 */
class TransactionModelIdentifier implements amplify_core.ModelIdentifier<Transaction> {
  final String id;

  /** Create an instance of TransactionModelIdentifier using [id] the primary key. */
  const TransactionModelIdentifier({
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
  String toString() => 'TransactionModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is TransactionModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}