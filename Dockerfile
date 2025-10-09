FROM python:3.12-slim-trixie
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /app
COPY . /app


RUN uv pip install . --system

EXPOSE 3000

CMD ["uv", "run", "src/hyperliquid_mcp/server.py"]
