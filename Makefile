hello:
	@mkdir -p obj lib bin 
	@g++ -c -Wall -fpic calculator.cpp -o obj/calculator.o
	@g++ -shared -o lib/calculator.so obj/calculator.o
	@g++ -Wall main.cpp -Llib -l:calculator.so -o bin/main 
	@echo "Build successful."

.PHONY: clean
clean:
	@rm -r bin lib obj
	@echo "Clean!"
