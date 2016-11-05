import 'package:angular2/core.dart';    //we need this import to use our angular stuff
import 'package:angular2/router.dart';  //we need this import to use Angular's routing capabilities

import 'node_data.dart';        //we need this to be able to use the class ''nodeData"
import 'node_data_service.dart'; // we need this to be able to fetch the appropriate nodeData from

import 'dart:async';            //we need this because we have implemented our NodeDataService using dart async too!
import 'dart:html' show window; //we need this to use the goBack method

@Component(               //This is how you indicate a component (notice that the brackets close after the html section - we write the various elements on seperate lines for convenience.
  selector: 'carddetail', //this indicates what html selector we are talking about. In this case it would be this tag: <nodeCard></nodeCard> (this can be seen in the main html file!)

// here we leave the html in the dart file rather than creating a separate html file
  template:''' <!-- normally I would consider this too long to put in the dart file and would recommend moving it to a spearate html file, but this is to demonstrate this will work too! -->
            <div  *ngIf="node != null"> <!-- we dont need this, but it is good to see we can just do this kind of logic in the html part -->
              <div class="mdl-card mdl-shadow--8dp">
                <div class="mdl-card__title">
                  <h2 class="mdl-card__title-text"> {{node.name}}</h2>
                </div>
                <div class="mdl-card__supporting-text">
                  Likeliness of being true: {{node.probabilityDistribution[0]}}<br>
                  Likeliness of being false: {{node.probabilityDistribution[1]}}<br>
                  <br>
                  Thats all, folks
                </div>
                <div class="mdl-card__actions mdl-card--border">
                  <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"(click)="goBack()">Back</a>
                </div>
              </div>
           </div>
            ''',
// here we leave the css in the dart file rather than creating a separate css file
  styles: const ['''
            .mdl-card{
              z-index: 99999;
            }
           ''']) // this is the 'styling' of the application - THis means this is purely cosmetic, and will not actually influence the functionality of the app

class NodeDetailComponent implements OnInit { /*this implements OnInit, which means it MUST have a ngOnInit method*/

  NodeData node;                  //we keep a local nodeData object, this is the node we are viewing in detail
  final NodeService _nodeService; //we need this because we must fetch the nodes from this service
  final RouteParams _routeParams; //the router will pass us routeParams (because we have used the :name thing in our Route setup in app_component.dart) it will contain whatever we pass as ''name''

  NodeDetailComponent(this._nodeService, this._routeParams);

  Future<Null> ngOnInit() async { //once again this ngOnInit is called after our object is created (so its called just after the constructor)
    var nameString = _routeParams.get('name'); //remember we have specified in our router for this component that we supply a sort of ''variable''
                                               //that we called ''name''. We can extract it by using RouterParams.get(-nameofourvaraible-)
    if (nameString != null) node = await (_nodeService.getNode(nameString)); // we then use this name to fetch the node with this corresponding name, and assign it to our local nodeList object
  }

  void goBack(){
    window.history.back(); //this is simply equivalent to clicking the back button in the browser, but its nice to know how easy it is to work with this
                           //notice that the only thing we need, is the import of dart:html
  }
}