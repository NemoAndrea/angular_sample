//This is one of my custom written dart files and is not part of the core Angular files  - this is only to show what you can do with angular and dart

//note that this is a Angular part that is of type Service (remember that this doesnt mean anything, it makes it easier for other to analyse the code)

import 'package:angular2/core.dart';
import 'dart:async'; //this can be ignored for now, if you really want to know more, be sure to check dart asynch or google ''futures in programming''

import 'node_data.dart'; // we are working with objects of type nodeData so we must import the file containing that class
import 'mock_data.dart'; //this is just a dart file containing a global variable (in this case a list) so we must import this file to be able to use it

@Injectable() //this has to do with Dependency Injection - Because we have made it injectable, if we use it in a constructor (this.nodeService ) angular will automatically pass it this service
              // This is great because that means we wont end up creating multiple nodeServices for each component and we will use reuse the same one - if you dont get it, google dependecy injection
class NodeService {
  Future<List<NodeData>> getNodes() async => mockData ; //this method just gives us the mockdata that we created in the mockData.dart file
  // you might be wondering why we bother using this elaborate way of passing a simple list. The truth is - we dont need to - but this will allow us to easily
  // expand the app and its data later on. If you want to keep it simple, just define the mockData List in the appComponent dart file!

  //so the above is for getting all nodes in the nodeservice, while this one below is only for getting a specific node
  Future<NodeData> getNode(String nameIn) async => //this is for getting a specific node if we know the node name
      (await getNodes()).firstWhere((node) => node.name == nameIn);

}