import '../database.dart';

class CustomersTable extends SupabaseTable<CustomersRow> {
  @override
  String get tableName => 'customers';

  @override
  CustomersRow createRow(Map<String, dynamic> data) => CustomersRow(data);
}

class CustomersRow extends SupabaseDataRow {
  CustomersRow(super.data);

  @override
  SupabaseTable get table => CustomersTable();

  int get customerid => getField<int>('customerid')!;
  set customerid(int value) => setField<int>('customerid', value);

  String get customername => getField<String>('customername')!;
  set customername(String value) => setField<String>('customername', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get phonenumber => getField<String>('phonenumber');
  set phonenumber(String? value) => setField<String>('phonenumber', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
