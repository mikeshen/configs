# Vim RC's and Plugins 
This is the core of my configs. Contains all my favorite vim plugins and personal keybindings+settings

## Included Plugins

I recommend reading the docs of these plugins before installing them as they will give you more information about what they do before you start
to just load up on plugins.

[dein.vim](https://github.com/Shougo/dein.vim) is my plugin manager of choice. Although it doesn't have automated updates, it does serve its purpose and it is extremely fast.

## Key Mappings

### Plugin related mappings


### Normal mode mappings

Fast saving of a buffer (`<leader>w`):

	nmap <leader>w :w!<cr>
	
Switch CWD to the directory of the open buffer:
	
	map <leader>cd :cd %:p:h<cr>:pwd<cr>
	
Toggle paste mode on and off:
	
    <F12>
