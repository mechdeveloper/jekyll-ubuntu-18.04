# [jekyll](https://jekyllrb.com/)

## Important links

- [Homepage](https://jekyllrb.com/)
- [Docs](https://jekyllrb.com/docs/)
- [Resources](https://jekyllrb.com/resources/)
- [Tutorials](https://jekyllrb.com/tutorials/home/)
- [Showcase](https://jekyllrb.com/showcase/)
- [Configuration Options](https://jekyllrb.com/docs/configuration/options/)
- [jekyll talk](https://talk.jekyllrb.com/)
- [jekyll conf](https://jekyllrb.com/jekyllconf/)

Build jekyll:ubuntu-18.04 development environment image

```docker
docker build -t jekyll:ubuntu-18.04 .
```

Run your jekyll:ubuntu-18.04 development environment image with volume mapping your local files

```docker
docker run \
-p 4000:4000 -p 35729:35729 \
--volume="$PWD:/c/repo/jekyll/" \
-it jekyll:ubuntu-18.04
```

- navigate to the source code `cd /c/repo/jekyll/myblog/` inside container
- run the command `bundle install`
- serve the app `bundle exec jekyll serve --host 0.0.0.0 --detach`
- to kil the process run `pkill -f jekyll`

- create development branch `git checkout -b devbranch`
- push the dev branch up to the repository `git push -u origin devbranch`
- make changes and commit to dev branch `git commit -m "updated blogs"`
- push the dev branch changes up to the repository `git push`
- merge the change to master `git checkout master`
- merge the branch with master `git merge devbranch`