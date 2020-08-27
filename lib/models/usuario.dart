class Usuario {
  String id;
  String email;
  String nome;
  String fotoPerfil;
  int cpf;

  Usuario({
    this.id,
    this.email,
    this.nome,
    this.fotoPerfil,
    this.cpf,
  });

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    nome = json['nome'];
    fotoPerfil = json['foto_perfil'];
    cpf = json['cpf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['foto_perfil'] = this.fotoPerfil;
    data['cpf'] = this.cpf;
    data['email'] = this.email;
    return data;
  }
}
