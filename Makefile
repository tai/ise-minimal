XTCLSH = xilinx-run-xtclsh-14.7
IMPACT = xilinx-run-impact-14.7

all:
	@echo "Type: make (app|prog|clean|gitclean)"

app:
	$(XTCLSH) app.tcl rebuild_project

prog:
	$(IMPACT) -batch cmd/impact-prog.cmd

clean:
	$(RM) *.old *.bak *~

gitclean:
	git ls-files -o | xargs rm -f
