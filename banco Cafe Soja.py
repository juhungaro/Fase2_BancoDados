
import pandas as pd
import numpy as np

# Definir as variáveis para o cultivo de café e soja
# 50 linhas para cada cultura

np.random.seed(42)

# Criando dados fictícios para o cultivo de café
cafe_data = {
    "Cultura": ["Cafe"] * 50,
    "Num_pes": np.random.randint(4000, 6000, 50), #Numero de pes de cafe por hectare
    "Producao": np.round(np.random.uniform(20, 50, 50), 2), #Produção de cafe por sacas /hectare
    "Umid_grao": np.round(np.random.uniform(10, 14, 50), 2), #Teor de umidade dos grãos %
    "Qtd_chuva": np.random.randint(800, 1200, 50), #Quantidade de chuvas em mm
    "Variedade": np.random.choice(["Arabica", "Robusta"], 50), #Variedade de cafe
    "Tipo": np.random.choice(["Especial", "Gourmet", "Tradicional"], 50) #Tipo de cafe
}

# Criando dados fictícios para o cultivo de soja
soja_data = {
    "Cultura": ["Soja"] * 50,
    "Num_plantas": np.random.randint(200, 300, 50), #Numero de plantas por m2
    "Producao": np.round(np.random.uniform(50, 80, 50), 2),#Produção de soja por sacas /hectare
    "Qtd_fertilizante": np.random.randint(200, 400, 50), #Quantidade de fertilizante aplicado em kg/hectare
    "Indice_pluviometrico": np.random.randint(900, 1500, 50), #Indice pluviometrico em mm
    "Variedade": np.random.choice(["Transgenica", "Convencional"], 50),#Variedade da soja
    "Fertilidade_solo": np.random.choice(["Baixa", "Media", "Alta"], 50) #Classificacao da fertilidade do solo
}

# Criar dataFrames
df_cafe = pd.DataFrame(cafe_data)
df_soja = pd.DataFrame(soja_data)

# Concatenar os dois dataFrames
df_agro = pd.concat([df_cafe, df_soja], ignore_index=True)

# Salvar os dataFrames em arquivo excel com abas separadas
with pd.ExcelWriter('cultivo_cafe_soja.xlsx') as writer:
    df_cafe.to_excel(writer, sheet_name='Café', index=False)
    df_soja.to_excel(writer, sheet_name='Soja', index=False)

print("Arquivo em Excel criado com sucesso!")