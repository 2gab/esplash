# Esplash
Adicione o seguinte trecho ao seu arquivo `init.el`

```elisp
;; Esplash
(add-to-list 'load-path "~/.emacs.d/esplash/")
(require 'esplash)
(add-hook 'emacs-startup-hook #'esplash)
```
# TODO
- Criar um arquivo `layout.el` responsável por definir a posição e a organização de cada elemento exibido no buffer.
- Corrigir o alinhamento e a centralização do texto no buffer.
- Atualizar automaticamente o buffer sempre que houver redimensionamento da janela, garantindo que a splash screen permaneça responsiva e corretamente posicionada.
- Ocultar splash padrão do Emacs quando o esplash estiver ativo
