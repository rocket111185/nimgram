type
    AccountRegisterDevice* = ref object of TLFunction
        flags: int32
        no_muted*: bool
        token_type*: int32
        token*: string
        app_sandbox*: bool
        secret*: seq[uint8]
        other_uids*: seq[int32]
    AccountUnregisterDevice* = ref object of TLFunction
        token_type*: int32
        token*: string
        other_uids*: seq[int32]
    AccountUpdateNotifySettings* = ref object of TLFunction
        peer*: InputNotifyPeerI
        settings*: InputPeerNotifySettingsI
    AccountGetNotifySettings* = ref object of TLFunction
        peer*: InputNotifyPeerI
    AccountResetNotifySettings* = ref object of TLFunction
    AccountUpdateProfile* = ref object of TLFunction
        flags: int32
        first_name*: Option[string]
        last_name*: Option[string]
        about*: Option[string]
    AccountUpdateStatus* = ref object of TLFunction
        offline*: bool
    AccountGetWallPapers* = ref object of TLFunction
        hash*: int32
    AccountReportPeer* = ref object of TLFunction
        peer*: InputPeerI
        reason*: ReportReasonI
    AccountCheckUsername* = ref object of TLFunction
        username*: string
    AccountUpdateUsername* = ref object of TLFunction
        username*: string
    AccountGetPrivacy* = ref object of TLFunction
        key*: InputPrivacyKeyI
    AccountSetPrivacy* = ref object of TLFunction
        key*: InputPrivacyKeyI
        rules*: seq[InputPrivacyRuleI]
    AccountDeleteAccount* = ref object of TLFunction
        reason*: string
    AccountGetAccountTTL* = ref object of TLFunction
    AccountSetAccountTTL* = ref object of TLFunction
        ttl*: AccountDaysTTLI
    AccountSendChangePhoneCode* = ref object of TLFunction
        phone_number*: string
        settings*: CodeSettingsI
    AccountChangePhone* = ref object of TLFunction
        phone_number*: string
        phone_code_hash*: string
        phone_code*: string
    AccountUpdateDeviceLocked* = ref object of TLFunction
        period*: int32
    AccountGetAuthorizations* = ref object of TLFunction
    AccountResetAuthorization* = ref object of TLFunction
        hash*: int64
    AccountGetPassword* = ref object of TLFunction
    AccountGetPasswordSettings* = ref object of TLFunction
        password*: InputCheckPasswordSRPI
    AccountUpdatePasswordSettings* = ref object of TLFunction
        password*: InputCheckPasswordSRPI
        new_settings*: AccountPasswordInputSettingsI
    AccountSendConfirmPhoneCode* = ref object of TLFunction
        hash*: string
        settings*: CodeSettingsI
    AccountConfirmPhone* = ref object of TLFunction
        phone_code_hash*: string
        phone_code*: string
    AccountGetTmpPassword* = ref object of TLFunction
        password*: InputCheckPasswordSRPI
        period*: int32
    AccountGetWebAuthorizations* = ref object of TLFunction
    AccountResetWebAuthorization* = ref object of TLFunction
        hash*: int64
    AccountResetWebAuthorizations* = ref object of TLFunction
    AccountGetAllSecureValues* = ref object of TLFunction
    AccountGetSecureValue* = ref object of TLFunction
        types*: seq[SecureValueTypeI]
    AccountSaveSecureValue* = ref object of TLFunction
        value*: InputSecureValueI
        secure_secret_id*: int64
    AccountDeleteSecureValue* = ref object of TLFunction
        types*: seq[SecureValueTypeI]
    AccountGetAuthorizationForm* = ref object of TLFunction
        bot_id*: int32
        scope*: string
        public_key*: string
    AccountAcceptAuthorization* = ref object of TLFunction
        bot_id*: int32
        scope*: string
        public_key*: string
        value_hashes*: seq[SecureValueHashI]
        credentials*: SecureCredentialsEncryptedI
    AccountSendVerifyPhoneCode* = ref object of TLFunction
        phone_number*: string
        settings*: CodeSettingsI
    AccountVerifyPhone* = ref object of TLFunction
        phone_number*: string
        phone_code_hash*: string
        phone_code*: string
    AccountSendVerifyEmailCode* = ref object of TLFunction
        email*: string
    AccountVerifyEmail* = ref object of TLFunction
        email*: string
        code*: string
    AccountInitTakeoutSession* = ref object of TLFunction
        flags: int32
        contacts*: bool
        message_users*: bool
        message_chats*: bool
        message_megagroups*: bool
        message_channels*: bool
        files*: bool
        file_max_size*: Option[int32]
    AccountFinishTakeoutSession* = ref object of TLFunction
        flags: int32
        success*: bool
    AccountConfirmPasswordEmail* = ref object of TLFunction
        code*: string
    AccountResendPasswordEmail* = ref object of TLFunction
    AccountCancelPasswordEmail* = ref object of TLFunction
    AccountGetContactSignUpNotification* = ref object of TLFunction
    AccountSetContactSignUpNotification* = ref object of TLFunction
        silent*: bool
    AccountGetNotifyExceptions* = ref object of TLFunction
        flags: int32
        compare_sound*: bool
        peer*: Option[InputNotifyPeerI]
    AccountGetWallPaper* = ref object of TLFunction
        wallpaper*: InputWallPaperI
    AccountUploadWallPaper* = ref object of TLFunction
        file*: InputFileI
        mime_type*: string
        settings*: WallPaperSettingsI
    AccountSaveWallPaper* = ref object of TLFunction
        wallpaper*: InputWallPaperI
        unsave*: bool
        settings*: WallPaperSettingsI
    AccountInstallWallPaper* = ref object of TLFunction
        wallpaper*: InputWallPaperI
        settings*: WallPaperSettingsI
    AccountResetWallPapers* = ref object of TLFunction
    AccountGetAutoDownloadSettings* = ref object of TLFunction
    AccountSaveAutoDownloadSettings* = ref object of TLFunction
        flags: int32
        low*: bool
        high*: bool
        settings*: AutoDownloadSettingsI
    AccountUploadTheme* = ref object of TLFunction
        flags: int32
        file*: InputFileI
        thumb*: Option[InputFileI]
        file_name*: string
        mime_type*: string
    AccountCreateTheme* = ref object of TLFunction
        flags: int32
        slug*: string
        title*: string
        document*: Option[InputDocumentI]
        settings*: Option[InputThemeSettingsI]
    AccountUpdateTheme* = ref object of TLFunction
        flags: int32
        format*: string
        theme*: InputThemeI
        slug*: Option[string]
        title*: Option[string]
        document*: Option[InputDocumentI]
        settings*: Option[InputThemeSettingsI]
    AccountSaveTheme* = ref object of TLFunction
        theme*: InputThemeI
        unsave*: bool
    AccountInstallTheme* = ref object of TLFunction
        flags: int32
        dark*: bool
        format*: Option[string]
        theme*: Option[InputThemeI]
    AccountGetTheme* = ref object of TLFunction
        format*: string
        theme*: InputThemeI
        document_id*: int64
    AccountGetThemes* = ref object of TLFunction
        format*: string
        hash*: int32
    AccountSetContentSettings* = ref object of TLFunction
        flags: int32
        sensitive_enabled*: bool
    AccountGetContentSettings* = ref object of TLFunction
    AccountGetMultiWallPapers* = ref object of TLFunction
        wallpapers*: seq[InputWallPaperI]
    AccountGetGlobalPrivacySettings* = ref object of TLFunction
    AccountSetGlobalPrivacySettings* = ref object of TLFunction
        settings*: GlobalPrivacySettingsI
