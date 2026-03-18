class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;
}

void main() {
  Camera camera1 = Camera(1, 'Canon', 'Black', 500.0);
  Camera camera2 = Camera(2, 'Nikon', 'Silver', 600.0);
  Camera camera3 = Camera(3, 'Sony', 'Red', 700.0);

  List<Camera> cameras = [camera1, camera2, camera3];

  for (var camera in cameras) {
    print('ID: ${camera.id}, Brand: ${camera.brand}, Color: ${camera.color}, Price: \$${camera.price}');
  }
}