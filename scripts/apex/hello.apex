// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

Conta contaDiogo = new Conta();
contaDiogo.numero = 1;
contaDiogo.titular = 'diogo';
contaDiogo.saldo = 0;

contaDiogo.depositar(500);
contaDiogo.sacar(560);
contaDiogo.sacar(200);
contaDiogo.extrato();

Conta contaTeste = new Conta();
contaTeste.numero = 2;
contaTeste.titular = 'teste';
contaTeste.saldo = 0;

contaDiogo.transferir(150, contaTeste);
contaTeste.extrato();


