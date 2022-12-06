import mysql from "serverless-mysql";

const pool = mysql({
  config: {
    host: "cmsc508.com",
    user: "makkieie",
    password: "Shout4_makkieie_GOME",
    port: 3306,
    database: "202310_teams_team22",
  },
});

export { pool };
