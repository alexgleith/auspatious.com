deploy:
	hexo generate
	aws s3 sync ./public s3://auspatious.com --cache-control "max-age=604801" --delete
make serve:
	hexo server
