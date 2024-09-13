import '../database.dart';

class InvoicedetailsTable extends SupabaseTable<InvoicedetailsRow> {
  @override
  String get tableName => 'invoicedetails';

  @override
  InvoicedetailsRow createRow(Map<String, dynamic> data) =>
      InvoicedetailsRow(data);
}

class InvoicedetailsRow extends SupabaseDataRow {
  InvoicedetailsRow(super.data);

  @override
  SupabaseTable get table => InvoicedetailsTable();

  int get invoicedetailid => getField<int>('invoicedetailid')!;
  set invoicedetailid(int value) => setField<int>('invoicedetailid', value);

  int? get invoiceid => getField<int>('invoiceid');
  set invoiceid(int? value) => setField<int>('invoiceid', value);

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  int get quantitysold => getField<int>('quantitysold')!;
  set quantitysold(int value) => setField<int>('quantitysold', value);

  double get unitprice => getField<double>('unitprice')!;
  set unitprice(double value) => setField<double>('unitprice', value);
}
