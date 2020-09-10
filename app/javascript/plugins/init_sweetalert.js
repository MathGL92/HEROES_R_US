import swal from 'sweetalert';

const initSweetalert = () => {
  const bookingForm = document.getElementById('new_booking');
  if(bookingForm) { 
    bookingForm.addEventListener('submit', () => {
      swal( {
        title: "Booking Request Confirmed!",
        text: "Are you sure you want to book this Hero?",
        buttons: {
          confirm: true,
          cancel: true,
        },
        icon: "success"
      }).then( () => {
        location.reload ();
      })
    })
  };
};

export { initSweetalert };


