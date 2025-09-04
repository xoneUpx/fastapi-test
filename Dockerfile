# see: https://dev.to/thomas_bury_b1a50c1156cbf/mastering-python-project-management-with-uv-part-4-cicd-docker-385e
FROM python:3.13-slim AS base
COPY pyproject.toml uv.lock README.md ./
# using system installaion for efficeincy
RUN uv pip install --system . 

FROM python:3.13-slim AS runtime
COPY --from=base /usr/local /usr/local
COPY --from=base /app /app
WORKDIR /app
ENV PYTHONPATH=/app/src
