import 'package:angular2/core.dart';    //we need this import to use our angular stuff

//this is for a more advanced navigation within apps for more info see:
//the angular tutorial session on it (if my comments dont explain it properly)
import 'package:angular2/router.dart';

// ---------------------------------- Angular Stuff ---------------------------------------
@Component( //This is how you indicate a component (notice that the brackets close
            //after the html section - we write the various elements on seperate
            //lines for convenience.
  selector: 'Hints', //this indicates what html selector we are talking about.
                     //In this case it would be this tag: <NodeList></NodeList>

    //this is the 'structure' of the application - how the different
    //components that you write will fit together
    templateUrl: 'hint_component.html',

    //this is the 'styling' of the application - THis means this is purely cosmetic,
    //and will not actually influence the functionality of the app
    styleUrls: const ['hint_component.css'])

//we then still have to define the actual class which can just have traditional methods
//so the part with the @components is for the Angular transformer/framework

// -------------------------- Dart Stuff + Some Angular stuff ----------------------------
class HintComponent{
  //this component has no functionality, but thats okay
  // (you could easily add interactive hints or something)
  //I have just added some html and styling as these are static hints
  // and serve more to demonstrate the routing capabilities.
}