method getTypeName*(self: AccountRegisterDevice): string = "AccountRegisterDevice"
method getTypeName*(self: AccountUnregisterDevice): string = "AccountUnregisterDevice"
method getTypeName*(self: AccountUpdateNotifySettings): string = "AccountUpdateNotifySettings"
method getTypeName*(self: AccountGetNotifySettings): string = "AccountGetNotifySettings"
method getTypeName*(self: AccountResetNotifySettings): string = "AccountResetNotifySettings"
method getTypeName*(self: AccountUpdateProfile): string = "AccountUpdateProfile"
method getTypeName*(self: AccountUpdateStatus): string = "AccountUpdateStatus"
method getTypeName*(self: AccountGetWallPapers): string = "AccountGetWallPapers"
method getTypeName*(self: AccountReportPeer): string = "AccountReportPeer"
method getTypeName*(self: AccountCheckUsername): string = "AccountCheckUsername"
method getTypeName*(self: AccountUpdateUsername): string = "AccountUpdateUsername"
method getTypeName*(self: AccountGetPrivacy): string = "AccountGetPrivacy"
method getTypeName*(self: AccountSetPrivacy): string = "AccountSetPrivacy"
method getTypeName*(self: AccountDeleteAccount): string = "AccountDeleteAccount"
method getTypeName*(self: AccountGetAccountTTL): string = "AccountGetAccountTTL"
method getTypeName*(self: AccountSetAccountTTL): string = "AccountSetAccountTTL"
method getTypeName*(self: AccountSendChangePhoneCode): string = "AccountSendChangePhoneCode"
method getTypeName*(self: AccountChangePhone): string = "AccountChangePhone"
method getTypeName*(self: AccountUpdateDeviceLocked): string = "AccountUpdateDeviceLocked"
method getTypeName*(self: AccountGetAuthorizations): string = "AccountGetAuthorizations"
method getTypeName*(self: AccountResetAuthorization): string = "AccountResetAuthorization"
method getTypeName*(self: AccountGetPassword): string = "AccountGetPassword"
method getTypeName*(self: AccountGetPasswordSettings): string = "AccountGetPasswordSettings"
method getTypeName*(self: AccountUpdatePasswordSettings): string = "AccountUpdatePasswordSettings"
method getTypeName*(self: AccountSendConfirmPhoneCode): string = "AccountSendConfirmPhoneCode"
method getTypeName*(self: AccountConfirmPhone): string = "AccountConfirmPhone"
method getTypeName*(self: AccountGetTmpPassword): string = "AccountGetTmpPassword"
method getTypeName*(self: AccountGetWebAuthorizations): string = "AccountGetWebAuthorizations"
method getTypeName*(self: AccountResetWebAuthorization): string = "AccountResetWebAuthorization"
method getTypeName*(self: AccountResetWebAuthorizations): string = "AccountResetWebAuthorizations"
method getTypeName*(self: AccountGetAllSecureValues): string = "AccountGetAllSecureValues"
method getTypeName*(self: AccountGetSecureValue): string = "AccountGetSecureValue"
method getTypeName*(self: AccountSaveSecureValue): string = "AccountSaveSecureValue"
method getTypeName*(self: AccountDeleteSecureValue): string = "AccountDeleteSecureValue"
method getTypeName*(self: AccountGetAuthorizationForm): string = "AccountGetAuthorizationForm"
method getTypeName*(self: AccountAcceptAuthorization): string = "AccountAcceptAuthorization"
method getTypeName*(self: AccountSendVerifyPhoneCode): string = "AccountSendVerifyPhoneCode"
method getTypeName*(self: AccountVerifyPhone): string = "AccountVerifyPhone"
method getTypeName*(self: AccountSendVerifyEmailCode): string = "AccountSendVerifyEmailCode"
method getTypeName*(self: AccountVerifyEmail): string = "AccountVerifyEmail"
method getTypeName*(self: AccountInitTakeoutSession): string = "AccountInitTakeoutSession"
method getTypeName*(self: AccountFinishTakeoutSession): string = "AccountFinishTakeoutSession"
method getTypeName*(self: AccountConfirmPasswordEmail): string = "AccountConfirmPasswordEmail"
method getTypeName*(self: AccountResendPasswordEmail): string = "AccountResendPasswordEmail"
method getTypeName*(self: AccountCancelPasswordEmail): string = "AccountCancelPasswordEmail"
method getTypeName*(self: AccountGetContactSignUpNotification): string = "AccountGetContactSignUpNotification"
method getTypeName*(self: AccountSetContactSignUpNotification): string = "AccountSetContactSignUpNotification"
method getTypeName*(self: AccountGetNotifyExceptions): string = "AccountGetNotifyExceptions"
method getTypeName*(self: AccountGetWallPaper): string = "AccountGetWallPaper"
method getTypeName*(self: AccountUploadWallPaper): string = "AccountUploadWallPaper"
method getTypeName*(self: AccountSaveWallPaper): string = "AccountSaveWallPaper"
method getTypeName*(self: AccountInstallWallPaper): string = "AccountInstallWallPaper"
method getTypeName*(self: AccountResetWallPapers): string = "AccountResetWallPapers"
method getTypeName*(self: AccountGetAutoDownloadSettings): string = "AccountGetAutoDownloadSettings"
method getTypeName*(self: AccountSaveAutoDownloadSettings): string = "AccountSaveAutoDownloadSettings"
method getTypeName*(self: AccountUploadTheme): string = "AccountUploadTheme"
method getTypeName*(self: AccountCreateTheme): string = "AccountCreateTheme"
method getTypeName*(self: AccountUpdateTheme): string = "AccountUpdateTheme"
method getTypeName*(self: AccountSaveTheme): string = "AccountSaveTheme"
method getTypeName*(self: AccountInstallTheme): string = "AccountInstallTheme"
method getTypeName*(self: AccountGetTheme): string = "AccountGetTheme"
method getTypeName*(self: AccountGetThemes): string = "AccountGetThemes"
method getTypeName*(self: AccountSetContentSettings): string = "AccountSetContentSettings"
method getTypeName*(self: AccountGetContentSettings): string = "AccountGetContentSettings"
method getTypeName*(self: AccountGetMultiWallPapers): string = "AccountGetMultiWallPapers"
method getTypeName*(self: AccountGetGlobalPrivacySettings): string = "AccountGetGlobalPrivacySettings"
method getTypeName*(self: AccountSetGlobalPrivacySettings): string = "AccountSetGlobalPrivacySettings"

