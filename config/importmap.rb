# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/stimulus', to: 'https://ga.jspm.io/npm:@hotwired/stimulus@3.2.2/dist/stimulus.js'
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin 'flowbite', to: 'https://ga.jspm.io/npm:flowbite@1.8.1/lib/esm/index.js'
pin '@popperjs/core', to: 'https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js'
pin 'stimulus-notification', to: 'https://ga.jspm.io/npm:stimulus-notification@2.2.0/dist/stimulus-notification.mjs'
pin 'hotkeys-js', to: 'https://ga.jspm.io/npm:hotkeys-js@3.12.0/dist/hotkeys.esm.js'
pin 'stimulus-use', to: 'https://ga.jspm.io/npm:stimulus-use@0.51.3/dist/index.js'
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
