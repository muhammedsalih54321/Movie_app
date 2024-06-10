import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/Repository/Api/movie/movie_api.dart';
import 'package:movie_app/Repository/ModelClass/moviemodel.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  late MovieModel movieModel;
  MovieApi movieApi = MovieApi();
  MovieBloc() : super(MovieInitial()) {
    on<FetchmovieEvent>((event, emit) async {
      emit(Movieblocloading());
      try {
        movieModel = await movieApi.getMovie();
        emit(Movieblocloaded());
      } catch (e) {
        print(e);
        emit(MovieblocError());
      }
    });
  }
}
