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
rm main.log
rm main.aux
rm main.blg
rm main.out
echo ''
echo '*********************'
echo 'Script finished executing...'
echo '*********************'
echo '😊'