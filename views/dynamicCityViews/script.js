const getStates = async () => {
  console.log("Inside getState");
  let response = await fetch("/task13/getStates");
  let data = await response.json();

  let stateDiv = document.createElement("div");
  let stateSpan = document.createElement("span");
  stateSpan.textContent = "States ";
  stateDiv.appendChild(stateSpan);
  let stateSelect = document.createElement("select");
  stateSelect.name = "state[]";
  stateSelect.id = "state";
  stateSelect.onchange = () => {
    getCities();
  };
  data.forEach((element) => {
    const option = document.createElement("option");
    option.id = element.state_name;
    option.name = element.id;
    option.textContent = element.state_name;
    stateSelect.appendChild(option);
  });
  stateDiv.appendChild(stateSelect);
  document.body.appendChild(stateDiv);
};

const getCities = async () => {
  console.log("Inside getStates");
  if (document.getElementById("cities")) {
    document.getElementById("cities").remove();
    document.getElementById("cities_span").remove();
  }

  let stateValue = document.getElementById("state").value;
  let stateId = document.getElementById(stateValue).name;
  let response = await fetch(`/task13/getCities/${stateId}`);
  let data = await response.json();

  let citiesDiv = document.createElement("div");
  let citiesSpan = document.createElement("span");
  citiesSpan.textContent = "Cities ";
  citiesSpan.id = "cities_span";
  citiesDiv.appendChild(citiesSpan);
  let citiesSelect = document.createElement("select");
  citiesSelect.name = "cities[]";
  citiesSelect.id = "cities";
  data.forEach((element) => {
    const option = document.createElement("option");
    option.id = element.city;
    option.name = element.id;
    option.textContent = element.city;
    citiesSelect.appendChild(option);
  });
  citiesDiv.appendChild(citiesSelect);
  document.body.appendChild(citiesDiv);
};

let fun = async () => {
  await getStates();
};

fun();
