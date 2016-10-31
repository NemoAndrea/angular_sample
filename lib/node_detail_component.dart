import 'package:angular2/core.dart'; /*we need this import to use our angular stuff*/
import 'nodeData.dart'; /*we need this to be able to use the class ''nodeData"*/

@Component( //This is how you indicate a component (notice that the brackets close after the html section - we write the various elements on seperate lines for convenience.
  selector: 'nodeCard', //this indicates what html selector we are talking about. In this case it would be this tag: <nodeCard></nodeCard> (this can be seen in the main html file!)
/* here we leave the html in the dart file rather than creating a separate html file*/
  template:'''
            <div class='mdl-card'>
              <h1>{{node.name}}</h1>
              <h2>{{node.probabilityDistribution}}</h2>
            </div>
            ''',
/* here we leave the css in the dart file rather than creating a separate css file*/
  styles: const ['''
            {

            }
           ''']) //this is the 'styling' of the application - THis means this is purely cosmetic, and will not actually influence the functionality of the app

class NodeDetailComponent {
  @Input()
  nodeData node;
}