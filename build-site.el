;; script per la ricoversione di ogni file in .html

;; funzionalita built in per la conversione di file org in altri formati
(require 'ox-publish)
(setq org-html-head-include-scripts nil
      org-html-include-default-style nil
      org-html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />")
;; questa variabile server per controllare il comportamento delle funzioni di publishing
(setq org-publish-project-alist
      (list
       (list "massiminaking"
	     :recursive t ;; considero anche cartelle dentro la mia cartella base
	     :base-directory "./org" ';; cartella dove salvo i miei file org
	     :publishing-directory "./public" ;; dove vengono salvati i file .html
	     :publishing-function 'org-html-publish-to-html)))

;; publish su tutti i file, true come parametro specifica di rebuildare da zero sempre
(org-publish-all t)

(message "Build complete!")
