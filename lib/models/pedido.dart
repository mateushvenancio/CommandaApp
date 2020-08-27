import 'package:commandaapp/models/menu_item.dart';
import 'package:commandaapp/models/usuario.dart';

class Pedido {
  MenuItem item;
  int quantidade;
  DateTime horaPedido;
  Usuario usuario;

  Pedido({
    this.item,
    this.quantidade,
    this.horaPedido,
    this.usuario,
  });

  Pedido.fromJson(Map<String, dynamic> json) {
    this.item = MenuItem.fromJson(json['item']);
    this.quantidade = json['quantidade'];
    this.horaPedido = json['hora_pedido'];
    this.usuario = json['usuario'];
  }

  Map<String, dynamic> toJson() {
    return {
      "item": this.item.toJson(),
      "quantidade": this.quantidade,
      "hora_pedido": this.horaPedido,
      "usuario": this.usuario.toJson(),
    };
  }
}
