{
  Completely cleans out ImageSpace records of all tonemapping effects. Optionally,
  you can set Depth of Field to effect the sky (for smooth transition) at Radius 7.
  Technically you can change the values to make your own tonemapping setup for the
  entire game, if that's what you're looking to do. Just change the numbers at the
  end of the lines to what seems reasonable; I won't be documenting their impact.

  Because I know some people would want it (though I wouldn't use it) I have put the
  proper values to disable distant Depth of Field altogether. I prefer the long and
  soft approach Fallout 76 uses, but if you want no blur, uncomment those lines.

  - Anarcanist / Spellshade
    http://www.github.com/anarcanist
}
unit userscript;
function Process(e: IInterface): integer;
begin
    if Signature(e) <> 'IMGS' then
        AddMessage('This is not an ImageSpace!');
        Exit;
    Result := 0;
        SetElementNativeValues(e, 'HNAM - HDR\Bloom Threshold', 1.0);
        SetElementNativeValues(e, 'HNAM - HDR\Bloom Scale', 0.0);
        SetElementNativeValues(e, 'HNAM - HDR\Eye Adapt Speed', 1.0);
        SetElementNativeValues(e, 'HNAM - HDR\Auto Exposure Max', 1.0);
        SetElementNativeValues(e, 'HNAM - HDR\Auto Exposure Min', 0.0);
        SetElementNativeValues(e, 'HNAM - HDR\Middle Gray', 0.5);
        SetElementNativeValues(e, 'HNAM - HDR\Tonemap E', 0.0);
        SetElementNativeValues(e, 'CNAM - Cinematic\Saturation', 1.0);
        SetElementNativeValues(e, 'CNAM - Cinematic\Brightness', 1.0);
        SetElementNativeValues(e, 'CNAM - Cinematic\Contrast', 1.0);
        SetElementNativeValues(e, 'TNAM - Tint\Amount', 0.0);
        //  SetElementNativeValues(e, 'DNAM - Depth of Field\Sky / Blur Radius', 17000);
        //  SetElementNativeValues(e, 'DNAM - Depth of Field\Strength', 0.0);
        //  SetElementNativeValues(e, 'DNAM - Depth of Field\Distance', 250000);
        //  SetElementNativeValues(e, 'DNAM - Depth of Field\Range', 500000);
        RemoveElement(e, 'TX00 - LUT');
    AddMessage('Processing: ' + FullPath(e));
end;
end.