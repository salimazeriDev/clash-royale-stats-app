import 'package:dio/dio.dart';

const authorizationHeader = 'authorization';
const apiToken =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImJmZjFjMDI1LWY4NzEtNDcwZS1iNmQ4LTI0NzUzNDNmNGM2YiIsImlhdCI6MTYxMTQ2MTM0Miwic3ViIjoiZGV2ZWxvcGVyLzUxMmM3MDEyLTJlM2MtNTJjNy01ZWJjLTVhMGViYzBiNDNkNyIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyI4OS42NC42MS4xMjgiXSwidHlwZSI6ImNsaWVudCJ9XX0.laa0Jvf29o8SDsk_j96LOv0ZXTBAKzCfOsO7YW51zlNT2rt3dygwV68E5nyiCQPp72uGtLQrGsgvqCQxgnqebQ';

class TokenInceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    options.headers.addAll({
      authorizationHeader: 'Bearer $apiToken',
    });

    return Future.value();
  }
}
