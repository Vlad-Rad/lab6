#!bin/bash                                    	# Шлях до інтерпретатора

ls *.jpg | shuf -n 1 |while read file; do 	# Цикл зі списку із розширенням .jpg та сортування у випадковому порядку
	echo $(readlink -f ./$file);		# Вивід на екран шляху до випадкового зображення
	gsettings set org.gnome.desktop.background picture-uri  "file://$(readlink -f ./$file)"; # Зміна шпалер робочого столу
	break;											 # Вихід, так як потрібно лише раз змінити

done	# Кінець циклу

