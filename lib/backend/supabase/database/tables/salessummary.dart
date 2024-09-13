import '../database.dart';

class SalessummaryTable extends SupabaseTable<SalessummaryRow> {
  @override
  String get tableName => 'salessummary';

  @override
  SalessummaryRow createRow(Map<String, dynamic> data) => SalessummaryRow(data);
}

class SalessummaryRow extends SupabaseDataRow {
  SalessummaryRow(super.data);

  @override
  SupabaseTable get table => SalessummaryTable();

  int? get invoiceid => getField<int>('invoiceid');
  set invoiceid(int? value) => setField<int>('invoiceid', value);

  DateTime? get invoicedate => getField<DateTime>('invoicedate');
  set invoicedate(DateTime? value) => setField<DateTime>('invoicedate', value);

  double? get revenue => getField<double>('revenue');
  set revenue(double? value) => setField<double>('revenue', value);

  double? get profit => getField<double>('profit');
  set profit(double? value) => setField<double>('profit', value);
}
