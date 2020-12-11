
import asyncdispatch
import asyncnet
import ../transports

type TcpAbridged* = ref object of MTProtoNetwork
    socket: AsyncSocket

method connect*(self: TcpAbridged, address: string, port: uint16) {.async.} =
    self.socket = await asyncnet.dial(address, port.Port)
    var initialBuffer = uint8(0xEF)
    await self.socket.send(addr initialBuffer, 1)

method write*(self: TcpAbridged, data: seq[uint8]) {.async.} = 
    var lenght = uint32(len(data)/4)
    if lenght >= 127:
        var finalbuffer = @[uint8(0x7F)] & toBytes(lenght)[0..2] & data
        await self.socket.send(addr finalbuffer[0], len(finalbuffer))
    else:
        var finalbuffer = @[uint8(lenght)] & data
        await self.socket.send(addr finalbuffer[0], len(finalbuffer))

method receive*(self: TcpAbridged):  Future[seq[uint8]] {.async.} = 
    var lenght = cast[seq[uint8]](await self.socket.recv(1))
    var realLenght = 0
    if lenght[0] == 0x7F:
        lenght = cast[seq[uint8]](await self.socket.recv(3))
    copyMem(addr realLenght, addr lenght[0], len(lenght))
    result = cast[seq[uint8]](await self.socket.recv(realLenght * 4 ))

method isClosed*(self: TcpAbridged): bool = self.socket.isClosed()

method close*(self: TcpAbridged)  = self.socket.close()