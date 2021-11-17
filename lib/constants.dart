
/// Exemplo em json do Objeto
/// {
///    'texto' : 'Qual seu sexo?',
///    'opcoes' : [
///        'opcao':'Masc',
///        'opcao':'Fem',
///        'opcao':'outro',
///     ]
/// }

const perguntas = [
  {
    'texto': 'Qual sua cor favorita?',
    'respostas': [
      {'texto': 'preto', 'pontuacao': 10},
      {'texto': 'azul', 'pontuacao': 10},
      {'texto': 'rosa', 'pontuacao': 10},
      {'texto': 'vermelho', 'pontuacao': 2},
    ],
  },
  {
    'texto': 'Qual seu animal favorito?',
    'respostas': [
      {'texto': 'coelho', 'pontuacao': 10},
      {'texto': 'cobra', 'pontuacao': 10},
      {'texto': 'elefante', 'pontuacao': 10},
      {'texto': 'leão', 'pontuacao': 2},
    ],
  },
  {
    //chave texto e valor titulo
    'texto': 'Qual seu instrutor favorito?',
    'respostas': [
      {'texto': 'maria', 'pontuacao': 10},
      {'texto': 'joão', 'pontuacao': 10},
      {'texto': 'antonio', 'pontuacao': 10},
      {'texto': 'luiz', 'pontuacao': 2},
    ],
  },
];