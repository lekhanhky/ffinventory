import '../database.dart';

class SalesinvoicesTable extends SupabaseTable<SalesinvoicesRow> {
  @override
  String get tableName => 'salesinvoices';

  @override
  SalesinvoicesRow createRow(Map<String, dynamic> data) =>
      SalesinvoicesRow(data);
}

class SalesinvoicesRow extends SupabaseDataRow {
  SalesinvoicesRow(super.data);

  @override
  SupabaseTable get table => SalesinvoicesTable();

  int get invoiceid => getField<int>('invoiceid')!;
  set invoiceid(int value) => setField<int>('invoiceid', value);

  DateTime get invoicedate => getField<DateTime>('invoicedate')!;
  set invoicedate(DateTime value) => setField<DateTime>('invoicedate', value);

  double get totalamount => getField<double>('totalamount')!;
  set totalamount(double value) => setField<double>('totalamount', value);

  int? get customerid => getField<int>('customerid');
  set customerid(int? value) => setField<int>('customerid', value);
}
