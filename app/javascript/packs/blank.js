// If you are using Devise, you may find that the error message may not be displayed when typing a wrong password.
// My solution is that you don't use app/javascript/packs/frontend.js in the layout of sign_in page.

// Instead, you can write a new one like app/javascript/packs/blank.js, in this blank.js, don't add import "@hotwired/turbo-rails".

// And use the blank.js in the new layout file app/views/layouts/blank.html.erb for the Devise sign_in page , like this:

// <head>
//     <%= javascript_pack_tag 'blank' %>
//     <%= stylesheet_pack_tag 'blank' %>
// </head>