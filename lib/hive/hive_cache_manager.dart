import 'package:hive_ce/hive.dart';
import 'package:hive_example/hive/adapter/hive_registrar.g.dart';
import 'package:hive_example/hive/base_cache_manager.dart';
import 'package:path_provider/path_provider.dart';

final class HiveCacheManager extends BaseCacheManager {
  static HiveCacheManager? _instance;
  HiveCacheManager._();
  static HiveCacheManager get instance => _instance ??= HiveCacheManager._();

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive
      ..init(dir.path)
      ..registerAdapters();
  }

  Future<void> close() async {
    await Hive.close();
  }
}
