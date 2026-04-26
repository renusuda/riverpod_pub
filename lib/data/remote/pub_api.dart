abstract final class PubApi {
  static final baseUri = Uri.parse('https://pub.dev/api/');

  static Uri endpoint(String path) => baseUri.resolve(path);
}
