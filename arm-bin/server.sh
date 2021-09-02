http-server ./arm-bin -p 8800 > http.log 2>&1 &
export HTTP_SERVER_PID=$!