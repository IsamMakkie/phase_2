
import { pool } from "../../config/db";

export default async function handler(req, res){
        try{
            const results = await pool.query("call get_Colorway(?);",
            [req.body.Search])
            if(results[0].length == 0){
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

