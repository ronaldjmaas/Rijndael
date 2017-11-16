/* CryptUtils.h: interface for the CCryptUtils class. */

#ifdef __cplusplus

class CCryptUtils
{
private:
	static const BYTE abInverse[];
public:
	static BYTE Mul(const BYTE b1, const BYTE b2);
	static void Mul(VECTOR abResult, const VECTOR abVector, const MATRIX abMatrix);

	static BYTE Inv(const BYTE b);

	static void Copy(BYTE abDest[], const BYTE abSource[], const int nLength);
	static void Clear(BYTE abResult[], const int nLength);
	static void Xor(BYTE abResult[], const BYTE abVector1[], const BYTE abVector2[], const int nLength);
	static void Substitute(BYTE abResult[], const BYTE abVector[], const BYTE S[], const int nLength);
	static void RotateLeft(BYTE abResult[], const BYTE abVector[], const int nShift, const int nLength);
	static void RotateRight(BYTE abResult[], const BYTE abVector[], const int nShift, const int nLength);

public:
	CCryptUtils();
};

#else

BYTE MulByte(BYTE b1, BYTE b2);
void MulVector(VECTOR abResult, VECTOR abVector, MATRIX abMatrix);

BYTE InvByte(BYTE b);

void CopyBytes(BYTE abDest[], BYTE abSource[], int nLength);
void ClearBytes(BYTE abResult[], int nLength);
void XorBytes(BYTE abResult[], BYTE abVector1[], BYTE abVector2[], int nLength);
void SubstituteBytes(BYTE abResult[], BYTE abVector[], BYTE S[], int nLength);
void RotateLeftBytes(BYTE abResult[], BYTE abVector[], int nShift, int nLength);
void RotateRightBytes(BYTE abResult[], BYTE abVector[], int nShift, int nLength);

#endif
