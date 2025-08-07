// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

Cliente diogo = new Cliente();
diogo.setNome('Diogo');
Conta contaDiogo = new Conta();
contaDiogo.setNumero(1);
contaDiogo.setTitular(diogo);

contaDiogo.depositar(500);
contaDiogo.sacar(560);
contaDiogo.sacar(200);
contaDiogo.extrato();

Cliente teste = new Cliente();
teste.setNome('Teste');
Conta contaTeste = new Conta();
contaTeste.setNumero(2);
contaTeste.setTitular(teste);

contaDiogo.transferir(150, contaTeste);
contaTeste.extrato();


