# Vkládání obrázků a tabulek

## Obrázky

### Základní vložení

```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{nazev-obrazku.png}
    \caption{Popis obrázku}
    \label{fig:muj-obrazek}
\end{figure}
```

### Odkaz na obrázek v textu

```latex
Jak je vidět na Obrázku \ref{fig:muj-obrazek}, ...
```

### Podporované formáty

| Formát | Doporučení |
|--------|------------|
| `.png` | Screenshoty, diagramy s textem |
| `.pdf` | Vektorová grafika, grafy |
| `.jpg` | Fotografie |

### Umístění obrázku

Parametr `[htbp]` určuje, kam LaTeX může obrázek umístit:
- `h` = here (zde, pokud možno)
- `t` = top (nahoře na stránce)
- `b` = bottom (dole na stránce)
- `p` = page (samostatná stránka)

### Šířka obrázku

```latex
\includegraphics[width=0.5\textwidth]{...}   % 50% šířky textu
\includegraphics[width=10cm]{...}            % přesná šířka
\includegraphics[scale=0.8]{...}             % 80% původní velikosti
```

### Dva obrázky vedle sebe

```latex
\begin{figure}[htbp]
    \centering
    \begin{minipage}{0.48\textwidth}
        \centering
        \includegraphics[width=\textwidth]{obrazek1.png}
        \caption{První obrázek}
        \label{fig:prvni}
    \end{minipage}
    \hfill
    \begin{minipage}{0.48\textwidth}
        \centering
        \includegraphics[width=\textwidth]{obrazek2.png}
        \caption{Druhý obrázek}
        \label{fig:druhy}
    \end{minipage}
\end{figure}
```

---

## Tabulky

### Základní tabulka

```latex
\begin{table}[htbp]
    \centering
    \caption{Popis tabulky}
    \label{tab:moje-tabulka}
    \begin{tabular}{lcc}
        \toprule
        \textbf{Název} & \textbf{Sloupec 1} & \textbf{Sloupec 2} \\
        \midrule
        Řádek 1 & 100 & 200 \\
        Řádek 2 & 150 & 250 \\
        Řádek 3 & 200 & 300 \\
        \bottomrule
    \end{tabular}
\end{table}
```

### Zarovnání sloupců

```latex
\begin{tabular}{lcr}
%              l = left (vlevo)
%              c = center (střed)
%              r = right (vpravo)
```

### Tabulka přes celou šířku

```latex
\begin{table}[htbp]
    \centering
    \caption{Široká tabulka}
    \begin{tabularx}{\textwidth}{lXX}
        \toprule
        \textbf{Název} & \textbf{Dlouhý text 1} & \textbf{Dlouhý text 2} \\
        \midrule
        A & Text, který se automaticky zalomí & Další dlouhý text \\
        B & Více textu zde & A ještě více \\
        \bottomrule
    \end{tabularx}
\end{table}
```

### Sloučení buněk

```latex
\begin{tabular}{lcc}
    \toprule
    & \multicolumn{2}{c}{\textbf{Hodnoty}} \\  % sloučení 2 sloupců
    \cmidrule(lr){2-3}
    \textbf{Rok} & \textbf{A} & \textbf{B} \\
    \midrule
    2020 & 10 & 20 \\
    2021 & 15 & 25 \\
    \bottomrule
\end{tabular}
```

### Čáry v tabulce

```latex
\toprule      % silná čára nahoře
\midrule      % střední čára (pod hlavičkou)
\bottomrule   % silná čára dole
\cmidrule{2-3} % čára jen pod sloupci 2-3
```

**Doporučení:** Nepoužívejte svislé čáry (`|`), tabulky vypadají lépe bez nich.

---

## Tipy

### Správné pořadí caption a label

```latex
\begin{figure}
    \centering
    \includegraphics{...}
    \caption{Popis}      % PRVNÍ caption
    \label{fig:...}      % POTOM label
\end{figure}
```

### Kam ukládat obrázky

Doporučená struktura:
```
projekt/
├── main.tex
├── figures/          ← obrázky zde
│   ├── graf1.png
│   └── diagram.pdf
└── ...
```

V šabloně je již nastaveno `\graphicspath{{figures/}}`, takže stačí:
```latex
\includegraphics{graf1.png}   % bez cesty
```

### Velké tabulky

Pro tabulky přes více stránek použijte `longtable`:

```latex
\begin{longtable}{lcc}
    \caption{Dlouhá tabulka} \label{tab:dlouha} \\
    \toprule
    \textbf{A} & \textbf{B} & \textbf{C} \\
    \midrule
    \endfirsthead

    \multicolumn{3}{c}{{\tablename\ \thetable{} -- pokračování}} \\
    \toprule
    \textbf{A} & \textbf{B} & \textbf{C} \\
    \midrule
    \endhead

    \bottomrule
    \endfoot

    % Data tabulky
    1 & 2 & 3 \\
    4 & 5 & 6 \\
    % ... mnoho řádků
\end{longtable}
```
