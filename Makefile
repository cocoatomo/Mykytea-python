all:
	swig -Wall -c++ -python -shadow -c++ -I/usr/local/include lib/kytea/mykytea.i
	python setup.py build_ext --inplace

install:
	python setup.py install

.PHONY: clean
clean:
	rm -f mykytea_wrap.cxx Mykytea.py _Mykytea.so
