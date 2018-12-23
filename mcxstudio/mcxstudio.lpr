program mcxstudio;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, mcxgui, lazcontrols, tachartlazaruspkg, anchordockpkg, mcxabout,
  mcxshape, mcxnewsession, mcxsource, mcxoutput, GLColor, GLVectorTypes,
  GLVectorGeometry, GLMesh, GLObjects, GLGeomObjects{$IFDEF WINDOWS}, sendkeys{$ENDIF};

{$R *.res}

begin
  Application.Scaled:=True;
  RequireDerivedFormResource:=True;
  Application.Title:='MCX Studio';
  Application.Initialize;
  Application.CreateForm(TfmMCX, fmMCX);
  Application.Run;
end.

