import axios from "axios";
import { pool } from "../../config/db";

export default async function handler(req, res){
        try{
            const results = await pool.query("DELETE from inventory_table where shoe_id = ?",
            [req.body.Search1])
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