import axios from "axios";
import { pool } from "../../config/db";

export default async function handler(req, res){
        try{
            const result = await pool.query("SELECT owner_auth_username, owner_auth_password from owner_authentication WHERE owner_auth_username = ? and owner_auth_password = ?", 
            [req.body.username, req.body.password])
            if(result.length > 0){
                return res.status(200).json({result})
            }
            else{
                return res.status(200).json({message: "user not found"})
            }
        } 
        catch(error){
            return res.status(401).json({error})
        }
};

