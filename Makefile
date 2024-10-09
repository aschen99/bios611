.PHONY: clean
.PHONY: init

init:
	mkdir -p derived_data
	mkdir -p figures
	mkdir -p models

clean:
	rm -rf derived_data
	rm -rf figures
	rm -rf models
	mkdir -p derived_data
	mkdir -p figures
	mkdir -p models