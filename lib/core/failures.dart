import 'package:clean_architecture/core/usecase/usecase.dart';
import 'package:clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable{
  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  Failures([List properties = const <dynamic>[]]) : super(properties);
}

class ServerFailure extends Failures {}

class CacheFailure extends Failures {}