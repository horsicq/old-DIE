library Project1;

uses
  Windows,
  SysUtils,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

var
  info:HWND;
  work:HWND;
  size:dword;
  ptr :dword;
  offs:dword;

const
  plug_name = 'Example Plugin (Delphi) by Guru.eXe/TMX';

function DiePlugName:PCHAR stdcall;
begin
  Result:=pchar(plug_name);
end;

function DiePlugProc(die_hwnd:HWND;file_name:PCHAR;die_name:PCHAR):boolean stdcall; // Главная функция
begin

  file_n:=file_name;
  die_n:=die_name;
  file_size:=size;

  setwindowtext(info,pchar(plug_name));

  Form1 := TForm1.Create(Nil);
    Try
      Form1.ShowModal;
    Finally
      Form1.Free;
      setwindowtext(work,pchar('Work is completed: '+TimeToStr(now)));
    End;

  Result:=true;
end;

function DiePlugHwnd(_info:HWND;_work:HWND):boolean stdcall; // Получаем хендлы для вывода информации
begin
  info:=_info;
  work:=_work;
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
DiePlugPe;

begin
end.

