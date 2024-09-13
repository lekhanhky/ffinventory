import '../database.dart';

class PurchaseorderdetailsTable extends SupabaseTable<PurchaseorderdetailsRow> {
  @override
  String get tableName => 'purchaseorderdetails';

  @override
  PurchaseorderdetailsRow createRow(Map<String, dynamic> data) =>
      PurchaseorderdetailsRow(data);
}

class PurchaseorderdetailsRow extends SupabaseDataRow {
  PurchaseorderdetailsRow(super.data);

  @override
  SupabaseTable get table => PurchaseorderdetailsTable();

  int get orderdetailid => getField<int>('orderdetailid')!;
  set orderdetailid(int value) => setField<int>('orderdetailid', value);

  int? get orderid => getField<int>('orderid');
  set orderid(int? value) => setField<int>('orderid', value);

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  int get quantityordered => getField<int>('quantityordered')!;
  set quantityordered(int value) => setField<int>('quantityordered', value);

  double get unitprice => getField<double>('unitprice')!;
  set unitprice(double value) => setField<double>('unitprice', value);
}
