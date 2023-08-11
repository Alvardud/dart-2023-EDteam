import '../modelos/tarea.dart';

Tarea convertirTarea(String cadena){
    
    final atributos = cadena.split('|');
    EstadoTarea estado = EstadoTarea.norealizada;
    if(atributos[2].isNotEmpty){
      switch(atributos[2]){
        case 'EstadoTarea.norealizada':
          estado = EstadoTarea.norealizada;
          break;
        case 'EstadoTarea.realizada':
          estado = EstadoTarea.realizada;
          break;
        case 'EstadoTarea.postergada':
          estado = EstadoTarea.postergada;
          break;
        default:
          break;
      }
    }
    return Tarea(atributos[0], descripcion: atributos[1], estado: estado);
  }