const convertTime = () => {
  if (document.getElementById("error")) {
    document.getElementById("error").remove();
  }
  let elements = document.querySelectorAll("*");
  let data = {};
  elements.forEach((element) => {
    if (element.tagName === "INPUT" || element.tagName === "SELECT") {
      if (element.value == "") {
        if (document.getElementById("error")) {
          document.getElementById("error").remove();
        }
        const error = document.createElement("p");
        error.id = "error";
        error.style.color = "red";
        error.textContent = "Please Enter all values";
        document.body.appendChild(error);
      }
      data[element.name] = element.value;
    }
  });
  if (!document.getElementById("error")) {
    showDate(data);
  }
};

const showDate = (data) => {
  if (document.getElementById("showDate")) {
    console.log("inside");
    document.getElementById("showDate").remove();
  }
  let date = new Date(data.year, data.month - 1, data.date, data.hour, data.minute, data.second);
  let newDate = date.toLocaleString("en-US", { timeZone: data.timezone });
  let div = document.createElement("div");
  div.id = "showDate";
  div.textContent = newDate;
  document.body.appendChild(div);
};

let cityData = [
  { name: "Belize", value: "Belize", timezone: "America/belize" },
  {
    name: "Buenos Aires",
    value: "Buenos_Aires",
    timezone: "America/buenos_aires",
  },
  { name: "Chicago", value: "Chicago", timezone: "America/chicago" },
  { name: "Costa Rica", value: "Costa_rica", timezone: "America/costa_rica" },
  { name: "Montreal", value: "Montreal", timezone: "America/montreal" },
  { name: "Rosario", value: "Rosario", timezone: "America/rosario" },
  { name: "Vancouver", value: "Vancouver", timezone: "America/vancouver" },
  { name: "New York", value: "New_York", timezone: "America/new_york" },
  { name: "Ahmedabad", value: "Ahmedabad", timezone: "Asia/kolkata" },
  { name: "Kolkata", value: "Kolkata", timezone: "Asia/kolkata" },
  { name: "Mumbai", value: "Mumbai", timezone: "Asia/kolkata" },
  { name: "Bangalore", value: "Bangalore", timezone: "Asia/kolkata" },
  { name: "Pune", value: "Pune", timezone: "Asia/kolkata" },
  { name: "Sydney", value: "Sydney", timezone: "Australia/sydney" },
  { name: "Melbourne", value: "Melbourne", timezone: "Australia/melbourne" },
  { name: "Canberra", value: "Canberra", timezone: "Australia/canberra" },
  { name: "Barcelona", value: "Barcelona", timezone: "Europe/madrid" },
  { name: "London", value: "London", timezone: "Europe/london" },
  { name: "Munich", value: "Munich", timezone: "Europe/berlin" },
  { name: "Johannesburg", value: "Johannesburg", timezone: "Africa/johannesburg" },
];

let select = document.createElement("select");
select.id = "city";
select.name = "timezone";
cityData.forEach((element) => {
  let option = document.createElement("option");
  option.textContent = element.name;
  option.className = element.timezone;
  option.value = element.timezone;
  select.appendChild(option);
});
let div = document.getElementById("div");
div.appendChild(select);
