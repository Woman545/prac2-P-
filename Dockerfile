FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install 'Flask==1.1.4' 'Jinja2==2.11.3' 'Werkzeug==1.0.1' 'MarkupSafe==2.0.1' 'SQLAlchemy==1.4.46' 'Flask-SQLAlchemy==2.5.1'

COPY . .

EXPOSE 7345

CMD ["python", "manage.py", "runserver", "--host=0.0.0.0", "--port=7345"]