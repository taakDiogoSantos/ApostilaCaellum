// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

Cliente diogo = new Cliente('diogo', 'cpfexemplo', 'rg ememplo', 'rua 123');
Conta contaDiogo = new Conta(1, diogo);

contaDiogo.depositar(500);
contaDiogo.sacar(560);
contaDiogo.sacar(200);
contaDiogo.extrato();

Cliente teste = new Cliente('teste', 'cpfTeste', 'rgTeste', 'ruaTeste');
Conta contaTeste = new Conta(2, teste);

contaDiogo.transferir(10000, contaTeste);
contaTeste.extrato();


