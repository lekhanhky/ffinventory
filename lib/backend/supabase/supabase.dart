import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://miobxqkjevbzkzvsilnf.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1pb2J4cWtqZXZiemt6dnNpbG5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxNTY1NzYsImV4cCI6MjAyMTczMjU3Nn0.TLwq3cXwA3CWZbRkUUtcfd1dtGG42VFcgObxxQPCups';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
