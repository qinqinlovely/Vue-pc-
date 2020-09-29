//加载Express模块
const express = require("express");
//加载CORS模块
const cors = require("cors");
//加载body-parser中间件
const bodyParser = require("body-parser");
//加载MySQL模块
const mysql = require("mysql");
// const { pid } = require("process");
//创建mysql连接池
const pool = mysql.createPool({
  host: "127.0.0.1",
  port: 3306,
  user: "root",
  password: "",
  database: "mysc_vue",
  charset: "utf8",
  connectionLimit: 20,
});

//创建Express对象
const server = express();

//使用body-parser中间件
server.use(
  bodyParser.urlencoded({
    extended: false,
  })
);

//使用CORS模块
server.use(
  cors({
    origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
  })
);

//获取轮播图图片
server.get("/banner", (req, res) => {
  let sql = "SELECT cid,img FROM mysc_indexcarou";
  //执行SQL语句
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send({ message: "查询成功", code: 1, results: results });
  });
});

//获取热卖排行榜的商品信息
server.get("/hotsale", (req, res) => {
  let sql =
    'SELECT id,title,pic_sm,now_price,format(was_price,2) as "was_price",format(price,2) as "price",count FROM mysc_detail WHERE family_id=1';
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send({ message: "查询成功", code: 1, results: results });
  });
});

//获取新品推荐的商品信息
server.get("/recommend", (req, res) => {
  let sql =
    'SELECT id,title,pic_sm,now_price,format(was_price,2) as "was_price",format(price,2) as "price",count FROM mysc_detail WHERE family_id=2';
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send({ message: "查询成功", code: 1, results: results });
  });
});

// //获取畅销推荐的商品信息
// server.get("/salerecom", (req, res) => {
//   let sql =
//     'SELECT pid,title,pic,now_price,format(was_price,2) as "was_price",format(price,2) as "price",format(count,1) as "count" FROM mysc_sale_recommend';
//   pool.query(sql, (err, results) => {
//     if (err) throw err;
//     res.send({ message: "查询成功", code: 1, results: results });
//   });
// });

// //获取猜你喜欢的商品信息
// server.get("/guess", (req, res) => {
//   let sql =
//     'SELECT pid,title,pic,now_price,format(was_price,2) as "was_price",format(price,2) as "price",format(count,1) as "count" FROM mysc_guess_youlike';
//   pool.query(sql, (err, results) => {
//     if (err) throw err;
//     res.send({ message: "查询成功", code: 1, results: results });
//   });
// });

// //用户注册的接口
// server.post("/register", (req, res) => {
//   //1.获取客户端提交的手机号和密码
//   let phone = req.body.phone;
//   let password = req.body.password;
//   //2.以手机号为条件进行查找操作
//   let sql = "SELECT uid,phone FROM mysc_user WHERE phone=?";
//   pool.query(sql, [phone], (err, results) => {
//     if (err) throw err;
//     //根据手机号是否存在，然后进行不同的操作
//     if (results.length == 0) {
//       //3.将手机号信息写入数据表（还需要注意将密码变成md5的结果）
//       sql = "INSERT INTO mysc_user(phone,password) VALUES(?,MD5(?))";
//       pool.query(sql, [phone, password], (err, results) => {
//         if (err) throw err;
//         res.send({ message: "注册成功", code: 1 });
//       });
//     } else {
//       //3.产生“错误”响应信息到客户端
//       res.send({ message: "用户名已经存在", code: 0 });
//     }
//   });
// });

// //用户登录的接口
// server.post("/login", (req, res) => {
//   //1.获取手机号和密码
//   let phone = req.body.phone;
//   let password = req.body.password;
//   //2.以手机号和密码为条件进行查找
//   let sql =
//     "SELECT uid,phone,password FROM mysc_user WHERE phone=? AND password=MD5(?)";
//   pool.query(sql, [phone, password], (err, results) => {
//     if (err) throw err;
//     if (results.length == 0) {
//       res.send({ message: "登录失败", code: 0 });
//     } else {
//       res.send({ message: "登录成功", code: 1 });
//     }
//   });
// });

// //商品详情的接口
// server.get("/details", (req, res) => {
//   let id = req.query.id;
//   let sql = "SELECT * FROM mysc_detail WHERE id=?";
//   pool.query(sql, [id], (err, results) => {
//     if (err) throw err;
//     // console.log(results);
//     res.send({ message: "查询成功", code: 1, result: results });
//   });
// });

// //加入购物车接口
// server.post("/addcar", (req, res) => {
//   // res.send('ok');
//   let cid = req.body.cid;
//   console.log(cid);
//   let sql1 = "SELECT * FROM mysc_shoppingcart WHERE cid=?";
//   let sql2 = "INSERT INTO mysc_shoppingcart SET ?";
//   let sql3 = "UPDATE mysc_shoppingcart SET num=num+1 WHERE cid=?";
//   console.log(req.body);
//   pool.query(sql1, [cid], (err, result) => {
//     if (err) throw err;
//     console.log(result);
//     if (result.length == 0) {
//       pool.query(sql2, [req.body], (err, results) => {
//         console.log(result);
//         if (results.affectedRows > 0) {
//           res.send("1");
//         } else {
//           res.send("0");
//         }
//       });
//     } else {
//       pool.query(sql3, [cid], (err, result) => {
//         if (err) throw err;
//         if (result.affectedRows > 0) {
//           res.send("2");
//         } else {
//           res.send("3");
//         }
//       });
//     }
//   });
// });

// //购物车接口
// server.get("/car", (req, res) => {
//   let sql = "SELECT * FROM mysc_shoppingcart";
//   pool.query(sql, (err, results) => {
//     if (err) throw err;
//     res.send({ result: results });
//   });
// });

//指定监听端口号
server.listen(3000, () => {
  console.log("server is running...");
});
