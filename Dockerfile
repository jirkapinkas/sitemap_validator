FROM python:3-slim

COPY requirements.txt /check_sitemap/requirements.txt
WORKDIR /check_sitemap/

RUN pip install --upgrade pip && pip install --upgrade -r /check_sitemap/requirements.txt
COPY main.py /check_sitemap/main.py
RUN chmod 755 /check_sitemap/main.py
CMD ["sh"]