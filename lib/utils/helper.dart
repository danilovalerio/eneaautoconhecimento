int maiorValorLista(List<int> lista) {
  var maior = 0;
  var pos = 0;
  var maiorPos = 0;

  for (var item in lista) {
    if (item >= maior) {
      maior = item;
      maiorPos = pos;
    }
    pos++;
  }

  return maiorPos;
}

String summaryList({String? title, required List<int> lista}) {
  String msg = "";
  String nameItem = title ?? "item";
  for(var i = 1; i < lista.length; i++) {
    msg = "$msg$nameItem $i: ${lista[i]}\n";
  }
  return msg;
}

bool showSharedMobile(context) {
  String plat = Theme.of(context).platform.toString();
  // if(Platform.isAndroid || Platform.isIOS || Platform.isFuchsia) {
  //   return true;
  // }
  // return false;
  return true;
}