
// console.log("blabla");
// const cocktail = document.querySelector('.container-show');
// const name = cocktail.dataset.name;
// console.log(name);

const callApi = () => {
const preparation = document.querySelector("#preparation");

const cocktail = document.getElementById('cocktail_selected');
if (!cocktail) {return };
const name = cocktail.dataset.name;

fetch(`https://www.thecocktaildb.com/api/json/v1/1/search.php?s=${name}` )
  .then(response => response.json())
  .then((data) => {
    console.log(data);
    console.log(data.drinks[0].strInstructions);
       preparation.innerText = data.drinks[0].strInstructions;
    });
};

export { callApi };


