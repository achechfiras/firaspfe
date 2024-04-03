REPO_URL := https://github.com/achechfiras/firaspfe.git
DOCKER_ImageName := img_react
DOCKER_REPO := pfe
DOCKER_TAG := imgpfe
DOCKER_USERNAME := achechfiras
DOCKER_PASSWORD := dckr_pat_kYFQGC5i027DXD-eTW37RNW7wyw

deliver_image_to_dockerhub: push cleanup

push:
	ls -la
	docker tag $(DOCKER_ImageName) $(DOCKER_USERNAME)/$(DOCKER_REPO):$(DOCKER_TAG)
	docker login -u $(DOCKER_USERNAME) -p $(DOCKER_PASSWORD)
	docker push $(DOCKER_USERNAME)/$(DOCKER_REPO):$(DOCKER_TAG)

cleanup:
	ls -la
	rm -r *
