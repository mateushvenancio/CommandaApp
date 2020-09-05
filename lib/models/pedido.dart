import 'package:commandaapp/models/menu_item.dart';
import 'package:commandaapp/models/usuario.dart';

class Pedido {
  MenuItem item;
  int quantidade;
  DateTime horaPedido;
  Usuario usuario;
  bool concluido = false;

  Pedido({
    this.item,
    this.quantidade,
    this.horaPedido,
    this.usuario,
    this.concluido,
  });

  Pedido.fromJson(Map<String, dynamic> json) {
    this.item = MenuItem.fromJson(json['item']);
    this.quantidade = json['quantidade'];
    if (json['hora_pedido'] != null) {
      this.horaPedido = DateTime.fromMicrosecondsSinceEpoch(
        json['hora_pedido'].microsecondsSinceEpoch,
      );
    }
    this.usuario = Usuario.fromJson(json['usuario']);
    this.concluido = json['concluido'] ?? false;
  }

  Map<String, dynamic> toJson() {
    return {
      "item": this.item.toJson(),
      "quantidade": this.quantidade,
      "hora_pedido": this.horaPedido,
      "usuario": this.usuario.toJson(),
      "concluido": this.concluido,
    };
  }
}
