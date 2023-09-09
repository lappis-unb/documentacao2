.PHONY: docs
docs:
	docker-compose -f docker-compose.yml up --build
build-docs:
	docker exec -it bp-docs /bin/bash -c "mkdocs build"

