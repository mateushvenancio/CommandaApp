import 'package:commandaapp/models/pedido.dart';
import 'package:commandaapp/models/usuario.dart';

class Comanda {
  String id;
  String idEmpresa;
  DateTime horaInicio;
  DateTime horaFim;
  String lugar;
  List<Usuario> usuarios;
  List<Pedido> pedidos;

  Comanda({
    this.id,
    this.idEmpresa,
    this.horaInicio,
    this.horaFim,
    this.lugar,
    this.pedidos,
    this.usuarios,
  });

  Comanda.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idEmpresa = json['id_empresa'];
    horaInicio = json['hora_inicio'];
    horaFim = json['hora_fim'];
    lugar = json['lugar'];
    if (json['pedidos'] != null) {
      List<Pedido> _pedidos = [];
      _pedidos = json['pedidos'].map((e) {
        return Pedido.fromJson(e);
      }).toList();
      this.pedidos = _pedidos;
    }
    if (json['usuarios'] != null) {
      List<Usuario> _usuarios = [];
      _usuarios = json['usuarios'].map((e) {
        return Usuario.fromJson(e);
      }).toList();
      this.usuarios = _usuarios;
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "id_empresa": this.idEmpresa,
      "hora_inicio": this.horaInicio,
      "hora_fim": this.horaFim,
      "lugar": this.lugar,
      "pedidos": this.pedidos.map((e) => e.toJson()).toList(),
      "usuarios": this.usuarios.map((e) => e.toJson()).toList(),
    };
  }
}
