clear
clc

%오디오 불러오기
[audio, Fs] = audioread('audio.wav');

%오디오 사이즈 저장
size_x = size(audio);

%오디오 뒤집기
flip_audio = flipud(audio);
audiowrite('flip_audio.wav',flip_audio,Fs);

%사운드 출력
figure(1)
plot(audio)
sound(audio, Fs)

pause(6)

%뒤집힌 사운드 출력
figure(2)
plot(flip_audio)
sound(flip_audio, Fs)