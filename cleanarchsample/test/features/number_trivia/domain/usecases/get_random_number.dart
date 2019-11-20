import 'package:cleanarchsample/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:cleanarchsample/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:cleanarchsample/features/number_trivia/domain/usecases/get_concrete_number.dart';
import 'package:cleanarchsample/features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetRandomNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia();
  });

  final tNumber = 1;
  final tNumberTrivia = NumberTrivia(number: 1, text: "test");

  test('should get trivia for the repository', () async {
    // arrenge
    when(mockNumberTriviaRepository.getRandomNumber())
        .thenAnswer((_) async => Right(tNumberTrivia));
    // act
    final result = await usecase(NoParams());
    // assert
    expect(result, Left(tNumberTrivia));
    verify(mockNumberTriviaRepository.getRandomNumber());
    verifyNoMoreInteractions(mockNumberTriviaRepository);

    // 1:18:14
  });
}
