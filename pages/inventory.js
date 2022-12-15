import React, { useState } from "react";
import ComboBox from "../components/dropDown";
import Image from "next/image";
import Link from "next/link";


export default function inventory() {
  const [selectedData, setSelectedData] = useState(null);
  function changeValues(shoeArray) {
    console.log(shoeArray);
    const list = (
      <ul>
        {shoeArray.map((shoe) => (
          <li>
            <Image
              src={shoe.shoe_image_url}
              alt="My Image"
              width={200}
              height={150}
              loading="lazy"
            />
            <li>{shoe.shoe_brand}</li> <p>{shoe.shoe_colorway}</p>
            <p>{shoe.shoe_description}</p> <p>{shoe.shoe_id}</p>
            <p>{shoe.shoe_name}</p> Retail Value: {shoe.shoe_retail_value},
            Size: {shoe.shoe_size}
          </li>
        ))}
      </ul>
    );
    setSelectedData(list);
  }
  return (
    <div>
      <title>Inventory</title>
      <h1> inventory </h1>
      <ComboBox
        onSubmit={(data) => {
          changeValues(data.results);
        }}
      />
      <Link href="/updateInventory">
        <button>Add Shoe</button>
      </Link>
      <Link href="/removeShoe">
        <button>Sold Shoe</button>
      </Link>
      {selectedData}
    </div>
  );
}
