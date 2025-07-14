#!/bin/bash

#Link do arquivo: https://drive.google.com/file/d/1SqDrEWdYIKbx71ycqHDi81R7l6trl26V/view?usp=sharing

# ID do arquivo no Google Drive
file_id="1SqDrEWdYIKbx71ycqHDi81R7l6trl26V"

# Baixa o arquivo com gdown
echo "Baixando dataset.pkl.zip com gdown..."
gdown --id "$file_id" --output "dataset.pkl.zip"

echo "Download concluído: dataset.pkl.zip"

echo "Unziping file..."

unzip -o dataset.pkl.zip

echo "Removendo ficheiros duplicados"

rm dataset.pkl.zip

echo "Criando o dataset"

mkdir -p dataset && mv -f LID_fg_dataset.pkl dataset/dataset.pkl

echo "Finalizado."
