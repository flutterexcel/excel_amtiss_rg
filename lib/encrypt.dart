import 'package:encrypt/encrypt.dart' as encrypt;
class MyEnc
{
  static final key=encrypt.Key.fromLength(32);
  static final iv=encrypt.IV.fromLength(16);
  static final encrypter=encrypt.Encrypter(encrypt.AES(key));

  static encryptAES(text) async
  {
    final encrypted=encrypter.encrypt(text, iv: iv);

    // print(encrypted.bytes);
    // print(encrypted.base16);
    // print(encrypted.base64);
    return Future.delayed(Duration(seconds: 1),(){return encrypted.base16;});
  //  return encrypted;
  }

  static decryptAES(text)
  {
    return encrypter.decrypt(text,iv: iv);
  }
}