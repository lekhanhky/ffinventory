import '../database.dart';

class TransactionsummaryTable extends SupabaseTable<TransactionsummaryRow> {
  @override
  String get tableName => 'transactionsummary';

  @override
  TransactionsummaryRow createRow(Map<String, dynamic> data) =>
      TransactionsummaryRow(data);
}

class TransactionsummaryRow extends SupabaseDataRow {
  TransactionsummaryRow(super.data);

  @override
  SupabaseTable get table => TransactionsummaryTable();

  String? get transactiontype => getField<String>('transactiontype');
  set transactiontype(String? value) =>
      setField<String>('transactiontype', value);

  int? get transactionid => getField<int>('transactionid');
  set transactionid(int? value) => setField<int>('transactionid', value);

  DateTime? get transactiondate => getField<DateTime>('transactiondate');
  set transactiondate(DateTime? value) =>
      setField<DateTime>('transactiondate', value);

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  double? get unitprice => getField<double>('unitprice');
  set unitprice(double? value) => setField<double>('unitprice', value);

  double? get totalamount => getField<double>('totalamount');
  set totalamount(double? value) => setField<double>('totalamount', value);
}
