import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelector('.mapboxgl-ctrl-geocoder--input'); // ASK TA
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
