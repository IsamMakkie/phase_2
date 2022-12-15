import * as React from "react";
import TextField from "@mui/material/TextField";
import Autocomplete from "@mui/material/Autocomplete";
import { useState } from "react";
import axios from "axios";


export default function ComboBox(props) {
  const options = [
    { label: "Brand", id: 1 },
    { label: "Name", id: 2 },
    { label: "Color", id: 3 },
    { label: "Size", id: 4 },
    { label: "Price", id: 5 },
  ];
  const [value, setValue] = useState(null);
  const handleChange = (value) => {
    console.log(event);
    console.log(value);
    setValue(value.label);
  };
  const handleSubmit = (event) => {
    event.preventDefault();
    console.log(event);

    const firstValue = event.target[0].value;
    const search = event.target[4].value;
    console.log(firstValue);
    console.log(search);

    axios
      .post("http://localhost:3016/api/GetFilteredShoe", {
        firstValue,
        search,
      })
      .then((res) => {
        props.onSubmit(res.data);
      });
  };
  return (
    <form onSubmit={handleSubmit}>
      <div>
        <div style={{ display: "flex", flexDirection: "row" }}>
          <Autocomplete
            disablePortal
            id="combo-box-demo"
            options={[
              { label: "Brand", id: 1 },
              { label: "Name", id: 2 },
              { label: "Color", id: 3 },
              { label: "Size", id: 4 },
              { label: "Price", id: 5 },
            ]}
            value={value}
            onChange={(event, value) => {
              if (value != null) handleChange(value);
            }}
            sx={{ width: 300 }}
            renderInput={(params) => (
              <TextField {...params} label="Search By Type" />
            )}
          />
          <TextField
            id="filled-basic"
            label="Search Inventory"
            variant="filled"
          />
        </div>
      </div>
      <input type="submit" value="Submit" />
    </form>
  );
}
