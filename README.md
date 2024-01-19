# Kinetisches Beispielmodell zur Darstellung von ASTHERISC-Prinzipien

In diesem Repository finden sich alle relevanten Skripte und Daten zum kinetischen Beispielmodell aus Kapitel 5 der Dissertation "Entwicklung neuer Methoden zur Integration thermodynamischer und enzymatischer Nebenbedingungen in der constraint-basierten metabolischen Modellierung" von Pavlos Stephanos Bekiaris.

Die Skripte sind in Python 3 geschrieben und nutzen die Bibliothek Tellurium [1] und die damit kompatible Auszeichnungssprache Antimony [2].

## Wichtigste Dateien und Ordner des Repositorys

Das Beispielmodell selbst ist in der Auszeichnungssprache Antimony [2] geschrieben und findet sich in der Datei "toymodel_expanded_with_Xin_and_Min_same_m_same_x_ss1_cs1.antimony".

Die in der Dissertation gezeigte randomisierte Studie wurde mithilfe der Bibliothek Tellurium [1] geschrieben und findet sich in der Datei "main_steady_state_same_m_same_x_ss1_cs1.py".

Die relevanten Resultate der randomisierten Studie finden sich in den txt-Dateien im Unterordner "statistics_same_m_same_x_ss1_cs1". Hierbei ist insbesondere die Datei "extra_data.txt" hervorzuheben, in der sich eine textlich visualisierte Darstellung aller akzeptierten Parametrisierungen findet. Die anderen txt-Dateien zeigen grundlegende Statisiken zu den im Dateinamen anzeigten Werten, aus denen auch die Tab. 5.1 der Dissertation auffindbaren erstellt werden konnte.

Abb 5.3 des Kapitels wurde mittels des [matplotlib](https://matplotlib.org/)-nutzenden Skriptes "x_statistics.py" erzeugt.

Erweiterte Statistiken - wie etwa ob ein Gemeinschaftsvorteil immer bei bestimmten X1:X2-Verhältnissen vorliegt - werden durch das Skript "community_advantage_statistics.py" generiert.

Alle mit "z" beginnenden Dateien snnd Teil der im Kapitel 5.3 vorgestellten Analyse mit OptMDFpathway [3] und dem Beispielmodell. Die konkrete Analyse findet sich dabei in "ztest_model_with_optmdfpathway.py".

Das mit "_TEST.py" endende Skript und das mit "_TEST.antimony" endende Modell stellen die Analyse mit einer bestimmten Parametrisierung des kinetischen Beispielmodells dar, in diesem Falle eine, in der [X<sub>2</sub>]>[X<sub>1</sub>] gilt, aber dennoch kein Gemeinschaftsvorteil erzielt werden kann. Die Änderung der Parameter kann einem dabei u.a. die Abhängigkeit der Parameteränderungen (bspw. mit den Parametern von R7 und R8) hinstichtlich des Einstellens von [X<sub>1</sub>] und dem Gemeinschaftsvorteils aufzeigen, indem das Skript mit entsprechend veränderten Paramtern laufen lassen wird und die Ergebnisse der einzelnen Läufe miteinander verglichen werden.

## Installationsanweisungen

Das Ausführen der Pythonskripte erfolgt in einem eigenen [Anaconda](https://www.anaconda.com/)-Environment. Hat man Anaconda auf seinem System installiert (bspw. über [Miniforge](https://github.com/conda-forge/miniforge)), so kann man das Environment über folgenden Konsolenbefehl installieren:

```sh
conda env create -n kinetic-modeling-psb -f environment.yml
```

Das Environment lässt sich dann über folgenden Befehl aktivieren:

```sh
conda activate kinetic-modeling-psb
```

Nun kann man, über den "python"-Befehl, die gewünschten Skripte ausführen.

## Deinstallationsanweisungen

Möchte man das hiesige Anaconda-Environment löschen, kann man dafür in der Konsole den folgenden Befehl ausführen:

```sh
conda env remove -n kinetic-modeling-psb
```

## Referenzen

[1] https://doi.org/10.1016/j.biosystems.2018.07.006<br>
[2] https://doi.org/10.1093/bioinformatics/btp401<br>
[3] https://doi.org/10.1371/journal.pcbi.1006492
