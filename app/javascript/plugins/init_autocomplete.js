import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('hero_address'); // ASK TA
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };