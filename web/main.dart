
import 'package:angular2/platform/browser.dart'; /*we need this for angular*/

import 'package:angular_sample/app_component.dart'; /*here is where we import our own custom (main) component - by convention called app_component*/

main() { /*this is just plain old dart - the main function is where we ''enter'' our dart application*/

  bootstrap(AppComponent); /*this starts our custom (main) component - the component is called AppComponent and can be found in the file app_component.dart*/

}
