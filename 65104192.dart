class Person {
  String _name;
  
  String get name => _name;
  set name(String value) => _name = value;
  
  Person(this._name);
}

class Engine {
  String _model;
  int _speed;
  
  String get model => _model;
  set model(String value) => _model = value;
  int get speed => _speed;
  set speed(int value) => _speed = value;
  
  void displayEngineInfo() {
    print('Engine : $_model Speed : $_speed km/h');
  }
  
  Engine(this._model, this._speed);
}

class Car {  
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;
  
  String get brand => _brand;
  set brand(String value) => _brand = value;
  String get model => _model;
  set model(String value) => _model = value;
  Person get owner => _owner;
  set owner(Person value) => _owner = value;
  Engine get engine => _engine;
  set engine(Engine value) => _engine = value;
  
  Car(this._brand, this._engine, this._model, this._owner);
  
  void displayCarInfo() {
    print('Brand : $_brand');
    print('Model : $_model');
    print('Owner : ${_owner.name}');
    _engine.displayEngineInfo();
  }
    
  void run() {
    print('Speed : ${_engine.speed} km/h');
  } 
}

class Honda extends Car {
  String _color;
  
  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, engine, model, owner);
  
  String get color => _color;
  set color(String value) => _color = value;
  

  void displayCarInfo() {
    super.displayCarInfo();
    print('Color : $_color');   
  }
    
  void run() {
    var speed_honda = 120;
    print('Speed : $speed_honda km/h');
  }
}

//---------------------

void main() {
  var name = Person('Tuay');
  var engine = Engine('BRZ 2.4 RWD 6MT', 200);
  var car = Car('SUBARU', engine, 'BRZ', name);
  
  car.displayCarInfo();
  car.run();
  
  var honda = Honda('Honda', 'City', name, engine, 'silver');
  honda.displayCarInfo();
  honda.run();
}
