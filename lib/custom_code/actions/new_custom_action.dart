// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<int?> newCustomAction() async {
  // URL của API
  var url = Uri.parse(
      'https://miobxqkjevbzkzvsilnf.supabase.co/rest/v1/rpc/get_idcustomer');

  // Headers
  var headers = {
    'Content-Type': 'application/json',
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1pb2J4cWtqZXZiemt6dnNpbG5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxNTY1NzYsImV4cCI6MjAyMTczMjU3Nn0.TLwq3cXwA3CWZbRkUUtcfd1dtGG42VFcgObxxQPCups',
    'Authorization':
        'bFbl8OIwN7ZfOXx+CUWdZUKz/+tDEkCapSjeUYGN9AKXK9ECQEvcUQqE39WuWXzB894oN/L0zKT+zkr2/8gWtw==',
  };

  // Gửi yêu cầu POST
  var response = await http.post(url, headers: headers);

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);

    if (jsonResponse is int) {
      return jsonResponse;
    } else {
      print('Unexpected response format: ${jsonResponse.runtimeType}');
      return null;
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
    return null;
  }
}