method TLEncode*(self: AccountRegisterDevice): seq[uint8] =
    result = TLEncode(uint32(1754754159))
    if self.no_muted:
        self.flags = self.flags or 1 shl 0
    result = result & TLEncode(self.flags)
    result = result & TLEncode(self.token_type)
    result = result & TLEncode(self.token)
    result = result & TLEncode(self.app_sandbox)
    result = result & TLEncode(self.secret)
    result = result & TLEncode(self.other_uids)
method TLDecode*(self: AccountRegisterDevice, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.flags)
    if (self.flags and (1 shl 0)) != 0:
        self.no_muted = true
    bytes.TLDecode(addr self.token_type)
    self.token = cast[string](bytes.TLDecode())
    bytes.TLDecode(self.app_sandbox)
    self.secret = bytes.TLDecode()
    bytes.TLDecode(self.other_uids)
method TLEncode*(self: AccountUnregisterDevice): seq[uint8] =
    result = TLEncode(uint32(813089983))
    result = result & TLEncode(self.token_type)
    result = result & TLEncode(self.token)
    result = result & TLEncode(self.other_uids)
method TLDecode*(self: AccountUnregisterDevice, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.token_type)
    self.token = cast[string](bytes.TLDecode())
    bytes.TLDecode(self.other_uids)
method TLEncode*(self: AccountUpdateNotifySettings): seq[uint8] =
    result = TLEncode(uint32(2227067795))
    result = result & TLEncode(self.peer)
    result = result & TLEncode(self.settings)
