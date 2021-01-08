User.create!([
  {name: "bob", email: "bob@bob.com", password_digest: "$2a$12$acFewVy3YhposguYQ9NdT.gvsy3UPTkdp/AYc4OSJbAInHL4ISzCi"},
  {name: "jane", email: "jane@jane.com", password_digest: "$2a$12$M3Ndh8dStP4jSqzUfonSIuI80zbr7M6lyuBneLdchHlOKRLRZoZCa"},
  {name: "rob", email: "rob@rob.com", password_digest: "$2a$12$NpFFUjMLWRkdjsT7.VfUC.ahKQzFUmyT1UnvbLu.s..TznDgAuq9a"},
  {name: "amy", email: "amy@amy.com", password_digest: "$2a$12$pp7vEU94PKiqDtZ8Dr8i.OQ57fmhMygdDIpe0VVeOwTmW9eqCbGvK"},
  {name: "ringo", email: "ringo@ringo.com", password_digest: "$2a$12$nf1EntaNy7OO7vN.rmiXkeLWIGyGWJcU0YYJKZcCJhAtX03NaDCRq"},
  {name: "Grace", email: "grace@grace.com", password_digest: "$2a$12$ox6XZbX6E7tJEMaxIEwTC.zKL62k9/fMgUtv8EecnsvzbyLPbLCLq"},
  {name: "jason", email: "jason@jason.com", password_digest: "$2a$12$yKjG4Qk1zdRz/wFuMpsrZOjka/f3DqBPGxnkZPSvCsaC8.Xvw3Cju"},
  {name: "person", email: "person@hotmail.com", password_digest: "$2a$12$hUnEQ4qCQB6X9b0hLBXg6OC12G71X9F5SXUzSMhXPkdQNXp9i4/YO"}
])


Recipe.create!([
  {title: "grapes", ingredients: "soil + water", directions: "the directions", prep_time: 20, image_url: "the image url", user_id: 1},
  {title: "tacos!!!!!", ingredients: "tortilas, beef, lettuce", directions: "put all the ingredients on top of each other", prep_time: 12, image_url: "https://www.dinneratthezoo.com/wp-content/uploads/2018/05/ground-beef-tacos-2.jpg", user_id: 1},
  {title: "Raw Eggs", ingredients: "Chicken", directions: "Squeeze the chicken", prep_time: 1, image_url: "http://swansonhealthcenter.com/wp-content/uploads/2011/07/Egg.jpg", user_id: nil},
  {title: "Empty Sandwich", ingredients: "Two slices of bread", directions: "Place slices of bread next to each other.", prep_time: 72, image_url: "http://www.phoenixisstrategic.com/wp-content/uploads/2013/05/blog-empty-sandwich.jpg", user_id: nil},
  {title: "Pizza", ingredients: "Flour, water, pepperoni, cheese.", directions: "Mix flour and water, add cheese and pepperoni, shape as a heart, bake in oven on self-clean mode.", prep_time: 455, image_url: "http://twopizzapals.weebly.com/uploads/2/3/6/0/23602608/1338890_orig.jpg", user_id: nil},
  {title: "Mud Pie", ingredients: "Flour, water, mud.", directions: "Mix flour and water, add mud, bake at 350 degrees for 1 hour.", prep_time: 84, image_url: "http://cdn-image.myrecipes.com/sites/default/files/styles/300x300/public/image/recipes/sl/05/12/mocha-mud-pie-sl-257949-x.jpg?itok=_ChocANl", user_id: nil},
  {title: "Corn on the cob", ingredients: "Corn, cob", directions: "Place corn on the cob, grill for 20 minutes, enjoy!", prep_time: 22, image_url: "http://www.scientificamerican.com/sciam/cache/file/59C0122F-509C-4FEE-99A67FC20C50CEF1.jpg", user_id: 1},
  {title: "Licorice", ingredients: "Licorice", directions: "Buy licorice from store.", prep_time: 120, image_url: "http://cdn2.bigcommerce.com/server6200/aa739/product_images/uploaded_images/red-licorice.png?t=1398725710", user_id: 2},
  {title: "grrrrapes", ingredients: "the ingredients", directions: "the directions", prep_time: 20, image_url: "the image url", user_id: 1},
  {title: "pizza", ingredients: "bread + flour + tomatoes", directions: "bake in oven", prep_time: 100, image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-homemade-pizza-horizontal-1542312378.png?crop=1.00xw:1.00xh;0,0&resize=480:*", user_id: 1},
  {title: "breeee", ingredients: "milk, flour?", directions: "patientce", prep_time: 45, image_url: "asdfasdf", user_id: 8}
])
