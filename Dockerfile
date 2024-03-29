# Usa uma imagem Node.js como base
FROM node:14-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos do projeto para o diretório de trabalho
COPY . .

# Instala as dependências
RUN npm install

# Expõe a porta 3000, que é a porta padrão do servidor Next.js
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "run", "start"]