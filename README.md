# setup-xmrig-automatically
Setup the xmrig mining software to mine XMR, automatically.

This script will help you automate the process of installing xmrig to your Linux machine. It will install all the requirements and then ask how you want to mine. After you start mining, either with the script or manually, the program will stop and will not run in the backround. The mining is done with the xmrig mining software. After you can remove this script if you want.

This program will help you start mining XMR and save you some time.

To start the project simply create a file named: setup-xmrig.sh, paste the code in there and open a terminal. Or just clone the repository. After that simply cd into the directory of the scriptand type: bash setup-xmrig.sh and follow the steps of the script. Finally you can start mining when the program prompts you to do it, if you want. Or do it manually, as the script shows in the end. Also you can clone into this project using Git and then run the command following the instructions below.

The script does not collect any information like the wallet address.

I wrote the program to help you get started with mining XMR quickly.

Instructions📖:
1. Clone into the project:
git clone https://github.com/billh-ng/setup-xmrig-automatically.git
![Screenshot 2023-10-16 223508](https://github.com/billh-ng/setup-xmrig-automatically/assets/131195834/8202de03-f7f0-4bba-aad5-73cbad4f8cee)

2. Go into the file that was created📁: cd setup-xmrig-automatically
   ![Screenshot 2023-10-16 223707](https://github.com/billh-ng/setup-xmrig-automatically/assets/131195834/9d7451fb-4b79-4483-9ada-784d3e051aa8)

3. Run the script📜: bash setup_xmrig.sh
   ![Screenshot 2023-10-16 223937](https://github.com/billh-ng/setup-xmrig-automatically/assets/131195834/a5b68bb9-02f2-43c5-af28-2d9fe3dfaceb)
4. Update your system: y
   ![Screenshot 2023-10-16 224055](https://github.com/billh-ng/setup-xmrig-automatically/assets/131195834/4205ecca-1404-403f-8166-2909e705d700)
5. Let the script do its thing, I know it's gonna take a while, relax🧃.
6. Select if you want to start mining now⛏:
If you want to start mining now type "y", if not type "n". Let's start now!
![Screenshot 2023-10-17 170509](https://github.com/billh-ng/setup-xmrig-automatically/assets/131195834/d5971dd5-e506-4ac3-91fa-eac358cbc92d)

7. Paste in your XMR wallet💰:
![Screenshot 2023-10-16 224718](https://github.com/billh-ng/setup-xmrig-automatically/assets/131195834/87da5523-8c8a-421e-aa19-cf8ddeece9ae)
8. Select a pool🌊: You can enter the default which is Monero Ocean (gulf.moneroocean.stream:10128) or one of your choice. I'm going with the default one.
    
![Screenshot 2023-10-16 225847](https://github.com/billh-ng/setup-xmrig-automatically/assets/131195834/f781ee23-dd03-49c7-b8d5-7a79e33d1a4a)

If you want to enter your own pool simply type "e" and then enter the domain and port of your mining pool:
![Screenshot 2023-10-17 170714](https://github.com/billh-ng/setup-xmrig-automatically/assets/131195834/0ee135d6-f28d-4ec7-b342-10320c39bdf2)

9. Name your miner👷‍♂️:
    
![Screenshot 2023-10-16 230425](https://github.com/billh-ng/setup-xmrig-automatically/assets/131195834/de0a2992-0e54-406a-a821-94401b6c7114)

If you want to mine later and your entered "n" when the script prompted you to mine now, simply cd into the xmrig directory that was created in the root directory, cd into the build directory and type: ./xmrig -o gulf.moneroocean.stream:10128(or any other mining pool) -u (yourwalletaddress) -p nameofyourminer .
![Screenshot 2023-10-17 170954](https://github.com/billh-ng/setup-xmrig-automatically/assets/131195834/d7141dc6-70aa-43bb-a932-5c5f9a70a5d2)


And Done❗ Best of luck mining XMR🍀

![Screenshot 2023-10-16 230732](https://github.com/billh-ng/setup-xmrig-automatically/assets/131195834/bd733a1d-f6c6-4da9-90b1-ae009bdb1b88)
