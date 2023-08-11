import 'dart:io';

import 'controladores/agregar_tarea.dart';
import 'controladores/eliminar_tarea.dart';
import 'controladores/ver_tarea.dart';
void main(){
  print('----------- BIENVENIDO A LA APLICACION -----------');
  print('1. Agregar una tarea');
  print('2. Ver una tarea');
  print('3. Eliminar una tarea');
  print('----------- Selecciona una opcion  y presiona enter -----------');

  final entrada = stdin;
  final seleccion = entrada.readLineSync();
  switch(seleccion){
    case '1':
      print('Seleccionaste la opcion Agregar una tarea');
      agregarTarea();
      break;
    case '2':
      print('Seleccionaste la opcion Ver una tarea');
      print('Coloca el nombre de la tarea que deseas ver: ');
      final nombre = entrada.readLineSync();
      verTarea(nombre??'');
      break;
    case '3':
      print('Seleccionaste la opcion Eliminar una tarea');
      print('Coloca el nombre de la tarea que deseas eliminar: ');
      final nombre = entrada.readLineSync();
      eliminarTarea(nombre ?? '');
      break;
    default:
      print('No seleccionaste una opcion');
      break;
  }

  if(Platform.isWindows){
    print('Presione enter para salir ');
    entrada.readLineSync();
  }
}