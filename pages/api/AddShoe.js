import { pool } from "../../config/db";

export default async function handler(req, res){
        try{
            const results = await pool.query("insert into shoe_table (shoe_brand, shoe_size, shoe_name, shoe_colorway, shoe_retail_value, shoe_description, shoe_image_url) values(?, ?, ?, ?, ?, ?, ?);",
            [req.body.Search1, req.body.Search2, req.body.Search3, req.body.Search4, req.body.Search5, req.body.Search6, req.body.Search7])
            return res.status(200).json({results})
            
        } 
        catch(error){
            return res.status(401).json({error})
        }
};
