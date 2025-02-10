import '../../variables/variable.dart';
import 'uri_helper.dart';

class AppEndpoint {
  final String _baseUrl;

  AppEndpoint({required String baseUrl}) : _baseUrl = baseUrl;

  Uri getNowPlayingMovies([int page = 1, String language = 'en-US']) {
    return UriHelper.createUrl(
      host: _baseUrl,
      path: '3/movie/now_playing',
      queryParameters: {
        'page': page,
        'language': language,
      },
    );
  }

  factory AppEndpoint.create() {
    return AppEndpoint(baseUrl: Variable.baseUrl);
  }
}
