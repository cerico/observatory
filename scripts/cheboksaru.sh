grep server_name /etc/nginx/conf.d/*conf | awk -F" " '{print $3}'  | awk -F";" '{print $1}' | uniq
