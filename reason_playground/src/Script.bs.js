// Generated by BUCKLESCRIPT VERSION 4.0.18, PLEASE EDIT WITH CARE
'use strict';

var List = require("bs-platform/lib/js/list.js");
var Util$MyNewProject = require("./Util.bs.js");

var user1 = /* record */[
  /* name */"test",
  /* age */10
];

var user2 = /* record */[
  /* name */"test2",
  /* age */15
];

var users_001 = /* :: */[
  user2,
  /* [] */0
];

var users = /* :: */[
  user1,
  users_001
];

console.log(Util$MyNewProject.sum(List.map((function (u) {
                return u[/* age */1];
              }), users)));

exports.user1 = user1;
exports.user2 = user2;
exports.users = users;
/*  Not a pure module */
