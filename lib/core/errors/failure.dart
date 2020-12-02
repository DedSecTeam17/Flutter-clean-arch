

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  List properties = const <dynamic>[];
  Failure([properties]) ;

  List<Object> get props =>properties;


}