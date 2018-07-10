import 'package:flutter/material.dart';
import 'ProgressBar.dart';
import 'ConnectionManager.dart';

class Detail extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(body: new Container(child:
            Center(child: buildDataWidget() )),
        );
    }

    Widget buildDataWidget() {

        Map<String, String> params = new Map();
        params.putIfAbsent("usersRequested", () => "efferna8");
        ConnectionManager connection = new ConnectionManager();

        ProgressBar progress = new ProgressBar();
        Widget asdx = progress.getAsyncLoader(
            callback: connection.getResponse(
            path: "workItems", params: params));

        return asdx;
    }
}