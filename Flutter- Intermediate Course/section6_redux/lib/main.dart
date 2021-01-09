import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

//Actions
enum Actions{Increment,Decrement}
int reducer(int state, dynamic action){
  if(action == Actions.Increment) state++;
  if(action == Actions.Decrement) state--;
  return state;
}

void main(){
  final store=new Store<int>(reducer,initialState: 0);
  runApp(new Myapp(
    store:store
  ));
}
class Myapp extends StatelessWidget{
  Myapp({Key key, this.store});
  final Store<int> store;
  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
        store: store,
        child: new MaterialApp(
          home: new Scaffold(
            appBar: new AppBar(
              title: new Text("Redux"),
            ),
            body: new Container(
              child: new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new StoreConnector<int,String>(
                      converter:(store)=> store.state.toString(),
                      builder: (store,count) {
                          return new Text(count);
                        },
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new IconButton(icon: new Icon(Icons.add),onPressed: ()=>store.dispatch(Actions.Increment),),
                        new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>store.dispatch(Actions.Decrement)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        )
    );
  }

}