FROM python:3.8-slim as base

FROM base as builder

RUN mkdir /install
WORKDIR /install
COPY requirements.txt /requirements.txt
RUN pip install --target=/install -r /requirements.txt

FROM base

RUN groupadd -r sitemap_validator_user && useradd -r -s /bin/false -g sitemap_validator_user sitemap_validator_user

WORKDIR /check_sitemap/
COPY --from=builder /install /install
ENV PYTHONPATH=/install
COPY main.py /check_sitemap/main.py
RUN chmod +x /check_sitemap/main.py
USER sitemap_validator_user
CMD ["sh"]
