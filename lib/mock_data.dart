/*This is one of my custom written dart files and is not part of the core Angular files  - this is only to show what you can do with angular and dart*/

/*Note that this is just some mock(fake) data - this data isn't real, but it is used to show something when running the app*/
/*Do note how we make our nodeData_service very flexible, so if we eventually get real data and wish to replace this mockdata, it will be a breeze*/

import 'nodeData.dart'; /*we need to import the nodeData so that this file can see nodeData as the class that we built*/

final List<nodeData> mockData = [/*we just have a list of nodes to choose from See the dataService dart file for more info*/
  new nodeData('Mr. Nice',[0.5,0.5]),
  new nodeData('Narco',[0.3,0.6]),
  new nodeData('Bombasto',[0.2,0.8]),
  new nodeData('Celeritas',[0.1,0.9]),
  new nodeData('Magneta',[0.0,1.0]),
  new nodeData('RubberMan',[0.9,0.1]),
  new nodeData('Dynama',[0.8,0.2]),
  new nodeData('DrnodeData IQ',[0.7,0.3]),
  new nodeData('Magma',[0.6,0.4]),
  new nodeData('Tornado',[1.0,0.0])
];