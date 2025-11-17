class Authmodel {

String massge;
int CustomerID;

Authmodel({required this.massge,required this.CustomerID});

factory Authmodel.fromJeson(Map<String,dynamic>json){

  return Authmodel(massge: json["massge"], CustomerID: json["CustomerID"]);

}



}