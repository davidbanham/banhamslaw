push: public
	s3cmd --no-mime-magic --guess-mime-type --config=/home/davidbanham/.s3cfg sync -rM --acl-public --exclude 'git/*' ./public/ s3://banhamslaw.com/

public: content
	hugo
