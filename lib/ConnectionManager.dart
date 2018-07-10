import 'dart:io';
import 'dart:convert';
import 'dart:async';

class ConnectionManager {

    String url = "services.vodafone.es";

    Future<String> getResponse({ String path,  params: "" }) async {
        path = "/safservice/" + path;

        var httpClient = new HttpClient();
        httpClient.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;

        Uri uri = new Uri.https(url, path, params);
        HttpClientRequest request = await httpClient.getUrl(uri);
        request.headers.add("accountId", "efferna8");

        HttpClientResponse response = await request.close();
        String responseBody = await response.
            transform(Utf8Decoder()).join();

        return responseBody;
    }
}