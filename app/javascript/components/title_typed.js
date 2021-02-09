import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.getElementById('banner-typed-text')) {
    console.log('yes');
    new Typed('#banner-typed-text', {
      strings: [ "web developer."],
      typeSpeed: 120,
      loop: false
    });
  }
}

export { loadDynamicBannerText };
