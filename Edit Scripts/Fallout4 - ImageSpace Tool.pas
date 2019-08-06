{
  This tool is used to alter ImageSpace records, primarily to
  remove tinting or unwanted changes in tonemapping across cells
  in Fallout 4. Many of the settings are commented out to stop
  user error from causing irreparable damage to their ImageSpace
  records.

  To activate any of the features, merely remove the // comment
  before the code, then change the numbers to your desire. I will
  eventually learn to create a GUI so this isn't necessary, but
  for the time being this was the quick and easy way for my uses.

  WARNING: Using RemoveElement LUT is not easily reversible in
  script format. You will have to manually readd it so that the
  element can be set for each ImageSpace record. Use only if you
  know exactly what it's good for.
    
    Changelog - 1.1.0
    - Corrected signature check for xEdit updates
    - Added processing message to show progress in records
    - Redid description to more accurately represent purpose

  - Anarcanist / Spellshade
    http://www.github.com/anarcanist
}
unit UserScript;
function Process(e: IInterface): integer;
begin
    if Signature(e) <> 'IMGS' then
        Exit;

        AddMessage('Processing: ' + FullPath(e));
        //SetElementEditValues(e, 'HNAM - HDR\Eye Adapt Speed', 3.0);
        //SetElementEditValues(e, 'HNAM - HDR\Auto Exposure Max', 3.00);
        //SetElementEditValues(e, 'HNAM - HDR\Auto Exposure Min', 1.50);
        SetElementEditValues(e, 'HNAM - HDR\Middle Gray', 0.18);
        SetElementEditValues(e, 'HNAM - HDR\Tonemap E', 0.02);
        SetElementEditValues(e, 'HNAM - HDR\Bloom Threshold', 1.0);
        SetElementEditValues(e, 'HNAM - HDR\Bloom Scale', 0.0);
        //SetElementEditValues(e, 'HNAM - HDR\Sunlight Scale', 1.0);
        //SetElementEditValues(e, 'HNAM - HDR\Sky Scale', 1.0);
        SetElementEditValues(e, 'CNAM - Cinematic\Saturation', 1.0);
        SetElementEditValues(e, 'CNAM - Cinematic\Brightness', 1.0);
        SetElementEditValues(e, 'CNAM - Cinematic\Contrast', 1.0);
        SetElementEditValues(e, 'TNAM - Tint\Amount', 0.0);
        //SetElementEditValues(e, 'DNAM - Depth of Field\Sky / Blur Radius', 17000);
        //SetElementEditValues(e, 'DNAM - Depth of Field\Strength', 0.5);
        //SetElementEditValues(e, 'DNAM - Depth of Field\Distance', 5000);
        //SetElementEditValues(e, 'DNAM - Depth of Field\Range', 75000);
        //SetElementEditValues(e, 'TX00 - LUT', 'YOUR LUT FILE PATH HERE');
        //RemoveElement(e, 'TX00 - LUT');
    AddMessage('Processing: ' + FullPath(e));
end;
end.