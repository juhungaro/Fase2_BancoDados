# MER - Modelo Entidade-Relacionamento

## Introdução

Este projeto tem como objetivo detalhar o modelo de entidade-relacionamento (MER) desenvolvido para representar um sistema de monitoramento de culturas (café e soja) agrícolas. O MER descreve as entidades, seus atributos e os relacionamentos entre essas entidades, fornecendo as informações necessárias para o desenvolvimento de um banco de dados.

## Entidades

### Atributos

* **Sensores:** Representa um dispositivo físico utilizado para coletar dados sobre as condições do solo, neste projeto os sensores utilizados são pH, umidade e níveis de nutrientes.
   * **Sensores_id:** chave primária
   * **Tipo:** pH, unidade, nutrientes
   * **Data_instalacao:**
   * **Localizacao:**

* **Cultura:** Representa uma espécie vegetal cultivada em determinada área (café e soja).
   * **Cultura_id:** chave primária
   * **Nome:** pH, unidade, nutrientes
   * **Data_plantio:**

## Relacionamentos

* **Mede**
    * Cardinalidade: Muitos para um (N:1)   
    * Descrição: Um sensor pode medir apenas uma cultura, mas uma cultura pode ser monitorada por vários sensores.
    * Participação: Sensor (muitos), Cultura (um).
 
## Diagrama

![der](https://github.com/user-attachments/assets/5f7386c8-099e-46b4-9830-1d0147fd5f87)

## Atributos Adicionais

**Sensor:** Modelo do sensor, fabricante, calibração.
**Cultura:** Variedade, ciclo de vida, pragas comuns.

## Relacionamentos Adicionais:

**Cultura e Produtor:** Uma cultura pode ser cultivada por um produtor específico.

**Sensor e Sistema:** Um sensor pode estar conectado a um sistema de coleta de dados.

## Restrições:

Um sensor do tipo pH só pode ser associado a culturas que exigem medições de pH.



