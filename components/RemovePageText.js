import * as React from "react";
import axios from "axios";

const FormForRemove = (props) => {
  const handleSubmit = (event) => {
    event.preventDefault();

    const Search1 = event.target.Search1.value;

    axios
      .post("http://localhost:3016/api/SellShoe", {
        Search1,
      })
      .then((res) => {
        props.onSubmit(res.data);
      });
  };

  return (
    <form onSubmit={handleSubmit}>
      <label>
        Shoe ID:
        <input type="number" name="Search1" />
      </label>
      <br />
      <br />
      <input type="submit" value="Submit" />
    </form>
  );
};

export default FormForRemove;