method TLDecode*(self: AccountUpdateNotifySettings, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.peer = cast[InputNotifyPeerI](tempObj)
    tempObj.TLDecode(bytes)
    self.settings = cast[InputPeerNotifySettingsI](tempObj)
method TLEncode*(self: AccountGetNotifySettings): seq[uint8] =
    result = TLEncode(uint32(313765169))
    result = result & TLEncode(self.peer)
method TLDecode*(self: AccountGetNotifySettings, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.peer = cast[InputNotifyPeerI](tempObj)
method TLEncode*(self: AccountResetNotifySettings): seq[uint8] =
    result = TLEncode(uint32(3682473799))
method TLDecode*(self: AccountResetNotifySettings, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountUpdateProfile): seq[uint8] =
    result = TLEncode(uint32(2018596725))
    if self.first_name.isSome():
        self.flags = self.flags or 1 shl 0
    if self.last_name.isSome():
        self.flags = self.flags or 1 shl 1
    if self.about.isSome():
        self.flags = self.flags or 1 shl 2
    result = result & TLEncode(self.flags)
    if self.first_name.isSome():
        result = result & TLEncode(self.first_name.get())
    if self.last_name.isSome():
        result = result & TLEncode(self.last_name.get())
    if self.about.isSome():
        result = result & TLEncode(self.about.get())
method TLDecode*(self: AccountUpdateProfile, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.flags)
    if (self.flags and (1 shl 0)) != 0:
        self.first_name = some(cast[string](bytes.TLDecode()))
    if (self.flags and (1 shl 1)) != 0:
        self.last_name = some(cast[string](bytes.TLDecode()))
    if (self.flags and (1 shl 2)) != 0:
        self.about = some(cast[string](bytes.TLDecode()))
method TLEncode*(self: AccountUpdateStatus): seq[uint8] =
    result = TLEncode(uint32(1713919532))
    result = result & TLEncode(self.offline)
method TLDecode*(self: AccountUpdateStatus, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(self.offline)
method TLEncode*(self: AccountGetWallPapers): seq[uint8] =
    result = TLEncode(uint32(2864387939))
    result = result & TLEncode(self.hash)
method TLDecode*(self: AccountGetWallPapers, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.hash)
method TLEncode*(self: AccountReportPeer): seq[uint8] =
    result = TLEncode(uint32(2920848735))
    result = result & TLEncode(self.peer)
    result = result & TLEncode(self.reason)
method TLDecode*(self: AccountReportPeer, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.peer = cast[InputPeerI](tempObj)
    tempObj.TLDecode(bytes)
    self.reason = cast[ReportReasonI](tempObj)
method TLEncode*(self: AccountCheckUsername): seq[uint8] =
    result = TLEncode(uint32(655677548))
    result = result & TLEncode(self.username)
method TLDecode*(self: AccountCheckUsername, bytes: var ScalingSeq[uint8]) = 
    self.username = cast[string](bytes.TLDecode())
method TLEncode*(self: AccountUpdateUsername): seq[uint8] =
    result = TLEncode(uint32(1040964988))
    result = result & TLEncode(self.username)
method TLDecode*(self: AccountUpdateUsername, bytes: var ScalingSeq[uint8]) = 
    self.username = cast[string](bytes.TLDecode())
method TLEncode*(self: AccountGetPrivacy): seq[uint8] =
    result = TLEncode(uint32(3671837008))
    result = result & TLEncode(self.key)
method TLDecode*(self: AccountGetPrivacy, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.key = cast[InputPrivacyKeyI](tempObj)
method TLEncode*(self: AccountSetPrivacy): seq[uint8] =
    result = TLEncode(uint32(3388480744))
    result = result & TLEncode(self.key)
    result = result & TLEncode(cast[seq[TL]](self.rules))
method TLDecode*(self: AccountSetPrivacy, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.key = cast[InputPrivacyKeyI](tempObj)
    var tempVector = newSeq[TL]()
    tempVector.TLDecode(bytes)
    self.rules = cast[seq[InputPrivacyRuleI]](tempVector)
    tempVector.setLen(0)
method TLEncode*(self: AccountDeleteAccount): seq[uint8] =
    result = TLEncode(uint32(1099779595))
    result = result & TLEncode(self.reason)
method TLDecode*(self: AccountDeleteAccount, bytes: var ScalingSeq[uint8]) = 
    self.reason = cast[string](bytes.TLDecode())
method TLEncode*(self: AccountGetAccountTTL): seq[uint8] =
    result = TLEncode(uint32(2412188112))
method TLDecode*(self: AccountGetAccountTTL, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountSetAccountTTL): seq[uint8] =
    result = TLEncode(uint32(608323678))
    result = result & TLEncode(self.ttl)
method TLDecode*(self: AccountSetAccountTTL, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.ttl = cast[AccountDaysTTLI](tempObj)
method TLEncode*(self: AccountSendChangePhoneCode): seq[uint8] =
    result = TLEncode(uint32(2186758885))
    result = result & TLEncode(self.phone_number)
    result = result & TLEncode(self.settings)
method TLDecode*(self: AccountSendChangePhoneCode, bytes: var ScalingSeq[uint8]) = 
    self.phone_number = cast[string](bytes.TLDecode())
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.settings = cast[CodeSettingsI](tempObj)
method TLEncode*(self: AccountChangePhone): seq[uint8] =
    result = TLEncode(uint32(1891839707))
    result = result & TLEncode(self.phone_number)
    result = result & TLEncode(self.phone_code_hash)
    result = result & TLEncode(self.phone_code)
method TLDecode*(self: AccountChangePhone, bytes: var ScalingSeq[uint8]) = 
    self.phone_number = cast[string](bytes.TLDecode())
    self.phone_code_hash = cast[string](bytes.TLDecode())
    self.phone_code = cast[string](bytes.TLDecode())
method TLEncode*(self: AccountUpdateDeviceLocked): seq[uint8] =
    result = TLEncode(uint32(954152242))
    result = result & TLEncode(self.period)
method TLDecode*(self: AccountUpdateDeviceLocked, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.period)
method TLEncode*(self: AccountGetAuthorizations): seq[uint8] =
    result = TLEncode(uint32(3810574680))
method TLDecode*(self: AccountGetAuthorizations, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountResetAuthorization): seq[uint8] =
    result = TLEncode(uint32(3749180348))
    result = result & TLEncode(self.hash)
method TLDecode*(self: AccountResetAuthorization, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.hash)
method TLEncode*(self: AccountGetPassword): seq[uint8] =
    result = TLEncode(uint32(1418342645))
method TLDecode*(self: AccountGetPassword, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountGetPasswordSettings): seq[uint8] =
    result = TLEncode(uint32(2631199481))
    result = result & TLEncode(self.password)
method TLDecode*(self: AccountGetPasswordSettings, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.password = cast[InputCheckPasswordSRPI](tempObj)
method TLEncode*(self: AccountUpdatePasswordSettings): seq[uint8] =
    result = TLEncode(uint32(2778402863))
    result = result & TLEncode(self.password)
    result = result & TLEncode(self.new_settings)
method TLDecode*(self: AccountUpdatePasswordSettings, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.password = cast[InputCheckPasswordSRPI](tempObj)
    tempObj.TLDecode(bytes)
    self.new_settings = cast[AccountPasswordInputSettingsI](tempObj)
method TLEncode*(self: AccountSendConfirmPhoneCode): seq[uint8] =
    result = TLEncode(uint32(457157256))
    result = result & TLEncode(self.hash)
    result = result & TLEncode(self.settings)
method TLDecode*(self: AccountSendConfirmPhoneCode, bytes: var ScalingSeq[uint8]) = 
    self.hash = cast[string](bytes.TLDecode())
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.settings = cast[CodeSettingsI](tempObj)
method TLEncode*(self: AccountConfirmPhone): seq[uint8] =
    result = TLEncode(uint32(1596029123))
    result = result & TLEncode(self.phone_code_hash)
    result = result & TLEncode(self.phone_code)
method TLDecode*(self: AccountConfirmPhone, bytes: var ScalingSeq[uint8]) = 
    self.phone_code_hash = cast[string](bytes.TLDecode())
    self.phone_code = cast[string](bytes.TLDecode())
method TLEncode*(self: AccountGetTmpPassword): seq[uint8] =
    result = TLEncode(uint32(1151208273))
    result = result & TLEncode(self.password)
    result = result & TLEncode(self.period)
method TLDecode*(self: AccountGetTmpPassword, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.password = cast[InputCheckPasswordSRPI](tempObj)
    bytes.TLDecode(addr self.period)
method TLEncode*(self: AccountGetWebAuthorizations): seq[uint8] =
    result = TLEncode(uint32(405695855))
method TLDecode*(self: AccountGetWebAuthorizations, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountResetWebAuthorization): seq[uint8] =
    result = TLEncode(uint32(755087855))
    result = result & TLEncode(self.hash)
method TLDecode*(self: AccountResetWebAuthorization, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.hash)
method TLEncode*(self: AccountResetWebAuthorizations): seq[uint8] =
    result = TLEncode(uint32(1747789204))
method TLDecode*(self: AccountResetWebAuthorizations, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountGetAllSecureValues): seq[uint8] =
    result = TLEncode(uint32(2995305597))
method TLDecode*(self: AccountGetAllSecureValues, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountGetSecureValue): seq[uint8] =
    result = TLEncode(uint32(1936088002))
    result = result & TLEncode(cast[seq[TL]](self.types))
method TLDecode*(self: AccountGetSecureValue, bytes: var ScalingSeq[uint8]) = 
    var tempVector = newSeq[TL]()
    tempVector.TLDecode(bytes)
    self.types = cast[seq[SecureValueTypeI]](tempVector)
    tempVector.setLen(0)
method TLEncode*(self: AccountSaveSecureValue): seq[uint8] =
    result = TLEncode(uint32(2308956957))
    result = result & TLEncode(self.value)
    result = result & TLEncode(self.secure_secret_id)
method TLDecode*(self: AccountSaveSecureValue, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.value = cast[InputSecureValueI](tempObj)
    bytes.TLDecode(addr self.secure_secret_id)
method TLEncode*(self: AccountDeleteSecureValue): seq[uint8] =
    result = TLEncode(uint32(3095444555))
    result = result & TLEncode(cast[seq[TL]](self.types))
method TLDecode*(self: AccountDeleteSecureValue, bytes: var ScalingSeq[uint8]) = 
    var tempVector = newSeq[TL]()
    tempVector.TLDecode(bytes)
    self.types = cast[seq[SecureValueTypeI]](tempVector)
    tempVector.setLen(0)
method TLEncode*(self: AccountGetAuthorizationForm): seq[uint8] =
    result = TLEncode(uint32(3094063329))
    result = result & TLEncode(self.bot_id)
    result = result & TLEncode(self.scope)
    result = result & TLEncode(self.public_key)
method TLDecode*(self: AccountGetAuthorizationForm, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.bot_id)
    self.scope = cast[string](bytes.TLDecode())
    self.public_key = cast[string](bytes.TLDecode())
method TLEncode*(self: AccountAcceptAuthorization): seq[uint8] =
    result = TLEncode(uint32(3875699860))
    result = result & TLEncode(self.bot_id)
    result = result & TLEncode(self.scope)
    result = result & TLEncode(self.public_key)
    result = result & TLEncode(cast[seq[TL]](self.value_hashes))
    result = result & TLEncode(self.credentials)
method TLDecode*(self: AccountAcceptAuthorization, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.bot_id)
    self.scope = cast[string](bytes.TLDecode())
    self.public_key = cast[string](bytes.TLDecode())
    var tempVector = newSeq[TL]()
    tempVector.TLDecode(bytes)
    self.value_hashes = cast[seq[SecureValueHashI]](tempVector)
    tempVector.setLen(0)
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.credentials = cast[SecureCredentialsEncryptedI](tempObj)
method TLEncode*(self: AccountSendVerifyPhoneCode): seq[uint8] =
    result = TLEncode(uint32(2778945273))
    result = result & TLEncode(self.phone_number)
    result = result & TLEncode(self.settings)
method TLDecode*(self: AccountSendVerifyPhoneCode, bytes: var ScalingSeq[uint8]) = 
    self.phone_number = cast[string](bytes.TLDecode())
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.settings = cast[CodeSettingsI](tempObj)
method TLEncode*(self: AccountVerifyPhone): seq[uint8] =
    result = TLEncode(uint32(1305716726))
    result = result & TLEncode(self.phone_number)
    result = result & TLEncode(self.phone_code_hash)
    result = result & TLEncode(self.phone_code)
method TLDecode*(self: AccountVerifyPhone, bytes: var ScalingSeq[uint8]) = 
    self.phone_number = cast[string](bytes.TLDecode())
    self.phone_code_hash = cast[string](bytes.TLDecode())
    self.phone_code = cast[string](bytes.TLDecode())
method TLEncode*(self: AccountSendVerifyEmailCode): seq[uint8] =
    result = TLEncode(uint32(1880182943))
    result = result & TLEncode(self.email)
method TLDecode*(self: AccountSendVerifyEmailCode, bytes: var ScalingSeq[uint8]) = 
    self.email = cast[string](bytes.TLDecode())
method TLEncode*(self: AccountVerifyEmail): seq[uint8] =
    result = TLEncode(uint32(3971627483))
    result = result & TLEncode(self.email)
    result = result & TLEncode(self.code)
method TLDecode*(self: AccountVerifyEmail, bytes: var ScalingSeq[uint8]) = 
    self.email = cast[string](bytes.TLDecode())
    self.code = cast[string](bytes.TLDecode())
method TLEncode*(self: AccountInitTakeoutSession): seq[uint8] =
    result = TLEncode(uint32(4032514052))
    if self.contacts:
        self.flags = self.flags or 1 shl 0
    if self.message_users:
        self.flags = self.flags or 1 shl 1
    if self.message_chats:
        self.flags = self.flags or 1 shl 2
    if self.message_megagroups:
        self.flags = self.flags or 1 shl 3
    if self.message_channels:
        self.flags = self.flags or 1 shl 4
    if self.files:
        self.flags = self.flags or 1 shl 5
    if self.file_max_size.isSome():
        self.flags = self.flags or 1 shl 5
    result = result & TLEncode(self.flags)
    if self.file_max_size.isSome():
        result = result & TLEncode(self.file_max_size.get())
method TLDecode*(self: AccountInitTakeoutSession, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.flags)
    if (self.flags and (1 shl 0)) != 0:
        self.contacts = true
    if (self.flags and (1 shl 1)) != 0:
        self.message_users = true
    if (self.flags and (1 shl 2)) != 0:
        self.message_chats = true
    if (self.flags and (1 shl 3)) != 0:
        self.message_megagroups = true
    if (self.flags and (1 shl 4)) != 0:
        self.message_channels = true
    if (self.flags and (1 shl 5)) != 0:
        self.files = true
    if (self.flags and (1 shl 5)) != 0:
        var tempVal: int32 = 0
        bytes.TLDecode(addr tempVal)
        self.file_max_size = some(tempVal)
method TLEncode*(self: AccountFinishTakeoutSession): seq[uint8] =
    result = TLEncode(uint32(489050862))
    if self.success:
        self.flags = self.flags or 1 shl 0
    result = result & TLEncode(self.flags)
method TLDecode*(self: AccountFinishTakeoutSession, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.flags)
    if (self.flags and (1 shl 0)) != 0:
        self.success = true
method TLEncode*(self: AccountConfirmPasswordEmail): seq[uint8] =
    result = TLEncode(uint32(2413762848))
    result = result & TLEncode(self.code)
method TLDecode*(self: AccountConfirmPasswordEmail, bytes: var ScalingSeq[uint8]) = 
    self.code = cast[string](bytes.TLDecode())
method TLEncode*(self: AccountResendPasswordEmail): seq[uint8] =
    result = TLEncode(uint32(2055154197))
method TLDecode*(self: AccountResendPasswordEmail, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountCancelPasswordEmail): seq[uint8] =
    result = TLEncode(uint32(3251361206))
method TLDecode*(self: AccountCancelPasswordEmail, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountGetContactSignUpNotification): seq[uint8] =
    result = TLEncode(uint32(2668087080))
method TLDecode*(self: AccountGetContactSignUpNotification, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountSetContactSignUpNotification): seq[uint8] =
    result = TLEncode(uint32(3488890721))
    result = result & TLEncode(self.silent)
method TLDecode*(self: AccountSetContactSignUpNotification, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(self.silent)
method TLEncode*(self: AccountGetNotifyExceptions): seq[uint8] =
    result = TLEncode(uint32(1398240377))
    if self.compare_sound:
        self.flags = self.flags or 1 shl 1
    if self.peer.isSome():
        self.flags = self.flags or 1 shl 0
    result = result & TLEncode(self.flags)
    if self.peer.isSome():
        result = result & TLEncode(self.peer.get())
method TLDecode*(self: AccountGetNotifyExceptions, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.flags)
    if (self.flags and (1 shl 1)) != 0:
        self.compare_sound = true
    if (self.flags and (1 shl 0)) != 0:
        var tempVal = new TL
        tempVal.TLDecode(bytes)
        self.peer = some(tempVal.InputNotifyPeerI)
method TLEncode*(self: AccountGetWallPaper): seq[uint8] =
    result = TLEncode(uint32(4237155306))
    result = result & TLEncode(self.wallpaper)
method TLDecode*(self: AccountGetWallPaper, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.wallpaper = cast[InputWallPaperI](tempObj)
method TLEncode*(self: AccountUploadWallPaper): seq[uint8] =
    result = TLEncode(uint32(3716494945))
    result = result & TLEncode(self.file)
    result = result & TLEncode(self.mime_type)
    result = result & TLEncode(self.settings)
method TLDecode*(self: AccountUploadWallPaper, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.file = cast[InputFileI](tempObj)
    self.mime_type = cast[string](bytes.TLDecode())
    tempObj.TLDecode(bytes)
    self.settings = cast[WallPaperSettingsI](tempObj)
method TLEncode*(self: AccountSaveWallPaper): seq[uint8] =
    result = TLEncode(uint32(1817860919))
    result = result & TLEncode(self.wallpaper)
    result = result & TLEncode(self.unsave)
    result = result & TLEncode(self.settings)
method TLDecode*(self: AccountSaveWallPaper, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.wallpaper = cast[InputWallPaperI](tempObj)
    bytes.TLDecode(self.unsave)
    tempObj.TLDecode(bytes)
    self.settings = cast[WallPaperSettingsI](tempObj)
method TLEncode*(self: AccountInstallWallPaper): seq[uint8] =
    result = TLEncode(uint32(4276967273))
    result = result & TLEncode(self.wallpaper)
    result = result & TLEncode(self.settings)
method TLDecode*(self: AccountInstallWallPaper, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.wallpaper = cast[InputWallPaperI](tempObj)
    tempObj.TLDecode(bytes)
    self.settings = cast[WallPaperSettingsI](tempObj)
method TLEncode*(self: AccountResetWallPapers): seq[uint8] =
    result = TLEncode(uint32(3141244932))
method TLDecode*(self: AccountResetWallPapers, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountGetAutoDownloadSettings): seq[uint8] =
    result = TLEncode(uint32(1457130303))
method TLDecode*(self: AccountGetAutoDownloadSettings, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountSaveAutoDownloadSettings): seq[uint8] =
    result = TLEncode(uint32(1995661875))
    if self.low:
        self.flags = self.flags or 1 shl 0
    if self.high:
        self.flags = self.flags or 1 shl 1
    result = result & TLEncode(self.flags)
    result = result & TLEncode(self.settings)
method TLDecode*(self: AccountSaveAutoDownloadSettings, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.flags)
    if (self.flags and (1 shl 0)) != 0:
        self.low = true
    if (self.flags and (1 shl 1)) != 0:
        self.high = true
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.settings = cast[AutoDownloadSettingsI](tempObj)
method TLEncode*(self: AccountUploadTheme): seq[uint8] =
    result = TLEncode(uint32(473805619))
    if self.thumb.isSome():
        self.flags = self.flags or 1 shl 0
    result = result & TLEncode(self.flags)
    result = result & TLEncode(self.file)
    if self.thumb.isSome():
        result = result & TLEncode(self.thumb.get())
    result = result & TLEncode(self.file_name)
    result = result & TLEncode(self.mime_type)
method TLDecode*(self: AccountUploadTheme, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.flags)
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.file = cast[InputFileI](tempObj)
    if (self.flags and (1 shl 0)) != 0:
        var tempVal = new TL
        tempVal.TLDecode(bytes)
        self.thumb = some(tempVal.InputFileI)
    self.file_name = cast[string](bytes.TLDecode())
    self.mime_type = cast[string](bytes.TLDecode())
method TLEncode*(self: AccountCreateTheme): seq[uint8] =
    result = TLEncode(uint32(2217919007))
    if self.document.isSome():
        self.flags = self.flags or 1 shl 2
    if self.settings.isSome():
        self.flags = self.flags or 1 shl 3
    result = result & TLEncode(self.flags)
    result = result & TLEncode(self.slug)
    result = result & TLEncode(self.title)
    if self.document.isSome():
        result = result & TLEncode(self.document.get())
    if self.settings.isSome():
        result = result & TLEncode(self.settings.get())
method TLDecode*(self: AccountCreateTheme, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.flags)
    self.slug = cast[string](bytes.TLDecode())
    self.title = cast[string](bytes.TLDecode())
    if (self.flags and (1 shl 2)) != 0:
        var tempVal = new TL
        tempVal.TLDecode(bytes)
        self.document = some(tempVal.InputDocumentI)
    if (self.flags and (1 shl 3)) != 0:
        var tempVal = new TL
        tempVal.TLDecode(bytes)
        self.settings = some(tempVal.InputThemeSettingsI)
method TLEncode*(self: AccountUpdateTheme): seq[uint8] =
    result = TLEncode(uint32(1555261397))
    if self.slug.isSome():
        self.flags = self.flags or 1 shl 0
    if self.title.isSome():
        self.flags = self.flags or 1 shl 1
    if self.document.isSome():
        self.flags = self.flags or 1 shl 2
    if self.settings.isSome():
        self.flags = self.flags or 1 shl 3
    result = result & TLEncode(self.flags)
    result = result & TLEncode(self.format)
    result = result & TLEncode(self.theme)
    if self.slug.isSome():
        result = result & TLEncode(self.slug.get())
    if self.title.isSome():
        result = result & TLEncode(self.title.get())
    if self.document.isSome():
        result = result & TLEncode(self.document.get())
    if self.settings.isSome():
        result = result & TLEncode(self.settings.get())
method TLDecode*(self: AccountUpdateTheme, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.flags)
    self.format = cast[string](bytes.TLDecode())
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.theme = cast[InputThemeI](tempObj)
    if (self.flags and (1 shl 0)) != 0:
        self.slug = some(cast[string](bytes.TLDecode()))
    if (self.flags and (1 shl 1)) != 0:
        self.title = some(cast[string](bytes.TLDecode()))
    if (self.flags and (1 shl 2)) != 0:
        var tempVal = new TL
        tempVal.TLDecode(bytes)
        self.document = some(tempVal.InputDocumentI)
    if (self.flags and (1 shl 3)) != 0:
        var tempVal = new TL
        tempVal.TLDecode(bytes)
        self.settings = some(tempVal.InputThemeSettingsI)
method TLEncode*(self: AccountSaveTheme): seq[uint8] =
    result = TLEncode(uint32(4065792108))
    result = result & TLEncode(self.theme)
    result = result & TLEncode(self.unsave)
method TLDecode*(self: AccountSaveTheme, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.theme = cast[InputThemeI](tempObj)
    bytes.TLDecode(self.unsave)
method TLEncode*(self: AccountInstallTheme): seq[uint8] =
    result = TLEncode(uint32(2061776695))
    if self.dark:
        self.flags = self.flags or 1 shl 0
    if self.format.isSome():
        self.flags = self.flags or 1 shl 1
    if self.theme.isSome():
        self.flags = self.flags or 1 shl 1
    result = result & TLEncode(self.flags)
    if self.format.isSome():
        result = result & TLEncode(self.format.get())
    if self.theme.isSome():
        result = result & TLEncode(self.theme.get())
method TLDecode*(self: AccountInstallTheme, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.flags)
    if (self.flags and (1 shl 0)) != 0:
        self.dark = true
    if (self.flags and (1 shl 1)) != 0:
        self.format = some(cast[string](bytes.TLDecode()))
    if (self.flags and (1 shl 1)) != 0:
        var tempVal = new TL
        tempVal.TLDecode(bytes)
        self.theme = some(tempVal.InputThemeI)
method TLEncode*(self: AccountGetTheme): seq[uint8] =
    result = TLEncode(uint32(2375906347))
    result = result & TLEncode(self.format)
    result = result & TLEncode(self.theme)
    result = result & TLEncode(self.document_id)
method TLDecode*(self: AccountGetTheme, bytes: var ScalingSeq[uint8]) = 
    self.format = cast[string](bytes.TLDecode())
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.theme = cast[InputThemeI](tempObj)
    bytes.TLDecode(addr self.document_id)
method TLEncode*(self: AccountGetThemes): seq[uint8] =
    result = TLEncode(uint32(676939512))
    result = result & TLEncode(self.format)
    result = result & TLEncode(self.hash)
method TLDecode*(self: AccountGetThemes, bytes: var ScalingSeq[uint8]) = 
    self.format = cast[string](bytes.TLDecode())
    bytes.TLDecode(addr self.hash)
method TLEncode*(self: AccountSetContentSettings): seq[uint8] =
    result = TLEncode(uint32(3044323691))
    if self.sensitive_enabled:
        self.flags = self.flags or 1 shl 0
    result = result & TLEncode(self.flags)
method TLDecode*(self: AccountSetContentSettings, bytes: var ScalingSeq[uint8]) = 
    bytes.TLDecode(addr self.flags)
    if (self.flags and (1 shl 0)) != 0:
        self.sensitive_enabled = true
method TLEncode*(self: AccountGetContentSettings): seq[uint8] =
    result = TLEncode(uint32(2342210990))
method TLDecode*(self: AccountGetContentSettings, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountGetMultiWallPapers): seq[uint8] =
    result = TLEncode(uint32(1705865692))
    result = result & TLEncode(cast[seq[TL]](self.wallpapers))
method TLDecode*(self: AccountGetMultiWallPapers, bytes: var ScalingSeq[uint8]) = 
    var tempVector = newSeq[TL]()
    tempVector.TLDecode(bytes)
    self.wallpapers = cast[seq[InputWallPaperI]](tempVector)
    tempVector.setLen(0)
method TLEncode*(self: AccountGetGlobalPrivacySettings): seq[uint8] =
    result = TLEncode(uint32(3945483510))
method TLDecode*(self: AccountGetGlobalPrivacySettings, bytes: var ScalingSeq[uint8]) = 
    discard
method TLEncode*(self: AccountSetGlobalPrivacySettings): seq[uint8] =
    result = TLEncode(uint32(517647042))
    result = result & TLEncode(self.settings)
method TLDecode*(self: AccountSetGlobalPrivacySettings, bytes: var ScalingSeq[uint8]) = 
    var tempObj = new TL
    tempObj.TLDecode(bytes)
    self.settings = cast[GlobalPrivacySettingsI](tempObj)