# Declaration of variables
CC = gcc 
CC_FLAGS=-lpanel -lncurses -g
 
# File names
EXEC = fortnite.exe
SOURCES = $(wildcard *.c)
OBJECTS = $(SOURCES:.c=.o)
 
# Main target
$(EXEC): $(OBJECTS)
	$(CC) $^ -o $@ $(CC_FLAGS)
 
# To obtain object files
%.o: %.c
	$(CC) -c $< -o $@ $(CC_FLAGS)
 
# To remove generated files
clean:
	rm -f $(EXEC) $(OBJECTS)
