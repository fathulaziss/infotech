part of 'models.dart';

class Inventory {
  final int id;
  final String inventoryName;
  final String picturePath;

  Inventory({this.id, this.inventoryName, this.picturePath});
}

List<Inventory> mockInventory = [
  Inventory(
      id: 1, inventoryName: 'Room', picturePath: 'assets/inventory_room.png'),
  Inventory(
      id: 2, inventoryName: 'Tool', picturePath: 'assets/inventory_room.png'),
  Inventory(
      id: 3,
      inventoryName: 'History',
      picturePath: 'assets/inventory_history.png'),
  Inventory(
      id: 4,
      inventoryName: 'Loaning',
      picturePath: 'assets/inventory_loaning.png'),
];
