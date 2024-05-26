init: pyproject.toml
	rye sync	

lint: 
	@echo "Running isort ..."
	@.venv/bin/isort ./src
	@echo "\nRunning black ..."
	@.venv/bin/black ./src
	@echo "\nRunning flake8 ..."
	@.venv/bin/flake8 ./src
	@echo "\nRunning mypy ..."
	@.venv/bin/mypy ./src
	@echo "\nRunning pylint ..."
	@.venv/bin/pylint ./src
	@echo "\nRunning bandit ..."
	@.venv/bin/bandit -r ./src
	@echo "\nRunning radon ..."
	@.venv/bin/radon cc ./src/candle/tensor.py

test:
	@echo "Running tests ..."
	@.venv/bin/pytest

clean:
	@rm -rf ./build ./dist ./*.egg-info ./.mypy_cache ./.pytest_cache ./.ruff_cache
