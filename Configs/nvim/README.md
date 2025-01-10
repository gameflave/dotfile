## nvim config
Ce repo contient ma config neovim

## Visuals
Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.

## Roadmap
- [x] Personalisation de nvim-tree (https://github.com/nvim-tree/nvim-tree.lua/wiki/Recipes)
- [x] Personalisation de greeter
- [x] Personalisaiton de lualine
- [x] Supprimer auto session ?
- [x] impossible de voir les todos avec telescope
- [x] formater/linting setup c/c++
- [x] configurer les wharning c++ (.clangd, .clang-format, CPPLINT.cfg)
- [x] plugins comments `:h comment.commentstring`
- [x] logsec doc .clangd, .clang-format, CPPLINT.cfg
- [x] https://github.com/ThePrimeagen
- [x] multi cursor
- [x] macro
- [x] être capable de copier entre vim et le sytème
- [x] apprendre à utiliser gitsigns, utiliser vim-fugitive à la place
- [x] vim-fugitive
- [x] configurer nvim-cmp https://youtu.be/_DnmphIwnjo?list=TLPQMjcwNDIwMjSFI1W75lJ3WQ
- [x] configurer lsp https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/lazy/lsp.lua
- [ ] snipset
    - [ ] configurer mapping luasnip/cmp
    - [ ] créer snipset https://www.youtube.com/watch?v=Dn800rlPIho https://www.youtube.com/watch?v=KtQZRAkgLqo
- [ ] debbuger setup https://youtu.be/n4Lp4cV8YR0
- [ ] keymap cheatsheet
- [ ] Oil.nvim https://youtu.be/218PFRsvu2o
- [ ] https://www.youtube.com/playlist?list=PLep05UYkc6wRcB9dxdXkc5tYHlpQFlRUF
## Installation
### Linux
ripgrep utilisé par telescope pour pour faire des recherches dans les fichier
#### Prérequis
TODO
## Plugin list
- autopairs: {[()]}
- comment: fonctions pour commenter le code. gcc comment la ligne
- dressing: ajoute ui pour les inputs l'ui apparaît au niveau du curseur au lieu de la ligne de commande en bas de l'écrans
- conform.nvim: fonctions pour formatter le code. <leader>mp pour formatter la selection
- fugitive: intégration git
- harpoon: navigation rapide entre plusieurs buffer
- indent-blanklines.nvim: ajoute une line pour marquer l'inedentation
- nvim-lint: gère le litting
- lualine: ajoute une ligne de status en bas de l'écrans
- luasnip: fournis des snipset a nvim-cmp
- nvim-cmp: gère l'auto-complétion
- nvim-tree: file manager
- telescope: fuzy finder.
- todo-comments: highlight TODOs. Intégration avec Trouble et Telescope. Highlight aussi PERF, HACK, NOTE, FIX, WARNING
- treesitter: code highlighting
- trouble: une liste pour les diagnostiques, quickfix, todos
- undotree: donne acces à l'abre de modifications du buffer

## Plugin à check
- [Neotest](https://github.com/nvim-neotest/neotest) à check après en avoir apris plus sur les test
- [refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim)
