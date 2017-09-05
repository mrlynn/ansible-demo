var express = require('express');
var router = express.Router();
var async = require('async');
var mongoose = require('mongoose');
var MongoClient = require('mongodb').MongoClient
const dotenv = require('dotenv');
const chalk = require('chalk');
var request = require('request');

dotenv.load({
	path: '.env.dev'
});

var title = process.env.title;

var MONGODB_OM_HOST 	= process.env.MONGODB_OM_HOST;  		// ec2-52-203-231-142.compute-1.amazonaws.com
var MONGODB_OM_PORT 	= process.env.MONGODB_OM_PORT;  		// 8080
var MONGODB_OM_USER 	= process.env.MONGODB_OM_USER; 			// michael.lynn@mongodb.com
var MONGODB_OM_API_KEY 	= process.env.MONGODB_OM_API_KEY;  		// 1957ae85-a5d7-4603-a37f-070f3887dbf9
var MONGODB_URI 		= process.env.MONGODB_URI;				// mongodb://localhost:27017/mdbaas

/**
 * GET all categories
 * @constructor
 */
router.get('/servers/all', function(req, res, next) {
	console.log("HOST: " + MONGODB_OM_HOST);
	console.log("PORT: " + MONGODB_OM_PORT);
	console.log("USER: " + MONGODB_OM_USER);
	console.log("API:  " + MONGODB_OM_API_KEY);
// request(
//     {
//         url : url,
//         headers : {
//             "Authorization" : auth,
//             "WWW-Authenticate": 'Digest realm="MMS Public API"'
//         }
//     },
//     function (error, response, body) {
//         console.log("ERROR: " + error);
//         console.log("RESPONSE: " + JSON.stringify(response));
//         console.log("BODY: " + JSON.stringify(body));
//     }
// );

	var options = {
	  uri: 'http://' + MONGODB_OM_HOST + ':' + MONGODB_OM_PORT + '/api/public/v1.0/serverPool/',
	  auth: {
	    user: MONGODB_OM_USER,
	    pass: MONGODB_OM_API_KEY,
	    sendImmediately: false
	  }
	};
	request(options, function(error, response, body){
	    if (!error && response.statusCode == 200){
	        // console.log('body : ' + body);
	        	        res.json(body);

	    }
	    else{
	        console.log('Code : ' + response.statusCode)
	        console.log('error : ' + error)
	        console.log('body : ' + body)
	        res.json(body);
	    }
	});

});

/**
 * Get all requests
 * /api/public/v1.0/serverPool/requests
 * @constructor
 */
router.get('/servers/requests', function(req, res, next) {
	var options = {
	  uri: 'http://' + MONGODB_OM_HOST + ':' + MONGODB_OM_PORT + '/api/public/v1.0/serverPool/requests',
	  auth: {
	    user: MONGODB_OM_USER,
	    pass: MONGODB_OM_API_KEY,
	    sendImmediately: false
	  }
	};
	request(options, function(error, response, body){
	    if (!error && response.statusCode == 200){
	        console.log('body : ' + body);
	        	        res.json(body);

	    }
	    else{
	        console.log('Code : ' + response.statusCode);
	        console.log('error : ' + error);
	        console.log('body : ' + body);
	        res.json(body);
	    }
	});
});

/**
 * Get a specific requests
 * /api/public/v1.0/serverPool/requests/57e5a05b80eef542bf4af9a7
 * @constructor
 */
router.get('/servers/requests/:id', function(req, res, next) {
	var options = {
	  uri: 'http://' + MONGODB_OM_HOST + ':' + MONGODB_OM_PORT + '/api/public/v1.0/serverPool/requests/' + req.params.id,
	  auth: {
	    user: MONGODB_OM_USER,
	    pass: MONGODB_OM_API_KEY,
	    sendImmediately: false
	  }
	};
	request(options, function(error, response, body){
	    if (!error && response.statusCode == 200){
	        console.log('body : ' + body)
	    }
	    else{
	        console.log('Code : ' + response.statusCode)
	        console.log('error : ' + error)
	        console.log('body : ' + body)
	    }
	});
});

