# Jak citovat (ČSN ISO 690)

Šablony TULeX používají **Harvardský styl** citování dle normy ČSN ISO 690.

## Základní příkazy

### Citace v textu

```latex
% Autor jako součást věty
Podle \textcite{novak2020} je důležité...
% → Novák (2020) tvrdí, že...

% Citace v závorce na konci věty
Výzkum to potvrdil \parencite{smith2021}.
% → ...potvrdil (Smith 2021).

% Více zdrojů najednou
Studie ukazují \parencite{novak2020,smith2021,jones2019}.
% → ...(Jones 2019; Novák 2020; Smith 2021).

% Citace s číslem stránky
Jak uvádí autor \parencite[s.~45]{novak2020}.
% → ...(Novák 2020, s. 45).
```

## Typy zdrojů v references.bib

### Kniha

```bibtex
@book{novak2020,
    author = {Novák, Jan and Dvořák, Petr},
    title = {Název knihy},
    publisher = {Grada Publishing},
    location = {Praha},
    year = {2020},
    edition = {2},           % volitelné: vydání
    isbn = {978-80-...},     % volitelné
    langid = {czech}
}
```

### Článek v časopise

```bibtex
@article{smith2021,
    author = {Smith, John},
    title = {Název článku},
    journaltitle = {Journal of Economics},
    volume = {15},
    number = {3},
    pages = {100--125},
    year = {2021},
    doi = {10.1000/xyz123},  % volitelné
    langid = {english}
}
```

### Kapitola v knize

```bibtex
@incollection{horvath2019,
    author = {Horváth, Peter},
    title = {Název kapitoly},
    booktitle = {Název knihy},
    editor = {Editor, Jan},
    publisher = {Vydavatel},
    location = {Město},
    year = {2019},
    pages = {50--75},
    langid = {czech}
}
```

### Webová stránka

```bibtex
@online{eurostat2023,
    author = {{Eurostat}},           % organizace v {{}}
    title = {Název stránky},
    year = {2023},
    url = {https://example.com},
    urldate = {2023-12-01},          % datum přístupu
    langid = {english}
}
```

### Disertační/diplomová práce

```bibtex
@thesis{koubek2018,
    author = {Koubek, Pavel},
    title = {Název práce},
    type = {Disertační práce},       % nebo: Diplomová práce
    institution = {VŠE v Praze},
    location = {Praha},
    year = {2018},
    langid = {czech}
}
```

### Konferenční příspěvek

```bibtex
@inproceedings{svoboda2022,
    author = {Svoboda, Tomáš},
    title = {Název příspěvku},
    booktitle = {Sborník konference XYZ},
    publisher = {Organizátor},
    location = {Město},
    year = {2022},
    pages = {45--52},
    langid = {czech}
}
```

### Zpráva / Report

```bibtex
@report{oecd2022,
    author = {{OECD}},
    title = {Economic Outlook 2022},
    type = {Annual Report},
    institution = {OECD},
    location = {Paris},
    year = {2022},
    langid = {english}
}
```

## Časté chyby

### Špatně: Chybí langid

```bibtex
% ŠPATNĚ - chybí langid
@book{novak2020,
    author = {Novák, Jan},
    title = {Kniha},
    ...
}

% SPRÁVNĚ
@book{novak2020,
    author = {Novák, Jan},
    title = {Kniha},
    langid = {czech},   % ← důležité pro správné formátování
    ...
}
```

### Špatně: Organizace bez dvojitých závorek

```bibtex
% ŠPATNĚ - autor se rozdělí
@online{who2023,
    author = {World Health Organization},
    ...
}

% SPRÁVNĚ
@online{who2023,
    author = {{World Health Organization}},  % ← dvojité {{}}
    ...
}
```

### Špatně: Chybí urldate u online zdrojů

```bibtex
% ŠPATNĚ - chybí datum přístupu
@online{web2023,
    author = {Autor},
    url = {https://example.com},
    ...
}

% SPRÁVNĚ
@online{web2023,
    author = {Autor},
    url = {https://example.com},
    urldate = {2023-12-01},   % ← povinné
    ...
}
```

## Tipy

1. **Konzistence** - používejte jednotný formát jmen (Příjmení, Jméno)
2. **Klíče** - volte snadno zapamatovatelné (autor + rok: `novak2020`)
3. **Kontrola** - zkontrolujte výstup v PDF, zda citace vypadají správně
4. **Zálohování** - verzujte `references.bib` v Gitu

## Další zdroje

- [Metodika citování TUL](https://knihovna.tul.cz/citace)
- [Generátor citací CitacePro](https://www.citace.com)
- [BibTeX dokumentace](https://www.bibtex.org)
