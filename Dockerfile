FROM nginx:alpine

# Copia os arquivos para o diretório padrão do nginx
COPY aniversariantes.html /usr/share/nginx/html/index.html
COPY banner.jpg /usr/share/nginx/html/
COPY banner-a.jpg /usr/share/nginx/html/
COPY banner-b.jpg /usr/share/nginx/html/
COPY banner-c.jpg /usr/share/nginx/html/
COPY banner-d.jpg /usr/share/nginx/html/
COPY banner-e.jpg /usr/share/nginx/html/

# Expõe a porta 80
EXPOSE 80

# O nginx já inicia automaticamente no container
CMD ["nginx", "-g", "daemon off;"]