/**
 * POST add new category
 * @constructor
 */
 router.post('/categories', function(req, res, next) {
	category = new Category({
		name: req.params.name,
		slug: slug(req.params.name),
		description: req.params.description
	});
	categrory.save(function(err,category) {
		if (err) {
			res.send(500,'Problem saving category.');
		}
		res.send(category);
	})
})

/**
 * DELETE a single category
 *
 */
router.delete('/categories/:id', function(req, res, next) {
	Category.remove({_id: req.params.id},function(err,category) {
		res.json(category);
	})
});

/**
 * GET facets for category
 * @constructor
 */
router.get('/facet/:category', function(req, res, next) {

// db.products.aggregate([{
//     $match: {
//         "Product_Group": "Television"
//     }
// }, {
//     $unwind: "$Attributes"
// }, {
//     $match: {
//         "Attributes.Name": "Price"
//     }
// },{
//     $bucket: {
//         groupBy: "$Attributes.Value",
//         boundaries: [0, 200, 300, 500, Infinity],
//         output: {
//             count: {
//                 $sum: 1
//             },
//             matches: {
//                 $push: "$Attribute.Value"
//             }
//         }
//     }
// }])






// 	db.products.aggregate([{
//         $match: {
//             $text: {
//                 $search: "sony"
//             },
//             category: 'Television'}
//         },
//         {
//             $unwind: "$Attributes"
//         },
//         {
//             $match: {
//                 "Attributes.Name": "Screen Size"
//             }
//         },
//         {
//             $sortByCount: "$Attributes.Value"
//         },
//         {
//             $limit: 5
//         },
//         { $project: {
//         	'Attribute.Name': 1,
//         	'Attribute.Value': 1
//         }}
//     ])

})


/**
 * GET all categories
 * @constructor
 */
 router.get('/products', function(req, res, next) {
	Product.find({},function(err,products) {
		res.json(products);
	})
});

/**
 * GET product.
 * @constructor
 */
router.get('/product/:id', function(req, res, next) {
	Product.findById(req.params.id,function(err,product) {
		res.json(product);
	})
});

/* GET product. */
router.get('/products/:id', function(req, res, next) {
	Product.findById(req.params.id,function(err,product) {
		res.json(product);
	})
});

/**
 * POST - Create a product
 * @constructor
 */
router.post('/api/products', function (req, res){
  var product;

  product = new Product({
    code: req.body.code,
    description: req.body.description,
    shipable: req.body.shipable,
    taxable: req.body.taxable,
    title: req.body.title,
    price: req.body.price,
    productType: req.body.productType,
    name: req.body.name,
    category: req.body.category
  });
  product.save(function (err) {
    if (!err) {
      return console.log("created");
    } else {
      return console.log(err);
    }
  });
  return res.send(product);
});

/* DELETE product. */
router.delete('/products/:id', function(req, res, next) {
	Product.remove({_id: req.params.id},function(err,product) {
		console.log("Deleting Product " + req.params.id);
		res.json(product);
	})
});

/* GET users. */
router.get('/users', function(req, res, next) {
	User.find({},function(err,users) {
		res.json(users);
	})
});

/* GET user */
router.get('/users/:id', function(req, res, next) {
	User.findById({},function(err,user) {
		res.json(user);
	})
});

router.get('/users/:id', function(req, res, next) {
	User.findById({},function(err,user) {
		res.json(user);
	})
});

/* UPDATE user */
router.put('/users/:id', function(req, res, next) {
	User.findById({},function(err,user) {
		res.json(user);
	})
});

/* DELETE user */
router.delete('/users/:id', function(req, res, next) {
	User.remove({_id: req.params.id},function(err,user) {
		res.json(user);
	})
});

/* get product facets */
router.get('/facets/:id', function(req, res, next) {
	Product.findById(req.params.id, function(req, res, next) {
		res.json
	})
});

