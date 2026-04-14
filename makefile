README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "## Date et heure de generation" >> README.md
	@echo "" >> README.md
	@echo "$(shell date '+%d/%m/%Y a %H:%M:%S')" >> README.md
	@echo "" >> README.md
	@echo "## Nombre de lignes de code" >> README.md
	@echo "" >> README.md
	@echo "Le fichier \`guessinggame.sh\` contient **$(shell wc -l < guessinggame.sh) lignes** de code." >> README.md
	@echo "README.md genere avec succes."
