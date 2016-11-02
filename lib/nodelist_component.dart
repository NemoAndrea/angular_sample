import 'package:angular2/core.dart'; /*we need this import to use our angular stuff*/
import 'nodeData.dart'; /*we need this to be able to use the class ''nodeData"*/
import 'nodeData_service.dart'; /*we need this to be able to load our node Data (see the dart file) */
import 'dart:async'; /*we need this to work with futures and dart Async - We need this because our nodeData_service file works with futures (see the file for more inf0)*/

import 'package:angular2/router.dart'; //this is for a more advanced navigation within apps for more info see the angular tutorial session on it (if my comments dont explain it properly)

// ---------------------------------- Angular Stuff ---------------------------------------
@Component( //This is how you indicate a component (notice that the brackets close after the html section - we write the various elements on seperate lines for convenience.
    selector: 'NodeList', //this indicates what html selector we are talking about. In this case it would be this tag: <NodeList></NodeList>
    templateUrl: 'nodelist_component.html', //this is the 'structure' of the application - how the different components that you write will fit together
    styleUrls: const ['nodelist_component.css']) //this is the 'styling' of the application - THis means this is purely cosmetic, and will not actually influence the functionality of the app

//we then still have to define the actual class which can just have traditional methods
//so the part with the @components is for the Angular transformer/framework

// -------------------------- Dart Stuff + Some Angular stuff ----------------------------
class NodeListComponent implements OnInit { /*this implements OnInit, which means it MUST have a ngOnInit method*/

  List<nodeData> nodeList;
  nodeData selectedNode;

  final Router _router;
  final nodeService _nodeService;

  NodeListComponent(this._nodeService,this._router); //this is our constructor. We pass it a nodeService (this is dependency injection, google for more info on this topic).
                                                     // We also pass it a router (this is done automatically as we have this as one of our router component in app_component.
                                                      //note that we dont manually pass it a nodeService object, but it is passed automatically because we have marked our nodeService class with @injectable

  /*this methods simply puts something in the nodesList, which is null when we create the component*/
  Future<Null> getHeroes() async { /*again, the async isnt needed, but if we want to fetch data from a server in the future this is the best way*/
    nodeList = await _nodeService.getNodes(); /*this fetches the nodes that we are getting from somewhere and keeps them locally.*/
  }

  void ngOnInit() { //this is a bit of a long story, but this jsut calls some methods after the object has been created (in this case only 1 method)
    // (we need the ''implements OnInit'' in the class name for this to work)
    // We could leave this out and just call the method getHeroes in the constructor, but we do it this way, because supposedly this method is a better way of going about it in large apps
    getHeroes();
  }

  void onSelect(nodeData node) { //this allows us to select a specific node from the list of nodes (see the html file for more info on how exactly we do that)
    // this is called in our html file when we click on one of the elements in the list
    selectedNode = node; /*the node that we slected will be kept locally in this class (so we can do all sorts of dart stuff with it)*/
  }

  gotoDetail() { /*we use this to use our router to navigate to the NodeDetailComponent*/ /*this is cool, because we can now do all sorts of complex navigational things */
    var link = [ /*we pass it an array with a String and a Map*/
      'NodeDetail', /*this is the nagivation name(see in our @route statement. This name is essntially how we refer to a particular route*/
      {'name': selectedNode.name} /*here we specific the :name that we will pass to our router , this is essentially the variable that we give to the router and which can be extracted using routerParams.get*/
    ];
    _router.navigate(link); /*we then tell the router to navigate to the DetailComponent (see app_component.dart*/
  }

}