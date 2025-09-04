``` sh { "name": "install deps"}
#./setup.sh
dev
pre-commit autoupdate
pre-commit install
```
``` sh { "name": "test module"}
uv run uvicorn src.main:app
uv run python3 src/main.py
.venv/bin/fastapi dev src/main.py
podman login --username $HARBOR_USERNAME --password $HARBOR_PASSWORD https://c8n.io/xoneupx 

#### pre-commit installed via pip/uv
# uv add pre-commit
# uv run pre-commit autoupdate
# uv run pre-commit install
####
# podman push c8n.io/xoneupx/fastapi_app
# podman pull c8n.io/xoneupx/app@sha256:c54af60c81dbc10a9eae901e9b1daff1c1dfc266921c63d7f13e4c92aef10b96
```
selfhosted runner setup?
actrunner needs node installed - why?
python setup action not working - action toolkit issue?
