import 'package:west_producer/core/core/core_usecase.dart';

export 'core_none_param_usecase.dart';

export 'none_param_usecase.dart';

abstract class UseCase<P, R> extends CoreUseCase<P, Future<R>> {}
