/*This is one of my custom written dart files and is not part of the core Angular files  - this is only to show what you can do with angular and dart*/

/*note that this is a Angular part that is of type Service (remember that this doesnt mean anything, it makes it easier for other to analyse the code)*/

import 'package:angular2/core.dart';
import 'dart:async'; /*this can be ignored for now, if you really want to know more, be sure to check dart asynch or google ''futures in programming''*/

import 'nodeData.dart';
import 'mock_data.dart';

@Injectable()
class HeroService {
  Future<List<nodeData>> getHeroes() async => mockData; /*this method just gives us the mockdata that we created in the mockData.dart file*/
  /* you might be wondering why we bother using this elaborate way of passing a simple list. The thruth is - we dont need to - but this will allow us to easily
  * expand the app and its data later on. If you want to keep it simple, just define the mockData List in the appComponent dart file!*/
}