*Instalacao facil do meanjs.org*

**Apos instalar o ubuntu(testado no ubuntu 14.04) fazer um update para atualizar:**

<code>
sudo apt-get update
</code>

**Instalar o git para poder clonar este repositorio.**

<code>
sudo apt-get install git
</code>

**Clonando este repositorio.**

<code>
git clone https://github.com/mmaia/meanjs_ptBR.git
</code>

Apos clonar o projeto navegue para dentro do diretorio do projeto(onde se encontram os scripts .sh) e digite o seguinte comando para dar permissao de execucao nos scripts baixados

<code>
chmod +x *.sh
</code>

**Intalando o banco de dados nosql MongoDB ultima versao estavel**

Para instalar o mongo db execute o script install-mongodb-ubuntu.sh como administrador: 

<code>
sudo ./install-mongodb-ubuntu.sh
</code>

ATENCAO: Todos os outros scripts abaixo devem ser instalados SEM UTILIZAR O sudo, ou seja com o usuario local. NAO UTILIZE MAIS O SUDO OU A INSTALACAO DO MEANJS.ORG IRA FALHAR


**Instalar Nodejs 0.12.9**

Execute o script install-nodejs-0.12.9

<code>
./install-nodejs-0.12.9.sh
</code>

**Instalar o meanjs.org**

Execute o script install-meanjsorg.sh

<code>
./install-meanjsorg.sh
</code>

**Executando o meanjs**

Navegue pelo terminal para o diretorio meanjs criado e digite o seguinte comando: 

<code>
gulp
</code>

Pronto vc agora pode acessar a url defaul to meanjs.org local no endereco: http://localhost:3000