# Define the directory you want to list files from
$directoryPath = "C:\\Your\\Directory\\Path"

# Define the file extension you want to filter by
$fileExtension = ".txt"

# Get all the files in the directory
$files = Get-ChildItem -Path $directoryPath -Recurse -File

# Filter the files by the specified extension
$filteredFiles = $files | Where-Object { $_.Extension -eq $fileExtension }

# Output the file names and their sizes
foreach ($file in $filteredFiles) {
    Write-Host ("File Name: " + $file.Name)
    Write-Host ("File Size: " + $file.Length + " bytes")
    Write-Host "-------------------------"
}
