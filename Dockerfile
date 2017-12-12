FROM rails:latest

# Копирование кода приложения в контейнер
ENV APP_HOME /app
COPY . $APP_HOME
WORKDIR $APP_HOME

# Настройка переменных окружения для production
ENV RAILS_ENV=production \
    RACK_ENV=production

# Устанавливает Postrges 9.5
RUN apt-get update && apt-get install lsb-release
RUN sh -c 'echo "deb http://repo.postgrespro.ru/pgpro-9.5/debian $(lsb_release -cs) main" > /etc/apt/sources.list.d/postgrespro.list'
RUN wget --quiet -O - http://repo.postgrespro.ru/pgpro-9.5/keys/GPG-KEY-POSTGRESPRO | apt-key add - && apt-get update
RUN apt-get install -y postgrespro-9.5

RUN gem install 'puma' && bundle install

# Проброс порта 3000
EXPOSE 3000

# Запуск по умолчанию сервера puma
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]