import 'package:firstapp/screens/home.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_graphql/flutter_graphql.dart';

import 'utils/app_styles.dart';

void main() {
  runApp(MyApp());
}

final httpLink = HttpLink(uri: "http://127.0.0.1:4000/");

ValueNotifier<GraphQLClient> client =
    ValueNotifier(GraphQLClient(cache: InMemoryCache(), link: httpLink));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'My GraphQL Demo',
        theme: ThemeData(primaryColor: Styles.primaryColor),
        home: MyHomePage(),
      ),
    );
  }
}
