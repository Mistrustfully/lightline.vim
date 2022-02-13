" =============================================================================
" Filename: autoload/lightline/colorscheme/16color.vim
" Author: itchyny, jackno
" License: MIT License
" =============================================================================

" Morning

let s:flamingo = [ '#F2CDCD', 0 ]
let s:mauve = [ '#DDB6F2', 1 ]
let s:pink = [ '#F5C2E7', 2 ]
let s:maroon = [ '#E8A2AF', 3 ]
let s:red = [ '#F28FAD', 4 ]
let s:peach = [ '#F8BD96', 5 ]
let s:yellow = [ '#FAE3B0', 6 ]
let s:green = [ '#ABE9B3', 7 ]
let s:teal = [ '#B5E8E0', 8]
let s:blue = [ '#96CDFB', 9 ]
let s:sky = [ '#89DCEB', 10 ]

" Night

let s:black0 = [ '#161320', 11 ]
let s:black1 = [ '#1A1826', 12 ]
let s:black2 = [ '#1E1E2E', 13 ]
let s:black3 = [ '#302D41', 14 ]
let s:black4 = [ '#575268', 15 ]

let s:gray0 = [ '#6E6C7E' , 16 ]
let s:gray1 = [ '#988BA2' , 17 ]
let s:gray2 = [ '#C3BAC6' , 18 ]
let s:white = [ '#D9E0EE' , 19 ]
let s:lavender = [ '#C9CBFF' , 20 ]
let s:rosewater = [ '#F5E0DC', 21 ]

if lightline#colorscheme#background() ==# 'light'
  let [s:black, s:white] = [s:white, s:black]
  let [s:silver, s:gray] = [s:gray, s:silver]
  let [s:blue, s:aqua] = [s:aqua, s:blue]
  let [s:purple, s:fuchsia] = [s:fuchsia, s:purple]
  let [s:green, s:lime] = [s:lime, s:green]
  let [s:red, s:yellow] = [s:yellow, s:red]
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:white, s:flamingo ], [ s:white, s:gray2 ] ]
let s:p.normal.middle = [ [ s:white, s:black0 ] ]
let s:p.normal.right = [ [ s:white, s:blue ], [ s:white, s:gray ] ]
let s:p.normal.error = [ [ s:black0, s:red ] ]
let s:p.normal.warning = [ [ s:black0, s:yellow ] ]

let s:p.inactive.left =  [ [ s:white, s:black3 ], [ s:gray0, s:black4 ] ]
let s:p.inactive.middle = [ [ s:white, s:black3 ] ]
let s:p.inactive.right = [ [ s:wite, s:black3 ], [ s:gray0, s:black4 ] ]

let s:p.insert.left = [ [ s:white, s:pink ], [ s:white, s:gray2 ] ]
let s:p.insert.right = copy(s:p.insert.left)

let s:p.replace.left = [ [ s:white, s:red ], [ s:white, s:gray2 ] ]
let s:p.replace.right = copy(s:p.replace.left)

let s:p.visual.left = [ [ s:white, s:lavender ], [ s:white, s:gray2 ] ]
let s:p.visual.right = copy(s:p.visual.left)

let s:p.tabline.left = [ [ s:white, s:gray2 ] ]
let s:p.tabline.tabsel = copy(s:p.normal.right)

let s:p.tabline.middle = [ [ s:white, s:gray2 ] ]
let s:p.tabline.right = copy(s:p.normal.right)

let g:lightline#colorscheme#16color#palette = lightline#colorscheme#flatten(s:p)
