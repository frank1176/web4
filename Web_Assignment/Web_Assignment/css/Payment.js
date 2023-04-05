const creditCardRadio = document.getElementById("credit-card");
const cashRadio = document.getElementById("cash");
const TNGRadio = document.getElementById("TNG");
const creditCardDetails = document.getElementById("credit-card-details");
const cashDetails = document.getElementById("cash-details");
const TNGDetails = document.getElementById("TNG-details");

creditCardRadio.addEventListener("click", function () {
    creditCardDetails.classList.remove("d-none");
    cashDetails.classList.add("d-none");
    TNGDetails.classList.add("d-none");
});

cashRadio.addEventListener("click", function () {
    creditCardDetails.classList.add("d-none");
    cashDetails.classList.remove("d-none");
    TNGDetails.classList.add("d-none");
});

TNGRadio.addEventListener("click", function () {
    creditCardDetails.classList.add("d-none");
    cashDetails.classList.add("d-none");
    TNGDetails.classList.remove("d-none");
});






