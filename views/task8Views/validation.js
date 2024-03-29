const normalValidation = (fields) => {
  let flag = true;
  for (let i = 0; i < fields.length; i++) {
    let field = document.getElementById(`${fields[i]}`).value;
    if (field === "" || field.length === 0) {
      document.getElementById(`${fields[i]}_error`).style.display = "block";
      flag = false;
    }
  }
  return flag;
};

const dateValidation = (fields) => {
  let flag = true;
  let dateRegex = /\d{4}-\d{1,2}-\d{1,2}/;
  for (let i = 0; i < fields.length; i++) {
    let dateField = document.getElementById(`${fields[i]}`).value;
    if (!dateRegex.test(dateField)) {
      document.getElementById(`${fields[i]}_error`).style.display = "block";
      flag = false;
    }
  }
  return flag;
};

const percentageValidation = (fields) => {
  let flag = true;
  let percentRegex = /(^100(\.0{1,2})?$)|(^([1-9]([0-9])?|0)(\.[0-9]{1,2})?$)/;
  for (let i = 0; i < fields.length; i++) {
    let percentField = document.getElementById(`${fields[i]}`).value;
    if (!percentRegex.test(percentField)) {
      document.getElementById(`${fields[i]}_error`).style.display = "block";
      flag = false;
    }
  }
  return flag;
};

const languageCheck = (divName) => {
  let flag = true;
  let count = 0;
  let language = false;
  let languageFields = document.getElementsByClassName(`${divName}`);

  let children = languageFields[0].children;

  for (let i = 0; i < children.length; i++) {
    if (children[i].tagName == "INPUT") {
      if (children[i].id === `${divName}`) {
        if (children[i].checked === true) {
          language = true;
          continue;
        }
      } else {
        if (children[i].checked === true) {
          count++;
        }
      }
    }
  }
  if (language === true) {
    if (count > 0) {
      flag = true;
    } else {
      document.getElementById(`${divName}_error`).style.display = "block";
    }
  } else {
    flag = false;
  }

  let result = {
    language: language,
    count: count,
    flag: flag,
  };
  return result;
};

const referenceContactsOptional = (divName) => {
  let flag = true;
  let count = 0;
  let fields = document.getElementsByClassName(`${divName}`);

  let children = fields[0].children;

  for (let i = 0; i < children.length; i++) {
    if (children[i].tagName == "INPUT") {
      if (children[i].value !== "") {
        count++;
      }
    }
  }
  if (count > 0) {
    for (let i = 0; i < children.length; i++) {
      if (children[i].id === `${divName}_number`) {
        let contactRegex = /^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$/;
        let contactField = document.getElementById(`${divName}_number`).value;
        if (!contactRegex.test(contactField)) {
          document.getElementById(`${divName}_error`).style.display = "block";
          flag = false;
        }
      } else {
        let fields = [`${divName}_name`, `${divName}_relation`];
        for (let i = 0; i < fields.length; i++) {
          let field = document.getElementById(`${fields[i]}`).value;
          if (field === "" || field.length === 0) {
            document.getElementById(`${divName}_error`).style.display = "block";
            flag = false;
          }
        }
      }
    }
  } else {
    flag = false;
  }
  return flag;
};

const basicDetail = () => {
  let flag = true;

  const normalFields = ["first_name", "last_name", "designation", "address1", "city", "zipcode"];

  let normalFieldsValidation = normalValidation(normalFields);

  let emailValidation = true;
  let emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
  let emailField = document.getElementById(`email_id`).value;
  if (!emailRegex.test(emailField)) {
    document.getElementById(`email_id_error`).style.display = "block";
    emailValidation = false;
  }

  let contactValidation = true;
  let contactRegex = /^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$/;
  let contactField = document.getElementById(`contact_no`).value;
  if (!contactRegex.test(contactField)) {
    document.getElementById(`contact_no_error`).style.display = "block";
    contactValidation = false;
  }

  let zipcodeValidation = true;
  let zipcodeRegex = /(^[A-Za-z]\d[A-Za-z][ ]?\d[A-Za-z]\d$)|(^\d{6}$)/;
  let zipcodeField = document.getElementById(`zipcode`).value;
  if (!zipcodeRegex.test(zipcodeField)) {
    document.getElementById(`zipcode_error`).style.display = "block";
    zipcodeValidation = false;
  }

  let dateFields = [`dob`];
  let dateFieldsValidation = dateValidation(dateFields);

  flag =
    normalFieldsValidation &&
    emailValidation &&
    contactValidation &&
    zipcodeValidation &&
    dateFieldsValidation;

  return flag;
};

const educationDetail = () => {
  let flag;

  let parentField = document.getElementById("education-parent");
  let parentChildren = parentField.children;

  for (let j = 1; j <= parentChildren.length; j++) {
    let childFields = document.getElementById(`education-child${j}`);
    let children = childFields.children;
    let count = 0;
    let coursePercentageValidation = true,
      courseDateValidation = true,
      courseNormalValidation = true;

    for (let i = 0; i < children.length; i++) {
      if (children[i].id === `course_percentage${j}`) {
        let percentageFields = [`course_percentage${j}`];
        coursePercentageValidation = percentageValidation(percentageFields);
      } else if (children[i].id === `course_passing_year${j}`) {
        let dateFields = [`course_passing_year${j}`];
        courseDateValidation = dateValidation(dateFields);
      }
    }
    flag = coursePercentageValidation && courseDateValidation && courseNormalValidation;
    if (flag === false) {
      return false;
    }
  }

  return true;
};

