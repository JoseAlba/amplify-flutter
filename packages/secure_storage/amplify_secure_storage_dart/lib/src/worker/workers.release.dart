import 'package:amplify_secure_storage_dart/src/worker/secure_storage_worker.dart';
import 'package:worker_bee/worker_bee.dart';

final _workers = <String, WorkerBeeBuilder>{
  'SecureStorageWorker': SecureStorageWorker.create
};
void main() => runHive(_workers);