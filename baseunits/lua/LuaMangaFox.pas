unit LuaMangaFox;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, {$ifdef luajit}lua{$else}{$ifdef lua54}lua54{$else}lua53{$endif}{$endif};

implementation

uses
  LuaUtils, LuaPackage, MangaFoxWatermark;

function mf_loadtemplate(L: Plua_State): Integer; cdecl;
begin
  lua_pushinteger(L, MangaFoxWatermark.LoadTemplate(luaGetString(L, 1)));
  Result := 1;
end;

function mf_removewatermark(L: Plua_State): Integer; cdecl;
var
  ASaveAsPNG: Boolean;
begin
  ASaveAsPNG := False;
  if lua_gettop(L) = 2 then
    ASaveAsPNG := lua_toboolean(L, 2);
  lua_pushboolean(L, MangaFoxWatermark.RemoveWatermark(luaGetString(L, 1), ASaveAsPNG));
  Result := 1;
end;

function luaopen_mangafoxwatermark(L: Plua_State): Integer; cdecl;
var
  t: Integer;
begin
  t := luaNewTable(L);
  luaAddCFunctionToTable(L, t, 'LoadTemplate', @mf_loadtemplate);
  luaAddCFunctionToTable(L, t, 'RemoveWatermark', @mf_removewatermark);
  Result := 1;
end;

initialization
  LuaPackage.AddLib('mangafoxwatermark', @luaopen_mangafoxwatermark);

end.