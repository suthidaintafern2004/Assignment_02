// สร้างคลาส Car
class Car {
  String make;
  String model;
  int year;

  // Constructor
  Car(this.make, this.model, this.year);

  // Getter สำหรับ make
  String get getMake => make;

  // Setter สำหรับ make
  set setMake(String make) => this.make = make;

  // Getter สำหรับ model
  String get getModel => model;

  // Setter สำหรับ model
  set setModel(String model) => this.model = model;

  // Getter สำหรับ year
  int get getYear => year;

  // Setter สำหรับ year
  set setYear(int year) => this.year = year;
}

// สร้างคลาส CarDealer
class CarDealer {
  List<Car> cars = [];

  // เมธอดเพิ่มรถลงในรายการ
  void addCar(Car car) {
    cars.add(car);
  }

  // เมธอดแสดงรายการรถทั้งหมด
  void listCars() {
    for (var car in cars) {
      print('Make: ${car.getMake}, Model: ${car.getModel}, Year: ${car.getYear}');
    }
  }
}

void main() {
  // สร้างรถ
  var car1 = Car('Toyota', 'Camry', 2022);
  var car2 = Car('Honda', 'Civic', 2023);

  // สร้างร้านขายรถ
  var carDealer = CarDealer();

  // เพิ่มรถลงในรายการ
  carDealer.addCar(car1);
  carDealer.addCar(car2);

  // แสดงรายการรถทั้งหมดในร้านขายรถ
  carDealer.listCars();
}