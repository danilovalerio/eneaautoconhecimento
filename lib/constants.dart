/// Exemplo em json do Objeto
/// {
///    'texto' : 'Qual seu sexo?',
///    'opcoes' : [
///        'opcao':'Masc',
///        'opcao':'Fem',
///        'opcao':'outro',
///     ]
/// }

const perguntasExample = [
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

const perguntas = [
  {
    //1
    'texto': 'Das características abaixo, escolha a sua mais marcante:',
    'respostas': [
      {
        'texto':
            'Aceito ser bom ouvinte, não faço questão de dizer o que sinto, mesmo discordando.',
        'pontuacao': 9
      },
      {
        'texto':
            'Não tenho medo de confrontar pessoas e, normalmente, eu as confronto.',
        'pontuacao': 8
      },
      {
        'texto':
            'Tento fazer tudo bem feito, um último e até pequeno detalhe pode estragar tudo.',
        'pontuacao': 1
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //2
    'texto': 'Concordo que:',
    'respostas': [
      {
        'texto':
            'Poderia relaxar, brincar mais, às vezes, percebo-me muito sério.',
        'pontuacao': 1
      },
      {
        'texto':
            'Sou quase sempre calmo e pacífico, discussões me incomodam, se posso, fujo delas.',
        'pontuacao': 9
      },
      {
        'texto':
            'Sou muito bom em levantar e lutar por aquilo que quero. Luto por justiça.',
        'pontuacao': 8
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //3
    'texto': 'Sinto que:',
    'respostas': [
      {
        'texto':
            'Percebo intuitivamente os pontos fracos dos outros e ataco lá se for provocado.',
        'pontuacao': 8
      },
      {
        'texto':
            'Identifico-me com quem amo, a família, grupos etc, nisto sinto-me passivamente dependente.',
        'pontuacao': 9
      },
      {
        'texto':
            'Freqüentemente me incomodo porque as coisas e pessoas não são como deveriam.',
        'pontuacao': 1
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //4
    'texto': 'Percebo que:',
    'respostas': [
      {
        'texto':
            'Ocupado, interrupções quebram minha concentração e, interiormente, me enraivecem.',
        'pontuacao': 1
      },
      {
        'texto':
            'Protejo e defendo com firmeza as pessoas que estão sob minha autoridade ou jurisdição.',
        'pontuacao': 8
      },
      {
        'texto':
            'Depois que já fiz minhas "obrigações", odeio ser tirado do meu canto.',
        'pontuacao': 9
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //5
    'texto': 'De uma maneira geral:',
    'respostas': [
      {
        'texto':
            'Analiso as coisas em termos de bom ou mau, certo ou errado, sem meio termo.',
        'pontuacao': 1
      },
      {
        'texto':
            'Sou uma pessoa extremamente tranqüila; numa boa, acabo fazendo o que quero.',
        'pontuacao': 9
      },
      {
        'texto':
            'Na verdade, não sou muito de introspecção e auto-análise, não resolvem muito.',
        'pontuacao': 8
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //6
    'texto': 'Escolha uma das afirmações abaixo:',
    'respostas': [
      {
        'texto':
            'Tenho, acima de tudo, orgulho do que faço para os outros e das pessoas poderem contar comigo.',
        'pontuacao': 2
      },
      {
        'texto':
            'Tenho uma saudade quase compulsiva, nostálgica, do meu passado, vivo pensando nele.',
        'pontuacao': 4
      },
      {
        'texto':
            'Considero que projetar uma imagem de sucesso é tão importante quanto atingi-lo.',
        'pontuacao': 3
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //7
    'texto': 'Concordo que:',
    'respostas': [
      {
        'texto':
            'Às vezes sinto tantas emoções ao mesmo tempo, que me confundo para expressá-las.',
        'pontuacao': 4
      },
      {
        'texto':
            'Posso mostrar-me otimista e animado em grupo mesmo, no fundo, não estando.',
        'pontuacao': 3
      },
      {
        'texto':
            'Muitas vezes sinto-me atrapalhado pela dependência que os outros têm de mim.',
        'pontuacao': 2
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //8
    'texto': 'Sinto que, por exemplo:',
    'respostas': [
      {
        'texto':
            'Odeio quando me dizem que alguma coisa que estou fazendo não está funcionando.',
        'pontuacao': 3
      },
      {
        'texto':
            'É bom sentir-me importante na vida de outros. É gratificante qdo precisam de mim.',
        'pontuacao': 2
      },
      {
        'texto':
            'Mesmo nos relacionamentos íntimos, luto contra inveja e ciúmes para não ficar só.',
        'pontuacao': 4
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //9
    'texto': 'Percebo que:',
    'respostas': [
      {
        'texto':
            'O ambiente ao meu redor é muito importante para mim, quero que seja especial.',
        'pontuacao': 4
      },
      {
        'texto':
            'Sucesso é uma palavra importante para mim, prefiro não enfatizar fracassos.',
        'pontuacao': 3
      },
      {
        'texto':
            'Com tempo disponível, geralmente ouço, tentando compreender e ajudar as pessoas.',
        'pontuacao': 2
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //10
    'texto': 'Geralmente:',
    'respostas': [
      {
        'texto':
            'Gosto de sentir-me próximo (íntimo) das pessoas que considero.',
        'pontuacao': 2
      },
      {
        'texto':
            'Sinto absorver com facilidade os sentimentos de um grupo, a ponto de "perder-me".',
        'pontuacao': 4
      },
      {
        'texto':
            'Sei que preciso de várias realizações para que as pessoas possam me notar e admirar.',
        'pontuacao': 3
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //11
    'texto': 'Noto que:',
    'respostas': [
      {
        'texto':
            'Não sei entrar em "papo furado" muito bem. Prefiro papos com conteúdo.',
        'pontuacao': 5
      },
      {
        'texto':
            'Para mim, as coisas sempre acabam se resolvendo da melhor maneira possível.',
        'pontuacao': 7
      },
      {
        'texto':
            'Gosto de estar bastante certo antes de agir e exijo obediência e disciplina.',
        'pontuacao': 6
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //12
    'texto': 'Concordo que:',
    'respostas': [
      {
        'texto':
            'Quase sempre dizem que dou vida às festas e reuniões informais!',
        'pontuacao': 7
      },
      {
        'texto':
            'Parece que percebo perigos e ameaças mais do que os outros, sou bom nisso.',
        'pontuacao': 6
      },
      {
        'texto':
            'Tenho tendência para deixar os outros tomarem a iniciativa, prefiro observar.',
        'pontuacao': 5
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //13
    'texto': 'Normalmente:',
    'respostas': [
      {
        'texto':
            'Sou contestador mas, acho muito difícil ir contra o que uma autoridade diz.',
        'pontuacao': 6
      },
      {
        'texto':
            'Mal com os outros ou comigo mesmo, penso neles como: tolos, estúpidos idiotas etc.',
        'pontuacao': 5
      },
      {
        'texto':
            'Gosto de tornar as coisas "geniais" e agradáveis. Em geral as torno!',
        'pontuacao': 7
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //14
    'texto': 'Percebo que:',
    'respostas': [
      {
        'texto':
            'Tenho tendência para pular de uma coisa para outra sem me aprofundar em nenhuma.',
        'pontuacao': 7
      },
      {
        'texto': 'Prudência é uma virtude muito importante para mim.',
        'pontuacao': 6
      },
      {
        'texto':
            'Tenho dificuldade em pegar ou pedir por aquilo que preciso, acabo me "resolvendo".',
        'pontuacao': 5
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
  {
    //15
    'texto': 'De maneira geral:',
    'respostas': [
      {
        'texto':
            'Aprecio planejar projetos mas, posso perder o "pique" qdo começo a trabalhar neles.',
        'pontuacao': 5
      },
      {
        'texto':
            'Como minha teoria é: "Se alguma coisa é boa, mais é melhor", dificilmente perco o "pique"',
        'pontuacao': 7
      },
      {
        'texto':
            'Demoro muito para tomar decisões porque quero explorar a fundo todas as opções.',
        'pontuacao': 6
      },
      {'texto': 'Nenhuma das anteriores', 'pontuacao': 0},
    ]
  },
];

const String titleApp = "TESTE DISTRIBUTIVO DO ENEAGRAMA";

const String intro = """
Este teste, mostrará a distribuição de suas orientações com relação a cada E-tipo (ego). 
Nas perguntas abaixo, escolha apenas uma das alternativas, 
a que mais reflete sua maneira de ser. 

Escolha a mais marcante ao longo da sua vida. 
Algo que seja mais significativo para você. 
Observações: 
(1) Não há padrão no posicionamento das alternativas. 
(2) Em algumas perguntas, discordando das três alternativas, pode deixar em branco! 
Após responder, 
clique para TOTALIZAÇÃO.
""";

///Opções de resultados de ENEAGRAMAS numa lista de 0 a 9
///Caso não tenha prevalecido um ENEA específico solicita para tentar novamente
const List<String> resultsOptions = [
  """
  OOOOOPSssssss.... ALGO DEU ERRADO! \n\nTENTE NOVAMENTE
  """,
  """
  Eneagrama-1\n
Mesmo considerando possíveis imperfeições do teste, parabéns! Você pode ser um "tipo" 1 no Eneagrama. Leia a breve descrição abaixo e veja se ela "toca" você. Este teste é apenas uma possibilidade, uma orientação. Usar o Eneagrama para autodesenvolvimento é tarefa pessoal e intransferível.
Cheio de princípios, organizado, perfeccionista, punitivo, crítico, o E-1 tem padrões de exigência muito elevados para consigo mesmo e com os outros. É sempre muito bem comportado e civilizado; tem dificuldade em ser espontâneo. Percebe o mundo em termos de certo ou errado, sem área intermediária. A autocrítica é um traço constante em sua vida e sempre espera críticas dos outros, nem que sejam leves. Como espera críticas, pensa que os outros também as esperam e, assim, toma a iniciativa de criticar, até por amor.

Pode ser visto como aristocrata e arrogante devido a sua postura e rigidez.
Aparentemente calmo e insensível nas manifestações de emoções como amor e raiva.
Vive em um padrão irrevogável tanto para grandes como para pequenos itens.
Pode ser autoritário e reprovador, disfarçado atrás de regulamentos e formalismos; recorre a regras "acima" de si. Pode parecer compulsivo na busca da perfeição.
Leva tudo muito a sério. Seu sucesso, prosperidade e segurança, são considerados mais como uma prova das suas virtudes, do que algo a ser desfrutado.

Tem dificuldade para aceitar elogios, principalmente genéricos, e para reconhecer suas próprias conquistas. Em geral, seu prazer vem de um trabalho bem feito, porém, o 1 não precisa da admiração dos outros, ele precisa do respeito. Geralmente controlado, não apenas nas atitudes e no ambiente, mas também nas emoções, pode se tornar confuso se as coisas saírem do controle. É um tipo muito difícil de agradar, meticuloso com forma e detalhe.
  """,
  """
  Eneagrama-2
Parece que já se conhece bem, parabéns! Você pode ser um "tipo" 2 no Eneagrama. Leia a breve descrição abaixo e veja se ela "toca" você. Este teste é apenas uma possibilidade, uma orientação. Usar o Eneagrama para autodesenvolvimento é tarefa pessoal e intransferível.
Sedutores, prestativos, generosos, os 2 são amigáveis, confiantes e normalmente úteis. Oferecem graciosamente, não apenas seu tempo e energia como seus bens materiais. Parecem não ter necessidade de nada. Independentes e capazes, adoram atender as necessidades dos outros. Um presente de um 2 será sempre cuidadosamente escolhido para agradar quem o recebe. Os 2 podem sentir-se menosprezados se ajudam alguém que não nota ou não retribui. Nesses casos expressam um grau de raiva ou emoção que surpreende os outros. Adulam os que gratificam seu orgulho, apenas aqueles que parecem dignos de serem seduzidos, podem desprezar os que não consideram dignos.

Como o 3 e o 4, seu senso de "ser" está no que os outros vêem e avaliam. Sua percepção de si mesmo gravita em torno da auto-imagem. O 2, em geral, procura ser tão bom a ponto de não precisar competir. Sua competitividade não é tão visível como no 8. Suas habilidades e recursos estão, normalmente, disponíveis e a serviço de outras pessoas.
Os 2 desenvolvem uma requintada sensibilidade para perceber os estados de espírito daqueles que desejam agradar. Para satisfazer as necessidades alheias, conseguem ser o tipo de pessoa que os outros gostariam de conhecer. Apesar de não estarem sendo realmente falsos, comportam-se diferentemente com cada pessoa.

Muitos possuem capacidade de "mergulhar" nas atividades que gostam, quase como se estivessem em "transe".
A mente do 2 se sente mais à vontade para lidar com a vida cotidiana e relações humanas. São pessoas bastante sugestionáveis e exibem uma enorme capacidade de abnegação. Normalmente as pessoas do tipo 2 não se consideram orgulhosas porém, observando sua aparente ausência de necessidades...

  """,
  """
  Eneagrama-3
É, a viagem pode ser longa e surpreendente, parabéns! Você pode ser um "tipo" 3 no Eneagrama. Leia a breve descrição abaixo e veja se ela "toca" você. Este teste é apenas uma possibilidade, uma orientação. Usar o Eneagrama para autodesenvolvimento é tarefa pessoal e intransferível.
Vaidosos, gentis e políticos, os 3 identificam-se com a imagem que vendem. Apenas "sentimentos corretos" são reconhecidos e expressos. Os outros são reprimidos ou racionalizados. Conceitos importantes para o 3 são: sucesso e eficácia. Atenção aos detalhes não é seu ponto mais forte, porém conclui tarefas com sucesso pois precisa ser reconhecido pelas realizações.

Os 3 são apaixonados pela vida, aparentam autoconfiança abundante, invejável a todos que se desgastam com a própria insegurança, são aparentemente "ungidos pelo destino". Talentos freqüentemente superiores à média. Obtiveram distinção desde cedo, talvez o filho preferido e admirado. Confundiram admiração com amor, vivem procurando pela primeira. Porém, pisam sobre ovos, precisam de confirmação constante de sua auto-estima, através de admiração e devoção das pessoas com as quais se relacionam. Parte do seu sucesso é para ser apreciado por essas pessoas e pelos outros, pelo pouco de 3 que, praticamente, todos temos.

Só assumem riscos se receberem algo em troca e, normalmente, só entram em um projeto se puderem ser bem sucedidos. O fracasso, se ocorrer, é redefinido como sucesso parcial ou experiência. Podem ser realmente encantadores, principalmente para novas pessoas que ingressam em sua órbita. De maneira geral, entretanto, carregam um potencial de hostilidade que pode aflorar quando não recebem o reconhecimento e a admiração de que necessitam. Como não conseguem deixar o verdadeiro amor entrar, acabam conseguindo apenas atenção. Relacionamentos mais íntimos, envolvendo amor, com ou sem sexo, são sistematicamente áreas conturbadas da vida de um ego três.

  """,
  """
Eneagrama-4
Você é especial, todos somos, parabéns! Você pode ser um "tipo" 4 no Eneagrama. Leia a breve descrição abaixo e veja se ela "toca" você. Este teste é apenas uma possibilidade, uma orientação. Usar o Eneagrama para autodesenvolvimento é tarefa pessoal e intransferível.
O 4 sente necessidade de buscar um significado para a vida e anseia excessivamente por amor. Possui uma sensação interior crônica de escassez e imperfeição e inclina-se para o refinamento tentando ser diferente. Ele torna a vida mais intensa e dramática. Sua habilidade em perceber as maravilhas do mundo e dos outros causa nele sensações de inferioridade e inveja. Os 4 gostam de buscar o artístico, o significante, enfim, o incomum em todos os aspectos da vida humana. O que os outros podem considerar até mórbido, eles valorizam como profundo e autêntico. Possuem também um certo ar especial.

Geralmente alimentam um senso trágico da vida e podem possuir inclinação para as artes.
Podemos dizer que, sendo o 1 ético, o 4 é estético, ama a etiqueta. Assim como o 1 é rígido em regras e procedimentos o 4, por sua vez, é rígido e crítico com as regras de etiqueta. Como a criança 3 aprendeu a brilhar para obter atenção, o 4 aprendeu, para obtê-la, a exagerar a expressão do sofrimento, podendo até ter escolhido um curso de vida doloroso. Existe a esperança, da qual ele mesmo não tem consciência, de obter amor através do sofrimento.

Com relação a relacionamentos, entretanto, os 4 evitam sentimentos comuns, colocando metas mais ou menos impossíveis. Concentram-se nos relacionamentos e nos sentimentos, porém tendem a relações tipo "atrai / rejeita" pois, quanto mais distantes, mais perfeitas as pessoas lhes parecem. São também pessoas autênticas e, honestamente, solidárias com o sofrimento dos outros. Quando a vida se banaliza , entretanto, podem ter crises emocionais ou existenciais.
  """,
  """
Eneagrama-5
Deve ter visto a inteligência por trás da ferramenta, parabéns! Você pode ser um "tipo" 5 no Eneagrama. Leia a breve descrição abaixo e veja se ela "toca" você. Este teste é apenas uma possibilidade, uma orientação. Usar o Eneagrama para autodesenvolvimento é tarefa pessoal e intransferível.
Reservados, desapegados, os 5 tendem a parecer intelectuais, concentrados, objetivos e frios. Aparentam também serem inacessíveis e auto-suficientes. Na verdade, são medrosos mas não aparentam medo e sim distanciamento. Sentem necessidade de retenção, de acumulação de bens e conhecimento. Por isso, tendem para a avareza, pois temem que "abrir a mão" resultaria em um esvaziamento catastrófico.
Internamente perfeccionistas, precisam ficar sós para pensar, refletir e inclusive reviver sentimentos. Apreciam a leitura e os livros. Costumam considerar-se "viciados" em informação, podendo ter muitos interesses ou algum assunto entendido por poucos.

Não percebem conscientemente a avareza, percebem apenas suas atitudes de posse e da manutenção de limites. Precisam de tempo para refletir antes de dar respostas. Sentem desconforto para decidir sob pressão.
Procuram minimizar suas próprias necessidades e reivindicações. Sua estratégia dominante é de autodistanciamento e desistência de relacionamentos. Pode-se dizer que, se o 4 tem uma "depressão molhada", a depressão do 5 é "seca". Estruturam sua vida de uma maneira compartimentada, amigos são divididos de acordo com as atividades.

Gostam também de se preparar antecipadamente para os eventos, odeiam surpresas, sua reação instintiva é de rejeição. Sendo metódicas e constantes, quando dizem que algo vai ser feito, será feito. De uma maneira geral, tendem a ignorar as relações e emoções nas questões da vida. Na verdade, os tipos 5 vivem mais na platéia, não participam ativamente da vida, são observadores dela e, inconscientemente, se recusam a fazê-lo.


  """,
  """
Eneagrama-6
Chegar até aqui, é o início da busca, parabéns! Você pode ser um "tipo" 6 no Eneagrama. Leia a breve descrição abaixo e veja se ela "toca" você. Este teste é apenas uma possibilidade, uma orientação. Usar o Eneagrama para autodesenvolvimento é tarefa pessoal e intransferível.
Normalmente leal, trabalhador, cauteloso, o 6 é um pensador criativo. Desconfia da autoridade e tem tendência a contestar, entretanto, espera , inconscientemente, encontrar um líder confiável que não precise contestar. Os 6 sentem necessidade de segurança e aprovação, são geralmente hipervigilantes e tomam precauções contra qualquer ameaça, real ou percebida. Questionam as próprias decisões, os motivos dos outros e a segurança de qualquer situação. Para eles, imaginar as piores situações, é uma maneira inteligente de pensar. Costumam até irritar-se com pessoas que não previnem desastres ou as consideram agourentas. Seu objetivo é simplesmente estarem preparadas porém, parecem exageradas.

Podem variar de reservados e tímidos a francos e confrontadores - reagem ao medo - ou demonstrando ou "pulando logo" para ficar livre da sensação. Em geral não se reconhecem como tipos "medrosos" e nem mesmo se percebem como temerosos. Cautelosos, não vão se colocar em risco (ou os outros). Corteses, alegres e divertidos, são produtivos e impõem ordem na vida. Podem ter dificuldade em lidar com o sucesso, amedronta.
Apesar de serem contestadores, é importante para eles a tradição na família e na sociedade.

Procuram clareza em regras e regulamentos, não suportam suspense. São firmes, até agressivos, com os "subordinados" e, mesmo contestando, agem com submissão ao "chefe". Ao contrário da vigilância do 3 - ter tudo sob controle - sua vigilância procura significados ocultos, sempre de "pé atrás". Pensam perceber sempre o que os outros estão escondendo. São sociais, gostam de receber - a casa de um 6 é sempre hospitaleira - e pertencer a grupos, principalmente pela segurança de união contra um inimigo comum.
  """,
  """
Eneagrama-7
Genial, só podia dar certo, parabéns! Você pode ser um "tipo" 7 no Eneagrama. Leia a breve descrição abaixo e veja se ela "toca" você. Este teste é apenas uma possibilidade, uma orientação. Usar o Eneagrama para autodesenvolvimento é tarefa pessoal e intransferível.
Otimistas, alegres, os 7 são "gulosos", divertem-se compulsivamente. São pessoas que tendem a ser enérgicas, encantadoras e imaginativas. Orientados para o trabalho, assumem muitos compromissos ao mesmo tempo e têm dificuldade em completá-los. Enquanto o 3 e o 1 planejam e são persuasivos, os 7 são mais manipuladores.
Oferecem sonhos como realidade, é a idéia que se tem daqueles que podem ser considerados "levemente" charlatões. Limites serão definidos pelo conjunto de valores aceito por eles.

Entediam-se ou saciam-se facilmente com as coisas. Inventar e iniciar algum tipo de atividade que envolva outras pessoas, é muito divertido para eles. Uma vez que sua imaginação seja estimulada, já estão satisfeitos. Se um projeto parece com chances de falhar, partem facilmente para outro. Os 7 têm também dificuldade para lidar com o sofrimento e procuram sempre uma maneira de ajudar e minimizá-lo.
Analíticos e intelectualmente estimulantes, têm impressão que seu estoque de pensamentos é inexaurível e dão valor a este fato. Sentem-se capazes de resolver qualquer coisa em que ponham as mãos, se acham o máximo.

Vêem a si mesmas como pessoas confiáveis, mesmo podendo ter segundas ou terceiras intenções, devido à quantidade de seus interesses. Confiam nos outros e que as coisas darão certo para eles. Refletem muito pouco sobre o que os outros pensam e, assim, ficam transparentes, podendo ser considerados presunçosos e arrogantes em suas demonstrações de bem estar. Para eles, entusiasmo e abandono é a constante. Uma das suas dificuldades é tornarem-se "adultos", parar de evitar as coisas mais sérias e estáveis da vida.



  """,
  """
Eneagrama-8
Resolveu encarar, vai à luta! parabéns! Você pode ser um "tipo" 8 no Eneagrama. Leia a breve descrição abaixo e veja se ela "toca" você. Este teste é apenas uma possibilidade, uma orientação. Usar o Eneagrama para autodesenvolvimento é tarefa pessoal e intransferível.

Fortes, confrontadores, obstinados e firmes, os 8 têm paixão pelo excesso, pela intensidade de todo tipo de estímulo. Buscam sempre "adrenalina". São geralmente pessoas rebeldes, mandonas, protetoras, dogmáticas e radicais. Assumem o controle de tudo que fazem, desde as coisas mais banais, até as mais significativas. Aparentemente agressivas, são normalmente inconscientes de sua força, pois se consideram apenas diretas e objetivas e intensas.

Estão sempre desafiando os outros pois só sentem-se suficientemente vivos com estímulos excessivos, evitando a interioridade. Pessoas que enfrentam sua franqueza com evasivas, desculpas ou "mentirinhas" serão prontamente confrontadas, são alvos. Os 8 exigem a verdade. Manifestam-se abertamente e dizem sempre o que pensam. Possuem uma ética muito pessoal envolvendo justiça, verdade e integridade que os leva a idéia de "a meu favor ou contra mim". Sua reação às situações é imediata.

A maioria dos 8 se irrita facilmente. As pessoas podem se surpreender ao descobrir que, terminada a discussão, a raiva é esquecida, geralmente não é remoída. Defendem e agem pelos "oprimidos", em geral, exageradamente. Sensibilidade é fraqueza, sua reação, para com aqueles que consideram fracos, é o desprezo e a raiva.

Se, dentro da normalidade, o 4 pode ser percebido como masoquista, o 8 pode sê-lo como sádico.
Além de não se preocuparem pelo que os outros pensam, aparentemente, sentem-se no direito de terem prazer, "doa a quem doer". Não entendem bem o "receber", sentem que precisam "tomar" para conseguir o que querem. Para os 8 também é muito difícil pedir, assim, quando o fazem, sai forte e parece exigência.
Podem ser bons líderes, cuidando com firmeza dos seus interesses, e dos interesses do grupo.
A maioria deles, sente que está constantemente contendo sua energia e evitando que suas emoções sobrecarreguem os outros e eles mesmos.

  """,
  """
Eneagrama-9
Que bom você ter chegado até aqui, parabéns! Você pode ser um "tipo" 9 no Eneagrama. Leia a breve descrição abaixo e veja se ela "toca" você. Este teste é apenas uma possibilidade, uma orientação. Usar o Eneagrama para autodesenvolvimento é tarefa pessoal e intransferível.
Agradáveis e afáveis, os 9 amam a paz, nunca confrontos. São normalmente pessoas calorosas, tolerantes, acomodadas e não competitivas. Controlam os relacionamentos pela força do silêncio. Recusam-se a discutir, preferem afastar-se. Preferem uma vida calma, estruturada, previsível e confortável. Chegam a "adotar" os desejos de outras pessoas porque, em assuntos pessoais, acham difícil saber o que pensam ou sentem. Explodem tão tardiamente que esquecem a razão que os levou a ter raiva. Seu lema - para si e para os outros - poderia ser: "não perturbe a ordem e a harmonia".

O 9 não quer nem o brilho do 3 nem a perfeição do 1, sua sensação de valor e de existência é um viver através dos outros, da família, da nação, do time, do partido etc.
Pelo seu equilíbrio tendem a ser conservadores, tradicionais. Consideram-se pessoas distraídas, confusas e com memória fraca, mas, sua busca de distração da atenção é deliberada: televisão, jornais, costura..., além do sono, podem servir como "narcóticos". Podem se tornar inativos devido à excessiva resignação e acabar ficando "dependentes" dos outros (emocional e economicamente) muito cedo na vida. São muito solidários.

Distraem-se facilmente, mesmo estando sozinhos, e costumam deixar até as mais altas prioridades por último. Ou cumprem os prazos no último minuto, quando lembrados, ou simplesmente, esquecem coisas essenciais. Pode parecer displicência, mas raramente é intencional, atividades secundárias, novos interesses, qualquer coisa pode distraí-los. Os 9 podem também tornarem-se obsessivos com relação a detalhes, absorvidos em aspectos que parecem secundários, chegando a envolver-se em planos que nunca se concretizam.
  """
];
