/*A quick note on convention: we write the name of our component file in
* lowercase letters. We also write app_component instead of appcomponent
* as this shows this is a file containing something related to angular
* that is os type Component (we can also have angular things of
* type Services and more. Note that: With ''type'' I mean function (it
* merely fullfills the function of a Component, but in terms of code a Component
* is no different from a Service, but we like to give them different names
* so we can easily guess what one's function is and how it works.
*
* All the stuff above is to help the programmer and other people viewing the
* code, and thus has no impact on whether the code will work or not*/

import 'package:angular2/core.dart'; /*we need this import to use our angular stuff*/
import 'nodeData_service.dart'; /*we need this to be able to load our node Data (see the dart file) */

import 'node_detail_component.dart'; /*this is another component we have created, we must import it to be able to use it, even if it is just for routing*/
import 'nodelist_component.dart'; /*this is another component we have created, we must import it to be able to use it, even if it is just for routing*/
import 'hint_component.dart';

import 'package:angular2/router.dart'; //this is for a more advanced navigation within apps for more info see the angular tutorial session on it (if my comments dont explain it properly)

// -------------------------- Angular Stuff ----------------------------
@Component( //This is how you indicate a component (notice that the brackets close after the html section - we write the various elements on seperate lines for convenience.
    selector: 'my-app', //this indicates what html selector we are talking about. In this case it would be this tag: <my-app></my-app> (this can be seen in the main html file!)
    templateUrl: 'app_component.html', //this is the 'structure' of the application - how the different components that you write will fit together
/* here we leave the css in the dart file rather than creating a separate css file*/
    styles: const ['''
                main{
                  margin-left: 4em ;
                  margin-top: 4em ;

                }
               '''], //this is the 'styling' of the application - THis means this is purely cosmetic, and will not actually influence the functionality of the app

    /*We can see that this would get really messy as we start to create larger components - thats why we refer to separate html and css files.
    There are some cases where the typed version (the ''' html text ''') is preferred:   in components that are small (such as this class) and wont be
    modified that much - that will keep the amount of files in the repo at a minimum.
      */

    directives: const [ROUTER_DIRECTIVES], /*this obviously related to the router functionality - directives is what the class passes on to other components*/
    providers: const [nodeService,ROUTER_PROVIDERS]) /*this is how we handle multiple providers - providers provide a service/thing to this component*/ /*note that we must pass nodeService here*/
    /*These Directives and Providers statements are quite important, it is recommended you check out how they work in angular and how to use them*/

/*here we configure our routing*/ /*we can have multiple Route versions*/ /*we need to have a <router> tag in our html, below that the router will load our components*/
/*Lets talk about what a router is:
* A router can be seen as a sort of way to navigate a web app. (Great for our purposes then!)
* It displays content below the tag <router-outlet>, which must be defined in the template of
* the class that provides the ROUTER_PROVIDERS (in this case this class. Here I have implemented
* two routes that can be viewed. One is nodeList and one is hints. You can imagine this could be
* used for something like a question dialogue field, where one route is the actual question
* and the hints menu contains the hints for the question. The hints component could then have
* its own subcomponents to do fun stuff like take user feedback or whatever. You could see this is great
* for navigation in a web app!
*
* note: a router creates tags below router-outlet and creates the component in a tag with the selector you defined in @Component*/

@RouteConfig(const [ /*as you can see we can easily have multiple routers*/
  const Route(
      path: '/nodelist',
      name: 'NodeList', //these names ALWAYS need to start with a capital letter, otherwise it starts throwing errors at you
      component: NodeListComponent,
      useAsDefault: true), /*this means this component will be loaded by default*/
  const Route( /*we dont make this one navigatable by our tabs, but we can get to it through NodeList - This shows we can do advanced navigation!*/
      path: '/detail/:name', //This :name notation indicates we are passing it a value that we will refer to as 'name' but we wont know what it will be exactly (we know it will be a string)
                              // we can see this as passing a variable called 'name'. This value can later be retrieved by RouterParams.get. The value of :name will also be in the URL
      name: 'NodeDetail',// these names ALWAYS need to start with a capital letter, otherwise it starts throwing errors at you
      component: NodeDetailComponent),
  const Route(
      path: '/hints',
      name: 'Hints', // these names ALWAYS need to start with a capital letter, otherwise it starts throwing errors at you
      component: HintComponent)
])

//we then still have to define the actual class which can just have traditional methods
//so the part with the @components is for the Angular transformer/framework

// -------------------------- Dart Stuff + Some Angular stuff ----------------------------
class AppComponent {
  //Nothing here - we could add functionality here if we wanted
}
