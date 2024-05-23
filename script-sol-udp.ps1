# Esta linha cria um novo objeto UdpClient, que é utilizado para enviar e receber datagramas UDP (User Datagram Protocol).
$udpClient = New-Object System.Net.Sockets.UdpClient

# Aqui, um novo objeto IPEndPoint é criado. Ele representa o ponto final remoto para uma conexão UDP. 
# Neste caso, o ponto final é definido como o endereço IP 127.0.0.1 (o loopback, ou seja, a própria máquina) na porta 8080.
$remoteEndPoint = New-Object System.Net.IPEndPoint([System.Net.IPAddress]::Parse("127.0.0.1"), 8080)

# Nesta linha, uma mensagem é convertida em um array de bytes usando a codificação ASCII. A mensagem é simplesmente definida como 'hi'
$message = [System.Text.Encoding]::ASCII.GetBytes('Somos felizes')

# Aqui, o método Send() do objeto UdpClient é chamado para enviar a mensagem para o ponto final remoto definido anteriormente.
# Ele recebe como argumentos o array de bytes da mensagem, o comprimento da mensagem e o ponto final remoto.
$udpClient.Send($message, $message.Length, $remoteEndPoint)

# Finalmente, o método Close() é chamado para fechar o objeto UdpClient, liberando recursos associados a ele.
$udpClient.Close()
