void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];
  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  int contador = 0;
  List<String> nome=['','','','','','','',''];
  List<String> sobrenome=['','','','','','','',''];
  for (var i = 0; i < pacientes.length; i++){
    var lista = pacientes[i].split('|');
    if (int.parse(lista[1])>20){
      contador++;
    }
    //String sobrenome = lista[0].substring(lista[0].contains(' '));
    nome = lista[0].split(' ');
    sobrenome[i] = nome[1];
  }
  int i = 0;
  var temp;
  for (i = 0; i < sobrenome.length; i++){
    for (int j = 0; j < sobrenome.length -1; j++){
      if(sobrenome[j] != sobrenome[j+1]){
        temp = pacientes[7];
       pacientes[7] = pacientes[j+1];
        pacientes[j+1]=temp;
        temp=sobrenome[7];
        sobrenome[7] = sobrenome[j+1];
        sobrenome[j+1]=temp;
      }
    }
  }
  print ('a quantidade de pacientes com mais de 20 anos é: $contador');
  print (pacientes);
}

