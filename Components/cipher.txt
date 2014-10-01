 Copyright:      Hagen Reddmann  mailto:HaReddmann@AOL.COM
 Author:         Hagen Reddmann
 Remarks:        freeware, shareware
 Description:	 Delphi Encryption Compendium Part I-III
                  
                 D2-D5, BCB3-4

DEC Part I -----------------------------------------------

 Status:         Freeware, Version 3.0 
 Description:    Includes variuos basicly Algorithm:

    5 Checksum:  CRC32, XOR32bit, XOR16bit, CRC16-CCITT, CRC16-Standard

   23 Hash:      MD4, MD5, SHA (other Name SHS), SHA1, 
                 RipeMD128, RipeMD160, RipeMD256, RipeMD320, 
                 Haval (128, 160, 192, 224, 256) with Rounds, 
                 Snefru, Square, Tiger
                 Sapphire II (128, 160, 192, 224, 256, 288, 320)


   40 Cipher:    Gost, Cast128, Cast256, Blowfish, IDEA
                 Mars, Misty 1, RC2, RC4, RC5, RC6, FROG, Rijndael,
                 SAFER, SAFER-K40, SAFER-SK40,SAFER-K64, SAFER-SK64, 
                 SAFER-K128, SAFER-SK128, TEA, TEAN, Skipjack, SCOP, 
                 Q128, 3Way, Twofish, Shark, Square, Single DES, Double DES,
                 Triple DES, Double DES16, Triple DES16, TripleDES24, 
                 DESX, NewDES, Diamond II, Diamond II Lite, Sapphire II			

    2 RNG:       Standard Random Generator, Linear Feedback Shift Register RNG with
                 variable Period from 2^64-1 to 2^2032-1.

 6 Text Formats: Hexadecimal, MIME Base 64, Plain, RFC1760 Six Word, UU Coding, XX Coding


   others:       * Low Level API to access outside from Delphi and BCB
                 * Fast implementation (i.E. THash_MD4 > 27Mb/sec, TCipher_Blowfish > 8.0 Mb/sec)
                 * Stringformat Management, includes:
                   HEX, MIME Base 64, RFC1760 Six Word, UU and XX Coding String converting and Samples 
                 * Designtime Manager Components for Hash's and Cipher's
                 * Full and easy objectorientated                 
                 * RNG's can be cryptographicaly secure
                 * Standard Cipher Modes:
                     CBC    - Cipher Block Chaining
                     CTS    - Cipher Text Stealing
                     CFB    - Cipher Feedback
                     OFB    - Output Feedback
                     ECB    - Electronic Code Book
                     CBCMAC - CBC Message Authentication Code 
                     CTSMAC - CTS Message Authentication Code 
                     CFBMAC - CFB Message Authentication Code 
                 * High optimized Assembler Core
                 * Progress Gauge Support in all Cipher's, Hash's, CheckSums's
                 * Self Test Support for all Cipher's, Hash's, CheckSums's to test of
                   any illegal or incorrect Modification's
                 * Detailed and full DEMO
                 * variable HMAC's - Hash Message Authentication Code Support for all THash_XXX Classes,
                   supports RFC2104 Standard HMAC's
	         * automatically Compression Support
                 * Chaining from all THash_XXX, TRandom_XXX, TCipher_XXXX and TCompress_XXX Classes
                 * En/Decryption/Scrambling/Wipe with all TProtection Classes, 
                   this includes all Hash's, Cipher's, Random's and Compress's Classes 
                 * Internet RFC2289/RFC1760/RFC2444 One Time Password Routines as Component
                 * many more...

 Installation:   install \DEC\Source\DECReg.pas in Your Palette 


DEC Part II ------incomming, not included-----------------------------------------

 Status:         Shareware, Version Beta 
 Description:    Asymmetric (Public Key) Encryption, Digital Signatures
                 Blum Blum Shub RNG, mathematical Big Number Library,
                 Steganography



DEC Part III -----incomming, not included-----------------------------------------

 Status:         Shareware, Version Beta 
 Description:    Variuos Objects and Classes to use Part I and II
                 * TSecureRegINI Object, encapsulate the TINIFile and TRegINIFile class to
                   en/decode defined Entries
                 * TOneTimePassword, Component for a secure One Time Password

-------------------------------------------------------------------------------------------

 to anonyme Designers: send me your ideas or remarks or implement more hash's and
                       cipher's to make this Packages to the biggest for Delphi and BCB :-)
                       (i.E. Cipher WAKE, LOKI97, Serpent, Yarrow, DEAL, SEAL, 
                                    FEAL, NSEA, REDOC II & III, Lucifer, a3a8 
                                    and many more, but to many for me)
                           
 Copyright, Licensing: many Algorithm in this Packages have restriction for use, check
		       the law in your country, any Patents or Copyrights
                       before use this Packages. 

 * THIS SOFTWARE IS PROVIDED BY THE AUTHORS ''AS IS'' AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.        

 This Packages is fully developed outside from the USA.

 Specials:             All executables are compressed
                       with the powerfull ASPack (Rate > 50%) from Alexey Solodovnikov at
                       http:\\www.entechtaiwan.com\aspack.htm               

-------------------------------------------------------------------------------------------

 History:     Beginning at Feb 1999 to Aug 1999

