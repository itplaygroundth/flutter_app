import 'package:flutter/cupertino.dart';
import 'package:flutter_graphql/flutter_graphql.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return const Text('GraphQL Home Page');
    //  Query(
    //   options: QueryOptions(
    //     document: gql(readCounters),
    //     variables: {
    //       'counterId': 23,
    //     },
    //     pollInterval: Duration(seconds: 10),
    //   ),
    //   builder: (QueryResult result,
    //       {VoidCallback refetch, FetchMore fetchMore}) {
    //     if (result.hasException) {
    //       return Text(result.exception.toString());
    //     }

    //     if (result.isLoading) {
    //       return Text('Loading');
    //     }

    //     // it can be either Map or List
    //     List counters = result.data['counter'];

    //     return ListView.builder(
    //         itemCount: repositories.length,
    //         itemBuilder: (context, index) {
    //           return Text(counters[index]['name']);
    //         });
    //   },
    // );
  }
}
