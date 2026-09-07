@echo off
setlocal
if not exist build mkdir build
if not exist build\chapter mkdir build\chapter
where latexmk >nul 2>nul
if %errorlevel%==0 (
  latexmk -xelatex -outdir=build thesis.tex
) else (
  xelatex -interaction=nonstopmode -file-line-error -synctex=1 -output-directory=build thesis.tex
  bibtex build\thesis.aux
  xelatex -interaction=nonstopmode -file-line-error -synctex=1 -output-directory=build thesis.tex
  xelatex -interaction=nonstopmode -file-line-error -synctex=1 -output-directory=build thesis.tex
)
endlocal
