import 'dart:io';

class Cuboid {
  int length;
  int width;
  int height;

  Cuboid(this.length, this.width, this.height);

  int get surfaceArea =>
  2 * (this.length * this.width + this.width * this.height + this.length * this.height);
  int get volume => this.length * this.width * this.height;
}

void main() {
  print("Enter a length: ");
  var length = int.parse(stdin.readLineSync()!);
  print("Enter a width: ");
  var width = int.parse(stdin.readLineSync()!);
  print("Enter a height: ");
  var height = int.parse(stdin.readLineSync()!);

  print("First Task: ");

  var cuboid = Cuboid(length, width, height);
  print(cuboid.surfaceArea);
  print(cuboid.volume);

  print("Second Task: ");
  print("Length you entered for a Cuboid will be a length of Cube.");
  var cube = Cube(length, length, length);
  cube.equal(length);
  print(cube.surfaceArea);
  print(cube.volume);
}

class Cube extends Cuboid {
  Cube(int length, int width, int height) : super(length, length, length);

  equal(int length) {
    print("Length: ${this.length}");
    print("Width: ${this.width}");
    print("Height: ${this.height}");
  }
}
