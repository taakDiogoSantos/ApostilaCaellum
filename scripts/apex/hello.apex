// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

Conta conta = new Conta();
conta.numero = 1;
conta.titular = 'diogo';
conta.saldo = 0;

conta.depositar(500);
conta.sacar(560);
conta.sacar(200);
conta.extrato();


