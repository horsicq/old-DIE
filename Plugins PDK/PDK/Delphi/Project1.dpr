library Project1;

uses
  Windows,SysUtils;

{$R *.res}

var
  info:HWND;
  work:HWND;
  size:dword;
  ptr :dword;
  offs:dword;
  panel :HWND;
  plugst:HWND;

function DiePlugName:PCHAR stdcall;
begin
  Result:='Example Plugin (Delphi)';
end;

function DiePlugProc(die_hwnd:HWND;file_name:PCHAR;die_name:PCHAR):boolean stdcall; // Главная функция
var
  s:string;
begin
  setwindowtext(info,' Example Plugin For DiE (PDK Delphi)');
  setwindowtext(work,' only example =)');
  If length(file_name) = 0 then file_name:='empty!';
  MessageBox(die_hwnd,file_name,':)',0);
  MessageBox(die_hwnd,pchar(Inttohex(size,8)+' | '+Inttohex(ptr,8)),':)',0);
  MessageBox(die_hwnd,die_name,PCHAR(s),0);
  Result:=true;
end;

function DiePlugHwnd(_info:HWND;_work:HWND):boolean stdcall; // Получаем хендлы для вывода информации
begin
  info:=_info;
  work:=_work;
  Result:=true;
end;

function DiePlugHwndEx(_panel:HWND;_plugst:HWND):boolean stdcall; // Получаем хендлы для вывода информации
begin
  panel:=_panel;
  plugst:=_plugst;
  Result:=true;
end;

function DiePlugPe(file_ptr:pointer;file_size:dword;file_offset:dword):boolean stdcall; // Получаем размер открытого файла
							      // и указатель, возвращенный функцией MapViewOfFile
begin
  ptr:=dword(file_ptr);
  size:=file_size;
  offs:=file_offset;
  Result:=true;
end;

exports
  DiePlugName, // Описываем используемые функции
  DiePlugProc, // первые 2 обязательно должны присутствовать!
  DiePlugHwnd,
  DiePlugHwndEx,
  DiePlugPe;

begin
end.

