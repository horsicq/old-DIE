library Project1;

uses
  Windows, Messages, SysUtils;

{$R gui.res}

var
  hWnd2: Integer;
  info:HWND;
  work:HWND;
  size:dword;
  ptr :dword;
  offs:dword;
  file_n:pchar;
  die_n:pchar;

const
  DLG_MAIN  = 1;
  IDC_CLOSE = 107;
  IDC_FN    = 100;
  IDC_DIE   = 200;
  Plug_Name = 'Example Plugin (Delphi API) by Guru.eXe/TMX';
  Plug_title= 'Example Plugin';

function DiePlugName:PCHAR stdcall;
begin
  Result:=pchar(plug_name);
end;

procedure End_Work;
begin
  EndDialog(hWnd2, 0);
end;

function DlgProc(hWin, uMsg,	wParam,	lParam: Integer): Integer; stdcall;
begin
  Result := 0;
  case uMsg of
    WM_COMMAND  : begin
                    if wParam = IDC_CLOSE then End_Work;
                  end;
    WM_INITDIALOG : begin
                      SetWindowText(hWin, pchar(Plug_title));
                      SetDlgItemText(hWin, IDC_FN, PChar('Filename: '+file_n));
                      SetDlgItemText(hWin, IDC_DIE, PChar('DiE File: '+die_n));
                      hWnd2 := hWin;
                    end;
    WM_DESTROY,
    WM_CLOSE      : End_Work;
  end;
end;

function DiePlugProc(die_hwnd:HWND;file_name:PCHAR;die_name:PCHAR):boolean stdcall; // Главная функция
begin
  setwindowtext(info,pchar(plug_name));
  setwindowtext(work,'only example =)');

  file_n:=file_name;
  die_n:=die_name;

  DialogBox(hInstance,MAKEINTRESOURCE(DLG_MAIN),die_hwnd, @DlgProc);

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

