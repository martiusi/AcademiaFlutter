int cont18=0, idadeM=0;
String nomeM='';
main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];
  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos 
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.
  int contM=0, contF=0, idade=0;
  String nomeMaisVelho;
  Set<String> p2 = Set<String>();
  Set<String> p3 = Set<String>();
  for (int i = 0; i < pessoas.length; i++){
    p2.add(pessoas[i]);
  }
  pessoas.clear();
  p2.forEach((p) { 
    pessoas = p.split('|');
    if(p.contains("Masculino")){
      contM++;
    }else {
      contF++;
    }
    int.parse(pessoas[1])>17 ? maior18(idade: int.parse(pessoas[1]), nome: pessoas[0]): p3.add(p);
  });
  pessoas.clear();
  pessoas.addAll(p2.difference(p3));  
  print('A quantidade de pessoas do sexo masculino é: $contM');
  print('A quantidade de pessoas do sexo feminino é: '+contF.toString());
  print('A quantidade de pessoas maiores de 18 anos é: $cont18');
  print(pessoas);
  print('A pessoa mais velha é: $nomeM');
}

maior18({int idade=18, String nome='sem nome'}){
  cont18++;
  if(idade > idadeM){
    idadeM = idade;
    nomeM = nome;
  }
}