From nginx:alpine
WORKDIR /app
COPY ./app
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /var/concentration/html && \cp -r /app/* /var/concentration/html
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