-------------------------------------------------------------------------------------------

 Version 3.0

  - Internet RFC2289/RFC1760/RFC2444 One Time Password Routines added
  - Internet RFC2104 HMAC Support
  - String Management (Converting) added
  - Object Hiearchy changed, all THash_xxx,TCipher_xxx,TRandom_xxx and TCompress_xxx are
    now Descends from TProtection. Now, a multiple chaining from all above Classes supported.
  - Now absolutly D2 compatible.

  - Full reorganization, better Compilerversions Management.
  - Speedup, i.E. Blowfish > 8 Mb/sec (fantastic :-), Q128 > 10 Mb/sec, 
             TEA > 6 Mb, IDEA > 2.5 Mb/sec, Twofish > 6 Mb/sec, all on PII 266MHz 
  - Twofish changed, old was bad.
  - In all Hashclasses changed the buggy Buffermanagement. 
  - StrToBase64 and Base64ToStr changed and exchanged, now produce correct Results.
  - Property "IncludeHashKey" removed, make TCipher Class uniform
 
  - New Cipher Modes added, 
    cmCBCMAC, cmCTSMAC, cmCFBMAC - Message Authentication Codes, Input Data are readonly 
    cmCBC, cmCTS, cmCFB supportes now MAC's (Message Authentication Code)
    Demo to use these can You find in ResFrm.pas or GenForm.pas.  
  - New Cipher Method "CalcMAC()" to calculate a MAC after any en/decryption

  - Old Cipher.pas splitted in two Files, Cipher.pas contains now a good Selection.
    Cipher1.pas contains all other Ciphers. In many cases are 40 Ciphers to big.
 
  - New a TRandom Basicclass for Random Number Generation, 
  - TRandom_LFSR (Linear Feedback Shift Register) a fast Implementation with variable
    Period from 2^64-1 to 2^2032-1 (astronomical :-), with using from Cipher.pas these
    Randomclasses can be automaticaly cryptographicaly secure.

  and many more...
  

------------------------------------------------------------------------------------------

 Version 2.3
   
  maked compatible with BCB 3 and 4, removed all abstract Methods and NewInstance Methods. 
  
  new:            Secure Random Number Generator with a Period 2^256-1
                  included in RNG.pas 
  added:          in Hash.pas and Cipher.pas Secure Random Number Generator Support

  specialy:       removed all fucking LOOP Statements in assembler core, 
                  it's slow and produced bad iteration
                  as result: all Checksums speeded very up and
                             all Ciphers in cmCBC and cmCTS Mode speeded up 
                             (i.E. TCipher_SCOP from 22 Mb/sec to 28 Mb/sec)

-------------------------------------------------------------------------------------------
 
 Version 2.2  
   
  added Cipher:   Square, all DES Cipher 7 types, Diamond II, Diamond II Lite, Sapphire II
  added Hash:	  SHA, Square, Sapphire II (128, 160, 192, 224, 256, 288, 320)
  added Checksum: CRC16-CCITT Norm, CRC16-Standard Norm (XModem, ARC)

  bugfixes:       CRC32 offset Problem and in THash_CRC32.Done inverse the Result
                  Overlapping in TCipher.InternalCodeStream
                  DecodeString was called EncodeBuffer, now Decodebuffer

  added:	  ProgressEvent (Gauges) for Cipher's and Hash's
		  Event OnProgress from TCipherManager and THashManager

  added:          more Examples

  changed:        DEC1 API, added a Demo to using DEC1.DLL
      
                  cmCTS Mode, XOR's the Data before and now after the encryption.
                  This has better Securityeffect when using a InitVector, the Output is
                  secure when a bad InitVector is used, ca 1% Speed lossed
                  cmCBC Mode is now equal to the old cmCTS Mode.  


-------------------------------------------------------------------------------------------

 Version 2.1
   
  added:          Self-Test support, Methods TCipher.SelfTest and TCipher.TestVector
                                     Methods THash.SelfTest and THash.TestVector
 
                  Cipher KeySize-checking, Method TCipher.InitBegin()
                  Cipher Init-checking, property TCipher.Initialized


  added Cipher:   TEAN, SCOP (very fast), Q128, 3Way, Twofish, Shark
  added Hash:     Snefru, RipeMD128, RipeMD256, RipeMD320, Tiger


  added Rounds for THaval_xxxx, from 3-5 

        3 Rounds 174 % faster than with 5 Rounds, PII 266 12.74 Mb/sec
        4 Rounds 121 % faster than with 5 Rounds, PII 266  8.88 mb/sec
        5 Rounds                                  PII 266  7.32 mb/sec

        THash_Haval256           default Rounds is 5
        THash_Haval224 / 192     default Rounds is 4
        THash_Haval160 / 128     default Rounds is 3

  added in TCipherManager: Methods EncodeString(), DecodeString(), 
                                   EncodeBuffer(), DecodeBuffer()

  added Low Level API in unit DEC_API.pas and Low Level DLL for use without Delphi


  changed:        Endian conversions routines, SwapInteger and SwapIntegerBuffer 
                  use now Processor specific code to speedup the conversion

  bug fixes:      assember code in XORBuffers save now register EDI
                  TCipher.EncodeString and DecodeString changed,
                  old code produced Access Violation's

  speeded up:     TCipher_Cast128   145 %
                  TCipher_Cast256   118 %
                  TCipher_Blowfish  130 %
                  TCipher_Gost      139 %
                  TCipher_Mars      125 %

  speeded up:     THash_MD4         137 %
                  THash_MD5         126 %
                  THash_SHA1        134 % for <= 386   and 148 % for >= 486 CPU
                  THash_RipeMD160   140 %
                  THash_Haval       173 %

-------------------------------------------------------------------------------------------




                 

 






