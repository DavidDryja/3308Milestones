const assert = require('assert');
const axios = require('axios');

// testing if testing works

it('true is true', () => {
  assert.equal(true, true)
})

// Check if isLoggedIn function works correctly

const isLoggedIn = async () => {
  await axios
    .get("https://paradiseplanner3308.herokuapp.com/api/isloggedin")
    .then(res => {
      if (res.data) return true;
      return false;
    });
}

it('is not logged in', async () => {
  const res = await isLoggedIn();
  setTimeout(() => assert.equal(res, false), 1000)
})


// Check if information passed to register is valid

const checkRegister = async () => {
  const state = {
    username: "",
    email: "",
    firstname: "",
    lastname: "",
    password: "",
    password_con: "",
    userdata: null,
    success: false
  };

  await axios
    .post("https://paradiseplanner3308.herokuapp.com/api/register", state)
    .then(result => {
      if (result.data.errors) return false;
      return true;
    });
}

it('is a valid register', async () => {
  const res = await checkRegister();  
  setTimeout(() => assert.equal(res, false), 1000)
})


// Check if information passed to create post is valid

const validPost = async () => {
  const state = {
    posts: null,
    post: "",
    duedate: "",
    isloggedin: true
  }
  
  await axios
    .post("https://paradiseplanner3308.herokuapp.com/api/addpost", state)
    .then(res => {
      if (res.data.errors) return false;
      return true;
    });
}

it('is a valid post', async () => {
  const res = await validPost();  
  setTimeout(() => assert.equal(res, false), 1000)
})