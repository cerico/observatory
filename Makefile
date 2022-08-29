reports:
	ansible-playbook reports.yml
cron:
	sudo cp cron/observatory /etc/cron.d/observatory
