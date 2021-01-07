const router = require('express').Router(); 
const { getMovies } = require('../models/movies')

router.get('/', async (req, res, next) => {
    console.log(" -- Hit the get movies endpoint")
    try {
        const movies = await getMovies();

        res.status(200).send({
            movies: movies,
            successStatus: true
        })
    } catch (err) {
        console.log("Error: ", err);
        next();
    }

});

module.exports = router;