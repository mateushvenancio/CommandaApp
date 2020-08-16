class Usuario {
  String id;
  String nome;
  String fotoPerfil;
  int cpf;

  Usuario({
    this.nome,
    this.fotoPerfil,
    this.cpf,
  });

  Usuario.fromJson(Map<String, dynamic> json, this.id) {
    nome = json['nome'];
    fotoPerfil = json['foto_perfil'];
    cpf = json['cpf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['foto_perfil'] = this.fotoPerfil;
    data['cpf'] = this.cpf;
    return data;
  }
}
