import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:tdd_tut/core/errors/failure.dart';
import 'package:tdd_tut/core/usecase/usecase.dart';
import 'package:tdd_tut/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_tut/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({@required this.number});

  @override
  // TODO: implement props
  List<Object> get props => [number];
}
