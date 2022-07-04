const baseUrl = '';

const typesTappy = baseUrl + '/types';
const categoriesTappy = baseUrl + '/categories';
const languages = baseUrl + '/languages';

// ----------Users----------
const newUsers = baseUrl + '/newUsers';
const newUsersKeyAct = baseUrl + '/newUsers/keys';// /{actKey}
const newUsersKeyNew = baseUrl + '/newUsers/keys';// /{userEmail}
const login = baseUrl + '/login';
const refreshToken = baseUrl + '/refresh';
const resetPassword = baseUrl + '/users/passwords';// /{userEmail}
const passwordChange = baseUrl + '/users/password/change';
const logoutUser = baseUrl + '/logout';
const readDataAccount = baseUrl + '/users/account';
const saveDataAccount = baseUrl + '/users/account';

//----------Tappy----------
const listTappies = baseUrl + '/tappies';
const addTappy = baseUrl + '/tappies';// /{tappyID} 
const editTappy = baseUrl + '/tappies';// /{tappyID} 
const loadTappy = baseUrl + '/tappies';// /{tappyID} 
const saveTappy = baseUrl + '/tappies';// /{tappyID} 


// ----------Profile----------
const listProfiles = baseUrl + '/profiles';
const deleteProfile = baseUrl + '/profiles'; // /{profileID} 
const changeStatusProfile = baseUrl + '/profiles'; // /{profileID}/status
const addProfile = baseUrl + '/profiles';
const readProfile = baseUrl + '/profiles'; // /{profileID} 
const saveDataProfile = baseUrl + '/profiles'; // /{profileID} 
const loadImageProfile = baseUrl + '/profiles'; // /{profileID}/image
const deleteImageProfile = baseUrl + '/profiles'; // /{profileID}/image


// ----------Brick----------
const deleteBrick = baseUrl + '/profiles'; // /{profileID}/bricks/{brickID}
const newPositionBrick = baseUrl + '/profiles'; // /{profileID}/bricks/{brickID}/position
const editBrick = baseUrl + '/profiles'; // /{profileID}/bricks/{brickID}
const listBrick = baseUrl + '/profiles'; // /{profileID}/bricks




