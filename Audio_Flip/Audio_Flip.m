clear
clc

%����� �ҷ�����
[audio, Fs] = audioread('audio.wav');

%����� ������ ����
size_x = size(audio);

%����� ������
flip_audio = flipud(audio);
audiowrite('flip_audio.wav',flip_audio,Fs);

%���� ���
figure(1)
plot(audio)
sound(audio, Fs)

pause(6)

%������ ���� ���
figure(2)
plot(flip_audio)
sound(flip_audio, Fs)