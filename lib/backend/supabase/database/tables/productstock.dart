import '../database.dart';

class ProductstockTable extends SupabaseTable<ProductstockRow> {
  @override
  String get tableName => 'productstock';

  @override
  ProductstockRow createRow(Map<String, dynamic> data) => ProductstockRow(data);
}

class ProductstockRow extends SupabaseDataRow {
  ProductstockRow(super.data);

  @override
  SupabaseTable get table => ProductstockTable();

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  String? get productname => getField<String>('productname');
  set productname(String? value) => setField<String>('productname', value);

  int? get quantityinstock => getField<int>('quantityinstock');
  set quantityinstock(int? value) => setField<int>('quantityinstock', value);

  int? get totalreceived => getField<int>('totalreceived');
  set totalreceived(int? value) => setField<int>('totalreceived', value);

  int? get totalsold => getField<int>('totalsold');
  set totalsold(int? value) => setField<int>('totalsold', value);

  int? get currentstock => getField<int>('currentstock');
  set currentstock(int? value) => setField<int>('currentstock', value);
}
