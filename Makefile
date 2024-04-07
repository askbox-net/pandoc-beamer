PANDOC = pandoc
SRC = slide.md
TARGET = $(SRC:%.md=%.pdf)
PDF_ENGINE = --pdf-engine xelatex
#PDF_ENGINE = --pdf-engine lualatex
DATE = "2024年04月07日"
#DATE = "$(shell date +"%Y年%m月%d日")"

FILTER_PATH = lua-filters
LUA_FILTER = --lua-filter=$(FILTER_PATH)/diagram-generator/diagram-generator.lua

FORMAT = -f markdown+backtick_code_blocks

PLANTUML = plantuml.tar
METADATA = --metadata=plantumlPath:$(PLANTUML) #--metadata=inkscapePath:/Applications/Inkscape.app/Contents/MacOS/inkscape

#all: $(FILTER_PATH) $(PLANTUML) $(TARGET)

#%.pdf: %.md
$(TARGET): $(SRC)
	$(PANDOC) --embed-resources --standalone -t beamer $(FORMAT) $(LUA_FILTER) $(METADATA) -V date=$(DATE) $(PDF_ENGINE) $^ -o $@

$(PLANTUML):
	curl https://github.com/plantuml/plantuml/releases/download/v1.2024.4/plantuml-1.2024.4.jar -o $(PLANTUML)

$(FILTER):
	git clone https://github.com/pandoc/lua-filters.git

clean:
	rm -rf $(TARGET)

re: clean all

