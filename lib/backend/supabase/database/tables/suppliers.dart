import '../database.dart';

class SuppliersTable extends SupabaseTable<SuppliersRow> {
  @override
  String get tableName => 'suppliers';

  @override
  SuppliersRow createRow(Map<String, dynamic> data) => SuppliersRow(data);
}

class SuppliersRow extends SupabaseDataRow {
  SuppliersRow(super.data);

  @override
  SupabaseTable get table => SuppliersTable();

  int get supplierid => getField<int>('supplierid')!;
  set supplierid(int value) => setField<int>('supplierid', value);

  String get suppliername => getField<String>('suppliername')!;
  set suppliername(String value) => setField<String>('suppliername', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get phonenumber => getField<String>('phonenumber');
  set phonenumber(String? value) => setField<String>('phonenumber', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
