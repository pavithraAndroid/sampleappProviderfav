import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlist/provider/movieProvider.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({Key? key}) : super(key: key);

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  @override
  Widget build(BuildContext context) {
    final myList=context.watch<MovieProvider>().myList;
    return Scaffold(
      appBar: AppBar(
        title: Text("My List(${myList.length})"),
      ),
      body: ListView.builder(
        itemCount: myList.length,
          itemBuilder: (_,index){
          final currentMovie=myList[index];
          return Card(
            key: ValueKey(currentMovie.title),
            elevation: 4,
            child: ListTile(
              title: Text(currentMovie.title.toString()),
              subtitle: Text(currentMovie.runTime??""),
              trailing: TextButton(
                child: Text(
                  'Remove',
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: (){
                  context.read<MovieProvider>().removeFromList(currentMovie);
                },
              ),
            ),

          );
          }),
    );
  }
}
