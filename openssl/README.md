# Tools

## How to create PFX Certificate file

```sh
# Create the x509 certificate
openssl req -x509 -new -nodes -sha256 -utf8 -days 3650 -newkey rsa:2048 -keyout {file-name}.key -out {file-name}.crt -config ssl.conf

# Convert the x509 to pkcs12
openssl pkcs12 -export -in {file-name}.crt -inkey {file-name}.key -out {file-name}.pfx

# Use script
create-key.ps1 ssl.conf crtFile pfxFile
```

`ssl.conf` sample:

```conf
[req]
prompt = no
default_md = sha256
default_bits = 2048
distinguished_name = dn
x509_extensions = v3_req

[dn]
C = TW
ST = Taiwan
L = Taipei
O = Chinese Gamer International Co.
OU = RD Department
emailAddress = admin@chinesegamer.net
CN = localhost

[v3_req]
subjectAltName = @alt_names

[alt_names]
DNS.1 = *.localhost
DNS.2 = localhost
```

