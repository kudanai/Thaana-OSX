# Package Maker options
PACKAGEMAKER_BIN = "/Applications/PackageMaker.app/Contents/MacOS/PackageMaker"
PACKAGEMAKER_DOC = "./ThaanaOSX.pmdoc"
BIN_DIR := "./bin"


all:
	@echo "building installer package"
	@mkdir -p $(BIN_DIR) #apparently packagemaker won't make it on its own
	$(PACKAGEMAKER_BIN) --doc $(PACKAGEMAKER_DOC) --out "$(BIN_DIR)/ThaanaOSX.pkg"

clean:
	@echo "removing binaries"
	rm -rf $(BIN_DIR)