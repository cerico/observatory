reports:
	ansible-playbook reports.yml
schedule:
	sudo cp cron/observatory /etc/cron.d/observatory
