REPO_URL := https://github.com/achechfiras/firaspfe.git
DOCKER_ImageName := img_react
DOCKER_REPO := pfe
DOCKER_TAG := imgpfe
DOCKER_USERNAME := achechfiras
DOCKER_PASSWORD := dckr_pat_kYFQGC5i027DXD-eTW37RNW7wyw

deliver_image_to_dockerhub: build push cleanup

build:
	cd firaspfe
	docker build -t $(DOCKER_ImageName) .

push:
	docker tag $(DOCKER_ImageName):latest $(DOCKER_ImageName):$(DOCKER_TAG) 
	docker login -u $(DOCKER_USERNAME) -p $(DOCKER_PASSWORD)
	docker push $(DOCKER_ImageName)/$(DOCKER_TAG)
	cd ..

cleanup:
	rm -r firaspfe
