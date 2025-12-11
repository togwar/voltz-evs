

**EM CONSTRUÇÃO**  
# Sugestões de configurações para controladora APT

## 🌟 Objetivo / O que você vai aprender

Efetuar alterações coesas e que realmente vão agregar no seu veículo, EVS/EVS Work.
Aqui iremos centralizar sugestões e configurações da controladora APT para a EVS/EVS Work.


## 🧰 Pré-requisitos

- Computador com Windows
- Cabo RS232
- Softwares para acesso a controladora
- compreensão que sua moto existe limites e do risco de configurar algo ERRADO poderá inutilizar o seu equipamento por completo.

## 📝 Dicas importantes

1. Ajuste do "**Limite de velocidade da marcha ré**" (Backward speed[rpm])
	- Alteração do valor de -150 para **-43 em CURRENT ROT / Backward speed[rpm]**.
		> Velocidade máxima real (5km/h), muito mais segura e confortável para manobras.  
		> Inalterado a força e a potência da "marcha ré".  
		> Essa configuração não oferece risco para a controladora.

		
![Descrição da imagem](https://github.com/togwar/voltz-evs/raw/main/Tutoriais-DIY/Sugestoes-Remap-EVS/1.png)

---

2. Ajuste fino e mais linear do **acelerador com relação ao Torque** (Throttle [V])
	- Alteração do valor de 2,3999 para **3,3200 em PEDAL FUNCTION / Throttle Bst[V]**.
	- Alteração do valor de 3,4999 para **4,1000 em PEDAL FUNCTION / Throttle high[V]**.
	- Alteração do valor de 2,1994 para **3,2800 em PEDAL FUNCTION / Throttle mid[V]**.
		> Ajuste fino de como o acelerador fica mais responsivo para o controle da moto em acelerações, agora o poder fica na mão do condutor.
		> Inalterado a força e a potência da "marcha ré".
		> Essa configuração não oferece risco para a controladora.

![Descrição da imagem](https://github.com/togwar/voltz-evs/raw/main/Tutoriais-DIY/Sugestoes-Remap-EVS/2.png)


- Com esses ajustes, a moto passa a entregar sua potência de acordo com o giro do acelerador com 2x mais precisão, resultando em uma maior linearidade.

- Na imagem abaixo, temos um gráfico comparando a configuração original da moto (em AZUL) com a alteração propósta (em VERDE).
		
![Descrição da imagem](https://github.com/togwar/voltz-evs/raw/main/Tutoriais-DIY/Sugestoes-Remap-EVS/3.png)

---

3. Ativando o Controle de Cruzeiro.
	- O Cruise Control é uma função nativa da controladora APT, para ativá-la, no menu **PEDAL FUNCTION / Cruise Enable**.  
	
![Descrição da imagem](https://github.com/togwar/voltz-evs/raw/main/Tutoriais-DIY/Sugestoes-Remap-EVS/4.png)

	
- Para ativá-la, com a moto andando em uma velocidade superiror a 30 km/h, mantenha fixo, preciso, estável o acelerador, mantendo a moto acelerando na posição que deseja, e precione o botão de ré ("R" na mão esquerda) por 2 segundos.
- Você deverá sentir uma sutil acelerada, e pode soltar o acelerador que ela irá manter, até que você acelere ela novamente ou encoste no freio (até aparecer o "P" no painel).
- **Atenção**: Caso salve o controle de cruzeiro em um modo inferior, exemplo 90% do ECO, e se você alterar o modo de condução, a moto continuará com o controle de cruzeiro ativo, porém ganhará a força extra do modo Standard. O inverso também se aplica.

	> - Essa função veio desativada pela Voltz na família EVS.  
	> - Essa função permite a moto manter acelerando em **uma potência** constante fixa de acordo com o momento que você ativou ela.
	> - Essa configuração não oferece risco para a controladora.
	> - Não habilite essa função para ficar andando sem as mãos na moto, **exceto se você trabalha em um círco** ou é profissional de entreterimento. 🤣

---