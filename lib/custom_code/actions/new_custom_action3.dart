// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<List<CustomersRow>> newCustomAction3() async {
  final query = Supabase.instance.client.from('customers').select('*');

  // if (query != null && query.isNotEmpty) query.eq('customerid');
  // if (query != null && query.isNotEmpty) query.eq('customername');
  // if (query != null && query.isNotEmpty) query.eq('email');

  final response = await query.execute();

  final data = response.data as List<dynamic>;
  final tablename = data.map((item) => CustomersRow(item)).toList();
  return tablename;
}
