class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  House house1 = House(1, 'Villa', 250000.0);
  House house2 = House(2, 'Bungalow', 180000.0);
  House house3 = House(3, 'Apartment', 120000.0);

  List<House> houses = [house1, house2, house3];

  for (var house in houses) {
    print('ID: ${house.id}, Name: ${house.name}, Price: \$${house.price}');
  }
}