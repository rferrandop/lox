# Java compiler and flags
JAVAC = javac
JFLAGS = -d bin -sourcepath ./src

# Source and build directories
SRCDIR = ./src
BINDIR = bin

# List of source files
SOURCES := $(wildcard $(SRCDIR)/lox/*.java) $(wildcard $(SRCDIR)/lox/tool/*.java)
CLASSES := $(patsubst $(SRCDIR)/%.java, $(BINDIR)/%.class, $(SOURCES))

# Target for compiling the Java classes
all: $(CLASSES)

# Rule to compile Java source files to class files
$(BINDIR)/%.class: $(SRCDIR)/%.java
	@mkdir -p $(BINDIR)
	$(JAVAC) $(JFLAGS) $<

# Target for running the Lox class with an optional argument
run:
	@if [ -n "$(ARGS)" ]; then \
		java -cp $(BINDIR) lox.Lox $(ARGS); \
	else \
		java -cp $(BINDIR) lox.Lox; \
	fi

# Target for cleaning the build directory
clean:
	rm -rf $(BINDIR)
