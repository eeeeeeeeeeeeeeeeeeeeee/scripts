FasdUAS 1.101.10   ��   ��    k             l     ��  ��   mg This script tells me to get back to work when I'm goofing off too much.  Every two minutes, it checks if I am actively using Google Chrome.  It keeps track of these checks for the past twenty minutes, and if 80% or more of the checks say "yes," it scolds me.  But it only scolds me at ten minute intervals, at most.  It is implemented using a circular queue.     � 	 	�   T h i s   s c r i p t   t e l l s   m e   t o   g e t   b a c k   t o   w o r k   w h e n   I ' m   g o o f i n g   o f f   t o o   m u c h .     E v e r y   t w o   m i n u t e s ,   i t   c h e c k s   i f   I   a m   a c t i v e l y   u s i n g   G o o g l e   C h r o m e .     I t   k e e p s   t r a c k   o f   t h e s e   c h e c k s   f o r   t h e   p a s t   t w e n t y   m i n u t e s ,   a n d   i f   8 0 %   o r   m o r e   o f   t h e   c h e c k s   s a y   " y e s , "   i t   s c o l d s   m e .     B u t   i t   o n l y   s c o l d s   m e   a t   t e n   m i n u t e   i n t e r v a l s ,   a t   m o s t .     I t   i s   i m p l e m e n t e d   u s i n g   a   c i r c u l a r   q u e u e .   
  
 l     ��������  ��  ��        l     ��  ��    2 , Finds the sum of the elements in the queue.     �   X   F i n d s   t h e   s u m   o f   t h e   e l e m e n t s   i n   t h e   q u e u e .      i         I      �� ���� 0 sum     ��  o      ���� 	0 queue  ��  ��    k     -       r         I    �� ��
