

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

## ⏱️ Momentos importantes do vídeo

1. Ajuste do "Limite de velocidade da marcha ré" (Backward speed[rpm])
	- Alteração do valor de -150 para **-43 em CURRENT ROT / Backward speed[rpm]**.
		> Velocidade máxima real (5km/h) muito mais segura e confortável para manobras
		> Inalterado a força e a potência da "marcha ré".
		> Essa configuração não oferece risco para a controladora.
		
![Descrição da imagem](https://github.com/togwar/voltz-evs/raw/main/Tutoriais-DIY/Sugestoes-Remap-EVS/1.png)

---

2. Ajuste fino e mais linear do acelerador com relação ao Torque (Throttle [V])
	- Alteração do valor de 2,3999 para **3,3200 em PEDAL FUNCTION / Throttle Bst[V]**.
	- Alteração do valor de 3,4999 para **4,1000 em PEDAL FUNCTION / Throttle high[V]**.
	- Alteração do valor de 2,1994 para **3,2800 em PEDAL FUNCTION / Throttle mid[V]**.
		> Ajuste fino de como o acelerador fica mais responsivo para o controle da moto em acelerações, agora o poder fica na mão do condutor.
		> Inalterado a força e a potência da "marcha ré".
		> Essa configuração não oferece risco para a controladora.

![Descrição da imagem](https://github.com/togwar/voltz-evs/raw/main/Tutoriais-DIY/Sugestoes-Remap-EVS/2.png)


	Com esses ajustes, a moto passa a entregar a potência da moto de acordo com o giro do acelerador com muito maior precisão, resultando em uma maior linearidade.
	
	O ganho de controle na precisão do acelerador é 2x maior.
	
	Na imagem abaixo, temos um gráfico comparando a configuração original da moto (em AZUL) com a alteração propósta (em VERDE).
		
![Descrição da imagem](https://github.com/togwar/voltz-evs/raw/main/Tutoriais-DIY/Sugestoes-Remap-EVS/3.png)

---