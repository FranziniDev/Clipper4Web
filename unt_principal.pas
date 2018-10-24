unit unt_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.FileCtrl, IniFiles, System.ImageList,
  Vcl.ImgList;

type
  TFrm_Main = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    NewProject1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RichEdit1: TRichEdit;
    SaveDialog1: TSaveDialog;
    Panel6: TPanel;
    TV_projectfiles: TTreeView;
    ImageList1: TImageList;
    procedure NewProject1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Main: TFrm_Main;

implementation

{$R *.dfm}

uses UProjectUtils;

function lastfolder(path: string):string;
var
  pathAdjust: string;
begin
  pathAdjust := path;
  if FileExists(pathAdjust) then
    pathAdjust := ExtractFileDir(pathAdjust);
  Result := ExtractFileName(ExcludeTrailingPathDelimiter(pathAdjust));
end;


procedure TFrm_Main.NewProject1Click(Sender: TObject);
var Dir : string;
    aProjectFile : TIniFile;
begin
  if SelectDirectory(Dir,[sdAllowCreate, sdPerformCreate, sdPrompt], 0 ) then
  begin
    if FileExists(Dir + '\' + lastfolder(Dir) + '.proj') then
    begin
      if Application.MessageBox('File already exists. Do you want to replace?','Attention !!!', MB_YESNO) = mrNo then
        exit;
    end;

    aProjectFile := TIniFile.Create(Dir + '\' + lastfolder(Dir) + '.proj');
    aProjectFile.WriteString('Project','Name',lastfolder(Dir));
    aProjectFile.WriteString('Project','MainPRG',lastfolder(Dir)+ '.prg');
    aProjectFile.Free;

    loadproject(Dir + '\' + lastfolder(Dir) + '.proj');
  end;

end;

end.
