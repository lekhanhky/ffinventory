import '../database.dart';

class PurchaseordersTable extends SupabaseTable<PurchaseordersRow> {
  @override
  String get tableName => 'purchaseorders';

  @override
  PurchaseordersRow createRow(Map<String, dynamic> data) =>
      PurchaseordersRow(data);
}

class PurchaseordersRow extends SupabaseDataRow {
  PurchaseordersRow(super.data);

  @override
  SupabaseTable get table => PurchaseordersTable();

  int get orderid => getField<int>('orderid')!;
  set orderid(int value) => setField<int>('orderid', value);

  DateTime get orderdate => getField<DateTime>('orderdate')!;
  set orderdate(DateTime value) => setField<DateTime>('orderdate', value);

  DateTime? get expecteddeliverydate =>
      getField<DateTime>('expecteddeliverydate');
  set expecteddeliverydate(DateTime? value) =>
      setField<DateTime>('expecteddeliverydate', value);

  double get totalamount => getField<double>('totalamount')!;
  set totalamount(double value) => setField<double>('totalamount', value);

  int? get supplierid => getField<int>('supplierid');
  set supplierid(int? value) => setField<int>('supplierid', value);
}
