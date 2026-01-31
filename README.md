# TULeX - LaTeX šablony pro EF TUL

<p align="center">
  <img src="assets/tul-ef-logo.png" alt="Ekonomická fakulta TUL" width="400">
</p>

<p align="center">
  <strong>Oficiální LaTeX šablony pro Ekonomickou fakultu</strong><br>
  Technická univerzita v Liberci
</p>

<p align="center">
  <a href="#-rychlý-start">Rychlý start</a> •
  <a href="#-šablony">Šablony</a> •
  <a href="#-overleaf">Overleaf</a> •
  <a href="#-lokální-instalace">Lokální instalace</a> •
  <a href="README.en.md">English</a>
</p>

---

## Rychlý start

### Varianta A: Overleaf (doporučeno)

Nejjednodušší způsob - nepotřebujete nic instalovat.

1. Stáhněte ZIP šablony z [Releases](../../releases)
2. Přihlaste se na [Overleaf](https://www.overleaf.com)
3. Klikněte **New Project** → **Upload Project**
4. Nahrajte stažený ZIP soubor
5. V menu nastavte **Compiler** na **LuaLaTeX**
6. Klikněte **Recompile**

### Varianta B: VS Code (lokálně)

Pro ty, kdo preferují práci offline.

```bash
# 1. Naklonujte repozitář
git clone https://github.com/[username]/TULeX.git
cd TULeX

# 2. Otevřete ve VS Code
code .

# 3. Nainstalujte doporučená rozšíření (VS Code se zeptá)

# 4. Otevřete main.tex a stiskněte Ctrl+Alt+B
```

---

## Šablony

### Disertační práce

**Umístění:** `templates/disertace/`

Kompletní struktura dle **směrnice děkana EF TUL č. 4/2022**:

- Titulní strany (česky i anglicky)
- Prohlášení o autorství
- Anotace a klíčová slova (CZ + EN)
- Všechny povinné kapitoly
- Seznam použité literatury (ISO 690)
- Přílohy

**Vhodné pro:** Doktorské studium, disertační práce

### Základní šablona

**Umístění:** `templates/zakladni/`

Čistá šablona s formátováním EF TUL bez předpřipravené struktury.

**Vhodné pro:** Semestrální práce, diplomové práce, bakalářské práce

---

## Formátování

Šablony odpovídají požadavkům Ekonomické fakulty TUL:

| Parametr | Hodnota |
|----------|---------|
| Písmo | Inter 11pt |
| Řádkování | 1,5 |
| Okraje | Levý 30mm, pravý 25mm, horní/dolní 25mm |
| Odstavce | Bez odsazení prvního řádku, mezera 15pt |
| Citace | ČSN ISO 690 (Harvardský styl) |
| Tisk | Oboustranný, formát A4 |

---

## Overleaf

### Co je Overleaf?

Online editor pro LaTeX. Funguje v prohlížeči, nepotřebujete nic instalovat.

### Je Overleaf zdarma?

Ano. Základní verze je zdarma a stačí pro psaní práce.

### Nastavení projektu

Po nahrání ZIP souboru:

1. Klikněte na **Menu** (vlevo nahoře)
2. Nastavte **Compiler** na **LuaLaTeX**
3. Klikněte **Recompile**

### Má TUL institucionální přístup?

Zkontrolujte na [overleaf.com/edu](https://www.overleaf.com/edu). Pokud ano, získáte prémiové funkce zdarma s univerzitním emailem.

---

## Lokální instalace

### Co potřebujete

1. **TeX Live** - kompletní instalace
2. **VS Code** - editor
3. **LaTeX Workshop** - rozšíření pro VS Code

### Ubuntu / Debian

```bash
# Instalace TeX Live
sudo apt update
sudo apt install texlive-full

# Instalace VS Code
sudo snap install code --classic

# Ověření
lualatex --version
biber --version
```

### Windows

1. Stáhněte [TeX Live](https://www.tug.org/texlive/) a nainstalujte (vyberte "full")
2. Stáhněte [VS Code](https://code.visualstudio.com/) a nainstalujte
3. Ve VS Code nainstalujte rozšíření **LaTeX Workshop**

### macOS

```bash
# Pomocí Homebrew
brew install --cask mactex
brew install --cask visual-studio-code
```

Nebo stáhněte [MacTeX](https://www.tug.org/mactex/) a [VS Code](https://code.visualstudio.com/).

### Kompilace

Repozitář obsahuje předpřipravené nastavení pro VS Code. Po otevření projektu:

- **Ctrl+Alt+B** = Zkompilovat
- **Ctrl+Alt+V** = Zobrazit PDF

Nebo z příkazové řádky:

```bash
cd templates/disertace
latexmk -lualatex main.tex
```

---

## Citování

### V textu

```latex
Podle \textcite{novak2020} je důležité...
% → Novák (2020) tvrdí, že...

Výzkum to potvrdil \parencite{smith2021}.
% → ...potvrdil (Smith 2021).
```

### V souboru references.bib

```bibtex
@book{novak2020,
    author = {Novák, Jan},
    title = {Název knihy},
    publisher = {Vydavatel},
    location = {Praha},
    year = {2020},
    langid = {czech}
}
```

Více v dokumentaci: [docs/citace.md](docs/citace.md)

---

## Dokumentace

- [Jak citovat (ISO 690)](docs/citace.md)
- [Obrázky a tabulky](docs/obrazky-tabulky.md)
- [Řešení problémů](docs/troubleshooting.md)
- [Časté otázky](docs/faq.md)

---

## Struktura repozitáře

```
TULeX/
├── templates/
│   ├── disertace/        # Disertační práce
│   └── zakladni/         # Základní šablona
├── docs/                 # Dokumentace (česky)
├── assets/               # Logo EF TUL
└── .vscode/              # Nastavení VS Code
```

---

## Problémy a návrhy

Našli jste chybu? Máte návrh na vylepšení?

- Vytvořte [Issue](../../issues)
- Nebo pošlete Pull Request

---

## Licence

MIT - volně k použití.

---

<p align="center">
  <sub>Ekonomická fakulta | Technická univerzita v Liberci | 2026</sub>
</p>
