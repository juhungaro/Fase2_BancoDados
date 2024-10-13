# MER - Modelo Entidade-Relacionamento

## Introdução

Este projeto tem como objetivo detalhar o modelo de entidade-relacionamento (MER) desenvolvido para representar um sistema de monitoramento de culturas de café e soja. O MER descreve as entidades, seus atributos e os relacionamentos entre essas entidades, fornecendo as informações necessárias para o desenvolvimento de um banco de dados.

## Entidades

### Atributos

**Culturas:** Representa uma espécie vegetal cultivada em determinada área (café e soja).
   * **IdCultura:** PK chave primária (integer)
   * **Nome:** UN culturas nome (nvarchar)
 
**Sensores:** Representa um dispositivo físico utilizado para coletar dados sobre as condições do solo, neste projeto os sensores utilizados são umidade, pH e níveis de nutrientes.

**Sensor_Umidades:**
   * **IdSensorUnidade:** PK chave primária (integer)
   * **Valor:** (number)
   * **DataMedicao:** (date)
   * **IdCultura:** FK chave estrangeira (integer)
 
**Sensor_Phs:**
   * **IdSensorPh:** PK chave primária (integer)
   * **Valor:** (number)
   * **DataMedicao:** (date)
   * **IdCultura:** FK chave estrangeira (integer)
 
**Sensor_Nutrientes:**
   * **IdSensorNutriente:** PK chave primária (integer)
   * **ValorFosforo:** (number)
   * **ValorPotassio:** (number)
   * **DataMedicao:** (date)
   * **IdCultura:** FK chave estrangeira (integer)

## Relacionamentos

* **Mede**
    * Cardinalidade: Muitos para um (N:1)   
    * Descrição: Um sensor pode medir apenas uma cultura, mas uma cultura pode ser monitorada por vários sensores.
    * Participação: Sensor (muitos), Cultura (um).

## DER
![DER](/Cap1_UmMapaDoTesouro/DER.png)
 
## Diagrama Relacional

![DR](https://github.com/user-attachments/assets/baa4539c-3c2e-400a-b618-e555a5ca24e6)