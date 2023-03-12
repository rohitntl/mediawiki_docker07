Steps:-
1. Dockerfile to create containerize image

	- docker build -t mediawiki-image:1.0 .
2. mysql app deployment

	- oc create -f mysql-app.yaml
3. mediawiki app deployment

	- oc create -f mediawiki-app.yaml
