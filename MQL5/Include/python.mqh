#import "pymt.dll"
void LoadScript(string peth, string name);
void Finalize();
void NewArg(int i);
void CallFunc(string name);
long GetRezLong();
double GetRezDouble();
string GetRezString();
void GetRezArrayLong(int &arr[]);
void GetRezArrayDouble(double &arr[]);
void SetArgLong(int i, long data);
void SetArgDouble(int i, double data);
void SetArgString(int i, string data);
void SetArgArrayLong(int i, int size, int &data[]);
void SetArgArrayDouble(int i, int size, double &data[]);
#import