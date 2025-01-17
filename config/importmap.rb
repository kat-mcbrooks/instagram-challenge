# Pin npm packages by running ./bin/importmap


pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true

pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true #also seen "@hotwired/stimulus-importmap-autoloader", to: "stimulus-importmap-autoloader.js"
pin_all_from "app/javascript/controllers", under: "controllers"

pin_all_from "app/javascript/components", under: "components" 

pin "jquery", to: "https://ga.jspm.io/npm:jquery@3.6.0/dist/jquery.js"
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.1.3/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.2/lib/index.js"

pin "trix"
pin "@rails/actiontext", to: "actiontext.js"

pin "application", preload: true

pin 'md5', to: 'https://cdn.skypack.dev/md5'
pin "vue", to: 'https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.esm.browser.js'
pin "d3", to: 'https://esm.sh/d3?bundle' # esm.sh is able to bundle libraries (if you pass?bundle) that have a lot of dependencies/components, like d3

pin "react", to: 'https://cdn.skypack.dev/react'
pin "react-dom", to: 'https://cdn.skypack.dev/react-dom'


