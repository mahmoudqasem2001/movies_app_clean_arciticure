import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';

class GetNowPlayingMoviesUseCase extends BaseUseCase<List<Movie>> {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call() async {
    return await baseMoviesRepository.getNowPlaying();
  }
}
