# BASH Essentials by aleon

- Recopilació d'exercicis essencials BASH by aleon amb **Jekyll**

- **Jekyll** is a simple, blog-aware, static site generator perfect for personal, project, or organization sites. Think of it like a file-based CMS, without all the complexity. Jekyll takes your content, renders Markdown and Liquid templates, and spits out a complete, static website ready to be served by Apache, Nginx or another web server. Jekyll is the engine behind GitHub Pages, which you can use to host sites right from your GitHub repositories.


## TODO
- layouts
- css or sass
- posts (scripts)


## requeriments

- Ruby version 2.5.0 or higher, including all development headers
- RubyGems
- GCC and Make


## dependencies

- **bundler** [gem install bundler]
- **webrick** [bundle add webrick]


## dev environment

- Host: VMware Workstation 17 Player for Microsoft Windows
- OS: Arch Linux x86_64
- Kernel: 6.2.1-arch1-1
- 🖥️ ruby -v [ruby 3.0.5p211]
- 🖥️ gem -v [3.3.25]
- 🖥️ bundler -v [Bundler version 2.4.14]
- 🖥️ jekyll -v [jekyll 4.3.2]
- git version 2.41.0
- Visual Studio Code with Remote SSH




## installation in Arch Linux

- **Arch Linux**
- **install ruby and requeriments**
```
sudo pacman -S ruby base-devel
```

- **environment variables**
- Avoid installing RubyGems packages (called gems) as the root user. Instead, set up a gem installation directory for your user account. The following commands will add environment variables to your **~/.bashrc** file to configure the gem installation path:
```
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="~/.local/share/gem/ruby/3.0.0/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```
- **install Jekyll and Bundler:**
```
gem install jekyll bundler
```

- **create a new Jekyll site**
```
jekyll new bashessentials_aleon
```

- **change into your new directory**
```
cd bashessentials_aleon/
```

- **build the site and make it available on a local server**
```
bundle exec jekyll serve
```

- **browse to http://localhost:4000**

- If you are using Ruby version 3.0.0 or higher, step 5 may fail. 
You may fix it by adding webrick to your dependencies: 
```
bundle add webrick
``` 



## TODO: Get Started
- git clone https://github.com/aleongit/bashessentials_aleon.git
- TODO


## run
- cd bashessentials_aleon
- bundle exec jekyll serve
- Browse to http://localhost:4000
- or change host in **_config.yml**
```
# Serving
detach              : false
port                : 4000
host                : 192.168.1.50
baseurl             : "" # does not include hostname
show_dir_listing    : false
```


## VMware

- **conflicte VMware** amb **Hyper-V** i **WSL** de Windows 10/11
- per tal d'activar la virtualització de processador **Intel VT-x/EPT or AMD-V/RVI** de VMware, cal desactivar les característiques de Windows relacionades amb virtualització
- Anar a Tauler de Control / Programes / Programes i característiques / Activa o desactiva les característiques de Windows
- **desactivar**:
- Hyper-V
- Plataforma de máquina virtual
- Plataforma de hipervisor de Windows
- Subsistema de Windows para Linux


## doc

- **jekyll**
- https://jekyllrb.com/
- https://github.com/jekyll/jekyll
- https://jekyllrb.com/docs/installation/other-linux/
- https://jekyllrb.com/docs/
- https://jekyllrb.com/docs/step-by-step/01-setup/

------------------

- **vmware**
- https://www.reddit.com/r/vmware/comments/11e1sps/error_vmware_player_does_not_support_nested/
- https://www.mumuglobal.com/faq/20210712/35472_943026.html