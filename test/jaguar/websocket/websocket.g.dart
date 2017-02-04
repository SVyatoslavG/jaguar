// GENERATED CODE - DO NOT MODIFY BY HAND

part of test.jaguar.websocket;

// **************************************************************************
// Generator: ApiGenerator
// Target: class ExampleApi
// **************************************************************************

abstract class _$JaguarExampleApi implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[const Ws('/ws')];

  Future<dynamic> websocket(WebSocket ws);

  Future<Response> handleRequest(Request request, {String prefix: ''}) async {
    prefix += '/api';
    PathParams pathParams = new PathParams();
    bool match = false;

//Handler for websocket
    match =
        routes[0].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      try {
        WebSocket ws = await request.upgradeToWebSocket;
        await websocket(
          ws,
        );
      } catch (e) {
        rethrow;
      }
    }

    return null;
  }
}
