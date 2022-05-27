hostname: s.radogor.ru

users:
  - root:
  - serg:

after insatll:
  - sudo apt update
  - sudo apt upgrade
  - sudo apt install git

  - mkdir ~/src
  - cd ~/src

  - git clone https://github.com/SergRachevsky/linux-init.git


  - git config --global user.email "radogor@gmail.com"
  - git config --global user.name "SergRachevsky"
  - git config --global credential.helper store



