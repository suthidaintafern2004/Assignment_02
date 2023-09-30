// สร้างคลาส Pet
class Pet {
  String name;
  String species;

  // Constructor
  Pet(this.name, this.species);

  // Getter สำหรับ name
  String get getName => name;

  // Setter สำหรับ name
  set setName(String name) => this.name = name;

  // Getter สำหรับ species
  String get getSpecies => species;

  // Setter สำหรับ species
  set setSpecies(String species) => this.species = species;
}

// สร้างคลาส PetOwner
class PetOwner {
  List<Pet> pets = [];

  // เมธอดเพิ่มสัตว์เลี้ยงลงในรายการ
  void addPet(Pet pet) {
    pets.add(pet);
  }

  // เมธอดแสดงรายการสัตว์เลี้ยงทั้งหมด
  void listPets() {
    for (var pet in pets) {
      print('Name: ${pet.getName}, Species: ${pet.getSpecies}');
    }
  }
}

void main() {
  // สร้างสัตว์เลี้ยง
  var pet1 = Pet('Fluffy', 'Cat');
  var pet2 = Pet('Fido', 'Dog');

  // สร้างเจ้าของสัตว์เลี้ยง
  var petOwner = PetOwner();

  // เพิ่มสัตว์เลี้ยงลงในรายการ
  petOwner.addPet(pet1);
  petOwner.addPet(pet2);

  // แสดงรายการสัตว์เลี้ยงทั้งหมดของเจ้าของ
  petOwner.listPets();
}