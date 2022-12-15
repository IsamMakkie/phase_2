import axios from "axios";
import { pool } from "../../config/db";

export default async function handler(req, res){
        try{
            const results = await pool.query("select * from shoe_table join inventory_table on shoe_table.shoe_id = inventory_table.shoe_id where shoe_retail_value <= ?;",
            [req.body.Search])
            return res.status(200).json({results})

        } 
        catch(error){
            return res.status(401).json({error})
        }
};
