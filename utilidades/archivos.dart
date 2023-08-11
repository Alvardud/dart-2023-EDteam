import 'dart:io';

void archivos(){
  try {
    final archivo = File('./tareas.txt');
    if(archivo.existsSync()){
      final contenido = archivo.readAsStringSync();
      print('El contenido es: ${contenido}');

      final nuevoContenido = 'Hola mundo';
      archivo.writeAsStringSync(contenido+'\n'+nuevoContenido);

    }else{
      print('El archivo es inexistente');
    }
  } catch(e){
    print('Ocurrio un error ${e.toString()}');
  }
}