class Person{
  String _name;
  
  String get name => _name;
  set name(String value) => _name = name;
  
  Person(this._name);
}

class Engine{
  String _model;
  int _speed;
  
  String get model => _model;
  set model(String value) => _model = model;
  int get speed => _speed;
  set speed(int value) => _speed = speed;
  
  void displayEngineInfo(
    print('Engine : ${Engine.model} Speed : ${Engine.speed} km/h');
  
  )
  
  Engine(this._model , this._speed);
}

class Car{  
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;
  
  String get brand => _brand;
  set brand(String value) => _brand = brand;
  String get model => _model;
  set model(String value) => _model = model;
  Person get owner => _owner;
  set owner(Person value) => _owner = owner;
  Engine get engine => _engine;
  set engine(Engine value) => _engine = engine;
  
  Car(this._brand , this._engine , this._model , this._owner);
  
  
  void displayCarInfo(
    print('Brand : $_brand');
    print('Model : $_model');
    print('Owner : ${_owner.name}');
    print('Engine : ${_engine.model} Speed : ${_engine.speed} km/h');
  )
    
  void run(
    print('Speed : ${_engine.speed} km/h');
  ) 
}

class Honda extend Car{
  String _color;
  Honda( String _brand , String _model , Person _owner ,Engine _engine , this._color) : super(brand , model , owner , engine );
  
  String get color => _color;
  set color(String value) => _color = color;
  
  void displayCarInfo(
    print('Brand : $_brand');
    print('Model : $_model');
    print('Color : $_color');   
    print('Owner : ${_owner.name}');
    print('Engine : ${_engine.model} Speed : ${_engine.speed} km/h');
  )
    
  void run(
    var speed_honda = 120
    print('Speed : $speed_honda');
  ) 
  
}


//---------------------

void main(){
  var honda
  honda = Honda('Honda' , 'City' , Person , Engine , 'silver');

  
  var name = Person('Tuay');
  var engine = Engine('BRZ 2.4 RWD 6MT' , 200);
  var car = Car('SUBARU' , engine , 'BRZ', name );
  
  car.displayCarInfo();
  car.run();
   
 
}


