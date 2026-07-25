# mermaid-export

> A Bash CLI to export Mermaid diagrams to **PDF**, **PNG**, **SVG**, and **JPG** — all at once or one at a time.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

---

## Features

- **One command, four formats** — PDF, PNG, SVG, JPG in a single run
- **Interactive or scripted** — Pick files interactively or pass them inline
- **Flexible output naming** — Use input name, a common name, or custom names per format
- **Format exclusion** — Skip formats you do not need (`--no-pdf`, etc.)
- **Single-format mode** — Generate only what you need (`--only-png`, etc.)
- **Built-in manual** — `mermaid-export --man` opens the full man page
- **Docker-powered** — Uses `minlag/mermaid-cli`; no local Node.js needed

---

## Dependencies

| Tool | Purpose |
|------|---------|
| [Docker](https://docs.docker.com/get-docker/) | Runs the Mermaid CLI container |
| [ImageMagick](https://imagemagick.org/) | Converts PNG to JPG |

```bash
# Ubuntu / Debian
sudo apt update && sudo apt install -y docker.io imagemagick

# macOS
brew install --cask docker && brew install imagemagick
```

---

## Installation

### From source

```bash
git clone https://github.com/<your-username>/mermaid-export.git
cd mermaid-export
sudo make install
```

### Uninstall

```bash
sudo make uninstall
```

---

## Usage

### Basic

```bash
# Interactive mode — pick a .mmd file from the current directory
mermaid-export

# Export a specific file (all four formats)
mermaid-export ERD.mmd

# Use one name for all outputs
mermaid-export ERD.mmd -o Diagram
```

### Exclude formats

```bash
mermaid-export ERD.mmd --no-jpg          # Skip JPG
mermaid-export ERD.mmd --no-pdf --no-svg  # Only PNG + JPG
```

### Single format

```bash
mermaid-export ERD.mmd --only-png
mermaid-export ERD.mmd --only-jpg -o Thumb
```

### Custom names per format

```bash
mermaid-export ERD.mmd \
  --pdf Report \
  --png Figure \
  --svg Vector \
  --jpg Thumbnail
```

### Help & manual

```bash
mermaid-export -h        # Short help
mermaid-export --man     # Full manual (embedded)
man mermaid-export       # System man page (after install)
mermaid-export --version # Version info
```

---

## Project Structure

```
mermaid-export/
├── mermaid-export          # Main executable
├── man/
│   └── mermaid-export.1    # Troff man page
├── Makefile                # Install / uninstall
├── LICENSE                 # MIT License
└── README.md               # This file
```

---

## License

[MIT](LICENSE)
