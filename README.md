# ChatGPT Web

客户端
<img width="1438" alt="image" src="https://user-images.githubusercontent.com/13517412/230752830-06bcb883-1a27-48de-8162-b42f2abb2d1e.png">
<img width="1439" alt="image" src="https://user-images.githubusercontent.com/13517412/230752840-efd890fb-0457-4c2a-a8e3-cde93948f99e.png">
<img width="1439" alt="image" src="https://user-images.githubusercontent.com/13517412/230752867-84c6e619-a151-4f7d-848a-120ccc64d5cf.png">
<img width="1439" alt="image" src="https://user-images.githubusercontent.com/13517412/230752872-b1670e7e-cce9-4744-becb-f0d657a58598.png">
<img width="1439" alt="image" src="https://user-images.githubusercontent.com/13517412/230752885-776f357c-2c4a-4e1e-aaf5-f02ca6551be2.png">
管理端
<img width="1439" alt="image" src="https://user-images.githubusercontent.com/13517412/230766669-9eb38029-e0f3-4ba1-985d-abf0757505b4.png">
<img width="1437" alt="image" src="https://user-images.githubusercontent.com/13517412/230766812-48c789dc-86c3-4ba7-8319-6a6eee2d7adc.png">

<img width="1438" alt="image" src="https://user-images.githubusercontent.com/13517412/230752894-68024e88-2b77-47ba-83f4-c7d38589ede8.png">
<img width="1439" alt="image" src="https://user-images.githubusercontent.com/13517412/230752907-586329a6-e395-48ef-9bdf-cce8b8610cdf.png">
<img width="1438" alt="image" src="https://user-images.githubusercontent.com/13517412/230752920-87d24962-9452-496a-ad6f-7d67252a49e8.png">
<img width="1439" alt="image" src="https://user-images.githubusercontent.com/13517412/230752936-8460e759-6ace-4a89-a146-8d6c5380a536.png">
<img width="1437" alt="image" src="https://user-images.githubusercontent.com/13517412/230752949-4a92334d-cc69-4d09-b587-a44e92845c57.png">
<img width="1438" alt="image" src="https://user-images.githubusercontent.com/13517412/230752958-c2a67800-84bd-4c45-b98e-a629042ee5c7.png">
<img width="1439" alt="image" src="https://user-images.githubusercontent.com/13517412/230752964-b57da9e1-1a42-4967-ae6c-1da1c64c547e.png">
<img width="1439" alt="image" src="https://user-images.githubusercontent.com/13517412/230752973-2dac4562-51af-4fe5-9138-0331b228cfe6.png">
<img width="1439" alt="image" src="https://user-images.githubusercontent.com/13517412/230752984-67ff808f-c87e-44f0-9957-bfcb0b6c1802.png">
<img width="1438" alt="image" src="https://user-images.githubusercontent.com/13517412/230753000-708e2ad7-10e8-4cdc-843e-b52f3cb22656.png">
<img width="1436" alt="image" src="https://user-images.githubusercontent.com/13517412/230753011-125fe575-8947-4d1e-8496-b3afb4f2db7e.png">

为了方便大家沟通交流，同步消息，建了QQ群，目前已有828人，群号 145225165，申请入群后请及时回复验证码，否则360秒后会被群机器人自动移除群。
![image](https://user-images.githubusercontent.com/13517412/230753075-0d815446-3e24-4a09-bee4-e3fa59dec76e.png)
<img width="679" alt="image" src="https://user-images.githubusercontent.com/13517412/230753144-0c5ea0ee-55a6-4d5d-8282-53fcbc9355c7.png">


### 功能

- 登录注册，管理后台可以设置首次登录赠送免费提问次数
- key轮询池
- 卡券套餐管理
- 对话管理
- 敏感词管理
- 自定义回复管理
- 提示词prompt管理
- 卡密套餐管理、卡密生成和核销

## 部署
> 服务器无需安装任何环境，只需要安装nginx, 直接运行静态 `html` 服务 和 二进制打包文件

将数据库文件 `db.sql` 文件导入到 `mysql`，修改 `.env` 数据库配置信息和邮箱配置信息

在 `linux` 服务器上运行 `nohup ./goravel &` 启动后端服务，运行 `curl http://127.0.0.1:3000` ，如果出现 
 `{"Hello":"Goravel"}` 说明后端服务启动成功

将用户端绑定到 `chatgpt` 目录，如 `chat.baidu.com`，`nginx` 主要配置如下：
```shell
listen 80;
server_name chat.baidu.com;
index index.php index.html index.htm default.php default.htm default.html;
root /www/wwwroot/chat-gpt/public/chatgpt;
location /api/{
    proxy_pass http://127.0.0.1:3000;
}
```
访问 `chat.baidu.com` 即可访问前台

将管理端域名绑定到 `admin` 目录，如 `admin.baidu.com`，`nginx` 主要配置如下：
```shell
listen 80;
server_name admin.baidu.com;
index index.php index.html index.htm default.php default.htm default.html;
root /www/wwwroot/chat-gpt/public/admin;
location /backend/{
    proxy_pass http://127.0.0.1:3000/backend/;
}
```
访问 `chat.baidu.com` 即可访问管理后台，默认账号 `245629560@qq.com`, 密码 `123456` 

## 鸣谢
[chatgpt-web 原项目](https://github.com/Chanzhaoyu/chatgpt-web)  

