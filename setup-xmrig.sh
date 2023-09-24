#!bin/bash

echo -e "\e[31mDo you want your system to update? y/n \e[0m"

read answer_to_update

if [[ $answer_to_update == "y" ]]; then
	echo -e "\e[31mYou may need to enter your sudo password! \e[0m"
	sudo apt update
fi

echo -e "\e[31mDownloading Prerequisites \e[0m"

echo -e "\e[31mThis will take a moment! \e[0m"

sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

echo -e "\e[31mDone! Now cloning into git project! \e[0m"

git clone https://github.com/xmrig/xmrig.git

echo -e "\e[31mDone! Now building the project! \e[0m"

cd xmrig

mkdir build

cd build

cmake ..

echo -e "\e[31mThe easy part is done! Now this will take a while so go grab a coffee or a snack! \e[0m"

sleep 2

make

echo "\e[31mDo you want to start mining now? y/n \e[0m"

read answer_to_mine

if [[ $answer_to_mine == "y" ]]; then
	
	echo -e "\e[31mYou need to have a wallet to continue \e[0m"
	
	echo -e "\e[31mPlease enter your wallet address here: \e[0m"
	
	read wallet_address
	
	echo -e "\e[31mDo you want to solo mine? y/n \e[0m"
	
	read answer_to_solo_mine
	
	if [[ $answer_to_solo_mine == "y" ]]; then
		echo -e "\e[31mHow do you want to name your miner? \e[0m"
		
		read name_of_miner
		
		./xmrig -u $wallet_address -p $name_of_mine
		
	fi
	
	echo -e "\e[31mDo you want to enter your own pool or continue with the default one(monero ocean)? e(enter)/d(default) \e[0m"
	
	read answer_to_enter_pool
	
	if [[ $answer_to_enter_pool == "e" ]]; then
		
		echo -e "\e[31mEnter the domain and port of your mining pool: (ex: gulf.moneroocean.stream:10128) \e[0m"
		
		read pool
		
		echo -e "\e[31mHow do you want to name your miner? \e[0m"

                read name_of_miner
		
		echo -e "\e[31mStarting the mining! \e[0m"
		
		./xmrig -o $pool -u $wallet_address -p $name_of_miner
	fi
	
	echo -e "\e[31mHow do you want to name your miner? \e[0m"

	read name_of_miner
	
	echo -e "\e[31mStarting the mining! \e[0m"
	
	./xmrig -o gulf.moneroocean.stream:10128 -u $wallet_address -p name_of_miner

fi

echo -e "\e[31mTo start mining you will need to enter a command! The command is: ./xmrig -o gulf.moneroocean.stream:10128 -u yourwalletaddress -p nameofyourpi NOTE: If you want to change the mining pool you will need to change the text that says: -o gulf.moneroocean.com:10128, unless you are solo mining! \e[0m"
