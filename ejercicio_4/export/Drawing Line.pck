GDPC                                                                               D   res://.import/disco duro.png-69bb5c0b7f71d0e1c9fb909ab69ef42c.stex  �      �      �.��Xk!����q�H   res://.import/fuente de poder.png-e3a27b6d5ff513d1434653b964bd361d.stex 6      2      y�t�8�q�#{���<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex �      U      -��`�0��x�5�[D   res://.import/memoriaRAM.png-a32d7636dbdb6e16eae01f15857c7623.stex   K      (      wvv�C	��=���MT��D   res://.import/mother board.png-b4337b382f3f452f8081464a4d76356c.stex�d      O      Fcu*�s$
dO-��^�q   res://Node2D.gd.remap    �      !       �����lꏑ�ZV�   res://Node2D.gdc�      �      �M׈J?8!�x�>	�   res://Node2D.tscn   �      �      7��``m�1gA�cp�$   res://assets/disco duro.png.import  p3      �      �
;�Y�*44�*[S$(   res://assets/fuente de poder.png.import PH      �      $���
F����vі٠$   res://assets/memoriaRAM.png.import  0b      �      p�V�����/���W$   res://assets/mother board.png.import z      �      =�@xNr�q������   res://default_env.tres  �|      �       um�`�N��<*ỳ�8   res://final.gd.remap0�              m��V	f�Ӳ���yD   res://final.gdc p}      l      S�V�y����^:�,Q��   res://final.tscn�~      2      �ꦘY��wz����!'+   res://icon.png  P�      �      G1?��z�c��vN��   res://icon.png.import   ��      �      �����%��(#AB�   res://project.binary@�      �      �nϋ����'G2J�    GDSC         ,   �      ���ӄ�   ������Ҷ   ���Ӷ���   ����   ����   �ն�   �����϶�   �������ׄ������������¶�   �������¶���   ����¶��   ��������ζ��   ��������������������ض��   ���ӄ�   ����   ������������Ķ��   ����޶��   �����ٶ�   �����������¶���   �����������������ض�   ��������������������ض��   ��������¶��   �������ض���   ��������Ҷ��   ����ڶ��   �����������������Ҷ�   �������Ӷ���   �����������Ӷ���          �      }      �      @      �     �               #00FFFF       A      inicio        final      	   acertaste         fallaste      res://final.tscn                                            *      +   	   1   
   3      4      5      @      F      L      P      X      a      g      l      y      ~      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   3YY;�  Y;�  Y;�  �  P�  R�  QY;�  �  P�  R�  QY;�  �  P�  R�  QYY0�  PQV�  -YYY0�  P�  R�	  R�
  QV�  &�	  4�  V�  &�	  T�  V�  �  �  �  �  �  T�  PQ�  �  T�  �  P�  Q�  �  T�  �	  �  �?  P�
  Q�  ;�  P�  PQT�  PQQ�  �?  P�  Q�  (V�  �  �  �  &�	  4�  V�  &�  V�  �  T�  P�	  T�  Q�  �  P�  Q�  ;�  P�  PQT�  PQQ�  �?  P�  Q�  �?  P�  Q�  &�  �  V�  �?  P�  Q�  (V�  �?  P�  Q�  �  Y0�  PQV�  �  PQT�  P�  QYYYY`          [gd_scene load_steps=7 format=2]

[ext_resource path="res://Node2D.gd" type="Script" id=1]
[ext_resource path="res://assets/memoriaRAM.png" type="Texture" id=2]
[ext_resource path="res://assets/disco duro.png" type="Texture" id=3]
[ext_resource path="res://assets/fuente de poder.png" type="Texture" id=4]
[ext_resource path="res://assets/mother board.png" type="Texture" id=5]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 579.266, 354.316 )

[node name="Node2D" type="Node2D"]
script = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
position = Vector2( 506.713, 356.167 )
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="Area2D"]
position = Vector2( 191.382, 446.947 )
scale = Vector2( 1.26228, 1.49025 )
texture = ExtResource( 4 )

[node name="Sprite2" type="Sprite" parent="Area2D"]
position = Vector2( 194.927, 607.549 )
scale = Vector2( 1.37489, 1.43262 )
texture = ExtResource( 3 )

[node name="Sprite3" type="Sprite" parent="Area2D"]
position = Vector2( 185.889, 275.227 )
scale = Vector2( 1.06421, 1.08441 )
texture = ExtResource( 2 )

[node name="Sprite4" type="Sprite" parent="Area2D"]
position = Vector2( 191.467, 95.8747 )
scale = Vector2( 1.14983, 1.41813 )
texture = ExtResource( 5 )

[node name="Label" type="Label" parent="Area2D"]
margin_left = 643.888
margin_top = 49.1434
margin_right = 830.888
margin_bottom = 182.143
text = "tarjeta de circuito impreso que permite la integración de todos los componentes de una computadora. Para esto, cuenta con un software básico conocido como BIOS, que le permite cumplir con sus funciones."
align = 1
autowrap = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label2" type="Label" parent="Area2D"]
margin_left = 637.861
margin_top = 235.543
margin_right = 827.861
margin_bottom = 300.543
text = "hace referencia al sistema que otorga la electricidad imprescindible para alimentar a equipos"
align = 1
autowrap = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label3" type="Label" parent="Area2D"]
margin_left = 637.533
margin_top = 359.551
margin_right = 831.533
margin_bottom = 492.551
text = "es conocida como memoria volátil lo cual quiere decir que los datos no se guardan de manera permanente, es por ello, que cuando deja de existir una fuente de energía en el dispositivo la información se pierde"
align = 1
autowrap = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label4" type="Label" parent="Area2D"]
margin_left = 643.066
margin_top = 536.962
margin_right = 833.066
margin_bottom = 686.962
text = "dispositivo de almacenamiento de datos no volátil (porque los contenidos almacenados no se pierden aunque no se encuentre energizado) y que emplea un sistema de grabación magnético para guardar los datos digitales."
align = 1
autowrap = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Button" type="Button" parent="Area2D"]
margin_left = 902.768
margin_top = 638.417
margin_right = 982.768
margin_bottom = 675.417
text = "Registrar"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="input_event" from="Area2D" to="." method="_on_Area2D_input_event"]
[connection signal="pressed" from="Area2D/Button" to="." method="_on_Button_pressed"]
      GDSTB   <           �  PNG �PNG

   IHDR   B   <   ]�   sRGB ���  �IDATh��zi�\ו�9��������z#��f��="EJ2%[�mʶ��cC� �1A�A2�@I�`0@�agf�xdL�%�HVl�g��")."E�6�������ګ�{���EҲ$��9xx�W���|��sϊ�wJ�Ĭ�Uy9?19nH�����ǔ�@�I""0�⎿uk2~�בH������E4�ti�Vw��[�өL���������-�Hģ�����P�9@`X[����/\�<��$���3g���5�4"�X$Mē�x,�Nwuun��ܰ���9�L&ǑR"bc9b�NY���6	�T�@�����g�z��<߷l�r��S�Z9�j
��n�WZ����@,��#�H$��g�ٶ��ƍ��l6�I$c�� 6�øCi0�Z[/��˗�[�40�t�H��H�
�"1�p�RUJEc�tsKKkƲ�+++k�����[o_*�י)�jJ75��e�����:7o���j�h�D#D f��jD f@��P�;�����O���Rn��[��R�8�����j�ZW����={��ر�%�Ei i����b����������ٳg��>���l&�L$]Oَ��E;ڳ�z�Z3M���3ٌeY�e
� ��*����?z��������ĕp8O&#��]�����o��eX`FD�	�D!Q���LH�Ji `bM�R/�?}��~6t��D�9�hB&V^6Ӳ{��#G��b�D"�m�f����Ȇ��e�T�;7qD��v��M�E�֦��?�������Z��A0
�,�!	���@|}�HHC3#!
'?��<49:��?��������e�zazzrii������tk��/?�����T�a03顁�KC�Z5���?��|�9�	B
f ɌJ2H"FFA,	��*��, �����������{������b���+g�<���c�Ri]N�����h�^��ރ7y�`0�������O��������g�m�N�6P�@�  @$( �Q�@@f`D����(I!�@�J��?�������[��줚��|9�����#�R.ݔNǶ9���`�D��F���G�&B�������߹Ӵ,D!�@(%���Q��]D�č��Q ��� ! ��س���ׅB�	Dv���)ݚɶ3a�RQZe�� t0'�j��/�695�ݰ��Tk[�� ��o\Q  27�g Fd�./�q��h�B!
V���_�[KK�°M'�&���Lk[��~��t-��T 8pi�W���h4�'��R� 6����xf`fD�+B	�v�:轟A D@`D�P�����^x��T2�֪�N0tZ�[� !?8� �}O���_T��ןx��k#_��u�{3�hl�R1T*�W�)O1	��@iiJDl����> rc%&&������7���Z�!���)S�R�_3�0���:{��^��[w�� �	P06�46�A� n��+J#iZ_/J��ɐ���Æz���4���@�����t";������H(����������Do�w����u���s?a��Ǥ|7~���d��[(�X���B�$��������r���4o ���|
�oȇć���z�H��J5�J�#���>�x�va ���ξua��C�D+1  � bf"f�L��uOC�<0t���e��]���zW����d"�\�W�(����m�
5��o. � ��� �af��3���htÆ�oF�Xz�W�����=D��DDDL��!b"f@��H�X]-��b�	:������}�wW�+c�g��&��4"b��Zc'�{r�f6�Iit����x"aZ�;ٻ�m�MceƣGO��/*�m]��4* )Y) �	�QРA)y��%��Vp��Tl����7����v( �Wg[�;�
13�u�&��5�&ͬ�$L'��L"&��۾�x�4n�ayH�k�k/����p$��R %_�l���`	�^�& �vϿ�fgw/XX.�;���R���W����z���Ps[j&ͤahbE���f_i��V.!�c	�馦��ԨߩT ��'N����h�ԊI��LHh�Z1idB"T>��'�������J�vwJ�\~vn�\.^�����N�����6kM�XkR�|E�f_���)v]Z�����x<����=�㼗�[����ɓ��&�5���V��V��OJ�RZkj`R�c?��3���O���3���V=��]�>������'FGz@)�}�x]��|�+�)�v}�)��e���cX��m��=�ŭ�31��N8N�[���Q)E���ڦͦA(XH�����P��{����k�?����v�g{�:P��ys�CW.^j����д��bM���&�X1)��R�Ҿڥj~���|`WgK:b�NK��=Y�-M����VO�<U.�R�fˠ���˗v���CH&)A�0� D�B��������KgN�q쵅��z��yc{4Mf��qCO?
���Ĩ�)��"�5+�\�ꚴ���˗,A�7��^q��m�c�{2�[�89�R~=_���gK�B�T]^���uȳ�f!	�Z�F!$I)I�(XѹyǦޝ��{�W�V�[ҁ���Y)�����&V�|Ŋ����\����W\������t*9�P�������J���g�;1r�rnu>Ք�VJ��ܵ���+�{w	-CHC��P$���@������F�XQ_R�A���*���	D��_��k���A)��kW��8��H��x��)��5���ш�|_��ڱJ�2>q54��0�f���{���e:aiJ)єh!ō([
DD ��%�U3�;�[�������Z+E�5y��bO��4)M�����e���%���~�л
"�����+���_v��]����^W���;��\~���x��lƤ�MI��&�&
4%�@ ��-[&�Bf��c������\QQ�p�B֤5�֚�S�W�}���{�Rn����e�#�&r5m�����W�]�}�W�#��ঞ_�������-����?����+h���R��@2�C&��M�p `:s|d�d����߾2[WvU�ur��5�&�DuM�Gr�V^���8=b�|k*2;3��f!Ķ��`0���[�{?�;}���Ԥ�~��{|8o6̠���ub����k_���/K���h�@Zhَd��ф����#X^�����|`���t��xG?13�O���Pk�I+��J�O���r3kW��E;�6�K˖iJ)w��}�J���(�˯�~ljj���m�}���l+&L%!������N?��'�����o���ҕ?��o(�@(�=��ۃ�y�����b��+W��[�*�����)��=_k�51��Zk��R��_�>96|�{C[GW�a&N�;� ���jnn�m���|��ի#�zhphy9��+ �[Q�[҉O�0
���sL#(����#�?�G��ZB���[;�ꉓ�.<�_Q�?v�$��>y�>hMDJ�Z��t��_[Y\�6��2_��L	�B~�����)�e)��vݺ��.i`�V;z�صkӕjE �ٽ�9�l�����!���/�2���O?�D��� �&-���8�����/~�+}Z�ίW����ZrA��HM�X�na=��0]�/W�k��k�Z%���CQ�t�R@�Ӑ�EB۶���s��:u����Z�p$~��A۶A��� @nuurz�3��T X\\��WC��Z��<}m�j~~��}�ꋣ�{~lb=�">.1$�B��5M�y��
k+�}[��۝�
Hixna%���X�a��	�;w�
���.�z���\�z�T*Y���ҶqC�eY����RJf�:=;w���_lIGb�(3��V>��/G��_y#Ԛ:wv���T�U��5�"��>h(s}e�Z[[]���K�J�Ruֱ��T&`���g��5;ܺ�_�($�b�[��a�''''gff��D2���cq)� Q6��Z�V�V�����iS��ʼ�����X:t�����s�cKg+3E(T\�4Î]����=ñ�˹i�Z#�V}����[��n��ln��׿�4l`2�iYfSSӭ1�i^Z^9z���А뺶moݶUH$Rf��&D	  a���cǏ���x����m{��]YX7
������ɲ���7� @��&v}�)���m��1�D�B``���So�himp�T�t( �ЪoK(�mD�O��22����H$������']�f�&H!!�ld���{��W_�С=���צ����xuS{���^��B�J�F"��h<�/.��R�B"
�"�c77�|���~��/OLLD#M;v�1�coٺ�wb  ���/-��={vhh(f��@ �_�*_����(�2"2D��O~���s``�w�D�5��J;}r�P)ʵJ]f,�I��:��+������VW��2mӴǲ�T*%�d�g�y���R�L&!{ܒ�hn����ih���~tjj�Z��BA�u�RM�t8?}���|�Ʉ� ����ٹw����V+��G��G�?x��\�MM�)�T~uU�N$�P��P RJ�L6E��P(�����������u˲{{{��)�0���;�=��%���ia~�ȑ� ��o�����J�r��[D�sݵ�Ճ�3iCH�0"2D˔�!m���T"�_�������Qʈƒ]�;;�5����J.W�U����(3��t:�Eӭ-�DRH�@*M�h���K ���������H�ܹ�r9�L�ܱ��V^}����L([ͭ7��C�/����ܫ{�LRJq�|h��j����ö�؝im͆��0������eY�hxaa>���������|G�3
�C�y�V�UJ�λ;LCj�al����o��n��}��\��v��9>vmna����C�
 Z� �4L��SOU+�Ç�4��o��QJADhbqie`����|&�aX!�	��!̦t�aZ�R����4==mێm[��]����bw��;')!C��RI��D ؽ{��A  ���{$9}��Jn�4��۷/.-��4�Ñ��Ց��B��ç���ږm���i�,�� M���.^�hY���Y'Gb �(�(
׭h׭�JyM�V����k/���?Y˭ؖ����Rf3ٶ�v��P  �����PJ)��V�����ۯ\M$J����O֪�~ȲL�w��/�����b��B�#a�08pa��ݏ|��d�et|"
�BQb��ޖ)��R�5!�2
E#!D�Z���l6�'ǱM�C��P{g'�ە����l�RJ�����X$ѽ����z>���{��<_����p(<00����gN����Ցi��}��vXN��>&-�W�Y݁|y��#��_�����;�aR�i0 *_U�FĈ��u�)Ox��e
'������۶�����" ��c�63Qd*�����z^~=���������H*�!͙Lfc�ƽ{�
�Z/�-,�{7'��/'�q˶�����L�R|]	�‶�U���#J�J��|mmݲLi ���l��b�A�}��Ջ/�800hi6�шC ��Ch,JD������4䮝;�`�䛧��K���t<�V�6�ܷm���^�%Z+�0<ϫ�"mY�iY^�� <��C�eeZ��r��D8�|����m�@c#"�����G�D2�ɤRM�mm�`�0L�ot�X�f&Ӕ²�|>?4<:22�J%�ɴv����x�c�mٍ�Xl��}KK+++�R��i��P��n�P�-[[Z�{6o��;11���ж{�lް�ݕ�ہ==ݭ�-���ˋ����t:��֞ʹg�Y�0ð� i�Z!���ҬV��byrr2�H���{�G￻Z�+���#�֞�J��R�8;;smfryiIiZf8ء���'{�n��,aͭm��;���6�#J����˃��Ͻ5484;;S(I��y�X��4s�����ŢB���v#��KK�]�SJ)��׺R����<�AJQ�TW�������him�J!pn��ةT���|&��m��0n>�&_������������������
(WʙL&
�4�45������!aD4@aQ�S��B
aH ��^W�j�:�i;fgg�����Ғ ?�8;w�<|��a���^��['x�Hk��&&'.]�x�������r��|�Ť4��L��5��b�X4.���/�\��nL HS��� Z)M�R.9Gk���p�x<v�С={��m{�ۂ�h�"2�X*�������.�}nxhhjjj}}�D�(�*[�lݿo��r.�LD�a۶-��FK@����葡�j5��Kģ_�����M��t���o�F������WFF.\�p������|>���}��g~b�f4mni�D=��F�1 i�&��RBc,�u�0���^_[۾��k_�Z#�����!  �F��x}�Z�6333??X p��������Ʌ�܎;�M-�z}Æ�@ hZ�V���D���<>>��O}�K_���Y�Jw8�(U4��B������>`���QZ�Vr�SS�����_\x�B0�H!:4������1
������7�������"bL�|qj�ډ�'߾p~d����z�Pؼ�wt��}�ݗH$���W��xWWgC��~�q��A��*�H&��={vQ�T����|����`2��T�־��'2���gf��W�K7=����J����R�ܱF�����唁�J    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/disco duro.png-69bb5c0b7f71d0e1c9fb909ab69ef42c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/disco duro.png"
dest_files=[ "res://.import/disco duro.png-69bb5c0b7f71d0e1c9fb909ab69ef42c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDSTA   /             PNG �PNG

   IHDR   A   /   3k08   sRGB ���  �IDATh��ZIlי~K�U��+w��M+M�M*i�	4�g� ��x��!�H0�A��_�x�3F ;9h<�8G6�E#1�"�f7�&{_������{sxV��m%V4	�
Սf�������W��1��|����`	���K) @c�{�_���q�r�|�ʕ���������N�8q�7�h�?�c�!�V+��^�����v�\&����n�5M�$iffzjj�ԩS!  ������n00� �����B���������d,˂1(���B�1!��\�� �SSS333�h�?�_�B��c�e�r�����W���u�0B�(���l�����}�]��#
������h��1�B�(��eI�zzzN�>����crw5�:��J���d������v��J�#�8m�@&��D	����moo/--BB�$������cl?_�����E�F���r�<>>17wztt�.�N�����󅕕���{?��;��1��� ���;�j��l������ɲl���k��2��z�-Ji�^��Ǐ�ǣͦ���f�Q����EQ�V��`����ȑ#��h�6==}�����(
�?%�>C�\���]\\\\\l4,J	��@ �j�;�N�uUU�}_�e۶�@ �F�CC�;;;����(y��Ec�x�R�b�nܸ�(��q�q �� D������{�����1==y�ȑS�N�C�p'�����nll��λ�[9�e#� 2N�Hdqq�X,ڶ=<<�z����X�V�5MQ�v��8����7����Nguu��W_��/˲�J'n�X}�W��ǫ�j"�����B�Lfpp�q�u�D����I! �o:99y�ĉ���h4���Z�l������'�x�����ʥ���m�i4,YV  �`0�z�������:!$�Lnmm���/--	��裏&�I�uA0#�Ja,����t:�L�̙3�����!�P�ZM&��\nttԲ�t:���>���/^t]�1�n�X,��KKK/������B8�ϸ�c��j���]�vmiy��8�J��y�P����h8N[��t:�v:��6u�����_{��n��L&�###����p$p�oΆ�MӮ]��8�xOlo�Z�:�S��%I��*�����ѣG���y�BBB$�X ��>YY���ַ��'� �P�s�?�Ӽ|E�}_���ʒ(I�x�4�A��eYǎK�ӛ����f3:99i���8��C�.�	!��c��nmo�F�a��R�$�R������TU���%�q�p$����D���$ICCC_���=��۶�����v��}���#���C�����y� ���1�T
���`��</���{߻z�* @��?��:���ŋ�d"�NF��r�,I��Ą�8���B�\��/��z.�������|YQU�$����W���_�x�ҥn�B|�/�ˊ��B�HD7�@�Z�$	B��0p~��<  � &�b,�}����(j��l6��<�p,{���<�][[{�������^*�821����o��ߍF�Ѱ��S�R��7�L��ҩ����j�fp|lL���ͬ������>p���~��B� �����a��c�J���#шi�|�?�K�i>�P�º���}a4���l��l-/_={���ܼ�ȥR�i5�f#��SU5�LiZ��͛����� BH�uM�77���X,:?��(G��<�w�{�?�g�u)��v�].�5M��/�g��A!�H����8��~�fo��o����ˮ�ʲ!�*烩�1n�۝NGU���>]׏;�N�L3 �r�X,J�Olۖ$IE��D��a3hh���K&��d2[[[�11��V��yB�4M���@��� ��D��r4�я�">���
�@�9�n�J��(
c,�� �����"^g�!�z�1�B�����~�y�}��t��jM�eEQDQ!
�  P�R
 T���(��0j !��}Ȯ��ތ%I�����������<�� N.�Lӄ�����`(ĥ��A�bA���!D�0�[���z�2���%D�uUU��A��Z�0&�P(5%��?8vD� o�����j��D��憆��z�)������1�0�0t����VeY����4�1��c<���&���-۶����<�R���$��eH����&gַ���<U�k��1�� �u�O����jI�t�ҥZ�&�2!�P��; AC�  ��	���z(dB�x(��e������������z;��j[�iE��k�B�/U[�M���'+�����
�C]8d�������i������'O�\^^�,���sHW�w�Cu]�ٶ]��t�0M�1V�VC��i�c۶K�R�ӉD"�`BԨW�v�|��/�����D�U)�.I>����po���+�;-�I�nK�CA�y�rg~~~kk�^����}�k�dR�4n1�W�'#C)����/I��k�����J� �Q>_h��P(<4��4!�@�D)�g��^,|�;m(��H���3CF�*�ڼJi �Чǡ�W�ؕ+W2�L4�,��_N��\�����v�-�AEp���[$E�ٲ0��d�Z�ʲG1�B�DB a�HE��O�,1���۟�G�b�h5���e��8%QT>��%�b�^��jܲl6�����N�>�H$vvvVVV|��?T'���2���0 �� �H� �|Sϥ~*5zf 
@��]����3����bQUU�(�����S1t�C��������/������������Пs�E��A"�]�Ӆ�P"R�"�e)֦H����ᡡ�\��l�?��<O�����\�~�:��w���(�F�V����cǎU*�H$bYV6��}�1Ɖ�G�V�B�(!� ƽ�mN   $J} w�ᗼ�K:�p!����j��/7����i&��Ǐsu�o��BY���&7�{��]�\H�v���3�\�~}ooOӴ�����IAx��>2C"� `�2 ��@!�� ��{��xH_R�^�� i7��CK�R�@`jj�qUպ��'�a``�ڵk�V+���8�$I�,#���9ȧ�(������g�S�N�w�}�/_^__��r��$(!�r�Z����~�1/ !�J�\��޼?�Ц��)�N��?��F��V�u]۶BC�3]��}�,z��ف��l6[,]��4��2x[9�c]"�[��h4J�R4=w��������e5UE�<"�x���(��i:���@��zqo.(uD�����8��s�G)��v ���g~�����`9�{�u_x�_��\N�4APU�P" ��DQTŶ�[�;;��KB���^NU��9~��-�g�`������$���9f�X��tgB|pk4H�G�񍯏��~2��5�1�q�|��W_}5��I���6�XU�;����l6����"�Þ�!'''�-� ��H��X��p00��! @�A���T*u������;�0p�\+�JO?��ŋ-�EQUU�c]�y�/�[�nnf�v�豑R���<22޴lUWM����I$�B&���Jh@K�g>�0  \�������/NNNv}t���|�ʑd�ٟ��g���O'�X�� �ӫ���vww�����G��O,-��[��P��j�ⱥ���'O*�Xi6U��(e�b ��.,,<��éT~�9�����s����?������x���ڶ-�"g�.�T����ͭz�!Ir"?q�H6��W=M�Ca#d���$Y���y��� \@I�������ѣG���9>���7������<�L�Xt �j�Z��躎1�y�k4�@ �͚�I�**k�;�LN����@Ȍ���|����(SSS>�`*�����C��!�\�}饗�~��J�⺮��!��$I�0�A)!�͞9sF�ݝ�h,�ݼ9>��D�nn8�=1~R  �X�����?��ϥ��.�ݙ<>�Cx�T��+����?嬯�:G"˲,˜:(��LfaaA�e ��U�q�v�TŐ�X,@ %5M;{����P,=$���u7o���E����.\x���|߷m[Q��,��}_^b�0a��*�h_�T�U놮z�U��m���W���?��|�֧?~Eqff桇 ���W��N�c?X�V*�D"��xK!U�<�+��$��mw0L3x��?��a8F�������y�q�T�m��lj��1.���D
c &B888���6��A�R�TC�� ����_��8܃w�ݍ��ƾ���;w��g��~�z�T
��!B�*`U3��gfffgg4EQd��B�H,����(�_�!0��󳳳����/~���m��%	=617wzzzJQ  ct���?\_�7�.'�����~9z�O⢔v:����7.\��w�3;;�[aW�BVWWk�c,��b�H$r�ߋ��� �?��w�|�<H�w���!�?����������彈��    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/fuente de poder.png-e3a27b6d5ff513d1434653b964bd361d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/fuente de poder.png"
dest_files=[ "res://.import/fuente de poder.png-e3a27b6d5ff513d1434653b964bd361d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDSTF   G             PNG �PNG

   IHDR   F   G   5�v   sRGB ���  �IDATh�͛g�$Ǖ�_fVUWu��v�ٝ��K`��	 u�]�DFH���H��׻��E(H�!����@��x�K
��pk	`뱻�m�t���7U��Of@� �b����Y�~/_��g6�R��O(��R RJ� F�$A��=�����B��1_)IĘ�K"�0��J
Ȑ �O}�k����Xo�/L]xo�����L�:��k�z�Y�� �2�J�5�v���ڢ[k5�����t.�ը2��G���F !L��ABD  �ZV��R�|^h��Y��������驑��X2BU��S��W�P��?N�Q�5Crou:�K�M'���J��l���b��3�م�l�1n����-{6�1��> �
��:��@�nY"�T �hw�N���<�����[����&f/�q�j�����z}�P@��}]�$J�q %P�T�����b��a��V*U�c2��\~u�T���˒[�P��.3�rސ�;�skd��	-�()%�F�V�E��ee2�D"�n������������+�v��J:�mX��(o/���o8#�_1�Z5v�#�����Z�*'�	��ngvv.
n޴�XX��SO�x��z�c;��狄S��J���Vi��v{���W�xH %r.�Q(��Vf�f������l*�ա��F���/���mG8�PT���=�4x\Opۦ�.�f��>�R�+CB � �c �Vka~�q���l�j�����x<{���u�����ӿl4�^�W
����U봇S�;v���F{�ŃH>�S��L��RJM��Y\XBz<B���Ec�m{<�ؙ3g�Ǐ�v,��۵ۊ[Q��f�Tr��l0�"�����)�|�E\���eMNMNMNw:�X,�F)��ʆ�C�����O<Q��v�E����Rx$�}�m�[�NǶ:۷�UP!Ȁ|uHR
 �����x��& ��˺�o�B�Ο��?���S�<��ء�/>��&�*�߼w�Ц�R�kw�����# xk�V����o��(�D��흟������N��L�������ԙ��²��۝I���ځ;�ݷ��ruť����x4�o)p��j!����ZB���8�n7
MNM��⋧��2��X��=��]��s׮}�F���"!�Iǣ��u��IHٵ�3g������������k�a����㌏����?����F%�*]����p,��7�3���/ۗMe5M��{��[%B�^~��;J);�m��G3�!�RJ)U%��?~��W_���R!D(��2�ِݐ�L�%�����L2�If��}����!!$HQ)�\������~�ި+�r�������ɉMcc�=��d�h4�o�������'�� �����;���x��p�/��-���������� �8��C"�Pr ���������9Q��	a�ǅWW�#G�\��ҥKw�����?99���_�x�;\QSi<�������D$��R���Ȇ�X(N���o��nb�A%E�P+�v�ͷ.�=�<oY]��!ڝ��2E)���w����h�X,NMMq!(#̥����`�7P�C�i��7��q���5�\���$QI��o^>�Υc��f����\V;U]�׶��r.��K))��j�@:����¡P�\]Yɤ2^��3ƽ�sIPQ��?�?����N��0$.V;�Vk����-�c�s�� H)9焐`,Ȇ#�x�7;���&��ʪ��}=���,���$ ( A�@�v�b��ѫG�F��E�iW|�3�++�j��$
1L��ܱl�p-��z�#;GuݝI$�{z���J�t�=�{�J>���H�*J�y�˥�s�x�i��f�\\ue������噥��r�v�.Z�N�r�n=��n�V��-��*�bq��]�"�# >=B7		�p�8�>,^��ܹz�b�������77#��l�����#G�+U��F�)�p�.��$���8���ܲ-`zϟ=;80ؗ��@��:�8$D@I�Q�%^���vU���.�����5Q���c�H֖B*ld�&i񩫓Ks9�GWi�5쎤�v�n	��v+�޳�J~|�d�8��l�+�������INT��b}%��2�j��¤������t�N��rEX�Z�.-�f榈���t��=�ܻi�ew�������N���݈(!  ��տ;�Ա3���C{Z�Z`~VS5�ѩ��R*�������t`���;��@(��b�`��{w�ܷc�j�\k��瀦h�0�/"�O����DJ ��ʳ�>���LNZ���m�I2�r3CZ�t,�9w�ql�۲S����(tʠ�M-0X�>�}�ցM�vÒv_�@2�V�����c��(
�X,��?��SO���n�:�kΥg�FG��e*G�O��#�B��P�!]��Hiw[�/�����9���١�#;��hqu��񎍎1|��$�VVV�z�W������
iJ��\h�*�J�@_���o�/�#�F���v�(�#���5��)t��؁����N���l����זT$��t]H(QQm�N�⥗^�:AP2����v�U�M��Wr+�X$���M%4���i�A1W�+T��>�D~�+�;8==-�s�m����8%�#	����	HH�ڭ0y�БC/��Z��+BP�P @�@�n���b9���d��E�Ӵ�m�=!U��mլֶcﾗI��&{�=
Q>�]K�]g��|p��3�?w��).FI��!���& 0 �HB�F����j���D��=SX�9�%I��#{��_W\����o��,ۺ:9~������YɯH�Q��mvUM��] �4�1ƘB%B�z��Z,�~w�H ��YjU�3C���G�n�PXvz��X!tm]�h�k�w ����<�����\��$|Ij�V��h��2��ZB)"2��RJ.��ۖ�h����l"��΁oGz4`���t4�1}��d�}}�(!b.�[ZZ������!����{��ߜ<y"�ϷZ-@��-&BMӀ.�c; e$K��m�b��6�6��X̭X+5��k#|i�ֆ��R�p����߼y��R$i���������?�t�R�Trl�4ݔ)�e S!� �L�Ӡ�':^�޷�r�#ݶ����w��4�J ����tm݃DY�T޿��;h��[a�J\���``���O��ɻ�[Q��R4[Md�q�;��0	<�K�` 6������܅|�������P���%y�Z�kY�>���ۓ�e��  �چQv�n��I�R
S!� 9wM5t��TH���J���4�������Y*��_�1�1HRJB�[o�����o���w����(�8|��O>�#�H� �$
A�8����������C��n��\|�O���o��z�����7�+�I�nD)����'O���� !%�@@�\�ܱ��H���m{���(��¹���H�R�Joܱ��E	 �S3�|�[i�����u]G�k=X��9q��O�(��i���N�ٖE�>��R��`�ۖw����ؗ/\�8:�0�j�5 !�D��B�|ej��{�����E�ki���r���x�_=����Wܺ�l4%��ڶ-��H�]~=1��*���#;4���3�k�����g���HHd�7���GO����a_�Qo���` `��kp�/\<�/�=w�����.��vl��RJ$���f��D����D���6��G��cz���]��� V[��3W�o��J���r9�I�|~MS��]�{�C�^?Tk�t�0���t[����>Ûʦ��Ԧ͛)c���r�^)���x,�~^{k� �s�/����p�P��huچ���nEQ���/~���Gޮ7�T�R�ù�Ҁ w�t6��4���x8R4��l�gC�E������u�lɫ����L��l�'KK�;�T�0J	"�j�w�y���_������D�p۲��)������t�4Wo��0\�rA7��w��VM��f��'D	A�J����0�{zL�Y-WH 0=nJ	!��~��瞻x�""H���pGH���3�}�>�t����d�/���x��ˊB�F�� ��&L�OG�5�s���vg��-�`��.-����B�s��{���7��p�eYk��(���B���ݦ i6�=}�T�T*B�l�2�;H��o���=��5�W�oy�Vol���P��x `��XJy���_|���ӎ㨪��t@Jι�(4	#�F�n*�d4G�z��I%�[6ne����n H)���ۉw�y����n���~��PJ��\.��Ϟ8q���,�4M���5)�#��?84��܅��-�x¶��Z5�J�ھ��\�-�Z�n���WK�\�˓/�����Ν?�����g���h
)�����z��_���_^ZZ����s����5uC��x�Q�X��ᡀ�7?;�kz_	�u��(*	'(��|u��˯_�:_��:[\�o����ÿ��?��jw��y��/~���7�;�1M39�Zm��! &U��{�/$å�f�Ʋ��d̓Ar��$  `��_J�J��߼�F`49�*�s��f�	����/���##G������R�DR!m��Z-۱TSEt��*�����w�j���齻����k�7���D�-����O*���jݕ6o[��gΝmW���܊�\�i���t�
�QJHײ���Bp���3�������|���{�	����}���F�G5�E� ��;�7\
���i��ꕊhC��]{t�p�@��c���kv5�ݎ��Z�����T!8wZ$6���6t��;�߾y���w���g�y6ݣ1�'^}�y�\��ީ���lMc����P��4W<�T=.f��G]mVE���8ܶm)%Jd�z�f4A�r��ip��o�c��S��l2�LxMB���^$F�A��?���?vW�W}�o�����Z���2i�MД�lXMO���XJTTEq�$P���}p��Q��(���w=�����B �ݭ������SƔT8{�©��b�7V��F��Eө�Rq� AF x��5Uc� �h0�
;��{o߶k~qqi)w�}�${U�n�   #,�O��Ѩ;va�򡓯K���k����H�o�}��;:xu⪐�P8P�ƮlV���wo������r����M����i�Q@eLٜ��5�:���[n�K�r��J\�w���ol�7S��+�w�6�L 6���F_2�w�.��x�J&ӳk�.�j��`2������M&��M���g��+�ͅ��zu�����wkV���F��jUB�������<���J˲��!S�е�J_�Gm+ !d�!DW���#a�gz!�����
�"��9�J<������r��@
n��\[].-��}�P��njw�yb�����F���֖E����;�{�NEUJ�իŉsBᰢh�˕H&:K�ť�|4�{��~〡�|�I��4�K�������'_�I���cӎf�59?Yj��J��u�v���wx�\�_�b}�͏�� C����4S��8��O��Oߟ:O4��]����f,��R���-����>�@@��9P�lD��K���>;�8����s"0Ua�u�����cp�R"  � ]���Dpɉ�
S� "���������	"ˢ    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/memoriaRAM.png-a32d7636dbdb6e16eae01f15857c7623.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/memoriaRAM.png"
dest_files=[ "res://.import/memoriaRAM.png-a32d7636dbdb6e16eae01f15857c7623.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDSTF   +           3  PNG �PNG

   IHDR   F   +   J&iW   sRGB ���  �IDATh��zY�e�y^-���w����}����Y8��Z!X��1A���?�Io� 8�N�$YĒ�M�	$J"Ǥ(��p�g�龽Lw�����Z�д(J�Iʃ�{�����:���+(�cH %�!@PB)�B&�@! RB g��\!
��o>�/By$�@  @  �B �X�繪���
.�$I��u}�W����Y�4!��$������$�B@B )�@�==�L]Q�,�g�
�{�������2��������~�P(<ZV�%)��4@	 pθ�*�  )A�����I���r��<a�gi*Xx�������,�ۻm�qǣ�������F�ə���� ���>���G�����@ �  	�� $�p]/Ζ��R�$I{��믿61Q���,�A�%4��;�w/�w�a�q�z������Ý6F��������صk�R��(��I)��ȸ�3�J�A�w����az���;������h4�t:���{[�������{q�'�H����[(�(��2�F�^�V���ڥ�j�b�f���o��k7� x<?����򗿼���(�#��{���i�fi8���N�f���R���;�F9���q�m�Y��trr2�K���ÇQ麕gY�%�bѶ�r�X�Tgf���tUU�*�@a�`9���џ�;H � D���_�җ�����HXA!�9����i�s�>�n��4�"�e�\?�̂">[K*t�a�$s���K�}�v{o����4����f��T�1Q0�cE���mB����p���ݝ�6�(�s
��h��v��|�+�B��/>�����#����yx���޹�y����@�T��a�>vi�qvw��2lK]��Ja40�]���sr�y�H~qe���)�Op�`kc%�|�{���3�Q�$�ʅ��OܸQ���l�O�� ]�|���OOMs��(&
�_��T��O	����wn߼��8��$�ؚ�D��4��Q�L��I��Qa�iF��(��FӲl�`!D�e��+������/oo�;'�TS���Ru##���ԴmYI���yn�����Bqf���t~q5��v{ǲ���ιJhG���%��C*�J��x�h�$)�|���$q���K�i�p�������/O̷��"%BEa��GGG/���p�~��?��$�sE��a\_7m�*\��T��h4B�~��W^V5c�������bcw��Mz )��u766�ݳ���I�t�'����WUMG},J�Vk�W>������i{c�n�A�a�15Ͳ��A��fX�}�/�pƥ p�@0x��;���lyy�V���5��u]Ge9+Ka�(��	!J���8��7��ߋ��Ƿw����8����Hq=�s�۷�)Z6�R�X�51�lNN"�~\JTU/_������}7��?"���B)�BX���z���6D�sF�3 ,�� 
ONO� 0L%���ʅ���`EARJ�9 0�  JE�,M�r�d�~�,�2�y����V�qxt� @J���PQ5���%J�9��G*B�1��j�?~�/������%9R��+W0V|�cyR��+�Q��`�;>|H�h6�i����Ӵ\�3M"d�� ��y��y�A����<�<7�#�y�~����8�7�n�l-..j*��S��������z�ZV0��|o�.�u�k�w�����^��QB����_��a���������>���S3��s3��Sg<.ZK��9�}0�7����)��A��C�s{�cB�(X��F�^,���x<z�G��/\���dA�XnY��z:% �,U�NOO�,^r'''E� ���ť%�h�(�!�~ZA˲��/"��R��_��ڥ��p�=�MT+��3��)���,�Μq����<ߍ�ԲmM7�<���pƣZ�6==S.�K�2�XUU]�(%a� �q΁���s���\+�a1bf|U�"��ip{ov�"A(�Ӈ����̮��1Ea!�@B @?G	BX,�>�������;���Ѹ?lܺ]/��e���}���ǮrD�l��_�9f�1��H�ި�+���i�	�ɕ�׮?���1��Rb�E�K))U!BI�@ �d���R���|�SW����[�+]�uO�1v_{�m��f�b'��ݷ7�ls���_���=set^W���_��{0̳������pjr�lk��� S��ʽ�=O b����A�d���!�E��+�b���������T��:��0�BB!�R�1�����@��Q��Q��W�<	L��7�n�7���E&�K��D����Ƚ��!p������I�0Ϋ��e�%!��V�޹s���	!kyj}it���بN�T��=p2���Y��Q&�11]��J��[o2.��������|��RU����꺮��J)!$gy�\��p��#�dy���Y�X��3�}�rfQ�4��"��k�ɣ��b*O����,�%D0��,I)!��a�Z��߾5���H*a
��V�R3�֡�#J�T2K����V������L�Ӱ�ʥBJ)���Զ,!c��\��V�V.ǡx�U��a���؍N=�ub�vӣ7Y|���i����SNt��8s1E@e��۽�.L�+35��ޗ��E�Tsgg����b��0�w�;�Jk��L�gY(47#*D�~����j6'[-���3���h8<>>~xppgs�G?�Q���eh�R���7�$6LS�M׏��s�x�g9��	7-D	R� �1
%A�b�	I���-]_�Lc�g霘��ׯ_���s=�I��@T����v$U�ʥ�*�0�G����x�:�k����sݭ����Λo����s��9O��s> ��V!i��BU!8��0���EUr$Q�`��ƙj$���U)�zɕi$/����	�K%纬��a���u��m۟��o����RU#M���Hd��AL���'=M:ey~��r�Y��;��^�V��/P�B�u)��B����UlSw='���K�K����=����ՅLx��t]�Re�X����������8Ьх뗺N�6K�f)M|�+�� �W�^��[��ΰe�tR+��a��UL9r2m9�agr���.1��=>���gIb�4AH	ð�jVku!X�lw�b79��,g�e���?3;?ٚLj��j��j�m;͙���x��VX�3�b���
i�>�FM-i��ش
�bc����umfv����y�J�jԫg~8ј��!�i�m�5�ȘL)�Kq)�zS�Y�@��I���x�  }?X���l�h�=9��n��8K=׃B��xjn6�;
��g';�.�d9e@T�Z2������#?��Z�5ը�+�i!m�`�&B�C) u]��h�`�ҥ�����É����b�v:
⹐R��FE�.��`�3*�&L��H���x�����3�TJU��JGq���F�(!�K���Ѝm/����݁�n�\�0GT���
y�����l��4�J��|qnn~�.�,��t]�u��J�A˲���/|�{�G�J�T�$������jN΅�(��=ȭ�By�a�,aЏ3��JcC��i���q��8<<0�x���xi���w+�Um�-�������ñ%<�ǐBB!��t�?���?z�����q�r���|!�B?p�E�P� ����"�T+�������w_d\�L������7��ϸP@n���ZZ�ǧ���@:��t���:GE��l޽��]��'�����̝�h�,����.._
�����m�5.%���
D&	�BU1���*&�
:�h�2�'���M�O��3t�H7�?�_' C1V��.�����p\*4	%O>y�n{/eT���Y��]`75m��k�T2�i��_�6U�6��6��m���Q��I�R㵷��|NI�i��!���kř)�v=U��@�  �Lb�T��"4V45�"�y��`�JQ >v<�e�s�8c�GS  ���������ߟ��mKY^l��g>�{��d��\�b�+k�=��6Olݺ����[�Ñ ��  ��T�U�U*-C�cʡ��H�C�s�����TCE��E{"�]	d*��Qd�)�dF���ݻ��a�sB(��F�x���Uq�R+�+��|t7�j���U�Pټ�%�2���C�2��Y�����&	d:J��s|z|Б���aj����J� ��X��ܯ�U�@GA��&.�*�<;�^�*U��z�2�u�fu���,.�����s�󗯼��[���]�r�g�i5[���x��q��R��+$}�s!!0m��O���cz�19Y�
�Q8��8.D�ng��j���9=�o޽���]y��A<��D�wt��&�#��Uj�bK�s!�̊j6Z��UX62����F�*��a��Ad���j�����k��z�aY��(�E!�cti�J{�ޝ{ۥR)R���NO��7n��Ͻ��ً��D/|��\�ێ��lnf&ϒ$I`����UJˆ�(�U�+�� �*J�Xh�7Q%SeT2 ��Ƅ]�&kbqN[[]��꺦)
� B?�},	!�j��'>��o����yz��v�#۲����_��O���㇡����fq�w�\�
΢(L(�!�VV��ʅb� ���H�Sf�i��bNTU[6M�2��ͷ����)�ĶF��� ��D��k�Ak��k/�ϯq�J�r� Q�Z�N����B��IR��ۧi����F��)ˑ�8IC,�ey�����(�xj�ł� ^�Fvmq�U��<=7]�j�
����P�)a� �(���XfR
�s��_��(J�櫯���X���F�%M��4!��q�j�\��w^ڸ}��byyy���頇U{����Uh,Ʌ)9;U������
��wM��O~�=�y|cB��O~�[��Z}�X*�A�1�mr4t�䜋�mO5�j�^.�z:v*�������L*�$׮�^X�]�����5Q)!�R�=������^�DƦ���Ã�'�99^\X   U|/�8��<�(W�\�lcw��?���������܍�
�j���BQ�`Ϗģ46?�W+A�g���_���V!����iBĘ�����zӓS��5;7{ae��hKEJ�B��1�c H( � �Ge���p8!O�����L"��w�cǛ�_�lM�Z�g�}���5ӲC�u�\��\~_. � �G��wG�%u�y����7��l6�����R�T��{�`�@�~V���_� cl8�*=�E9���W�����9~�{�"٣����W����6%    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/mother board.png-b4337b382f3f452f8081464a4d76356c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/mother board.png"
dest_files=[ "res://.import/mother board.png-b4337b382f3f452f8081464a4d76356c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            *      ���ӄ�   �����϶�   �����������������Ҷ�   �������Ӷ���   �����������Ӷ���      res://Node2D.tscn                                                    	   	   
   
                                                               (      3YYYYYYYYY0�  PQV�  -YYYYYYYY0�  PQV�  �  PQT�  PQY`    [gd_scene load_steps=3 format=2]

[ext_resource path="res://final.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 510.259, 355.431 )

[node name="Node2D" type="Node2D"]
script = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="."]

[node name="ColorRect" type="ColorRect" parent="Area2D"]
margin_right = 1043.0
margin_bottom = 703.0
color = Color( 0.0509804, 0.105882, 0.941176, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
position = Vector2( 511.945, 350.725 )
shape = SubResource( 2 )

[node name="Label" type="Label" parent="Area2D"]
margin_left = 415.779
margin_top = 319.612
margin_right = 641.779
margin_bottom = 409.612
text = "respuestas"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Button" type="Button" parent="Area2D"]
margin_left = 732.909
margin_top = 524.818
margin_right = 882.909
margin_bottom = 574.818
text = "Repetir"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Button2" type="Button" parent="Area2D"]
margin_left = 733.172
margin_top = 625.629
margin_right = 886.172
margin_bottom = 675.629
text = "siguiente"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="Area2D/Button" to="." method="_on_Button_pressed"]
              GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Node2D.gdc"
               [remap]

path="res://final.gdc"
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Drawing Line   application/run/main_scene         res://Node2D.tscn      application/config/icon         res://icon.png     display/window/size/height      �  $   rendering/quality/driver/driver_name         GLES2   )   rendering/environment/default_environment          res://default_env.tres           