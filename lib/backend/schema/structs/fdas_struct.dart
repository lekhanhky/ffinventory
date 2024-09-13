// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FdasStruct extends BaseStruct {
  FdasStruct({
    int? customerid,
    String? customername,
    String? address,
    String? phonenumber,
    String? email,
  })  : _customerid = customerid,
        _customername = customername,
        _address = address,
        _phonenumber = phonenumber,
        _email = email;

  // "customerid" field.
  int? _customerid;
  int get customerid => _customerid ?? 0;
  set customerid(int? val) => _customerid = val;

  void incrementCustomerid(int amount) => customerid = customerid + amount;

  bool hasCustomerid() => _customerid != null;

  // "customername" field.
  String? _customername;
  String get customername => _customername ?? '';
  set customername(String? val) => _customername = val;

  bool hasCustomername() => _customername != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "phonenumber" field.
  String? _phonenumber;
  String get phonenumber => _phonenumber ?? '';
  set phonenumber(String? val) => _phonenumber = val;

  bool hasPhonenumber() => _phonenumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static FdasStruct fromMap(Map<String, dynamic> data) => FdasStruct(
        customerid: castToType<int>(data['customerid']),
        customername: data['customername'] as String?,
        address: data['address'] as String?,
        phonenumber: data['phonenumber'] as String?,
        email: data['email'] as String?,
      );

  static FdasStruct? maybeFromMap(dynamic data) =>
      data is Map ? FdasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'customerid': _customerid,
        'customername': _customername,
        'address': _address,
        'phonenumber': _phonenumber,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customerid': serializeParam(
          _customerid,
          ParamType.int,
        ),
        'customername': serializeParam(
          _customername,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'phonenumber': serializeParam(
          _phonenumber,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static FdasStruct fromSerializableMap(Map<String, dynamic> data) =>
      FdasStruct(
        customerid: deserializeParam(
          data['customerid'],
          ParamType.int,
          false,
        ),
        customername: deserializeParam(
          data['customername'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        phonenumber: deserializeParam(
          data['phonenumber'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FdasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FdasStruct &&
        customerid == other.customerid &&
        customername == other.customername &&
        address == other.address &&
        phonenumber == other.phonenumber &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([customerid, customername, address, phonenumber, email]);
}

FdasStruct createFdasStruct({
  int? customerid,
  String? customername,
  String? address,
  String? phonenumber,
  String? email,
}) =>
    FdasStruct(
      customerid: customerid,
      customername: customername,
      address: address,
      phonenumber: phonenumber,
      email: email,
    );
