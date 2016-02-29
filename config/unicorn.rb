worker_processes 1
timeout 30
listen 3000

pid "tmp/unicorn.pid"
stderr_path "log/unicorn.log"
stdout_path "log/unicorn.log"