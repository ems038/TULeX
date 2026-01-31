# TULeX - LaTeX Templates for FE TUL

<p align="center">
  <img src="assets/tul-ef-logo.png" alt="Faculty of Economics TUL" width="400">
</p>

<p align="center">
  <strong>Official LaTeX Templates for the Faculty of Economics</strong><br>
  Technical University of Liberec
</p>

<p align="center">
  <a href="#-quick-start">Quick Start</a> •
  <a href="#-templates">Templates</a> •
  <a href="#-overleaf">Overleaf</a> •
  <a href="#-local-installation">Local Installation</a> •
  <a href="README.md">Česky</a>
</p>

---

## Quick Start

### Option A: Overleaf (Recommended)

The easiest way - no installation required.

1. Download the ZIP template from [Releases](../../releases)
2. Sign in to [Overleaf](https://www.overleaf.com)
3. Click **New Project** → **Upload Project**
4. Upload the downloaded ZIP file
5. In Menu, set **Compiler** to **LuaLaTeX**
6. Click **Recompile**

### Option B: VS Code (Local)

For those who prefer working offline.

```bash
# 1. Clone the repository
git clone https://github.com/[username]/TULeX.git
cd TULeX

# 2. Open in VS Code
code .

# 3. Install recommended extensions (VS Code will prompt)

# 4. Open main.tex and press Ctrl+Alt+B
```

---

## Templates

### Dissertation

**Location:** `templates/disertace/`

Complete structure according to **Dean's Directive FE TUL No. 4/2022**:

- Title pages (Czech and English)
- Author's declaration
- Annotation and keywords (CZ + EN)
- All required chapters
- Bibliography (ISO 690)
- Appendices

**Suitable for:** Doctoral studies, dissertation theses

### Basic Template

**Location:** `templates/zakladni/`

Clean template with FE TUL formatting without predefined structure.

**Suitable for:** Seminar papers, master's theses, bachelor's theses

---

## Formatting

Templates comply with Faculty of Economics TUL requirements:

| Parameter | Value |
|-----------|-------|
| Font | Inter 11pt |
| Line spacing | 1.5 |
| Margins | Left 30mm, right 25mm, top/bottom 25mm |
| Paragraphs | No first-line indent, 15pt spacing |
| Citations | ISO 690 (Harvard style) |
| Printing | Double-sided, A4 format |

---

## Overleaf

### What is Overleaf?

An online LaTeX editor. Works in your browser, no installation needed.

### Is Overleaf free?

Yes. The basic version is free and sufficient for writing your thesis.

### Project Setup

After uploading the ZIP file:

1. Click **Menu** (top left)
2. Set **Compiler** to **LuaLaTeX**
3. Click **Recompile**

### Does TUL have institutional access?

Check at [overleaf.com/edu](https://www.overleaf.com/edu). If yes, you get premium features free with your university email.

---

## Local Installation

### Requirements

1. **TeX Live** - full installation
2. **VS Code** - editor
3. **LaTeX Workshop** - VS Code extension

### Ubuntu / Debian

```bash
# Install TeX Live
sudo apt update
sudo apt install texlive-full

# Install VS Code
sudo snap install code --classic

# Verify
lualatex --version
biber --version
```

### Windows

1. Download [TeX Live](https://www.tug.org/texlive/) and install (choose "full")
2. Download [VS Code](https://code.visualstudio.com/) and install
3. In VS Code, install the **LaTeX Workshop** extension

### macOS

```bash
# Using Homebrew
brew install --cask mactex
brew install --cask visual-studio-code
```

Or download [MacTeX](https://www.tug.org/mactex/) and [VS Code](https://code.visualstudio.com/).

### Compilation

The repository includes preconfigured VS Code settings. After opening the project:

- **Ctrl+Alt+B** = Compile
- **Ctrl+Alt+V** = View PDF

Or from command line:

```bash
cd templates/disertace
latexmk -lualatex main.tex
```

---

## Citations

### In text

```latex
According to \textcite{novak2020}, it is important...
% → Novák (2020) states that...

Research confirmed this \parencite{smith2021}.
% → ...confirmed (Smith 2021).
```

### In references.bib

```bibtex
@book{novak2020,
    author = {Novák, Jan},
    title = {Book Title},
    publisher = {Publisher},
    location = {Prague},
    year = {2020},
    langid = {czech}
}
```

More in documentation: [docs/citace.md](docs/citace.md)

---

## Documentation

- [How to Cite (ISO 690)](docs/citace.md) (Czech)
- [Images and Tables](docs/obrazky-tabulky.md) (Czech)
- [Troubleshooting](docs/troubleshooting.md) (Czech)
- [FAQ](docs/faq.md) (Czech)

---

## Repository Structure

```
TULeX/
├── templates/
│   ├── disertace/        # Dissertation template
│   └── zakladni/         # Basic template
├── docs/                 # Documentation (Czech)
├── assets/               # FE TUL logo
└── .vscode/              # VS Code settings
```

---

## Issues and Suggestions

Found a bug? Have a suggestion?

- Create an [Issue](../../issues)
- Or submit a Pull Request

---

## License

MIT - free to use.

---

<p align="center">
  <sub>Faculty of Economics | Technical University of Liberec | 2026</sub>
</p>
