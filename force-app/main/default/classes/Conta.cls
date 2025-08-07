public class Conta {
    //atributos da classe
    public integer numero;
    public string titular;
    public double saldo = 100;

    //metodos
    //saque de dinheiro
    public Boolean sacar(integer valorSaque) {
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

    public void extrato() {
        System.debug('Saldo da conta: ' + this.saldo);
    }
}