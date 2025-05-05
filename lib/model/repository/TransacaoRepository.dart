import 'package:flutter/widgets.dart';
import 'package:my_finances/model/Transacao.dart';

class Transacaorepository {
  var _transacoesEntradas = [];
  var _transacoesSaidas = [];

  Transacaorepository() {
    populateEntradasDB();
    populateSaidasDB();
  }


  void populateEntradasDB() {
    _transacoesEntradas = [];
    _transacoesEntradas.add(Transacao(UniqueKey().toString(), 'Salario', 10000.00, true ));
    _transacoesEntradas.add(Transacao(UniqueKey().toString(), 'Auxilio Home Office', 300.00, true ));
    _transacoesEntradas.add(Transacao(UniqueKey().toString(), 'Pix Fulano', 100.00, true ));
    _transacoesEntradas.add(Transacao(UniqueKey().toString(), 'Pix Beltrano', 50.00, true ));
  }

  void populateSaidasDB() {
    _transacoesSaidas = [];
    _transacoesSaidas.add(Transacao(UniqueKey().toString(), 'Café da Manhã', 5.00, false ));
    _transacoesSaidas.add(Transacao(UniqueKey().toString(), 'Almoço UTFPR', 3.50, false ));
    _transacoesSaidas.add(Transacao(UniqueKey().toString(), 'Lanche da tarde', 10.00, false ));
    _transacoesSaidas.add(Transacao(UniqueKey().toString(), 'Janta', 10.00, false ));
  }

  saidas(){
    return _transacoesSaidas;
  }

  entradas(){
    return _transacoesEntradas;
  }
}