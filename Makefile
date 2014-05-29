bootstrap:
	rm -rf .git/
	git init .
	@echo "Enter your git remote (eg. 'git@github.com:vendor/library.git'): "; \
	    read GIT_REMOTE; \
	    if [ "$$GIT_REMOTE" != "" ]; then git remote add origin $$GIT_REMOTE; fi;
	composer install
	rm src/.gitkeep Makefile

.PHONY: bootstrap
