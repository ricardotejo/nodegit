openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes -subj '/CN=localhost'
http-server ./arm-bin -p 8800 --ssl --cert cert.pem --key key.pem > http.log 2>&1 &
export HTTP_SERVER_PID=$!
export NODE_TLS_REJECT_UNAUTHORIZED=0