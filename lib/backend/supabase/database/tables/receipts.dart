import '../database.dart';

class ReceiptsTable extends SupabaseTable<ReceiptsRow> {
  @override
  String get tableName => 'receipts';

  @override
  ReceiptsRow createRow(Map<String, dynamic> data) => ReceiptsRow(data);
}

class ReceiptsRow extends SupabaseDataRow {
  ReceiptsRow(super.data);

  @override
  SupabaseTable get table => ReceiptsTable();

  int get receiptid => getField<int>('receiptid')!;
  set receiptid(int value) => setField<int>('receiptid', value);

  DateTime get receiptdate => getField<DateTime>('receiptdate')!;
  set receiptdate(DateTime value) => setField<DateTime>('receiptdate', value);

  double get totalamount => getField<double>('totalamount')!;
  set totalamount(double value) => setField<double>('totalamount', value);
}
