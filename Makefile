REPO_URL :=  https://github.com/achechfiras/firaspfe.git
DOCKER_ImageName := react
DOCKER_REPO := pfe
DOCKER_TAG := ImgPfe
DOCKER_USERNAME := achechfiras
DOCKER_PASSWORD := dckr_pat_kYFQGC5i027DXD-eTW37RNW7wyw
all: clone build push
clone:
    git clone $(REPO_URL)
build:
    cd firaspfe && docker build -t $(DOCKER_ImageName) .
push:
    docker tag $(DOCKER_ImageName) $(ImgPfe)
    docker login -u $(DOCKER_USERNAME) -p $(DOCKER_PASSWORD)
    docker push $(DOCKER_USERNAME)/$(DOCKER_REPO):$(DOCKER_TAG)
clean:
    rm -rf firaspfe
.PHONY: all clone build push clean
