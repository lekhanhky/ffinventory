import '../database.dart';

class ReceiptdetailsTable extends SupabaseTable<ReceiptdetailsRow> {
  @override
  String get tableName => 'receiptdetails';

  @override
  ReceiptdetailsRow createRow(Map<String, dynamic> data) =>
      ReceiptdetailsRow(data);
}

class ReceiptdetailsRow extends SupabaseDataRow {
  ReceiptdetailsRow(super.data);

  @override
  SupabaseTable get table => ReceiptdetailsTable();

  int get receiptdetailid => getField<int>('receiptdetailid')!;
  set receiptdetailid(int value) => setField<int>('receiptdetailid', value);

  int? get receiptid => getField<int>('receiptid');
  set receiptid(int? value) => setField<int>('receiptid', value);

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  int get quantityreceived => getField<int>('quantityreceived')!;
  set quantityreceived(int value) => setField<int>('quantityreceived', value);

  double get unitprice => getField<double>('unitprice')!;
  set unitprice(double value) => setField<double>('unitprice', value);
}
