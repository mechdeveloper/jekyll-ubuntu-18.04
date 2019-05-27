# [jekyll](https://jekyllrb.com/)

## Important links

- [Homepage](https://jekyllrb.com/)
- [Docs](https://jekyllrb.com/docs/)
- [Resources](https://jekyllrb.com/resources/)
- [Tutorials](https://jekyllrb.com/tutorials/home/)
- [Showcase](https://jekyllrb.com/showcase/)
- [DockerHub jekyll/jekyll](https://hub.docker.com/r/jekyll/jekyll)
- [jekyll Docker Doc](https://github.com/envygeeks/jekyll-docker/blob/master/README.md)

Build jekyll:ubuntu-18.04 development environment image

```docker
docker build -t jekyll:ubuntu-18.04 .
```

Run your jekyll:ubuntu-18.04 development environment image with volume mapping your local files

```docker
docker run \
-p 4000:4000 -p 80:80 \
--volume="$PWD:/c/repo/jekyll/" \
-it jekyll:ubuntu-18.04
```