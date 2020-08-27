class Empresa {
  String id;
  bool ativo;
  String nome;
  int cnpj;
  String endereco;
  String descricao;
  String imagem;
  Contato contato;

  Empresa({
    this.id,
    this.ativo,
    this.nome,
    this.cnpj,
    this.endereco,
    this.descricao,
    this.imagem,
    this.contato,
  });

  Empresa.fromJson(Map<String, dynamic> json, this.id) {
    ativo = json['ativo'];
    nome = json['nome'];
    cnpj = json['cnpj'];
    endereco = json['endereco'];
    descricao = json['descricao'];
    imagem = json['imagem'];
    contato =
        json['contato'] != null ? new Contato.fromJson(json['contato']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ativo'] = this.ativo;
    data['nome'] = this.nome;
    data['cnpj'] = this.cnpj;
    data['endereco'] = this.endereco;
    data['descricao'] = this.descricao;
    data['imagem'] = this.imagem;
    if (this.contato != null) {
      data['contato'] = this.contato.toJson();
    }
    return data;
  }
}

class Contato {
  List<int> telefone;
  List<String> email;

  Contato({this.telefone, this.email});

  Contato.fromJson(Map<String, dynamic> json) {
    telefone = json['telefone'].cast<int>();
    email = json['email'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['telefone'] = this.telefone;
    data['email'] = this.email;
    return data;
  }
}
