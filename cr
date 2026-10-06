#include <bits/stdc++.h>
using namespace std;

string crc(string data, string divisor)
{
    // Convert characters to binary
    string bits = "";

    for (char c : data)
    {
        for (int i = 7; i >= 0; i--)
            bits += ((c >> i) & 1) + '0';
    }

    // Original binary data
    string originalBits = bits;

    // Degree of polynomial
    int n = divisor.size() - 1;

    // Append n zeroes
    bits += string(n, '0');

    // XOR division
    for (int i = 0; i <= bits.size() - divisor.size(); i++)
    {
        if (bits[i] == '1')
        {
            for (int j = 0; j < divisor.size(); j++)
            {
                bits[i + j] =
                    (bits[i + j] == divisor[j]) ? '0' : '1';
            }
        }
    }

    // Get remainder
    string remainder = bits.substr(bits.size() - n);

    // Transformed data = original binary + CRC
    string transformedData = originalBits + remainder;

    cout << "Original Data   : " << data << endl;
    cout << "Binary Data     : " << originalBits << endl;
    cout << "Transformed Data: " << transformedData << endl;
    cout << "CRC Remainder   : " << remainder << endl;

    return remainder;
}

int main()
{
    string data;

    cout << "Enter data: ";
    cin >> data;

    string crc12 = "1100000001111";
    string crc16 = "11000000000000101";
    string ccitt = "10001000000100001";

    cout << "\n========== CRC-12 ==========\n";
    crc(data, crc12);

    cout << "\n========== CRC-16 ==========\n";
    crc(data, crc16);

    cout << "\n========== CRC-CCITT ==========\n";
    crc(data, ccitt);

    return 0;
}
