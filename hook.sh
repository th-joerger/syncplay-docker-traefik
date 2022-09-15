#!/usr/bin/bash

# Split and stich certs
cd /output
cat combined.pem|awk 'split_after==1{n++;split_after=0} /-----END CERTIFICATE-----/ {split_after=1} {print > "cert" n ".pem"}'
cat cert1.pem > chain.pem
cat cert2.pem >> chain.pem
chown 800:800 cert.pem
chown 800:800 chain.pem
rm -f cert1.pem cert2.pem
