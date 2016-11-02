import 'package:angular2/core.dart'; /*we need this import to use our angular stuff*/
import 'package:angular2/router.dart';

import 'nodeData.dart'; /*we need this to be able to use the class ''nodeData"*/
import 'nodeData_service.dart'; /* we need this to be able to fetch the appropriate nodeData from*/

import 'dart:async'; //we need this because we have implemented our NodeDataService using dart async too!
import 'dart:html' show window; /*we need this to use the goBack method*/

@Component( //This is how you indicate a component (notice that the brackets close after the html section - we write the various elements on seperate lines for convenience.
  selector: 'carddetail', //this indicates what html selector we are talking about. In this case it would be this tag: <nodeCard></nodeCard> (this can be seen in the main html file!)
/* here we leave the html in the dart file rather than creating a separate html file*/
  template:'''
            <div class='mdl-card' *ngIf="node != null">

              <h2>Node Name: {{node.name}}</h2>
              <h3>Likeliness of being true: {{node.probabilityDistribution[0]}}</h3> <!-- we can see we can use dart syntax here - as long as we use the {{}} to tell angular its actually a dart thing}} -->
              <h3>Likeliness of being false: {{node.probabilityDistribution[1]}}</h3>
            </div>
            <button (click)="goBack()">Back</button>
            ''',
/* here we leave the css in the dart file rather than creating a separate css file*/
  styles: const ['''
            h2{
              color: red;
            }
           ''']) //this is the 'styling' of the application - THis means this is purely cosmetic, and will not actually influence the functionality of the app

class NodeDetailComponent implements OnInit { /*this implements OnInit, which means it MUST have a ngOnInit method*/

  nodeData node;/*we keep a local nodeData object, this is the node we are viewing in detail*/
  final nodeService _nodeService; /*we need this because we must fetch the nodes from this service*/
  final RouteParams _routeParams; /*the router will pass us routeParams (because we have used the :name thing in our Route setup in app_component.dart) it will contain whatever we pass as ''name''*/

  NodeDetailComponent(this._nodeService, this._routeParams);

  Future<Null> ngOnInit() async { /*once again this ngOnInit is called after our object is created (so its called just after the constructor) */
    var nameString = _routeParams.get('name'); /*remember we have specified in our router for this component that we supply a sort of ''variable''
                                                 that we called ''name''. We can extract it by using RouterParams.get(-nameofourvaraible-)*/
    if (nameString != null) node = await (_nodeService.getNode(nameString)); /*we then use this name to fetch the node with this corresponding name, and assign it to our local nodeList object*/
  }

  void goBack(){
    window.history.back(); /*this is simply equivalent to clicking the back button in the browser, but its nice to know how easy it is to work with this*/
                           /*notice that the only thing we need, is the import of dart:html*/
  }
}