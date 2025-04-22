import 'package:hive_ce/hive.dart';
import 'package:hive_example/hive/model/user_model.dart';

@GenerateAdapters([AdapterSpec<UserModel>()])
part 'hive_adapter.g.dart';
