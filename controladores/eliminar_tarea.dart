import 'dart:io';

void eliminarTarea(String nombre){
  try {
    final archivo = File('./tareas.txt');
    if(archivo.existsSync()){
      final contenido = archivo.readAsLinesSync();
      for(int i =0;i <contenido.length; i++){
        if(contenido[i].contains(nombre)){
          contenido.removeAt(i);
          break;
        }
      }

      archivo.writeAsStringSync(contenido.join('\n'));
    }else{
      print('El archivo es inexistente');
    }
  } catch(e){
    print('Ocurrio un error ${e.toString()}');
  }
}