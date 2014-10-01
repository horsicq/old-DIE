//-------------------------------------------------------------------------------------------
// Создание плагинов для DiE. C++ (by =TS=)
//-------------------------------------------------------------------------------------------
//[1] BOOL WINAPI DiePlugProc(HWND die_hwnd,const char* file_name,const char* die_name)
//   -основная функция (вызывается последней), которая и должна сделать всю работу,
//    обязательно должна присутствовать.
//      1.1) HWND die_hwnd
//           -хендл основной формы DiE.
//      1.2) const char* file_name
//           -путь к открытому в данный момент ехе (пусто, если ничего не открыто).
//      1.3) const char* die_name
//           -путь до Detect it Easy.
//-------------------------------------------------------------------------------------------
//[2] const WINAPI char* DiePlugName()
//   -функция передаёт в ехе имя плагина, обязательно должна присутствовать. 
//      2.1) const char* DiePlugName
//           -имя плагина.
//-------------------------------------------------------------------------------------------
//[3] BOOL WINAPI DiePlugHwnd(HWND _info, HWND _work)
//   -функция передаёт в плагин хендлы окон.
//      3.1) HWND _info
//           -хендл окна "Plugin info".
//      3.2) HWND _work
//           -хендл окна "Plugin work".
//-------------------------------------------------------------------------------------------
//[4] BOOL WINAPI DiePlugPe(unsigned char *file_ptr, DWORD file_size, DWORD file_ofset)
//    -функция передаёт в плагин указатель на файл, открытый в данный момент, и его размер.
//      4.1) unsigned char *file_ptr
//           -указатель на маппированный файл (MapViewOfFile).
//      4.2) DWORD file_size
//           -размер открытого файла.
//      4.3) DWORD file_offset
//	   -смещение точки входа в файле
//-------------------------------------------------------------------------------------------

//============================================================================
#include <windows.h>
#define WINAPI __stdcall
//============================================================================
  HWND  info, work;
  DWORD size,offs;
  unsigned char *ptr;
//============================================================================
const char* WINAPI DiePlugName()
{
    return "Example Plugin For DiE";
}
//============================================================================
BOOL WINAPI DiePlugProc(HWND die_hwnd,const char* file_name,const char* die_name) // Главная функция
{
const char *pszFilename;    
char empty[]="empty!";
char szInfo[64];
    SetWindowText(info," Example Plugin For DiE (PDK)");
    SetWindowText(work," only example =)");
    pszFilename=(*file_name)?file_name:empty;
    MessageBox(die_hwnd,pszFilename,":)",0);
    MessageBox(die_hwnd,die_name,":)",0);
    wsprintf(szInfo,"%#X | %#X",size,ptr);
    MessageBox(die_hwnd,szInfo,":)",0);
    return TRUE;
}
//============================================================================
BOOL WINAPI DiePlugHwnd(HWND _info, HWND _work) // Получаем хендлы для вывода информации
{
  info=_info;
  work=_work;
  return TRUE;
}
//============================================================================
BOOL WINAPI DiePlugPe(unsigned char *file_ptr, DWORD file_size, DWORD file_offset)  // Получаем размер открытого файла 
                                         // и указатель, возвращенный функцией MapViewOfFile
{
      ptr=file_ptr;
      size=file_size;
      offs=file_offset;
      return TRUE;
}
//============================================================================
BOOL WINAPI DllMain(HINSTANCE hinstDLL,DWORD fdwReason,LPVOID lpvReserved)
{
  return TRUE;
}
    //============================================================================