�� .corecnte****       ****  o     ���� 	0 queue  ��    o      ���� 0 c        r         m    	����    o      ���� 0 i     ! " ! r     # $ # m    ����   $ o      ���� 	0 total   "  % & % U    * ' ( ' k    % ) )  * + * r     , - , l    .���� . [     / 0 / o    ���� 	0 total   0 l    1���� 1 n     2 3 2 4    �� 4
�� 
cobj 4 o    ���� 0 i   3 o    ���� 	0 queue  ��  ��  ��  ��   - o      ���� 	0 total   +  5�� 5 r     % 6 7 6 [     # 8 9 8 o     !���� 0 i   9 m   ! "����  7 o      ���� 0 i  ��   ( o    ���� 0 c   &  :�� : L   + - ; ; o   + ,���� 	0 total  ��     < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @4. Declare a circular queue.  The items are 0 if Google Chrome was not running, and 1 if it was running.  Before the check happens, the number at index "head" should indicate what program I was running twenty minutes ago.  After the check happens, I replace this number with the program I am running now.    A � B B\   D e c l a r e   a   c i r c u l a r   q u e u e .     T h e   i t e m s   a r e   0   i f   G o o g l e   C h r o m e   w a s   n o t   r u n n i n g ,   a n d   1   i f   i t   w a s   r u n n i n g .     B e f o r e   t h e   c h e c k   h a p p e n s ,   t h e   n u m b e r   a t   i n d e x   " h e a d "   s h o u l d   i n d i c a t e   w h a t   p r o g r a m   I   w a s   r u n n i n g   t w e n t y   m i n u t e s   a g o .     A f t e r   t h e   c h e c k   h a p p e n s ,   I   r e p l a c e   t h i s   n u m b e r   w i t h   t h e   p r o g r a m   I   a m   r u n n i n g   n o w . ?  C D C l     E���� E r      F G F J      H H  I J I m     ����   J  K L K m    ����   L  M N M m    ����   N  O P O m    ����   P  Q R Q m    ����   R  S T S m    ����   T  U V U m    ����   V  W X W m    ����   X  Y Z Y m    	����   Z  [�� [ m   	 
����  ��   G o      ���� 	0 queue  ��  ��   D  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   `   Head of the queue.    a � b b &   H e a d   o f   t h e   q u e u e . _  c d c l    e���� e r     f g f m    ����  g o      ���� 0 head  ��  ��   d  h i h l     ��������  ��  ��   i  j k j l     �� l m��   l   Check every two minutes.    m � n n 2   C h e c k   e v e r y   t w o   m i n u t e s . k  o p o l    q���� q r     r s r m    ���� x s o      ���� 0 checkinterval  ��  ��   p  t u t l     ��������  ��  ��   u  v�� v l   � w���� w T    � x x k    � y y  z { z l   �� | }��   | $  Check which app is being run.    } � ~ ~ <   C h e c k   w h i c h   a p p   i s   b e i n g   r u n . {   �  O    2 � � � r     1 � � � 6   / � � � n     & � � � 1   $ &��
�� 
pnam � 4    $�� �
�� 
prcs � m   " #����  � =  ' . � � � 1   ( *��
�� 
pisf � m   + -��
�� boovtrue � o      ���� 0 frontmostapp frontmostApp � m     � ��                                                                                  sevs  alis    �  Macintosh HD               �i|�H+     :System Events.app                                                ���j        ����  	                CoreServices    �i�o      �3�       :   -   ,  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  3 3��������  ��  ��   �  � � � l  3 3�� � ���   �   Make the check.    � � � �     M a k e   t h e   c h e c k . �  � � � Z   3 H � ��� � � =  3 6 � � � o   3 4���� 0 frontmostapp frontmostApp � m   4 5 � � � � �  G o o g l e   C h r o m e � r   9 ? � � � m   9 :����  � n       � � � 4   ; >�� �
�� 
cobj � o   < =���� 0 head   � o   : ;���� 	0 queue  ��   � r   B H � � � m   B C����   � n       � � � 4   D G�� �
�� 
cobj � o   E F���� 0 head   � o   C D���� 	0 queue   �  � � � r   I P � � � [   I N � � � l  I L ����� � `   I L � � � l  I J ����� � o   I J���� 0 head  ��  ��   � m   J K���� 
��  ��   � m   L M����  � o      ���� 0 head   �  � � � l  Q Q��������  ��  ��   �  � � � Z   Q { � ����� � F   Q m � � � ?  Q Y � � � I   Q W�� ����� 0 sum   �  ��� � o   R S���� 	0 queue  ��  ��   � m   W X����  � l  \ i ����� � G   \ i � � � =  \ _ � � � o   \ ]���� 0 head   � m   ] ^����  � =  b e � � � o   b c���� 0 head   � m   c d���� 
��  ��   � I  p w�� ���
�� .sysodlogaskr        TEXT � m   p s � � � � � 2 S h o u l d n ' t   y o u   b e   w o r k i n g ?��  ��  ��   �  � � � l  | |��������  ��  ��   �  � � � l  | |�� � ���   �   For debugging purposes.    � � � � 0   F o r   d e b u g g i n g   p u r p o s e s . �  � � � I  | ��� ���
�� .ascrcmnt****      � **** � o   | }���� 0 head  ��   �  � � � I  � �� ��~
� .ascrcmnt****      � **** � o   � ��}�} 0 frontmostapp frontmostApp�~   �  � � � I  � ��| ��{
�| .ascrcmnt****      � **** � o   � ��z�z 	0 queue  �{   �  � � � l  � ��y�x�w�y  �x  �w   �  ��v � I  � ��u ��t
�u .sysodelanull��� ��� nmbr � o   � ��s�s 0 checkinterval  �t  �v  ��  ��  ��       �r � � ��r   � �q�p�q 0 sum  
�p .aevtoappnull  �   � **** � �o �n�m � ��l�o 0 sum  �n �k ��k  �  �j�j 	0 queue  �m   � �i�h�g�f�i 	0 queue  �h 0 c  �g 0 i  �f 	0 total   � �e�d
�e .corecnte****       ****
�d 
cobj�l .�j  E�OkE�OjE�O �kh���/E�O�kE�[OY��O� � �c ��b�a � ��`
�c .aevtoappnull  �   � **** � k     � � �  C � �  c � �  o � �  v�_�_  �b  �a   �   � �^�]�\�[�Z ��Y�X ��W�V ��U�T�S�R�Q ��P�O�N�^ 
�] 	0 queue  �\ 0 head  �[ x�Z 0 checkinterval  
�Y 
prcs
�X 
pnam �  
�W 
pisf�V 0 frontmostapp frontmostApp
�U 
cobj�T 0 sum  �S �R 
�Q 
bool
�P .sysodlogaskr        TEXT
�O .ascrcmnt****      � ****
�N .sysodelanull��� ��� nmbr�` �jjjjjjjjjj�vE�OkE�O�E�O �hZ� *�k/�,�[�,\Ze81E�UO��  k���/FY j���/FO��#kE�O*�k+ �	 �� 
 	�� a &a & a j Y hO�j O�j O�j O�j [OY��ascr  ��ޭ