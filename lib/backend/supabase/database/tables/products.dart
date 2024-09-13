import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(super.data);

  @override
  SupabaseTable get table => ProductsTable();

  int get productid => getField<int>('productid')!;
  set productid(int value) => setField<int>('productid', value);

  String get productname => getField<String>('productname')!;
  set productname(String value) => setField<String>('productname', value);

  String get productcode => getField<String>('productcode')!;
  set productcode(String value) => setField<String>('productcode', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double get price => getField<double>('price')!;
  set price(double value) => setField<double>('price', value);

  int? get quantityinstock => getField<int>('quantityinstock');
  set quantityinstock(int? value) => setField<int>('quantityinstock', value);
}
