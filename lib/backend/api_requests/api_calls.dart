import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start GetSupabase Group Code

class GetSupabaseGroup {
  static String getBaseUrl() => 'https://miobxqkjevbzkzvsilnf.supabase.co';
  static Map<String, String> headers = {};
  static GetAllCustomersCall getAllCustomersCall = GetAllCustomersCall();
  static GetAllCustomersCopyCall getAllCustomersCopyCall =
      GetAllCustomersCopyCall();
}

class GetAllCustomersCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = GetSupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllCustomers',
      apiUrl: '$baseUrl/rest/v1/rpc/get_all_customers',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1pb2J4cWtqZXZiemt6dnNpbG5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxNTY1NzYsImV4cCI6MjAyMTczMjU3Nn0.TLwq3cXwA3CWZbRkUUtcfd1dtGG42VFcgObxxQPCups',
        'Authorization':
            'bFbl8OIwN7ZfOXx+CUWdZUKz/+tDEkCapSjeUYGN9AKXK9ECQEvcUQqE39WuWXzB894oN/L0zKT+zkr2/8gWtw==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllCustomersCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = GetSupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllCustomers Copy',
      apiUrl: '$baseUrl/rest/v1/rpc/get_all_customers',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1pb2J4cWtqZXZiemt6dnNpbG5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxNTY1NzYsImV4cCI6MjAyMTczMjU3Nn0.TLwq3cXwA3CWZbRkUUtcfd1dtGG42VFcgObxxQPCups',
        'Authorization':
            'bFbl8OIwN7ZfOXx+CUWdZUKz/+tDEkCapSjeUYGN9AKXK9ECQEvcUQqE39WuWXzB894oN/L0zKT+zkr2/8gWtw==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End GetSupabase Group Code

class CustomersCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'customers',
      apiUrl:
          'https://miobxqkjevbzkzvsilnf.supabase.co/rest/v1/customers?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1pb2J4cWtqZXZiemt6dnNpbG5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxNTY1NzYsImV4cCI6MjAyMTczMjU3Nn0.TLwq3cXwA3CWZbRkUUtcfd1dtGG42VFcgObxxQPCups',
        'Authorization':
            'bFbl8OIwN7ZfOXx+CUWdZUKz/+tDEkCapSjeUYGN9AKXK9ECQEvcUQqE39WuWXzB894oN/L0zKT+zkr2/8gWtw==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'products',
      apiUrl:
          'https://miobxqkjevbzkzvsilnf.supabase.co/rest/v1/products?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1pb2J4cWtqZXZiemt6dnNpbG5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxNTY1NzYsImV4cCI6MjAyMTczMjU3Nn0.TLwq3cXwA3CWZbRkUUtcfd1dtGG42VFcgObxxQPCups',
        'Authorization':
            'bFbl8OIwN7ZfOXx+CUWdZUKz/+tDEkCapSjeUYGN9AKXK9ECQEvcUQqE39WuWXzB894oN/L0zKT+zkr2/8gWtw==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SuppliesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'supplies',
      apiUrl:
          'https://miobxqkjevbzkzvsilnf.supabase.co/rest/v1/products?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1pb2J4cWtqZXZiemt6dnNpbG5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxNTY1NzYsImV4cCI6MjAyMTczMjU3Nn0.TLwq3cXwA3CWZbRkUUtcfd1dtGG42VFcgObxxQPCups',
        'Authorization':
            'bFbl8OIwN7ZfOXx+CUWdZUKz/+tDEkCapSjeUYGN9AKXK9ECQEvcUQqE39WuWXzB894oN/L0zKT+zkr2/8gWtw==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
