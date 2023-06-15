$ffmpegPath = "C:\path\to\ffmpeg.exe"
$inputFolder = "C:\path\to\input\folder"
$outputFolder = "C:\path\to\output\folder"

$files = Get-ChildItem -Path $inputFolder -File

foreach ($file in $files) {
    $filename = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
    $outputFile = Join-Path -Path $outputFolder -ChildPath "$filename`_compressed.mp4"

    & $ffmpegPath -i $file.FullName -c:v libx264 -crf 23 -preset medium -c:a aac -b:a 128k $outputFile
}