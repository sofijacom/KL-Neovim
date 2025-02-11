These are the default key bindings that are available when opening yazi:

<f1>: Show the help menu
<c-v>: Open the selected files in vertical split.
<c-x>: Open the selected files in horizontal split.
<c-t>: Open the selected files in new tabs.
<c-q>: Send the selected files to the quick fix list.
There are also integrations with other plugins that you will need to install separately:

<c-s>: Search the current yazi directory using the live_grep telescope, if available. You can optionally use fzf-lua.nvim, snacks.picker, or provide your own implementation - see the instructions in the configuration section for more information.
if multiple files/directories are selected in yazi, search and replace will be performed only in the selected files/directories
<c-g>: search and replace in the current yazi directory with grug-far, if available
if multiple files/directories are selected in yazi, operation is limited to them only
<c-y>: copy relative path of selected files to clipboard. Requires GNU realpath or grealpath on OSX
<tab>: move cursor to open buffers in Neovim. See #232 for more information

***********************************************************************************************************

Это привязки клавиш по умолчанию, которые доступны при открытии yazi:

<f1>: показать меню справки
<c-v>: откройте выбранные файлы с разделением по вертикали.
<c-x>: откройте выбранные файлы с разделением по горизонтали.
<c-t>: откройте выбранные файлы на новых вкладках.
<c-q>: отправьте выбранные файлы в список быстрых исправлений.
Существуют также интеграции с другими плагинами, которые вам необходимо установить отдельно:
<c-s>: выполните поиск в текущем каталоге yazi с помощью телескопа live_grep, если таковой имеется. При желании вы можете использовать fzf-lua.nvim, snacks.picker или предоставить свою собственную реализацию - смотрите Инструкции в разделе конфигурации для получения дополнительной информации.
если в yazi выбрано несколько файлов/каталогов, поиск и замена будут выполняться только в выбранных файлах/каталогах
<c-g>: поиск и замена в текущем каталоге yazi с помощью grug-far, если доступно
если в yazi выбрано несколько файлов/каталогов, операция ограничивается только ими
<c-y>: скопируйте относительный путь к выбранным файлам в буфер обмена. Требуется GNU realpath или grealpath в OSX
<tab>: переместите курсор в открытые буферы в Neovim. См. #232 для получения дополнительной информации
