public class Conta {
    //atributos da classe
    private integer numero;
    private Cliente titular;
    private double saldo = 100;

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
        System.debug('Titular da conta: ' + this.titular.getNome());
        System.debug('Saldo da conta: ' + this.saldo);
    }

    //transferencia de valores
    public void transferir(double valor, Conta destino) {
        if(this.sacar(valor)) {
            destino.depositar(valor);
        }
    }

    //gets e sets-----------------
    public double getSaldo() {
        return this.saldo;
    }
    public void setSaldo(double valor){
        this.saldo = valor;
    }

    public Cliente getTitular() {
        return this.titular;
    }
    public void setTitular(Cliente novoTitular) {
        this.titular = novoTitular;
    }
    public integer getNumero() {
        return this.numero;
    }
    public void setNumero(integer numero) {
        this.numero = numero;
    }

    //fim gets e sets ----------------------
}