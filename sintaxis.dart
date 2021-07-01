for(int i = 0; i<10; i++){


}

void main(){

}


print('hola mundo');

class Heroe{

}
var spiderman = new Heroe();


// Variables

var nombre = 'hola';
var numero = 1;

int numero_ = 1;
String nombre_ = 'hola';
double;
final String name = 'piter'; // 

const String apellido = 'stark'; // no cambia en tiempo de compilaciòn

print('$nombre_ $numero_');



double num1 = 10.2;
int num2 = 20;


Bool isTrue = false;
isTrue = true;

if(isTrue){
  print('soy velda');
}else{
  print('soy mentira');
}



// para que reciba valores null se pone de la siguiente forma

bool? amI = null;
if(amI==null){
  print('hola');
}
if(amI!=null){
  print('hola');
}

// Estructura de datos
  //lista
List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
List? numeros_ = null;

numeros.add(2);// añade al final
      .clear();// limpia la lista
print(numeros[0]);//salita: 1
print(numeros[100]);// index out of range

final masNumeros = List.generate(10, (int index)=> 5);//[10,10,10,10,10]

  //Mapa

Map persona = {
  'nombre' : 'Germán',
  'edad' : 35,
  'soltero' : false,
  1 : 500,
  true : false
};

print(persona['nombre']);//Germán
print(persona['true']);//null
print(persona[true]);//false
print(persona[1]);//500

Map<String, dynamic> persona2 = {
  'nombre' : 'Germán',
  'edad' : 35,
  'soltero' : false
}

void saludar(String nombre){

}

void saludar([String nombre = 'mundo']){ // para que te permita usar el valor predeterminado

}

saludar(edad:12,nombre='juan', apellido: 'hola');
void saludar({String nombre = 'germion', int? edad, required String apellido}){// para poder mandarlo usar por el nombre
}




//clases


void main(){
  final wolverine = new Heroe('Logan', 'Regeneración');

  final rawJson = {
    'nombre' : 'Tony Stark',
    'poder' : 'Dinero'
  }
  final ironman = Heroe.fromJson(rawJson);
  
}
class Heroe{
  String nombre;
  String poder;

  Heroe({
    required this.nombre, 
    required this.poder
  });
  // QUE SE EJECUTE EN EL MOMENTO DE INICIAR LA CLASE CON LOS ":"
  Heroe.fromJson( Map<String, String> json ):
    this.nombre = json['nombre']!,// LE DIGO QUE SIEMPRE LE VA A LLEGAR
    this.poder = json['poder']?? 'no tiene poder';
  Set nombre(this.nombre);

  @override
  String toString(){
    return 'Heroe /n nombre: ${this.nombre}, poder: ${this.poder} ';
  }

}
import 'dart:math' as math;

class Cuadrado{
  double lado;
  double get area{
    return this.lado*this.lado;
  }
  set area(double valor){
    this.lado = math.sqrt(valor);
  }
  cuadrado(this.lado);
}




// clases abstractas
// no pueden ser instanciadas o inicializadas de la forma new animal:(


void main(){
  final perro = new Perro();
  
  perro.emitirSonido();
  sonidoAnimal(perro);
}
void sonidoAnimal(Animal animal){
  animal.emitirSonido()
}
abstract class Animal{

  int? patas;
  animal();

  void emitirSonido();

}

class Perro implements Animal {
  int? patas;
  void emitirSonido() => print("Guauuu")
  
}


  //extend

void main(){
  final perro = new Perro('Juan');
  final gato = new Gato('Jorge');
  print(gato.nombre);
  perro.emitirSonido();
  sonidoAnimal(gato);
}
void sonidoAnimal(Animal animal){
  animal.emitirSonido();
}
abstract class Animal{

  int? patas;
  String nombre;
  Animal(this.nombre);
  void emitirSonido();

}

class Perro implements Animal {
  int? patas;
  String nombre;
  Perro(this.nombre);
  void emitirSonido() => print("Guauuu");
}

class Gato extends Animal{
  
  Gato(String patas): super(patas);
  void emitirSonido() => print("Miauu");
}



// mixin 
  //agregar caracteristicas que pueden tener o no tener ciertas caracteristicas
  //distintas que se pueden compartir entre distintas clases abstactas
abstract class Animal{
  
}
abstract class Mamifero extends Animal{
  
}
abstract class Ave extends Animal{
  
}
abstract class Pez extends Animal{
  
}

abstract class Volador{
  void volar() => print('estoy volando');
}

abstract class Caminante{
  void caminar() => print('estoy caminando');
}

abstract class Nadador{
  void nadar() => print('estoy nadando');
}

class Delfin extends Mamifero with Nadador, Volador, Caminante{} 

void main(){

  final flipper = new Delfin();
  flipper.nadar();
  flipper.caminar();
}


//futures 
void main() async {

  print('antes de la peticion');

  httpGet('http://api.nasa.com/aliens')
    .then((data){
      print(data);
    });
  final nombre = await getNombre("10");
  print(nombre);
  getNombre('10').then( (data) => print(data));
  print('despues de la ejecucion');

}






Future<String> getNombre(String id) async{
  return '$id - Fernando';
}





Future httpGet(String url){
  return Future.delay( Duration( seconds: 3 ), () {
    return 'Hola Mundo - 3 segundos';
  } );
}

Future<String> httpGet(String url){
  return Future.delay( Duration( seconds: 3 ), ()=>'Hola Mundo - 3 segundos');
}