type
    UsersGetUsers* = ref object of TLFunction
        id*: seq[InputUserI]
    UsersGetFullUser* = ref object of TLFunction
        id*: InputUserI
    UsersSetSecureValueErrors* = ref object of TLFunction
        id*: InputUserI
        errors*: seq[SecureValueErrorI]
method getTypeName*(self: UsersGetUsers): string = "UsersGetUsers"
method getTypeName*(self: UsersGetFullUser): string = "UsersGetFullUser"
method getTypeName*(self: UsersSetSecureValueErrors): string = "UsersSetSecureValueErrors"

method TLEncode*(self: UsersGetUsers): seq[uint8] =
    result = TLEncode(uint32(3642381440))
    result = result & TLEncode(cast[seq[TL]](self.id))
method TLDecode*(self: UsersGetUsers, bytes: var ScalingSeq[uint8]) = 
    var tempVector = newSeq[TL]()
    tempVector.TLDecode(bytes)
    self.id = cast[seq[InputUserI]](tempVector)
    tempVector.setLen(0)
method TLEncode*(self: UsersGetFullUser): seq[uint8] =
    result = TLEncode(uint32(3392185777))
    result = result & TLEncode(self.id)
method TLDecode*(self: UsersGetFullUser, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.id = cast[InputUserI](tempObj)
method TLEncode*(self: UsersSetSecureValueErrors): seq[uint8] =
    result = TLEncode(uint32(2429064373))
    result = result & TLEncode(self.id)
    result = result & TLEncode(cast[seq[TL]](self.errors))
method TLDecode*(self: UsersSetSecureValueErrors, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.id = cast[InputUserI](tempObj)
    var tempVector = newSeq[TL]()
    tempVector.TLDecode(bytes)
    self.errors = cast[seq[SecureValueErrorI]](tempVector)
    tempVector.setLen(0)
