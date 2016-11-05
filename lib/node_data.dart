//This is one of my custom written dart files and is not part of the core Angular files  - this is only to show what you can do with angular and dart

class NodeData { //This is just a simple class with two properties: a name and an array
  String name;
  List<double> probabilityDistribution; //value (0)=change node is true, (1) = change node is false

  NodeData(this.name,this.probabilityDistribution); //constructor of this class
}