/* calculate tax for a product purchase by a user */
router.get('/taxcalc/:id/:user', function(req, res, next) {
	productId = req.params.id;
	userId = req.params.user;
	taxjson = taxCalc.calculateTax(productId,userId,function(err,response) {
		res.json(response);
	});

});
/* GET tax for product based on user location and product taxable flag. */
router.get('/tax/:id/:user', function(req, res, next) {
	var productId = req.params.id;
	Product.findById(productId,function(err,product) {
		if (err) {
			res.send(500,'Problem retrieving product.');
		}
		if (product.taxable == 'Yes' || product.taxable == true) {
			User.findById(req.params.user, function(err,user) {
				if (err) {
					return res.send(500, 'Problem retrieiving user by id.');
				}
				if (!user.state || !user.city) {
					res.json({
						error: 'User does not have address.'
					})
				}
				if (user.state == taxConfig.ourStateCode || user.state == taxConfig.ourStateName) {
					taxRate = taxConfig.ourStateTaxRate;
					if (user.city.toLowerCase() == taxConfig.ourCityName.toLowerCase()) {
						taxRate = taxConfig.ourCityTaxRate;
					}
				} else {
					taxRate = 0;
				}
				var price = Number(product.price).toFixed(2);
				taxAmount = Math.round((price * taxRate) * 100) / 100;
				priceWithTax = (parseFloat(price) + parseFloat(taxAmount));
				res.json({
					productId: productId,
					taxable: product.taxable,
					price: parseFloat(price),
					taxRate: taxRate,
					taxAmount: taxAmount,
					priceWithTax: priceWithTax
				})
			})

		}
	})
});

router.get('/search', function(req, res, next) {
	var connectionstring = 'mongodb://' + Config.dbhost + ':' + Config.dbport + '/' + dbname;

	MongoClient.connect(connectionstring, function (err, db) {
	  if (err) throw err

	  db.collection('products').find().toArray(function (err, result) {
	    if (err) throw err
	  });
	});
});

/* get all categories */
router.get('/orders', function(req, res, next) {
	Order.find({},function(err,orders) {
		res.json(orders);
	})
});

/* Get a single category */
router.get('/order/:id', function(req, res, next) {
	Category.findById(req.params.id,function(err,category) {
		res.json(order);
	})
});

/* New Category */
router.post('/order', function(req, res, next) {
	order = new Order({
		user: req.params.userId,
		cart: req.params.cart,
		address: req.params.address,
		city: req.params.city,
		state: req.params.state,
		zipcode: req.params.zipcode,
		telephone: req.params.phone,
		owner: {
			ticket_name: req.params.ticket_name,
			ticket_email: req.params.ticket_email
		},
		status: req.params.status
	});
	order.save(function(err,order) {
		if (err) {
			res.send(500,'Problem saving order.');
		}
		res.send(category);
	})
});
router.get('/donut-chart', function(req, res, next) {
	Event.aggregate([
	{
		$group: { "_id": "$thing.category", "value": { $sum: 1 } }
	},{
		$project: { "_id": -1, "value": 1}
	}], function(err,donuts) {
		var data = [];
		async.each(donuts, function(donut, next) {
			data.push({
				label: donut._id,
				value: donut.value
			})
		})
		res.json(data);
	});
})
router.get('/purchases-by-yearmo', function(req,res,next) {
	Event.aggregate([{
		$match: {
			'action': 'purchase'
		}
	},
    { "$group": {
        "_id": {
            "year": {"$year": "$when" },
            "month": {"$month": "$when" }
            },
          "count": { "$sum": 1 }
        }
    },
  ], function(err,yearmos){
	    var data = [];

	    if (err) {
	        console.log("error: " + err.message);
	    } else {
	        var i = 0;
	        async.each(yearmos,function(yearmo,next) {
	            data.push({
	                x: yearmo._id.year + '-' + yearmo._id.month,
	                purchases: yearmo.count
	            })
	        })
	    }
    res.json(data);
    });
});
module.exports = router;
