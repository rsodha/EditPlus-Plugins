$FilePath = $args[0];
$Lines = Get-Content $FilePath;
$NumLines = $Lines.Length;
Write-Host -NoNewline "(";
For($i=0;$i -lt $NumLines; $i++) {
    Write-Host -NoNewline "'";
    Write-Host -NoNewline $Lines[$i];
    Write-Host -NoNewline "'";
    If($i+1 -lt $NumLines ) {
        Write-Host -NoNewline ",";
    }
}
Write-Host -NoNewline ")";