// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// import { initSweetalert } from '../plugins/init_sweetalert';



// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();

  // initSweetalert('#sweet-alert-demo', {
  //   title: "A nice alert",
  //   text: "This is a great alert, isn't it?",
  //   icon: "success",
  //   timer: 3000
  // }, submitForm);
});

// const submitForm =(value) => {
//   console.log(value);
//   const link = document.querySelector('#sweet-alert-demo-next');
//   link.click();
// }
