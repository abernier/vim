FROM alpine

RUN apk add --no-cache \
  git \
  vim

WORKDIR /root/.vim
 
COPY .vim/vimrc ./
RUN (cd ~ && ln -s .vim/vimrc .vimrc)

ENTRYPOINT ["vim"]
