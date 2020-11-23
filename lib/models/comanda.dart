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
    if(json['id'] != null){
    id = json['id'];
    }
    idEmpresa = json['id_empresa'];
    // horaInicio = json['hora_inicio'];
    if (json['hora_inicio'] != null) {
      horaInicio = DateTime.fromMicrosecondsSinceEpoch(
        json['hora_inicio'].microsecondsSinceEpoch,
      );
    }
    // horaFim = json['hora_fim'];
    if (json['hora_fim'] != null) {
      horaFim = DateTime.fromMicrosecondsSinceEpoch(
        json['hora_fim'].microsecondsSinceEpoch,
      );
    }
    lugar = json['lugar'];
    if (json['pedidos'] != null) {
      List<Pedido> _pedidos = [];

      json['pedidos'].forEach((v) {
        _pedidos.add(Pedido.fromJson(v));
      });

      this.pedidos = _pedidos;
    }
    if (json['usuarios'] != null) {
      List<Usuario> _usuarios = [];

      json['usuarios'].forEach((v) {
        _usuarios.add(Usuario.fromJson(v));
      });

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

  a() {}
}
