echo ''
echo '*********************'
echo 'Starting compilation of the latex file...'
echo '*********************'
pdflatex main
bibtex main
pdflatex main
echo ''
echo '*********************'
echo 'Generating final .pdf file...'
echo '*********************'
pdflatex main
echo ''
echo '*********************'
echo 'Removing extra files...'
echo '*********************'
rm *.log
rm *.aux
rm *.blg
rm *.out
rm *.fdb_latexmk
rm *.fls
rm *.synctex.gz
echo ''
echo '*********************'
echo 'Script finished executing...'
echo '*********************'
echo '😊'