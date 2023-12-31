JAVAC = /usr/bin/javac
JAVA = /usr/bin/java
.SUFFIXES: .java .class
SRCDIR = src/clubSimulation
BINDIR = bin/

CLASSES = Clubgoer.class \ ClubGrid.class \ClubSimulation.class \ ClubView.class \ CounterDisplay.class \ GridBlock.class \ PeopleCounter.class \ PeopleLocation.class

run: 
	@echo "Compiling and running application"
	@$(JAVAC) -d $(BINDIR)/ $(SRCDIR)/*.java
	@echo "Running ClubSimulation"
	@$(JAVA) -cp $(BINDIR) clubSimulation/ClubSimulation 20 10 10 7

build:
	@echo "Compiling application"
	@$(JAVAC) -d $(BINDIR)/ $(SRCDIR)/*.java

clean:
	@echo "Cleaning bin directory"
	@rm -rf $(BINDIR)/**