JAVAC = /usr/bin/javac
JAVA = /usr/bin/java
.SUFFIXES: .java .class
SRCDIR = src
BINDIR = bin

CLASSES = Clubgoer.class \ ClubGrid.class \ClubSimulation.class \ ClubView.class \ CounterDisplay.class \ GridBlock.class \ PeopleCounter.class \ PeopleLocation.class

run: 
	@echo "Compiling and running application"
	@$(JAVAC) -d $(BINDIR)/ $(SRCDIR)/*.java
	@echo "Running ClubSimulation"
	@$(JAVA) -cp $(BINDIR) ClubSimulation

build:
	@echo "Compiling application"
	@$(JAVAC) -d $(BINDIR)/ $(SRCDIR)/*.java

clean:
	@echo "Cleaning bin directory"
	@rm -rf $(BINDIR)/*.class