
# bucket for tf state if needed
# gcloud auth login # or use env or doppler
# gcloud storage buckets create gs://BUCKET_NAME --location=STORAGE_REGION --public-access-prevention --uniform-bucket-level-access --enable-hierarchical-namespace
``` sh { "name": "install deps"}
#./setup.sh
dev
pre-commit autoupdate
pre-commit install
```
``` sh { "name": "setup repos"}
# must login via tea login add, not token option
tea repo c --name fastapi-test --private
GITLAB_TOKEN=$(pass gitlab/bobokuos | head -1) glab repo create --name fastapi-test --private -skipGitInit
GH_TOKEN=$(pass github/xoneupx | head -1) gh repo create fastapi-test
```
``` sh { "name": "test module"}
uv run uvicorn src.main:app
uv run python3 src/main.py

.venv/bin/fastapi dev src/main.py
uv run pytest tests
uv run pyright src -verbose
uv run mypy src -v
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
