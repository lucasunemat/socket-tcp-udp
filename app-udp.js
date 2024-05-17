const dgram = require('dgram'); // invoca a biblioteca que lida com datagramas

const socket = dgram.createSocket('udp4'); // cria o socket udp

socket.on('message', (msg,rinfo) => {
    console.log(`server got: ${msg} from ${rinfo.address}:${rinfo.port}`) // responde solicitação do cliente com a msg enviada, endereço e porta 
})

socket.bind(8080); // seta a porta 8080 para o servidor escutar