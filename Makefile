REBAR:=rebar
DIALYZER:=dialyzer

PLT_FILE=./robosapiens.plt

.PHONY: all erl test clean doc 

all: erl

erl:
	$(REBAR) get-deps compile

test: all
	@mkdir -p .eunit
	$(REBAR) skip_deps=true eunit

clean:
	$(REBAR) clean
	-rm -rvf deps ebin doc .eunit priv

purge:	clean
	-rm -f $(PLT_FILE)

demo:
	sudo erl -pa ebin -pa priv -pa include

build_plt:
	$(DIALYZER) --build_plt --output_plt $(PLT_FILE) --apps kernel stdlib erts 

check_plt:
	$(DIALYZER) --check_plt --plt $(PLT_FILE) --apps kernel stdlib erts

dialyzer:
	$(DIALYZER) --plt $(PLT_FILE) -Wno_return -c ebin
