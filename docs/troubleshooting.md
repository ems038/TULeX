# Řešení problémů

## Kompilace

### Chyba: "Font Inter not found"

**Příčina:** Písmo Inter není nainstalované.

**Řešení Overleaf:** Písmo je součástí Overleaf, mělo by fungovat automaticky.

**Řešení lokálně:**
```bash
# Ubuntu/Debian - Inter je v texlive-fonts-extra
sudo apt install texlive-fonts-extra

# Nebo stáhněte z https://fonts.google.com/specimen/Inter
# a nainstalujte systémově
```

### Chyba: "Undefined control sequence"

**Příčina:** Chybějící balíček nebo překlep v příkazu.

**Řešení:**
1. Zkontrolujte překlepy v příkazu
2. Smažte pomocné soubory a zkompilujte znovu:
   ```bash
   rm -f *.aux *.toc *.lof *.lot *.bbl *.bcf
   lualatex main.tex
   ```

### Chyba: "Citation undefined"

**Příčina:** Biber nebyl spuštěn nebo klíč citace neexistuje v `.bib`.

**Řešení:**
```bash
lualatex main.tex
biber main          # ← nutné spustit!
lualatex main.tex
```

V Overleaf se Biber spouští automaticky.

### Chyba: "Missing $ inserted"

**Příčina:** Matematický symbol mimo matematický režim.

**Řešení:**
```latex
% ŠPATNĚ
Hodnota α je 0,05.

% SPRÁVNĚ
Hodnota $\alpha$ je 0,05.
```

### Chyba: "File not found"

**Příčina:** Obrázek nebo soubor neexistuje na uvedené cestě.

**Řešení:**
1. Zkontrolujte název souboru (velká/malá písmena)
2. Zkontrolujte cestu k souboru
3. Ujistěte se, že soubor je nahraný (Overleaf)

---

## Formátování

### Obrázek je na špatném místě

**Příčina:** LaTeX umisťuje plovoucí objekty automaticky.

**Řešení:**
```latex
% Zkuste změnit parametry umístění
\begin{figure}[!htbp]   % ! = pokus se více
    ...
\end{figure}

% Nebo vynuťte umístění
\begin{figure}[H]       % H = přesně zde (potřebuje \usepackage{float})
    ...
\end{figure}
```

### Text přetéká přes okraj

**Příčina:** Dlouhé slovo nebo URL bez zalomení.

**Řešení pro URL:**
```latex
\usepackage{xurl}  % lepší zalomování URL
```

**Řešení pro dlouhá slova:**
```latex
% Povolte dělení
\hyphenation{kon-ku-ren-ce-schop-nost}
```

### Tabulka je příliš široká

**Řešení:**
```latex
% Použijte menší písmo
\begin{table}
    \small   % nebo \footnotesize
    \begin{tabular}{...}
    ...
    \end{tabular}
\end{table}

% Nebo použijte tabularx pro automatickou šířku
\begin{tabularx}{\textwidth}{lXX}
```

---

## Bibliografie

### Citace se nezobrazují

**Řešení:**
1. Spusťte kompilaci ve správném pořadí:
   ```
   lualatex → biber → lualatex → lualatex
   ```
2. Zkontrolujte, že klíč v `\cite{klic}` existuje v `.bib`
3. Zkontrolujte chyby v `.blg` souboru

### Špatné formátování citace

**Řešení:**
- Přidejte `langid = {czech}` nebo `langid = {english}` do záznamu
- Zkontrolujte, že používáte správný typ záznamu (`@book`, `@article`, atd.)

### Biber hlásí chybu v .bib

**Běžné příčiny:**
- Chybějící čárka mezi poli
- Neuzavřené závorky
- Speciální znaky (%, &, _) bez escapování

```bibtex
% ŠPATNĚ
title = {Analýza 50% vzorku}

% SPRÁVNĚ
title = {Analýza 50\% vzorku}
```

---

## Overleaf specifické

### Kompilace trvá dlouho

**Řešení:**
- Zmenšete obrázky (max 1-2 MB)
- Používejte PDF místo PNG pro vektorovou grafiku
- Rozdělte dokument do více souborů (`\include`)

### "Compile timeout"

**Příčina:** Překročen časový limit (20s pro free účet).

**Řešení:**
1. Zkuste **Recompile from scratch**
2. Optimalizujte obrázky
3. Zvažte premium účet

### Soubory se neaktualizují

**Řešení:**
1. **Menu** → **Recompile from scratch**
2. Smažte `.aux` soubory v panelu souborů
3. Obnovte stránku (F5)

---

## Lokální instalace

### latexmk nefunguje

**Řešení:**
```bash
# Instalace
sudo apt install latexmk   # Ubuntu/Debian
brew install latexmk       # macOS

# Ruční kompilace bez latexmk
lualatex main.tex
biber main
lualatex main.tex
lualatex main.tex
```

### VS Code nekompiluje

**Řešení:**
1. Nainstalujte rozšíření **LaTeX Workshop**
2. Zkontrolujte, že `lualatex` je v PATH:
   ```bash
   which lualatex
   ```
3. Restartujte VS Code

### Chybí balíčky

**Ubuntu/Debian:**
```bash
# Doinstalace jednotlivého balíčku
sudo apt install texlive-latex-extra

# Nebo kompletní instalace
sudo apt install texlive-full
```

---

## Stále máte problém?

1. Zkopírujte chybovou hlášku
2. Vytvořte [Issue na GitHubu](../../issues) s:
   - Popisem problému
   - Chybovou hláškou
   - Minimálním příkladem kódu
