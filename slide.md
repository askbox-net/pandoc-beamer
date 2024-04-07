---
title: Pandoc+Beamerチュートリアル
subtitle: Markdownで日本語プレゼン資料
institute: "https://www.askbox.net"
author: askbox
date: date
fontsize: 9pt
#theme: "Frankfurt"
theme: "metropolis"
colortheme: "beaver"
fonttheme: "professionalfonts"
mainfont: "Hiragino Mincho Pro"
aspectratio: 169
urlcolor: red
linkstyle: bold
#titlegraphic: titlegraphic.png
#logo: logo.png

header-includes: |
    \usepackage{zxjatype}
    \usepackage[haranoaji,deluxe]{zxjafont}
    \usepackage{tikz}
    \usetikzlibrary{mindmap}
    <!--
    \setCJKmainfont[Scale=0.5]{Hiragino Mincho Pro}
    \usetheme[
        block=fill, % ブロックに背景をつける
        progressbar=foot, % 各スライドの下にプログレスバー
        numbering=fraction % 合計ページ数を表示
    ]{metropolis}
    \setbeamerfont{frame numbering}{size=\small}
    //-->
    \setbeamertemplate{footline}{
        \leavevmode\kern1em
        \href{https://www.askbox.net}{https://www.askbox.net}
        \hfill
        更新日: \number\year 年\number\month 月\number\day 日
        \usebeamercolor[fg]{page number in head/foot}
        \usebeamercolor[fg]{page number in head/foot}
        \usebeamerfont{page number in head/foot}
        \insertframenumber\,/\,\inserttotalframenumber\kern1em\vskip2pt
    }
---

# TikZでマインドマップ(Mindmap)
\begin{center}
\scalebox{0.75}{
\begin{tikzpicture}
\path[mindmap,concept color=black!80,text=white]
node[concept] { OS }
[clockwise from=0]
child[concept color=blue!80] {
    node[concept] { Linux }
    [clockwise from=90]
    child { node[concept] { Debian } }
    child { node[concept] { Ubuntu } }
    child { node[concept] { Red Hat } }
    child { node[concept] { Archlinux } }
}
child[concept color=red!80] { node[concept] { MacOS } }
child[concept color=orange!80] { node[concept] { Windows } }
child[concept color=gray!80] { node[concept] { Unix } };
\end{tikzpicture}
}
\end{center}

# TikZでマインドマップ(Mindmap)
```latex
\begin{tikzpicture}
\path[mindmap,concept color=black!80,text=white]
node[concept] { OS }
[clockwise from=0]
child[concept color=blue!80] {
    node[concept] { Linux }
    [clockwise from=90]
    child { node[concept] { Debian } }
    child { node[concept] { Ubuntu } }
    child { node[concept] { Red Hat } }
    child { node[concept] { Archlinux } }
}
child[concept color=red!80] { node[concept] { MacOS } }
child[concept color=orange!80] { node[concept] { Windows } }
child[concept color=gray!80] { node[concept] { Unix } };
\end{tikzpicture}
```

# PlantUMLでシーケンス図

```{.plantuml caption="**PlantUML**によるシーケンス図" width=50%}
@startuml
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response
Alice -> Bob: Another authentication Request
Alice <-- Bob: Another authentication Response
@enduml
```


# PlantUMLでシーケンス図

```
@startuml
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response
Alice -> Bob: Another authentication Request
Alice <-- Bob: Another authentication Response
@enduml
```

