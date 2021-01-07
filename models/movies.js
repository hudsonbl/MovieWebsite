const mysqlPool = require('../lib/mysqlPool');

async function getMovies(){
    const [ results ] = await mysqlPool.query(
        'SELECT * FROM movies'
    );

    console.log("Fetched movies from server: ", results.length);

    return results;
}
exports.getMovies = getMovies;