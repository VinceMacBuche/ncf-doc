
all: clone json

clone:
	git clone git@github.com:Normation/ncf.git

json:
	export PYTHONPATH=$(shell pwd)/ncf/tools
	python tools/ncf-doc.py

clean:
	rm -rf ncfi
	rm data.txt        
.PHONY: all clone json clean
