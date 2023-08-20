docker login -u <username> -p <password>
git_commit=$(git rev-parse --short HEAD)
git_branch=main
date_time=$(date +%s)
tag=${git_branch}-${git_commit}-${date_time}
echo ${tag}
docker build -t darklord1506/myapp:${tag} .
docker push darklord1506/myapp:${tag}