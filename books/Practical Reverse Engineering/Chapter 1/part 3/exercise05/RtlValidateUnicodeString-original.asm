lkd> uf RtlValidateUnicodeString
nt!RtlValidateUnicodeString:
82833e98 8bff            mov     edi,edi
82833e9a 55              push    ebp
82833e9b 8bec            mov     ebp,esp
82833e9d 56              push    esi
82833e9e 33f6            xor     esi,esi
82833ea0 397508          cmp     dword ptr [ebp+8],esi
82833ea3 7407            je      nt!RtlValidateUnicodeString+0x14 (82833eac)

nt!RtlValidateUnicodeString+0xd:
82833ea5 b80d0000c0      mov     eax,0C000000Dh
82833eaa eb3f            jmp     nt!RtlValidateUnicodeString+0x53 (82833eeb)

nt!RtlValidateUnicodeString+0x14:
82833eac 8b450c          mov     eax,dword ptr [ebp+0Ch]
82833eaf 3bc6            cmp     eax,esi
82833eb1 7436            je      nt!RtlValidateUnicodeString+0x51 (82833ee9)

nt!RtlValidateUnicodeString+0x1b:
82833eb3 0fb710          movzx   edx,word ptr [eax]
82833eb6 f6c201          test    dl,1
82833eb9 7529            jne     nt!RtlValidateUnicodeString+0x4c (82833ee4)

nt!RtlValidateUnicodeString+0x23:
82833ebb 0fb74802        movzx   ecx,word ptr [eax+2]
82833ebf f6c101          test    cl,1
82833ec2 7520            jne     nt!RtlValidateUnicodeString+0x4c (82833ee4)

nt!RtlValidateUnicodeString+0x2c:
82833ec4 663bd1          cmp     dx,cx
82833ec7 771b            ja      nt!RtlValidateUnicodeString+0x4c (82833ee4)

nt!RtlValidateUnicodeString+0x31:
82833ec9 57              push    edi
82833eca bffeff0000      mov     edi,0FFFEh
82833ecf 663bcf          cmp     cx,di
82833ed2 5f              pop     edi
82833ed3 770f            ja      nt!RtlValidateUnicodeString+0x4c (82833ee4)

nt!RtlValidateUnicodeString+0x3d:
82833ed5 397004          cmp     dword ptr [eax+4],esi
82833ed8 750f            jne     nt!RtlValidateUnicodeString+0x51 (82833ee9)

nt!RtlValidateUnicodeString+0x42:
82833eda 663bd6          cmp     dx,si
82833edd 7505            jne     nt!RtlValidateUnicodeString+0x4c (82833ee4)

nt!RtlValidateUnicodeString+0x47:
82833edf 663bce          cmp     cx,si
82833ee2 7405            je      nt!RtlValidateUnicodeString+0x51 (82833ee9)

nt!RtlValidateUnicodeString+0x4c:
82833ee4 be0d0000c0      mov     esi,0C000000Dh

nt!RtlValidateUnicodeString+0x51:
82833ee9 8bc6            mov     eax,esi

nt!RtlValidateUnicodeString+0x53:
82833eeb 5e              pop     esi
82833eec 5d              pop     ebp
82833eed c20800          ret     8

