//This is one of my custom written dart files and is not part of the core Angular files.
//This is only to show what you can do with angular and dart.

//Note that this is just some mock(fake) data - this data isn't real,
//but it is used to show something when running the app
//Do note how we make our NodeData_service very flexible,
//so if we eventually get real data and wish to replace this mockdata,
//it will be a breeze.

import 'node_data.dart'; //we need to import the NodeData so that this file can see NodeData as the class that we built

final List<NodeData> mockData = [
//we just have a list of nodes to choose from.
//See the dataService dart file for more info.
//I hereby name the first value in the list (0)the probability of it being true,
//and (1) the value of false. These values are just doubles to dart.


  new NodeData('My Pants are one fire',[0.5,0.5]),
  new NodeData('PineapplePen',[0.3,0.6]),
  new NodeData('20% true',[0.2,0.8]),
  new NodeData('Quantum Neurology is a thing',[0.1,0.9]),
  new NodeData('1 + 1 = 3',[0.0,1.0]),
  new NodeData('Student gets too drunk',[0.9,0.1]),
  new NodeData('I forget my phone',[0.8,0.2]),
  new NodeData('Gary Johnson says something dumb',[0.7,0.3]),
  new NodeData('Trump Loses the election',[0.6,0.4]),
  new NodeData('People will blame hackers for everything',[1.0,0.0])
];