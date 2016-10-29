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

@Component( //This is how you indicate a component (notice that the brackets close after the html section - we write the various elements on seperate lines for convenience.
    selector: 'my-app', //this indicates what html selector we are talking about. In this case it would be this tag: <my-app></my-app> (this can be seen in the main html file!)
    styleUrls: const ['app_component.css'], //this is the 'styling' of the application - THis means this is purely cosmetic, and will not actually influence the functionality of the app
    templateUrl: 'app_component.html') //this is the 'structure' of the application - how the different components that you write will fit together

    /*note we could also just type somethign like(instead of using templateURL: ''something.html":

    template: '''
      <h1>{{title}}</h1>
      <h2>My Heroes</h2>
      <ul class="heroes">
        <li *ngFor="let hero of heroes"
          [class.selected]="hero == selectedHero"
          (click)="onSelect(hero)">
          <span class="badge">{{hero.id}}</span> {{hero.name}}
        </li>
      </ul>
      '''

      But as we can see, this would get really messy as we start to create larger components - thats why we refer to separate html and css files.
      There are some cases where the typed version (the ''' html text ''') is preferred:   in components that are small and wont be
      modified that much - that will keep the amount of files in the repo at a minimum.
      */

//we then still have to define the actual class which can just have traditional methods
//so the part with the @components is for the Angular transformer/framework
class AppComponent {}
