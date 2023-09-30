// สร้างคลาส Clothing
class Clothing {
  String type;
  String size;

  // Constructor
  Clothing(this.type, this.size);

  // Getter สำหรับ type
  String get getType => type;

  // Setter สำหรับ type
  set setType(String type) => this.type = type;

  // Getter สำหรับ size
  String get getSize => size;

  // Setter สำหรับ size
  set setSize(String size) => this.size = size;
}

// สร้างคลาส Wardrobe
class Wardrobe {
  List<Clothing> clothes = [];

  // เมธอดเพิ่มเสื้อผ้าลงในรายการ
  void addClothing(Clothing clothing) {
    clothes.add(clothing);
  }

  // เมธอดแสดงรายการเสื้อผ้าทั้งหมด
  void listClothes() {
    for (var clothing in clothes) {
      print('Type: ${clothing.getType}, Size: ${clothing.getSize}');
    }
  }
}

void main() {
  // สร้างเสื้อผ้า
  var clothing1 = Clothing('T-shirt', 'M');
  var clothing2 = Clothing('Jeans', 'L');

  // สร้างตู้เสื้อผ้า
  var wardrobe = Wardrobe();

  // เพิ่มเสื้อผ้าลงในรายการ
  wardrobe.addClothing(clothing1);
  wardrobe.addClothing(clothing2);

  // แสดงรายการเสื้อผ้าทั้งหมดในตู้เสื้อผ้า
  wardrobe.listClothes();
}