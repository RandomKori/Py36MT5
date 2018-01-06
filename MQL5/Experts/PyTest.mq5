//+------------------------------------------------------------------+
//|                                                      Py36MT5.mq5 |
//|                        Copyright 2018, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//--- input parameters
input string Pn="C:\\local\\Scripts\\";
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include <python.mqh>
int OnInit()
  {
//---
   LoadScript(Pn,"test.py");
   int r=mtmul(3,6);
   int x[2];
   x[0]=2;
   x[1]=5;
   int y[2];
   y[0]=3;
   y[1]=4;
   int z[2];
   mullist(x,y,z,2);
   Print(r," " ,z[0]," ",z[1]);
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   Finalize();
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   NewArg(0);
   CallFunc("tickcount");
   long r=GetRezLong();
   Comment("Tick count ",r);
  }
//+------------------------------------------------------------------+

int mtmul(int x,int y)
{
   NewArg(2);
   SetArgLong(0,x);
   SetArgLong(1,y);
   CallFunc("mtmul");
   return (int)GetRezLong();
}

void mullist(int &x1[], int &y1[], int &z1[], int size)
{
   NewArg(2);
   SetArgArrayLong(0,size,x1);
   SetArgArrayLong(1,size,y1);
   CallFunc("mullist");
   GetRezArrayLong(z1);
}