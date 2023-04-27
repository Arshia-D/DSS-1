using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.IO;
using System.Text ;

/// <summary>
/// Summary description for Security
/// </summary>
public class Security
{
	public Security()
	{
		
   
	}    

    public static string DecryptText(string encryptedText,string Key)
    {
        RC2CryptoServiceProvider rc2CSP = new RC2CryptoServiceProvider();
        ICryptoTransform decryptor = rc2CSP.CreateDecryptor(Convert.FromBase64String(Key), Convert.FromBase64String(Key));
        using (MemoryStream msDecrypt = new MemoryStream(Convert.FromBase64String(encryptedText)))
        {
            using (CryptoStream csDecrypt = new CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read))
            {
                List<Byte> bytes = new List<byte>();
                int b;
                do
                {
                    b = csDecrypt.ReadByte();
                    if (b != -1)
                    {
                        bytes.Add(Convert.ToByte(b));
                    }

                }
                while (b != -1);

                return Encoding.Unicode.GetString(bytes.ToArray());
            }
        }
    }

    public static string EncryptText(string openText,string Key)
    {
        RC2CryptoServiceProvider rc2CSP = new RC2CryptoServiceProvider();
        ICryptoTransform encryptor = rc2CSP.CreateEncryptor(Convert.FromBase64String(Key), Convert.FromBase64String(Key));
        using (MemoryStream msEncrypt = new MemoryStream())
        {
            using (CryptoStream csEncrypt = new CryptoStream(msEncrypt, encryptor, CryptoStreamMode.Write))
            {
                byte[] toEncrypt = Encoding.Unicode.GetBytes(openText);

                csEncrypt.Write(toEncrypt, 0, toEncrypt.Length);
                csEncrypt.FlushFinalBlock();

                byte[] encrypted = msEncrypt.ToArray();

                return Convert.ToBase64String(encrypted);
            }
        }
    }

}