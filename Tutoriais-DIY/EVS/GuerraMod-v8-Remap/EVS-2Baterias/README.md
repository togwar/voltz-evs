# **CUIDADO!!! EM CONSTRUÇÃO**  
## VOLTE MAIS TARDE!!

![Descrição da imagem](000.jpg)

# GuerraMod v8 – Voltz EVS (2026)

**Versão:** 8.0  
**Ano:** 2026
**Modelo:** EVS com duas Baterias (ou superior)

**Status:** Consolidação Técnica Estável  
**Autor:** Tiago Guerra  
**Plataforma:** Voltz EVS  
**Controladora:** APT (original da Voltz EVS)

---

## 📚 Sumário

1. [Introdução](#1-introdu%C3%A7%C3%A3o)
2. [Configuração Original de Fábrica](#2-configura%C3%A7%C3%A3o-original-de-f%C3%A1brica)
3. [Premissas Técnicas do Projeto](#3-premissas-t%C3%A9cnicas-do-projeto))
4. [Filosofia de Calibração](#4-filosofia-de-calibra%C3%A7%C3%A3o) 
5. [Configuração Base – GuerraMod v8](#5-configura%C3%A7%C3%A3o-base--guerramod-v8)  
	5.1 [Velocidade da Marcha Ré](#51-altera%C3%A7%C3%B5es-m%C3%ADnimas-para-conforto-e-seguran%C3%A7a)
		5.1.1 [Velocidade da Marcha Ré](#511-ajuste-do-limite-de-velocidade-da-marcha-r%C3%A9-backward-speedrpm)
6. [6](#-6)
7. [7](#-7)

---

## 1. Introdução

A Voltz EVS representa uma das primeiras tentativas de popularização da mobilidade elétrica sobre duas rodas no Brasil.  
Apesar do mérito do projeto, a calibração original da controladora APT foi concebida de forma genérica, buscando atender um amplo espectro de cenários, usuários e condições climáticas.

Na prática, isso resultou em uma motocicleta funcional, porém com comportamento pouco refinado, especialmente em uso urbano intenso, rodovias longas e regiões de serra.

As versões anteriores do **GuerraMod** (v3.7, v4.x e v5.x) surgiram como documentação exploratória, registrando hipóteses, tentativas e descobertas empíricas.  
O **GuerraMod v8** rompe com esse caráter experimental e estabelece uma **configuração técnica consolidada**.

---

## 2. Configuração Original de Fábrica

A configuração original da Voltz EVS apresenta as seguintes características:

- Limites de corrente DC pouco restritivos  
- Nenhuma regeneração ou regeneração pouco previsível  
- Uso genérico de *Flux Weakening*  
- Ausência de perfis distintos de uso  
- Nenhuma documentação técnica pública  

Essas escolhas **não são erros**, mas reflexos de uma filosofia de calibração **conservadora e genérica**.

---

## 3. Premissas Técnicas do Projeto

Premissas adotadas no **GuerraMod v8**:

- Firmware Base ideal:
	- **A1705_V10000_EVS_IA_130_YM-T9.dat**, powered by APT [saiba mais](https://github.com/togwar/voltz-evs/tree/main/Firmware/APT/evs#%EF%B8%8F-a1705_v10000_evs_ia_130_ym-t9dat---12dez2025)
	- **OU** A1705_V10000_EVS_130_YM-T7.dat, powered by APT [saiba mais](https://github.com/togwar/voltz-evs/tree/main/Firmware/APT/evs#%EF%B8%8F-a1705_v10000_evs_130_ym-t7dat---12dez2025)
- Motor **in-wheel IPMSM** (sem redução mecânica)  
- **Corrente DC** como principal fator de stress do sistema  
- Rotação física máxima ≈ **1100 rpm** (≈ **130 km/h**)  
- Bateria Li-ion **20S** (1 pack ou 2 packs )  
- *Flux Weakening* tratado apenas como extensão, não como solução  

---

## 4. Filosofia de Calibração

O **GuerraMod v8** se baseia em quatro pilares:

1. Previsibilidade  
2. Durabilidade  
3. Conforto  
4. Segurança  

A calibração **não busca performance máxima**, mas **coerência, repetibilidade e estabilidade** no uso real.

---

## 5. Configuração Base – GuerraMod v8

### 5.1 Alterações Mínimas para conforto e segurança

#### 5.1.1. Ajuste do "**Limite de velocidade da marcha ré**" (Backward speed[rpm])
- Alteração do valor de -150 para **-43 em CURRENT ROT / Backward speed[rpm]**.
	> Velocidade máxima real (5km/h), muito mais segura e confortável para manobras.  
	> Inalterado a força e a potência da "marcha ré".  
	> Essa configuração não oferece risco para a controladora.

		
![Descrição da imagem](1.png)

---

#### 5.1.2. Ajuste fino e mais linear do **acelerador com relação ao Torque** (Throttle [V])
	- Alteração do valor de 2,3999 para **3,3200 em PEDAL FUNCTION / Throttle Bst[V]**.
	- Alteração do valor de 3,4999 para **4,1000 em PEDAL FUNCTION / Throttle high[V]**.
	- Alteração do valor de 2,1994 para **3,2800 em PEDAL FUNCTION / Throttle mid[V]**.
		> Ajuste fino de como o acelerador fica mais responsivo para o controle da moto em acelerações, agora o poder fica na mão do condutor.
		> Inalterado a força e a potência da "marcha ré".
		> Essa configuração não oferece risco para a controladora.

![Descrição da imagem](2.png)


- Com esses ajustes, a moto passa a entregar sua potência de acordo com o giro do acelerador com 2x mais precisão, resultando em uma maior linearidade.

- Na imagem abaixo, temos um gráfico comparando a configuração original da moto (em AZUL) com a alteração propósta (em VERDE).
		
![Descrição da imagem](3.png)

---

#### 5.1.3. Ativando o Controle de Cruzeiro.
	- O Cruise Control é uma função nativa da controladora APT, para ativá-la, no menu **PEDAL FUNCTION / Cruise Enable**.  
	
![Descrição da imagem](4.png)

	
- Para ativá-la, com a moto andando em uma **velocidade superiror** a 30 km/h, **mantenha fixo, preciso e estável o acelerador**, mantendo a moto acelerando na posição que deseja, e precione o botão de ré ("R" na mão esquerda).
- Você deverá sentir uma sutil acelerada, e pode soltar o acelerador que ela irá manter, até que você acelere ela novamente ou encoste no freio (até aparecer o "P" no painel).
- **Atenção**: Caso salve o controle de cruzeiro em um modo inferior, exemplo 90% do ECO, e se você alterar o modo de condução, a moto continuará com o controle de cruzeiro ativo, porém ganhará a força extra do modo Standard. O inverso também se aplica.

	> - Essa função veio desativada pela Voltz na família EVS.  
	> - Essa função permite a moto manter acelerando em **uma potência** constante fixa de acordo com o momento que você ativou ela.
	> - Essa configuração não oferece risco para a controladora.
	> - Não habilite essa função para ficar andando sem as mãos na moto, **exceto se você trabalha em um círco** ou é profissional de entreterimento. 🤣


### 5.2 Voltage Set

**Configuração original:**
- Under VDC ≈ 62 V  
- IDC min percent ≈ 20 %

**GuerraMod v8:**
- Under VDC = 64–65 V  
- IDC min percent = 30–35 %

**Justificativa:**  
Redução de stress das células, menor queda abrupta de desempenho e maior previsibilidade.

---

### 5.3 Current Rotation

**Configuração original:**
- Max speed = 2500 rpm (valor irreal)  
- Max Iac pk = 400 A  
- Boost ativo prolongado  

**GuerraMod v8:**
- Max speed = 1100 rpm (≈ 130 km/h)  
- Rated speed @72V = 740 rpm (≈ 88 km/h)  
- Max Iac pk = 325 A  
- Boost active sec = 15 s  

**Justificativa:**  
Respeito ao limite físico do motor e melhor controle térmico do estator.

---

### 5.4 Torque PID

**Configuração original:**
- Ganhos elevados em alta rotação  

**GuerraMod v8:**
- Redução seletiva de *Iq kp/ki* em alta rotação  

**Justificativa:**  
Evitar oscilações, aquecimento e instabilidade próximo ao *Flux Weakening*.

---

### 5.5 Flux Weakening

**Configuração original:**
- FW genérico, sem critério de aplicação  

**GuerraMod v8:**
- FW conservador, sem forçar aumento de rotação  

**Justificativa:**  
Em motor *in-wheel*, FW excessivo gera mais perdas do que ganhos.

---

### 5.6 IAC Set e Pedal Function

**Configuração original:**
- Resposta genérica e pouco linear  

**GuerraMod v8:**
- Curva de torque progressiva  
- Resposta de pedal refinada  

**Justificativa:**  
Separar sensação de aceleração dos limites elétricos do sistema.

---

## 6. Perfis de Uso

### 6.1 Perfil Cidade

**Objetivo:**
- Conforto  
- Controle em baixa velocidade  
- Regeneração mínima  

**Principais ajustes:**
- Min reg speed = 300 rpm (≈ 35 km/h)  
- Max slip reg Q = 0  

---

### 6.2 Perfil Rodovia

**Objetivo:**
- Estabilidade  
- Freio motor leve  
- Menor desgaste mecânico  

**Principais ajustes:**
- Min reg speed = 400 rpm (≈ 48 km/h)  
- Max slip reg Q = -300  

---

## 7. Regeneração

A regeneração no **GuerraMod v8** é tratada como **ferramenta auxiliar**, não como substituta do freio mecânico.

**Configuração original:**
- Regeneração irregular  
- Pouco previsível  

**GuerraMod v8:**
- Regeneração progressiva  
- Corrente limitada  
- Respeito à capacidade da bateria  

---

## 8. Comparativo Histórico

- **v3.7 / v4.x**
  - Exploratório  
  - Empírico  

- **v5.x**
  - Refinamento prático  

- **v8**
  - Consolidação técnica  
  - Baseline definitivo  

---

## 9. Limitações Conhecidas

- Telemetria limitada  
- Ausência de sensores térmicos detalhados  
- Dependência do painel original  

---

## 10. Conclusão

O **GuerraMod v8** encerra o ciclo de experimentação e estabelece uma **documentação técnica madura**, aplicável e defensável para a plataforma **Voltz EVS**.

---

> ⚠️ **Aviso**  
> Este projeto não possui vínculo oficial com a Voltz Motors.  
> O uso das informações aqui descritas é de responsabilidade do usuário.





## 📝 Dicas importantes


---

