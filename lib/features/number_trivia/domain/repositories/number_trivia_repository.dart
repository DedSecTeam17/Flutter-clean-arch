import 'package:dartz/dartz.dart';
import 'package:tdd_tut/core/errors/failure.dart';

import '../entities/number_trivia.dart';


//contract
abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);

  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
