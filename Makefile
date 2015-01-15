ifdef NDEBUG
	ndebug=-DNDEBUG
else
	ndebug=
endif

ZIP_NAME = archive

SOURCES=dictionary.c dictionary_run.c
OBJECTS=$(addsuffix .o, $(basename $(SOURCES)))
ALLSOURCES=$(SOURCES) dictionary.h README dictionary_1.txt dictionary_2.txt Makefile
TARGET=dictionary_run

all: $(TARGET)

clean:
	rm -f $(TARGET) $(OBJECTS)

zip: $(ZIP_NAME).tar.gz

$(TARGET): $(OBJECTS)
	$(CC) -o $@ $^

.c.o:
	$(CC) -c -o $@ $<

$(ZIP_NAME).tar.gz: $(ALLSOURCES)
	rm -rf $(ZIP_NAME)
	mkdir $(ZIP_NAME)
	cp $(ALLSOURCES) $(ZIP_NAME)
	tar cvzf $(ZIP_NAME).tar.gz $(ZIP_NAME)
	rm -rf $(ZIP_NAME)
