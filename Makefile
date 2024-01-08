reports:
	ansible-playbook reports.yml
schedule:
	sudo cp cron/observatory /etc/cron.d/observatory
tldr:
	@echo Available commands
	@echo ------------------
	@grep '^[[:alpha:]][^:[:space:]]*:' Makefile | cut -d ':' -f 1 | sort -u | sed 's/^/make /'
%:
	@$(MAKE) tldr
