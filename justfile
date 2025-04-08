# list available recipes
_default:
	@just --list

# run all the tests and coverage
test:
	cargo nextest run --no-fail-fast
	cargo mutants
	cargo tarpaulin
