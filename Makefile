.PHONY: build-plugins chi eng swe

build-plugins:
	@go build -buildmode=plugin -o chi/chi.so chi/greeter.go \
	&& go build -buildmode=plugin -o eng/eng.so eng/greeter.go \
	&& go build -buildmode=plugin -o swe/swe.so swe/greeter.go

chi:
	./greeter chinese

eng:
	./greeter english

swe:
	./greeter swedish
