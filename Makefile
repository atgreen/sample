all:

run:
	sbcl --eval '(pushnew (truename "./src") ql:*local-project-directories* )' \
	     --eval '(ql:register-local-projects)' \
	     --eval '(ql:quickload :sample)' \
	     --eval '(sample:start-server)'

clean:
	@rm -rf system-index.txt *~
