import 'package:cleanarchsample/core/error/failures.dart';
import 'package:cleanarchsample/core/usecases/usecase.dart';
import 'package:cleanarchsample/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia,NoParams> {
  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) {
    
    return null;
  }
  
}

class NoParams extends Equatable {}
