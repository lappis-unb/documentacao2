.PHONY: docs
docs:
	docker-compose -f docker-compose.yml up --build
build-docs:
	docker exec -it mkdocs /bin/bash -c "mkdocs build --site-dir public"

