const express = require('express');
const router = express.Router()
const db = require('../../database');


router.get('/reviews', (req, res) => {
  let arr = [];
  db.getAll((reviews) => {
    reviews.forEach((review) => {
      arr.push(db.jsonFormat(review.review_id, review))
    })
    res.status(200).json(arr)
  })
})

//@route  GET /:trailId/trailRank
//@example http:localhost:3004/6/trailRank
//@desc   retrieves ranking of trail by trailId
router.get('/:trailId/trailRank', (req, res) => {
  let count = 0
  let id = req.params.trailId

  db.getRanking((results) => {
    for (key in results) {
      if (results[key] > results[id]) {
        count ++;
      }
    }
    res.status(200).json(`#${count + 1} ranked trail out of ${Object.keys(results).length}`)
  })
})

//@route  GET /:reviewId/reviewInfo
//@example http:localhost:3004/144/reviewInfo
//@desc   retrieves json review info by reviewId
router.get('/:reviewId/reviewInfo', (req, res) => {
  let id = req.params.reviewId

  db.getReview(id, (review) => {
    let obj = db.jsonFormat(id, review)
    res.status(200).json(obj)
  })
})

//@route  GET '/:trailId/reviewsNew'
//@example http:localhost:3004/7/reviewsNew
//@desc   retrieves reviews for trail sorted by most recent
router.get('/:trailId/reviewsNew', (req, res) => {
  let trailId = req.params.trailId;
  let arr = [];

  db.dateSort(trailId, 'DESC', (sortedReviews) => {

    sortedReviews.forEach((review) => {
      arr.push(db.jsonFormat(review.review_id, review))
    })
    res.status(200).json(arr)
  })
})

//@route  GET '/:trailId/oldReviews'
//@example http:localhost:3004/7/oldest Reviews
//@desc   retrieves reviews for trail sorted by oldest
router.get('/:trailId/reviewsOld', (req, res) => {
  let trailId = req.params.trailId;
  let arr = [];

  db.dateSort(trailId, 'ASC', (sortedReviews) => {
    sortedReviews.forEach((review) => {
      arr.push(db.jsonFormat(review.review_id, review))
    })
    res.status(200).json(arr)
  })
})


//@route  GET '/:trailId/topReviews'
//@example http:localhost:3004/14/topReviews
//@desc   retrieves reviews for trail sorted by highest ratings
router.get('/:trailId/topReviews', (req, res) => {
  let trailId = req.params.trailId;
  let arr = []

  db.ratedSort(trailId, 'DESC', (sortedReviews) => {
    sortedReviews.forEach((review) => {
      arr.push(db.jsonFormat(review.review_id, review))
    })
    res.status(200).json(arr)
  })
})

//@route  GET '/:trailId/bottomReviews'
//@example http:localhost:3004/14/newestReviews
//@desc   retrieves reviews for trail sorted by lowest rating
router.get('/:trailId/bottomReviews', (req, res) => {
  let trailId = req.params.trailId;
  let arr = [];

  db.dateSort(trailId, 'ASC', (sortedReviews) => {
    sortedReviews.forEach((review) => {
      arr.push(db.jsonFormat(review.review_id, review))
    })
    res.status(200).json(arr)
  })
})


module.exports = router;


