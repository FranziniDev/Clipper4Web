unit UProjectUtils;

interface
  uses SysUtils, IniFiles;

  procedure loadproject(Project : string);

implementation

uses unt_principal;

procedure loadproject(Project : string);
var aProjectFile : TIniFile;
begin
  aProjectFile := TIniFile.Create(Project);
   Frm_Main.Caption := aProjectFile.ReadString('Project','Name','');
   Frm_Main.TV_ProjectFiles.Items.AddChild(nil, ExtractFileName(Project));
   Frm_Main.TV_ProjectFiles.Items.AddChild( Frm_Main.TV_ProjectFiles.Items[0], aProjectFile.ReadString('Project','MainPRG',''));
   aProjectFile.Free;
end;

end.


