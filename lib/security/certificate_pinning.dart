import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'dart:io';

class CertificatePinningClient extends http.BaseClient {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    try {
      final client = HttpClient();
      
      // Load certificate from assets
      final cert = await rootBundle.load('assets/certificates/api_cert.pem');
      final securityContext = SecurityContext.defaultContext;
      securityContext.setTrustedCertificates(cert.buffer.asUint8List());
      
      client.badCertificateCallback = (cert, host, port) => false; // Strict validation
      
      final request2 = _toRequest(request);
      final streamedResponse = await client.send(request2);
      
      return http.StreamedResponse(
        streamedResponse,
        streamedResponse.statusCode,
        contentLength: streamedResponse.contentLength,
        request: request,
        headers: streamedResponse.headers,
        isRedirect: streamedResponse.isRedirect,
      );
    } catch (e) {
      print('Certificate pinning error: $e');
      rethrow;
    }
  }

  http.BaseRequest _toRequest(http.BaseRequest request) {
    http.BaseRequest request2;
    if (request is http.Request) {
      request2 = http.Request(request.method, request.url)
        ..encoding = request.encoding
        ..bodyBytes = request.bodyBytes;
    } else if (request is http.MultipartRequest) {
      request2 = http.MultipartRequest(request.method, request.url)
        ..fields.addAll(request.fields)
        ..files.addAll(request.files);
    } else if (request is http.StreamedRequest) {
      throw Exception('Cannot convert StreamedRequest');
    } else {
      throw Exception('Unknown request type');
    }
    request2.headers.addAll(request.headers);
    return request2;
  }
}
