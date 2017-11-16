/* RijndaelEncrypter.h: interface for the CRijndaelEncrypter class. */

#ifdef __cplusplus

class CRijndaelEncrypter
{
protected:
	static const SBOX S;
	static const SBOX InvS;

	static const MATRIX MixColumnMatrix;
	static const MATRIX InvMixColumnMatrix;

protected:
	static void GetDataRow(DATA_ROW abRow, const DATA_MATRIX abMatrix, const int iRow);
	static void GetDataColumn(DATA_COLUMN abColumn, const DATA_MATRIX abMatrix, const int jColumn);
	static void SetDataRow(DATA_MATRIX abMatrix, const DATA_ROW abRow, const int iRow);
	static void SetDataColumn(DATA_MATRIX abMatrix, const DATA_COLUMN abColumn, const int jColumn);

	static void ConvertDataVectorToMatrix(DATA_MATRIX abMatrix, const DATA_VECTOR abVector);
	static void ConvertDataMatrixToVector(DATA_VECTOR abVector, const DATA_MATRIX abMatrix);

	static void Substitute(DATA_MATRIX abState);
	static void InvSubstitute(DATA_MATRIX abState);

	static void ShiftRows(DATA_MATRIX abState);
	static void InvShiftRows(DATA_MATRIX abState);

	static void MixColumns(DATA_MATRIX abState);
	static void InvMixColumns(DATA_MATRIX abState);

	static void DumpBytes(const char* strMessage, const void* pData, const int nCount);

public:
	CRijndaelEncrypter();
	virtual ~CRijndaelEncrypter();

public:
	virtual void Init(const KEY_VECTOR abKey);
	virtual void Clear();

	virtual void Encrypt(DATA_VECTOR abOutput, const DATA_VECTOR abInput) const;
	virtual void Decrypt(DATA_VECTOR abOutput, const DATA_VECTOR abInput) const;

protected:
	virtual void ExpandKey(const KEY_VECTOR abKey);
	virtual void AddRoundKey(DATA_MATRIX abState, const int iRound) const;

private:
	EXPANDED_KEY_MATRIX m_abExpandedKeyMatrix;
};

#else

typedef struct
{
	EXPANDED_KEY_MATRIX m_abExpandedKeyMatrix;
} RIJNDAEL_ENCRYPTER;

void Init(RIJNDAEL_ENCRYPTER* pEncrypter, KEY_VECTOR abKey);
void Clear(RIJNDAEL_ENCRYPTER* pEncrypter);

void Encrypt(RIJNDAEL_ENCRYPTER* pEncrypter, DATA_VECTOR abOutput, DATA_VECTOR abInput);
void Decrypt(RIJNDAEL_ENCRYPTER* pEncrypter, DATA_VECTOR abOutput, DATA_VECTOR abInput);

#endif
