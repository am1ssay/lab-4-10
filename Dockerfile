# Используем базовый образ Python
FROM python:3.9

# Устанавливаем git
RUN apt-get update
RUN apt-get install -y git

# Клонируем репозиторий
RUN git clone https://github.com/am1ssay/lab-4-10

# Переходим в директорию resource-analyzer
WORKDIR /resource-analyzer


# Запускаем main.py
CMD ["python3", "./main.py"]