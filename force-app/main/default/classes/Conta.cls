public class Conta {
    //atributos da classe
    public integer numero;
    public string titular;
    public double saldo = 100;

    //metodos
    //saque de dinheiro
    public Boolean sacar(double valorSaque) {
        if(this.saldo > valorSaque) {          
            this.saldo -= valorSaque;
            return true;
        } else {
            return false;
        }
    }

    //deposito de valor
    public void depositar(double valor) {
        this.saldo += valor;
    }

    //extrato que exibe no debug o valor atual na conta
    public void extrato() {
        System.debug('Titular da conta: ' + this.titular);
        System.debug('Saldo da conta: ' + this.saldo);
    }

    //transferencia de valores
    public void transferir(double valor, Conta destino) {
        if(this.sacar(valor)) {
            destino.depositar(valor);
        }
    }
}