import 'dart:io';

void main(List<String> arguments) {
  Cuboid cuboid = new Cuboid(0,0,0); 
  Cube cube = new Cube(0, 0, 0); 
  cuboid.first();
  cube.second();
}

class Cuboid{
  int length;
  int width;
  int height;

  Cuboid(this.length, this.width, this.height);
  void first(){
    print('First Task');
    print('Enter length of a Cuboid:');
    var length = int.parse(stdin.readLineSync()!);
    print('Enter width of Cuboid:');
    var width = int.parse(stdin.readLineSync()!);
    print('Enter height of Cuboid:');
    var height = int.parse(stdin.readLineSync()!);
    
    print('Surface Area of Cuboid: ${getSurfaceArea(length, width, height)}');
    print('Volume of the Cuboid: ${getVolume(length, width, height)}');
  }

  int getSurfaceArea( int length, int width,int height){
    return 2 * (length * width + length * height + width * height);
  }
  int getVolume(int length, int width, int height){
    return length * width * height;
  }
}

class Cube extends Cuboid{
  Cube(length, width, height): super(length,length,length);
  void second(){
    print('Second Task');
    print('Please enter length of your Cube: ');
    var length = int.parse(stdin.readLineSync()!);
    print('Surface Area of your Cube: ${getSurfaceArea(length, length , length)}');
    print('Volume of your Cube: ${getVolume(length, length, length)}');
  }

  @override
  int getSurfaceArea(int length,int width, int height){
    return (length * length) * 6;
  }

  @override
  int getVolume(int length, int width , int height){
    return length* length* length;
  }
}
