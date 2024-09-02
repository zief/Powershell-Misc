# Ask for user input
$inputString = Read-Host "Please enter a string"

# Split the string into individual characters
$splitString = $inputString.ToCharArray()

# Create an ordered dictionary to store each character in a separate variable
$charVariables = New-Object System.Collections.Specialized.OrderedDictionary

# Store each character in a separate variable
for ($i = 0; $i -lt $splitString.Length; $i++) {
# Generate a random variable name
    do {
        $varName = -join ((97..122) | Get-Random -Count 1 | ForEach-Object {[char]$_}) + (Get-Random -Minimum 1 -Maximum 9999)
    } while ($charVariables.Contains($varName))
    $charVariables.Add("$"+$varName , $splitString[$i])
}

$joinedvar = ""

# Print each variable and its value
$charVariables.GetEnumerator() | Sort-Object Key -Descending | ForEach-Object {
    if($_.Value -eq '"'){
    Write-Output ("{0} = '{1}'" -f $_.Key, $_.Value)
    }else{
    Write-Output ('{0} = "{1}"' -f $_.Key, $_.Value)
    }
}


# Join all characters back into a single string
# ensuring the char is in the right order
$charVariables.GetEnumerator()| ForEach-Object {
    $joinedvar += ""+"{0} +" -f $_.Key
}


# Store the joined string in a variable
$joinedvar = $joinedvar -replace "\s*\+\s*$"

# Print the joined string
Write-Output ("$"+"joinedString = {0}" -f $joinedvar)
