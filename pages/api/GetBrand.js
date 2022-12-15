import axios from "axios";
import { pool } from "../../config/db";

export default async function handler(req, res){
        try{
            const results = await pool.query("select DISTINCT shoe_table.* from shoe_table right join inventory_table on shoe_table.shoe_id = inventory_table.shoe_id where shoe_table.shoe_brand = ?;",
            [req.body.Search])
            if(results.length == 0){
                return res.status(200).json({message: "no shoes found"})

            }
            else{
                return res.status(200).json({results})
            }
        } 
        catch(error){
            return res.status(401).json({error})
        }
};

