BIN = server

ASSEMBLER = as
LINKER = ld
ENTRYPOINT = main
ARCH = arm64
LIB_SEARCH_PATH = System -syslibroot `xcrun -sdk macosx --show-sdk-path`

ODIR = obj
BDIR = bin
SDIR = src

BINPATH = $(BDIR)/$(BIN)

SRCS = $(wildcard $(SDIR)/*.s)
OBJS = $(patsubst $(SDIR)/%.s, $(ODIR)/%.o, $(SRCS))

$(shell mkdir -p $(ODIR) $(BDIR))

$(ODIR)/%.o: $(SDIR)/%.s
	$(ASSEMBLER) -o $@ $< -g

$(BINPATH): $(OBJS)
	$(LINKER) -o $(BINPATH) ${OBJS} -l$(LIB_SEARCH_PATH) -e $(ENTRYPOINT) -arch $(ARCH)

.PHONY: clean

clean:
	rm *~ $(ODIR) $(BIDR)
