param (
    [Parameter(Mandatory = $True)]
    [ValidateNotNull()]
    $config,
    [Parameter(Mandatory = $True)]
    [ValidateNotNull()]
    $x509Name,
    [Parameter(Mandatory = $True)]
    [ValidateNotNull()]
    $pfxName,
    [Parameter(Mandatory = $True)]
    [SecureString]
    $password
)

function CreateX509 {
    param (
        $config,
        $x509Name
    )

    Write-Output "Create the x509 file: $x509Name.crt, $x509Name.key"
    openssl req -x509 -new -nodes -sha256 -utf8 -days 3650 -newkey rsa:2048 -keyout "$x509Name.key" -out "$x509Name.crt" -config "$config"
}

function X509ToPkcs12 {
    param (
        $x509Name,
        $pkcs12Name,
        [SecureString] $password
    )

    Write-Output "Convert the x509 file to PKCS12 format: $pkcs12Name.pfx"
    openssl pkcs12 -export -in "$x509Name.crt" -inkey "$x509Name.key" -out "$pkcs12Name.pfx" -password "pass:$password"
}

CreateX509 -config $config -x509Name $x509Name
X509ToPkcs12 -x509Name $x509Name -pkcs12Name $pfxName -password $password
