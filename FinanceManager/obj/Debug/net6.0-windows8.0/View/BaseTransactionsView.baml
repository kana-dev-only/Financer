   M S B A M L   `   `   `  ����I  EFinanceManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:FinanceManager.ConvertersFinanceManager.Converters  5      .    (FinanceManager.View.BaseTransactionsView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      7	converter'clr-namespace:FinanceManager.Converters  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5        � 	Resources  5      5  /FinanceManager.Converters.PeriodToBoolConverter   DayConverter<  6FinanceManager.Converters.PeriodToBoolConverterForWeek  Week Converter=  7FinanceManager.Converters.PeriodToBoolConverterForMonth  MonthConverter<  6FinanceManager.Converters.PeriodToBoolConverterForYear  YearConverter��%t   &	        &	      &	 &     &	 9       5   
   6*     5   
   61     5   
   62     5   
   61   5      .��5      )  #MaterialDesignThemes.Wpf.DialogHost  -   5        $	��Dia��5          
Identifier$ Dialog��6+     MaterialDesignDivider#��[ 6?   .��5   
   �  � RowDefinitions 5      �� 5      $
��1.5* �6    �� 5      $
��1.5* �6    �� 5      $	��15* �6    .+�5      �� .+�5      ��   MaterialDesignFlatButton#��[ 6   $
��Left=�5        PrimaryHueMidBrush#���  5      $	��200��5      $��40��6!   $��0q�5      $��5q�5         OpenDialogCommand#��Z 5        � Cursor$
 Hand��5!      ��5"      �� 5#      $	��300��6%   $	��200��62   .+�5$      �� $$��Выберите валюту.��6(   $��15q�5%      $
��Left=�5&      $��18(�5'        MaterialDesignBody#��[ 5(      �� 5)      $��Hidden=�5+      $	��150��5,      $��10q�5-      $��Stretch=�5.      ��5)   &   �� *AccountsCurrency+ �� SelectedItem 5*      �� *SelectedCurrency+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=���5/   "   �� 50   &   .R�51   *   ��  �� Orientation$ 
Horizontal=�65   .+�52   .   	� 	 	�Name$	 RadioButton��6:   ${�False��53   .    ! MaterialDesignDarkRadioButton#��[ 54   &   �� 55   .   $��15 0 0 0q�56   ,   $��20(�57   ,    	 PrimaryHueLightBrush#��� 	 58   ,   $��DemiBold"�59   ,   ��55   8   �� *Designation+59   ,   5:   +   
 �� Triggers
 5;   *   �� 5<   .    �� Value$
 True��5B   .    �� Binding 5=   ,   ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType" �� �� Path$ 
IsSelected�.a�5C   2   ��  �� 
TargetName$ RadioButton��5D   .    �� Property �@d�	IsChecked �� Value$
 TrueY�5F   .   5G   /   5I   '   5L      �� 5M       !
 MaterialDesignFlatLightButton#��[
 6%   $��Right=�5N   -   $��18(�5O   -   $��OK��5P   -   $��15q�5Q   -   ��5R   -   �� *UpDateCurrency+.  (System.Windows.Interactivity.Interaction   Triggers 5S   "   /  )System.Windows.Interactivity.EventTrigger  5T   &      	EventName$ Click��65   .  (System.Windows.Interactivity.TriggerBase   Actions. 5U   *   6	  0System.Windows.Interactivity.InvokeCommandAction	     CloseDialogCommand 	  Command# Z 6@   5V   '   5X      5Y      ��5[      ]� 5\      $	��170��6$   .+�5]      '
  !MaterialDesignThemes.Wpf.PackIcon
  $��0 0 10 0q�66   $��Center=�6I   $��25��6d   $��25��6o    
  Kind$
 Sack=�6{   $
��Left=�6�   �� 5^      $��18(�6(   $��5q�5_   $   $��Center=�5a   $   ��5`   $   �� *TotalBalance+$ PropertyChanged=� �� StringFormat$ {0:0.00}��5a   $   �� 5b      $��18(�5c      $��0 0 0 1q�5d      $��DemiBold"�5e      $��Bottom=�5f      ��5b   (   �� *SelectedCurrency+$ PropertyChanged=�5f      
  5g      
����i��$��Bottom=�6K   $��25��6f   $��25��6q   $ ChevronDown=�6}   $��Right=�6�   5h      5j      5k      �� 5l      $ 
Horizontal=�6   $��1��62   .+�5m      	� -   5        $	 	DayButton��5n        	TabButton#��[ 5m      $��	10 0 10 0q�5o       	� 	GroupName$ 
TabButtons��5p       d� 	IsChecked 5q      �� *SelectedPeriod+ �� 	Converter# [  ��5r      �� *ShowDayTransactions+��5s      �� 5t      $ 
Horizontal=�6%   .+�5u      �� $��День��6(   $��	0 0.5 0 0q�5v   (   #���  5w   (   $��18(�5x   (   $��DemiBold"�66   �� 5y      #��[
 6%   #��� 	 5z   %   #��Z 5{   %   $
 Hand��6f   .��5|   "   
  $��15��6:   $��15��6F   $ Calendar=�6Q   ��5}   "   � 5~   &    5   *   �� 5�   .   $
��Auto �5�   "   �� 5�   .   $
��Auto �5�   "   .+�5�   *   (�  (� Stretch$ Uniform=�5�   )   $	��300��5�   )   .��5�   .   &   System.Windows.Controls.Calendar  -   5        $��Calendar��5�   6      SelectionMode$ 
SingleDate=�5�   7   $��
-1 -4 -1 0q�5�   *       SelectedDate  5�   *   �� *SelectedDate+$ TwoWay=�$ PropertyChanged=� 5�   2     5�   6   $ SelectedDatesChanged��6E   . 5�   :   	  # Z 6P   	  5�   :    6P   �� *ShowDayTransactions+5�   7   5�   /   5�   +   5�   '   5�      5�      5�      	� 5�      -   5        $��
WeekButton��5�      #��[ 62   $��	10 0 10 0q�5�      $ 
TabButtons��5�      ��5�      �� *ShowWeekTransactions+ 5�      �� *SelectedPeriod+# [ ��5�      �� 5�      $ 
Horizontal=�6%   .+�5�      �� $��Неделя��6(   $��	0 0.5 0 0q�5�   (   #���  5�   (   $��18(�5�   (   $��DemiBold"�66   �� 5�      #��[
 6%   #��� 	 5�   %   #��Z 5�   %   $
 Hand��6f   .��5�   "   
  $��15��6:   $��15��6F   $ Calendar=�6Q   ��5�   "   �� 5�   &   $	��400��6-   $	��250��69   #��[ 6F      MaterialDesignCardBackground#���  5�   -   ._�5�   *   �� .+�5�   .   �� ��6=   �� *Weeks+�� 5�   .   $��OK��65   $��40��5�   5   $��60��5�   5   $��Center=�5�   5   $��18(�5�   5   $��5q�5�   5   $��DemiBold"�5�   5   #���  5�   5   #��[ 5�   5   ��5�   5   �� *ShowWeekTransactions+ 5�   2     5�   6   $ Click��6E   . 5�   :   	  # Z 6P   5�   7   5�   /   5�   +   5�   '   5�      5�      5�      	� 5�      -   5        $��MonthButton��5�      #��[ 5�      $��	10 0 10 0q�5�      $ 
TabButtons��5�      ��5�      �� *ShowMonthTransactions+ 5�      �� *SelectedPeriod+# [ ��5�      �� 5�      $ 
Horizontal=�6%   .+�5�      �� $��
Месяц��6(   $��	0 0.5 0 0q�5�   (   #���  5�   (   $��18(�5�   (   $��DemiBold"�66   �� 5�      #��[
 6%   #��� 	 5�   %   #��Z 5�   &   $
 Hand��6g   ��5�   "   � 5�   &   $	��300��6+   $
��Auto��67   .+�5�   *   �� .+�5�   .   �� ! �� SelectionMode$! Single=�5�   2   $��10q�5�   2   $	��200��5�   2   $��16(�5�   2   $��DemiBold"�5�   2   $
��Auto=�5�   2   $
��Auto=�5�   2   ��5�   6   �� *MonthsOfTheYear+ 5�   2   �� *SelectedMonth+$ TwoWay=�$ PropertyChanged=���5�   2   �� 5�   6   " �� 
TargetType"" ��6<   .�5�   :   ��  � ��  ListWeekStyle# [ 6U   5�   7   5�   /   �� 5�   .   $��5q�65   $��40��5�   1   $��50��5�   1   #��[ 5�   1   $��OK��5�   1   ��5�   1   �� *ShowMonthTransactions+ 5�   2     5�   6   $ Click��6E   . 5�   :   	  # Z 6P   5�   7   5�   /   5�   +   5�   '   .��5�   "   
  $��15��6:   $��15��6F   $ Calendar=�6Q   5�      5�      5�      	� 5�      #��[ 6   $��	10 0 10 0q�5�      $ 
TabButtons��5�       5�      �� *SelectedPeriod+# [ ��5�      �� *ShowYearTransactions+��5�      �� 5      $ 
Horizontal=�6%   .+�5     �� $��Год��6(   $��	0 0.5 0 0q�5  (   #���  5  (   $��18(�5  (   $��DemiBold"�66   5     5     5     �� 5	     $��2��6   ��6*   �� *	CurrentVM+5
     5     5     