const workExperience = () => {
  let flag = true;
  let companies = document.getElementById("company-parent");

  let parentChildren = companies.children;

  for (let i = 1; i <= parentChildren.length; i++) {
    let count = 0;
    let childFields = document.getElementById(`company${i}`);
    let children = childFields.children;
    let joiningDate = true,
      leavingDate = true,
      normalFields = true;
    for (let i = 0; i < children.length; i++) {
      if (children[i].tagName == "INPUT") {
        if (children[i].value !== "") {
          count++;
        }
      }
    }
    if (count > 0) {
      for (let j = 0; j < children.length; j++) {
        if (children[j].id === `company${i}_joining_date`) {
          let dateFields = [`company${i}_joining_date`];
          joiningDate = dateValidation(dateFields);
        } else if (children[j].id === `company${i}_leaving_date`) {
          let dateFields = [`company${i}_leaving_date`];
          leavingDate = dateValidation(dateFields);
        } else {
          let normalFields = [`company${i}_name`, `company${i}_designation`];
          normalFields = normalValidation(normalFields);
        }
      }
    }
    flag = joiningDate && leavingDate && normalFields;
    if (flag == false) {
      return false;
    }
  }

  return flag;
};

const knownLanguages = () => {
  let flag;

  let hindi = languageCheck("hindi");
  if (hindi.language === false && hindi.count > 0) {
    let hindi_error = document.getElementById("hindi_error");
    hindi_error.style.display = "block";
    hindi_error.innerHTML = "You can't select level without selecting language";
  }

  let english = languageCheck("english");
  if (english.language === false && english.count > 0) {
    let english_error = document.getElementById("english_error");
    english_error.style.display = "block";
    english_error.innerHTML = "You can't select level without selecting language";
  }

  let gujarati = languageCheck("gujarati");
  if (gujarati.language === false && gujarati.count > 0) {
    let gujarati_error = document.getElementById("gujarati_error");
    gujarati_error.style.display = "block";
    gujarati_error.innerHTML = "You can't select level without selecting language";
  }

  flag = hindi.flag || english.flag || gujarati.flag;

  if (flag === false) {
    document.getElementById("language_error").style.display = "block";
  }

  return flag;
};

const knownTechnologies = () => {
  let flag;

  let php = languageCheck("php");
  if (php.language === false && php.count > 0) {
    let php_error = document.getElementById("php_error");
    php_error.style.display = "block";
    php_error.innerHTML = "You can't select level without selecting technology";
  }

  let mysql = languageCheck("mysql");
  if (mysql.language === false && mysql.count > 0) {
    let mysql_error = document.getElementById("mysql_error");
    mysql_error.style.display = "block";
    mysql_error.innerHTML = "You can't select level without selecting technology";
  }

  let laravel = languageCheck("laravel");
  if (laravel.language === false && laravel.count > 0) {
    let laravel_error = document.getElementById("laravel_error");
    laravel_error.style.display = "block";
    laravel_error.innerHTML = "You can't select level without selecting technology";
  }

  let oracle = languageCheck("oracle");
  if (oracle.language === false && oracle.count > 0) {
    let oracle_error = document.getElementById("oracle_error");
    oracle_error.style.display = "block";
    oracle_error.innerHTML = "You can't select level without selecting technology";
  }

  flag = php.flag || mysql.flag || laravel.flag || oracle.flag;

  if (flag === false) {
    document.getElementById("technology_error").style.display = "block";
  }

  return flag;
};

const referenceContacts = () => {
  let flag = true;
  let references = document.getElementById("reference-parent");

  let parentChildren = references.children;

  for (let i = 1; i <= parentChildren.length; i++) {
    let count = 0;
    let contactValid = true,
      normalValid = true;

    let childFields = document.getElementById(`reference_contact${i}`);
    let children = childFields.children;

    for (let i = 0; i < children.length; i++) {
      if (children[i].tagName == "INPUT") {
        if (children[i].value !== "") {
          count++;
        }
      }
    }
    if (count > 0) {
      for (let j = 0; j < children.length; j++) {
        if (children[j].id === `reference_contact${i}_number`) {
          let contactRegex = /^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$/;
          let contactField = document.getElementById(`reference_contact${i}_number`).value;
          if (!contactRegex.test(contactField)) {
            document.getElementById(`reference_contact1_error`).style.display = "block";
            contactValid = false;
          }
        } else {
          let normalFields = [`reference_contact${i}_name`, `reference_contact${i}_relation`];
          for (let j = 0; j < normalFields.length; j++) {
            let field = document.getElementById(`${normalFields[j]}`).value;
            if (field === "" || field.length === 0) {
              document.getElementById(`reference_contact${i}_error`).style.display = "block";
              normalValid = false;
            }
          }
        }
      }
      flag = contactValid && normalValid;
      if (flag == false) {
        return false;
      }
    }
  }
  return flag;
};

const preferences = () => {
  let preferencesFields = ["expected_ctc"];
  let flag = normalValidation(preferencesFields);
  return flag;
};

const validation = () => {
  let flag = true;
  let errorFields = document.getElementsByClassName("error");

  for (let i = 0; i < errorFields.length; i++) {
    errorFields[i].style.display = "none";
  }

  let basicDetailValidation = basicDetail();
  let educationDetailValidation = educationDetail();
  let workExperienceValidation = workExperience();
  let knownLanguagesValidation = knownLanguages();
  let knownTechnologiesValidation = knownTechnologies();
  let referenceContactsValidation = referenceContacts();
  let preferencesValidation = preferences();

  flag =
    basicDetailValidation &&
    educationDetailValidation &&
    workExperienceValidation &&
    knownLanguagesValidation &&
    knownTechnologiesValidation &&
    referenceContactsValidation &&
    preferencesValidation;
  return flag;
};
