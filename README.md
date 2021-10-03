# Loja-Vinhos
Projeto para a disciplina de Banco de Dados para Tecnologia da Informação.

Descrição

Uma loja de vinhos quer informatizar as informações referentes a seus vinhos. Para isto, deseja manter o cadastro dos vinhos com o nome, tipo, ano, descrição e qual vinícola produziu o vinho. Também deseja guardar as informações: das vinícolas, com nome, descrição, telefone, email e a região que pertence; e das regiões com nome e descritivo. 
Com isto, montou-se o seguinte modelo conceitual:

![Modelo Conceitual](https://raw.githubusercontent.com/luishpaiva/Loja-Vinhos/main/Modelo%20Conceitual.png)

E o seguinte modelo lógico:

![Modelo Lógico](https://raw.githubusercontent.com/luishpaiva/Loja-Vinhos/main/Modelo%20L%C3%B3gico.png)

A partir disto:

- Faça o modelo físico;
- Insira pelo menos 5 registros em cada tabela, mantendo as integridades referenciais;
- Faça uma consulta que liste o nome e ano dos  vinhos, incluindo o nome da vinícula e o nome da região que ela pertence;
- Crie um usuário Somellier, que deve ter acesso pelo localhost ao Select da tabela Vinho e ao Select do campo codVinicula e nomeVinicula da tabela Vinicula. Além disto, ele somente pode realizar 40 consultas por hora;
