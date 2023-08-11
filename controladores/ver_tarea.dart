import 'dart:io';
import '../utilidades/convertir.dart';

void verTarea(String nombre) {
  try {
    final archivo = File('./tareas.txt');
    if(archivo.existsSync()){
      final contenido = archivo.readAsLinesSync();
      contenido.forEach((tareaLocal) {
        if(tareaLocal.contains(nombre)) {
          final tarea = convertirTarea(tareaLocal);
          print('Este es el objeto tarea ---->');
          print('Nombre: ${tarea.nombre}');
          print('Descripcion: ${tarea.descripcion}');
          print('Estado: ${tarea.estado}');
        }   
      });
    }else{
      print('El archivo es inexistente');
    }
  } catch(e){
    print('Ocurrio un error ${e.toString()}');
  }
}