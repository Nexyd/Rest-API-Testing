import 'package:flutter/material.dart';
import 'package:async_loader/async_loader.dart';
import 'dart:convert';
import 'Bean.dart';

class ProgressBar {

    AsyncLoader _asyncLoader;
    final GlobalKey<AsyncLoaderState> _asyncLoaderState =
        new GlobalKey<AsyncLoaderState>();

    AsyncLoader getAsyncLoader(
        { @required callback }
    ) {
        _asyncLoader = new AsyncLoader(
            key: _asyncLoaderState,

            // What we want to load.
            initState: () async => await callback,

            // What do we want to show while loading.
            renderLoad: () => new CircularProgressIndicator(),

            // What do we want to show when an error occurs.
            renderError: ([error]) => new Text(
                'Sorry, there was an error loading'
            ),

            // What do we want to show when the data is loaded.
            renderSuccess: ({data}) => buildWidgetWithResponse(data)
        );

        return _asyncLoader;
    }

    Widget buildWidgetWithResponse(dynamic data) {
        Map userMap = json.decode(data);
        Bean jsonBean = new Bean.fromJson(userMap);

        return new Text(
            stringify(jsonBean)
        );
    }

    String stringify(Bean json) {
        String result = "{ \"workitems\": [";
        for (String value in json.workItems) {
            result += value + ", ";
        }

        result += "], \"errorCode\": \"" 
            + json.errorCode + "\" \"errorMessage\": \"" 
            + json.errorMessage + "\" }";

        return result;
    }
}