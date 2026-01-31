# Často kladené otázky (FAQ)

## Obecné

### Proč používat LaTeX místo Wordu?

- **Konzistentní formátování** - LaTeX automaticky dodržuje pravidla
- **Kvalitní sazba** - Profesionální typografie, správné dělení slov
- **Citace** - Automatická správa bibliografie
- **Matematika** - Nejlepší nástroj pro vzorce
- **Verzování** - Textové soubory lze snadno verzovat v Gitu
- **Stabilita** - Žádné "rozpadlé" formátování jako ve Wordu

### Musím umět programovat?

Ne. Stačí:
1. Vyplnit své údaje do šablony
2. Psát text
3. Kliknout Recompile

Šablona se postará o formátování.

### Můžu používat Overleaf zdarma?

Ano. Free tier stačí pro psaní disertace:
- Neomezený počet projektů
- Kompilace s LuaLaTeX
- Export PDF

Omezení: 1 spolupracovník, 20s timeout kompilace.

---

## Formátování

### Jak změním písmo?

V šabloně je nastaveno písmo Inter dle požadavků TUL. Pokud potřebujete změnit:

```latex
% V tul-base.cls nebo v preambuli
\setmainfont{Název písma}
```

### Jak přidám číslování rovnic?

```latex
\begin{equation}
    E = mc^2
    \label{eq:einstein}
\end{equation}

Viz rovnice \ref{eq:einstein}.
```

### Jak vytvořím seznam zkratek?

Šablona disertace obsahuje prostředí `abbreviations`:

```latex
\begin{abbreviations}
    \item[EU] Evropská unie
    \item[HDP] Hrubý domácí produkt
\end{abbreviations}
```

### Jak přidám přílohy?

```latex
\begin{appendices}

\chapter{První příloha}
Obsah přílohy...

\chapter{Druhá příloha}
...

\end{appendices}
```

---

## Citace

### Jaký citační styl používá šablona?

**ČSN ISO 690** - Harvardský styl (autor-rok):
- V textu: (Novák 2020) nebo Novák (2020)
- V seznamu literatury: abecedně podle autora

### Jak citovat webovou stránku?

```bibtex
@online{nazev2023,
    author = {{Název organizace}},
    title = {Název stránky},
    year = {2023},
    url = {https://example.com/stranka},
    urldate = {2023-12-01}   % datum, kdy jste stránku navštívili
}
```

### Jak citovat více autorů?

```bibtex
@book{example2020,
    author = {Novák, Jan and Svoboda, Petr and Dvořák, Martin},
    ...
}
```

Pro více než 3 autory se automaticky zobrazí "et al."

### Kde najdu BibTeX záznam pro knihu/článek?

- **Google Scholar** → Cite → BibTeX
- **Knihovna TUL** → Export citace
- **DOI** → [doi2bib.org](https://doi2bib.org)

---

## Obrázky a tabulky

### V jakém formátu ukládat obrázky?

| Typ | Formát | Proč |
|-----|--------|------|
| Grafy, diagramy | PDF | Vektorová grafika, škáluje bez ztráty kvality |
| Screenshoty | PNG | Bezeztrátová komprese |
| Fotografie | JPG | Menší velikost souboru |

### Proč je můj obrázek jinde, než jsem ho dal?

LaTeX umisťuje "plovoucí" objekty (figures, tables) automaticky pro optimální rozložení. Řešení:

```latex
\begin{figure}[!htbp]  % více se snaží umístit zde
% nebo
\begin{figure}[H]      % přesně zde (potřebuje \usepackage{float})
```

### Jak udělám tabulku přes celou stránku?

```latex
\begin{table}
    \begin{tabularx}{\textwidth}{lXX}
        % X = sloupec s automatickou šířkou
    \end{tabularx}
\end{table}
```

---

## Technické

### Jaký je rozdíl mezi pdfLaTeX a LuaLaTeX?

| | pdfLaTeX | LuaLaTeX |
|--|----------|----------|
| Unicode | Omezená podpora | Plná podpora |
| Systémová písma | Ne | Ano |
| Rychlost | Rychlejší | Pomalejší |
| Čeština | Potřebuje balíčky | Nativní |

**TULeX používá LuaLaTeX** kvůli lepší podpoře češtiny a písma Inter.

### Proč musím kompilovat vícekrát?

LaTeX potřebuje více průchodů pro:
1. **1. průchod** - Zjistí strukturu dokumentu
2. **Biber** - Zpracuje bibliografii
3. **2. průchod** - Vloží citace
4. **3. průchod** - Opraví křížové odkazy

Overleaf a latexmk to dělají automaticky.

### Můžu šablonu upravit?

Ano. Licence MIT umožňuje libovolné úpravy. Pokud najdete vylepšení, pošlete Pull Request.

---

## Problémy

### Kompilace končí chybou

Viz [Troubleshooting](troubleshooting.md).

### Kde najdu pomoc?

1. [Dokumentace TULeX](../README.md)
2. [GitHub Issues](../../issues)
3. [TeX Stack Exchange](https://tex.stackexchange.com)
4. [Overleaf dokumentace](https://www.overleaf.com/learn)
