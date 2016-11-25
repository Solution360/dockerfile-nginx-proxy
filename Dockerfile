FROM jwilder/nginx-proxy
RUN { \
      echo 'proxy_connect_timeout 600;'; \
      echo 'proxy_send_timeout 600;'; \
      echo 'proxy_read_timeout 600;'; \
      echo 'send_timeout 600;'; \
      echo 'client_max_body_size 500m;'; \
      echo 'proxy_set_header X-Forwarded-Host $http_host;'; \
      echo 'proxy_set_header HTTPS $https;'; \
      echo 'proxy_pass_request_headers on;'; \
    } > /etc/nginx/conf.d/my_proxy.conf
