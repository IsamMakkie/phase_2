import { pool } from "../../config/db";

export default async function handler(req, res) {
  if (req.body.firstValue == "Brand") {
    try {
      const results = await pool.query(
        "select DISTINCT shoe_table.* from shoe_table right join inventory_table on shoe_table.shoe_id = inventory_table.shoe_id where shoe_table.shoe_brand = ?;",
        [req.body.search]
      );
     if (results.length == 0) {
        return res.status(200).json({ message: "no shoes found" });
      } else {
        return res.status(200).json({ results });
      }
    } catch (error) {
      return res.status(401).json({ error });
    }
  }
  if (req.body.firstValue == "Name") {
    try {
      const results = await pool.query("call get_Name(?);", [req.body.search]);
      if (results[0].length == 0) {
        return res.status(200).json({ message: "no shoes found" });
      } else {
        return res.status(200).json({ results });
      }
    } catch (error) {
      return res.status(401).json({ error });
    }
  }
  if (req.body.firstValue == "Color") {
    try {
      const results = await pool.query("call get_Colorway(?);", [
        req.body.search,
      ]);
      if (results[0].length == 0) {
        return res.status(200).json({ message: "no shoes found" });
      } else {
        return res.status(200).json({ results });
      }
    } catch (error) {
      return res.status(401).json({ error });
    }
  }
  if (req.body.firstValue == "Size") {
    try {
      const results = await pool.query(
        "select * from shoe_table join inventory_table on shoe_table.shoe_id = inventory_table.shoe_id where shoe_size = ?;",
        [req.body.search]
      );

      if (results.length == 0) {
        return res.status(200).json({ message: "no shoes found" });
      } else {
        return res.status(200).json({ results });
      }
    } catch (error) {
      return res.status(401).json({ error });
    }
  }
  if (req.body.firstValue == "Price") {
    try {
      const results = await pool.query(
        "select * from shoe_table join inventory_table on shoe_table.shoe_id = inventory_table.shoe_id where shoe_retail_value <= ?;",
        [req.body.search]
      );
      return res.status(200).json({ results });
    } catch (error) {
      return res.status(401).json({ error });
    }
  }
}
