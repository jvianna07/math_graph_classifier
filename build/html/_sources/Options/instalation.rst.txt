Instalação
+++++++++++


Clonar o repositório
======================

Clone o repositório na sua máquina.
Para clonar e entrar na pasta, execute o código:
::    
    git clone git@github.com:jvianna07/math_graph_classifier.git && cd math_graph_classifier/


Criar ambiente virtual e instalar as dependências
===================================================
Crie o ambiente virtual e instale as dependências.
Você pode criar o ambiente virtual e dar o nome a sua escolha.
No entanto, esta aplicação funciona com python 3.9 a 3.12 que é compatível com o tensorflow 2
caso use ``conda`` use o comando ``create`` para criar o ambiente virtual.
::
    conda create -n fgraphs python=3.10

Este comando irá criar o ambiente virtual com o nome ``fgraphs`` e python 3.10.
Para ativar use o comando ``activate``.
::
    conda activate fgraphs


Para instalar as dependências execute:
::
    pip install -r requirements.txt


Obter o dataset (opcional)
=======================================================

Após instalar, você pode baixar o dataset de teste para classificar.
Para obter o dataset, execute:
::
    ./setup


Alternativamente pode usar o comando ``source`` para o mesmo fim.
::
    source setup.sh

Isto irá criar uma pasta com o nome dataset e um arquivo de dataset nela.
