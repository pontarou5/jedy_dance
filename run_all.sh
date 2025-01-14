!/bin/bash

#ダンスホールの振り付けを生成をするファイルを実行
gnome-terminal -- bash -c "python3 pose_generate_4beat_repeat.py カメレオン; exec bash"
wait 
pkill -f "python3 pose_generate_4beat_repeat.py カメレオン; exec bash"

# Lispファイル1を新しいターミナルで実行
gnome-terminal -- bash -c "roseus jedy_dance_subscribe.l; exec bash"

# Lispファイル2を新しいターミナルで実行
gnome-terminal -- bash -c "roseus wheel_move_dance.l; exec bash"

# ユーザーの入力待ち
echo "Press Enter to Start Music 【カメレオン】♪..."
read -r  # Enterキーの入力を待機

# Pythonスクリプトを新しいターミナルで実行
gnome-terminal -- bash -c "python3 music_publish_modif.py カメレオン; exec bash"

echo "Press Enter to close 3 scripts..."
read -r  # Enterキーの入力を待機

pkill -f "roseus jedy_dance_subscribe.l"  
pkill -f "roseus wheel_move_dance.l"  
pkill -f "python3 music_publish_modif.py"  


# ユーザーの入力待ち
echo "Press Enter to Start ダンスホール Version..."
read -r  # Enterキーの入力を待機

#ダンスホールの振り付けを生成をするファイルを実行
gnome-terminal -- bash -c "python3 pose_generate_4beat_repeat.py ダンスホール; exec bash"
wait 
pkill -f "python3 pose_generate_4beat_repeat.py ダンスホール; exec bash" 

# Lispファイル1を新しいターミナルで実行
gnome-terminal -- bash -c "roseus jedy_dance_subscribe.l; exec bash"

# Lispファイル2を新しいターミナルで実行
gnome-terminal -- bash -c "roseus wheel_move_dance.l; exec bash"

# ユーザーの入力待ち
echo "Press Enter to Start Music 【ダンスホール】♪..."
read -r  # Enterキーの入力を待機

# Pythonスクリプトを新しいターミナルで実行
gnome-terminal -- bash -c "python3 music_publish_modif.py ダンスホール; exec bash"

echo "Press Enter to close 3 scripts..."
read -r  # Enterキーの入力を待機

pkill -f "roseus jedy_dance_subscribe.l"  
pkill -f "roseus wheel_move_dance.l"  
pkill -f "python3 music_publish_modif.py"  
