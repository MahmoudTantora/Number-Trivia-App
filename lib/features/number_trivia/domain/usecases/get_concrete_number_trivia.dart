
import 'package:clean_architecture/core/failures.dart';
import 'package:clean_architecture/core/usecase/usecase.dart';
import 'package:clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia, Params>{
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failures, NumberTrivia>> call(Params params)
  async {
   return await repository.getConcreteNumberTrivia(params.number);
  }

}

class Params extends Equatable {
  final int number;

  Params({@required this.number}) : super([number]);
}