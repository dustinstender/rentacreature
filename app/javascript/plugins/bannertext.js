import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Do you believe in magic?"],
    typeSpeed: 50,
    loop: false
  });
}

export { loadDynamicBannerText };
