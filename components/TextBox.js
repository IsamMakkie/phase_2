import * as React from "react";
import axios from "axios";

const FormPropsTextFields = (props) => {
  const handleSubmit = (event) => {
    event.preventDefault();

    const Search1 = event.target.Search1.value;
    const Search2 = event.target.Search2.value;
    const Search3 = event.target.Search3.value;
    const Search4 = event.target.Search4.value;
    const Search5 = event.target.Search5.value;
    const Search6 = event.target.Search6.value;
    const Search7 = event.target.Search7.value;

    axios
      .post("http://localhost:3016/api/AddShoe", {
        Search1,
        Search2,
        Search3,
        Search4,
        Search5,
        Search6,
        Search7,
      })
      .then((res) => {
        props.onSubmit(res.data);
      });
  };

  return (
    <form onSubmit={handleSubmit}>
      <label>
        Shoe brand:
        <input type="text" name="Search1" />
      </label>
      <br />
      <label>
        Shoe size:
        <input type="number" name="Search2" />
      </label>
      <br />
      <label>
        Shoe name:
        <input type="text" name="Search3" />
      </label>
      <br />
      <label>
        Shoe colorway:
        <input type="text" name="Search4" />
      </label>
      <br />
      <label>
        Shoe price:
        <input type="number" name="Search5" />
      </label>
      <br />
      <label>
        Shoe description:
        <input type="text" name="Search6" />
      </label>
      <br />
      <label>
        Shoe url:
        <input type="text" name="Search7" />
      </label>
      <br />
      <br />
      <input type="submit" value="Submit" />
    </form>
  );
};

export default FormPropsTextFields;
