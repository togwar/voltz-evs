# Sugestões de configurações para controladora APT

# GuerraMod v8 – Voltz EVS

**Versão:** 8.0  
**Ano:** 2026  

## Introdução

O **GuerraMod v8** consolida **4 anos de uso real, testes e amadurecimento técnico** da motocicleta elétrica **Voltz EVS**.  
O projeto parte da **calibração original da controladora APT** e realiza ajustes criteriosos para adequação ao **uso urbano e rodoviário brasileiro**, respeitando integralmente as limitações físicas do conjunto.

Este não é um projeto experimental ou exploratório, mas sim uma **consolidação técnica estável**.

---

## Premissas Técnicas

O GuerraMod v8 foi desenvolvido considerando as seguintes premissas fundamentais:

- Motor **in-wheel IPMSM**
- Controladora **APT**
- Bateria Li-ion em arquitetura **20S**
- Limite físico de rotação do motor em torno de **1100 rpm** (≈ **130 km/h reais**)
- **Corrente DC** como principal fator limitante de durabilidade do sistema

Essas premissas norteiam todas as decisões de calibração.

---

## Filosofia do Projeto

O GuerraMod v8 é guiado por quatro pilares:

- **Previsibilidade**
- **Durabilidade**
- **Conforto**
- **Segurança**

Não se trata de *tuning agressivo*, aumento artificial de desempenho ou exploração de limites.  
O foco é **engenharia aplicada**, com comportamento coerente, repetível e defensável tecnicamente.

---

## Configuração Base

A configuração base do GuerraMod v8 atua nos seguintes blocos da controladora APT:

- **Voltage Set**
- **Current Rot**
- **Torque PID**
- **Flux Weakening**
- **IAC Set**
- **Pedal Function**

Todos os parâmetros foram ajustados de forma **conservadora, coerente e integrada**, buscando equilíbrio entre desempenho utilizável, eficiência e longevidade dos componentes.

---

## Perfis de Uso

O projeto define dois perfis principais de utilização:

- **Cidade**
  - Suavidade de resposta  
  - Regeneração mínima  
  - Controle refinado em baixa velocidade  

- **Rodovia**
  - Estabilidade em velocidade constante  
  - Leve freio motor eletrônico  
  - Redução do desgaste do sistema de freio mecânico  

As diferenças entre os perfis são pontuais, funcionais e tecnicamente justificadas.

---

## Configuração Original vs GuerraMod v8

A calibração original da Voltz EVS é **genérica e conservadora**, pensada para atender múltiplos cenários com simplicidade.

O **GuerraMod v8** ajusta **apenas onde há ganho real**, mantendo:

- Compatibilidade total com o hardware original
- Margens de segurança elétrica e térmica
- Comportamento previsível e estável

Quando um parâmetro não foi alterado, isso se deu por ele já estar adequado ao uso proposto.

---

## Conclusão

O **GuerraMod v8** estabelece um **baseline técnico definitivo** para a plataforma **Voltz EVS**, encerrando o ciclo de experimentação e consolidando uma calibração madura, documentada e aplicável ao uso real.

---

> ⚠️ **Aviso**  
> Este projeto não é afiliado oficialmente à Voltz Motors.  
> As configurações aqui descritas são de responsabilidade do usuário.


## 🌟 Objetivo / O que você vai aprender

Efetuar alterações coesas e que realmente vão agregar no seu veículo, EVS/EVS Work.
Aqui iremos centralizar sugestões e configurações da controladora APT para a EVS/EVS Work.


## 🧰 Pré-requisitos

- Computador com Windows
- Cabo RS232
- Softwares para acesso a controladora
- compreensão que sua moto existe limites e do risco de configurar algo ERRADO poderá inutilizar o seu equipamento por completo.
