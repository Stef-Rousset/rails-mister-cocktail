
const cocktail = document.querySelector("#card");
const name = "";
coktail.addEventListener('click', (event) => {
  event.currentTarget.classList("card-title") === name;
});

const callApi = () => {
const preparation = document.querySelector("#preparation");
console.log(preparation);

fetch("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=name")
  .then(response => response.json())
  .then((data) => {
    console.log(data.drinks[0].strInstructions);
       preparation.innerText = data.drinks[0].strInstructions;
    });
};

export { callApi };


