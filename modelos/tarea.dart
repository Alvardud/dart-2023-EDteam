import 'proyecto.dart';
import 'sub_tarea.dart';

class Tarea implements Proyecto{
  final String nombre;
  final String? descripcion;
  EstadoTarea? estado;

  List<SubTarea> subtareas = [];

  Tarea(this.nombre, {this.descripcion = '', this.estado = EstadoTarea.norealizada});
  
  @override
  void culminarTarea() {
    estado = EstadoTarea.norealizada;
  }
  
  @override
  void postergarTarea() {
    estado = EstadoTarea.postergada;
  }
  
  @override
  void realizarTarea() {
    estado = EstadoTarea.realizada;
  }

  void agregarSubTarea(SubTarea subTarea){
    subtareas.add(subTarea);
  }

  void eliminarSubTarea(int index){
    subtareas.removeAt(index);
  }

  String converTirCadena(){
    return '$nombre|$descripcion|$estado';
  }
}

enum EstadoTarea {realizada, postergada, norealizada}