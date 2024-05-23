/**
 * Aqui, estamos importando o módulo net do Node.js, que fornece uma API para a criação de servidores e clientes TCP.
 */
const net = require('net');

const server = net.createServer(socket => {
    socket.write('Hello'); // resposta do server
    /**
     * socket.on('data', data => { ... }): Ouvimos o evento data no socket. 
     * Este evento é acionado sempre que o servidor recebe dados do cliente. 
     * A função de callback nrecebe os dados enviados pelo cliente.
     * console.log(data.toString());: Aqui, estamos convertendo os dados recebidos
     * em uma string e imprimindo no console. Isso nos permite ver a mensagem que
     * o cliente enviou ao servidor.
     * (são os dados que aparecem no console do servidor ao eu digitar no cliente)
     */
    socket.on('data', data => {
        console.log(data.toString());
    })
})

server.listen(8080);