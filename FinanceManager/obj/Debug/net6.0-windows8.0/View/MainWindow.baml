   M S B A M L   `   `   `  ����I  EFinanceManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:FinanceManager.ViewModelFinanceManager.ViewModel  5   
   $    FinanceManager.View.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <	viewModel&clr-namespace:FinanceManager.ViewModel     5   
   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  
MainWindow��5	   	   $	��550��5
   	   $	��750��6    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	    � AllowsTransparency$
 True��5   	   ��5   	   Z�  � DataContext 5      ,  &FinanceManager.ViewModel.MainViewModel  5   
    � 	Resources 5         MenuOpen �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime	 O� Value  	MenuClose��%�  &	        &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 65Q�63     5      $ 0:0:0.5��6'   $		 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $		 200Q�63     5      $ 0:0:0.5��6'   $	 65Q�69   5      5       5!      
 � Triggers
 5#      :� 5$   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ MenuOpenToggleButton��66   .[�5%      �� #��[  6   5&      :� 5'   
   $ ButtonBase.Click��6   $ MenuCloseToggleButton��66   .[�5(      �� #��[ 6   5)      .��5,      #  MaterialDesignThemes.Wpf.Card  -   5           UniformCornerRadius$ 15Q�5,   5     MaterialDesignPaper#���  6N   .��5-   
   �  � RowDefinitions 5.      �� 5/      $��1* �6    �� 50      $
��8.5* �6    .+�52      � $��1��6    � ColumnDefinitions 53      �� 54      $��65 �6'   �� 55      .+�57      � -   5         �Name$ TabGrid��57      $��1��6(   .+�58      �� -   5         ��Name$ ContentControl��58   %   ��59      �� *CurrentView+5:      5;      5=      � 5>      -   5        $ GridMenu��5>      $��65��6%   $
��Left=�60   $��1��6K   $��0��6X     PrimaryHueDarkBrush#���  5?       5@      �� 5A      $��1* �6$   �� 5B      $��6* �6$   .+�5D      d� -   5         d�Name$ MenuOpenToggleButton��5D   ,   $��0��6   $	��Top=�6K   $��Right=�5E      $��20 16 16 16q�63   
������� ' #MaterialDesignHamburgerToggleButton#���  5F      d� 5H      -   5        $ MenuCloseToggleButton��5H   -   $��0��6   $y�	Collapsed=�6L   $	��Top=�6c   $��Right=�6{   $��20 16 16 16q�5I   #   
�������#���  6O    d� 	IsChecked 5J   $   ��  �� ElementName$ MenuOpenToggleButton�� �� Path$ 	IsChecked� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5K      $��1��6    �� Orientation$ Vertical=�6*   .+�5L      �� -   5         ��Name$ IncomeButton��5L      
������ $��0q�6L   $��50��6`   ��6l   �� *IncomeViewCommand+.��5M      � $	��180��6   .+�5N      '  !MaterialDesignThemes.Wpf.PackIcon  $��32��66   $��32��6B      Kind$ Dollar=�6M   $
��Left=�6[   �� 5O      $��Доходы��6(   $��20(�66   
�������$��DemiBold"�6[   $��Center=�6q   $��Center=�6�   5P      5Q      �� 5R      -   5        $ ExpensesButton��5R      
������ $��0q�6N   $��50��6b   ��6n   �� *ExpensesViewCommand+.��5S      � $	��180��6   .+�5T        $��32��66   $��32��6B   $ CurrencyUsdOff=�6M   $
��Left=�6c   �� 5U      $��Затраты��6(   $��20(�67   
�������$��DemiBold"�6\   $��Center=�6r   $��Center=�6�   5V      5W      �� 5X      -	   5        $ AccountsButton��5X      
������ $��0q�6N   $��50��6b   ��6n   �� *AccountsViewCommand+.��5Y      � $	��180��6   .+�5Z        $��32��66   $��32��6B   $ WalletOutline=�6M   $
��Left=�6b   �� 5[      $��Аккаунты��6(   $��20(�68   
�������$��DemiBold"�6]   $��Center=�6s   $��Center=�6�   5\      5]      �� 5^      -
   5        $ CategoriesButton��5^      
������ $��0q�6P   $��50��6d   ��6p   �� *CategoriesViewCommand+.��5_      � $	��180��6   .+�5`        $��32��66   $��32��6B   $ 
DnsOutline=�6M   $
��Left=�6_   �� 5a      $��Категории��6(   $��20(�69   
�������$��DemiBold"�6^   $��Center=�6t   $��Center=�6�   5b      5c      �� 5d      -   5        $ CurrencyButton��5d      
������ $��0q�6N   $��50��6b   ��6n   �� *CurrencyViewCommand+.��5e      � $	��180��6   .+�5f        $��32��66   $��32��6B   $ CurrencyJpy=�6M   $
��Left=�6`   �� 5g      $��Валюты��6(   $��20(�66   
�������$��DemiBold"�6[   $��Center=�6q   $��Center=�6�   5h      5i      5j      5l      (  "MaterialDesignThemes.Wpf.ColorZone  5m      $��0��6'      Mode$ PrimaryDark=�5n         CornerRadius$ 	15 15 0 0��5o      $��60��5p   '   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth3=�5q      .��5s      ]� .+�5t      �� $��Right=�6!   $ 
Horizontal=�68   .+�5u      d� -   5        $ ThemeToggle��5u   '   $��	10 0 10 0q�5v   %    ) %MaterialDesignSwitchLightToggleButton#��[ 5x   $   �� 5z      -   5        $ exit_Button��5z   !     
ExitButton#��[ 5{   !   $��0 0 0 3q�5|   !    � Cursor$
 Hand��5}   <   .��5~        $��25��66   $��25��6B   $ LocationExit=�6M   5      5�      �� 5�      $��Center=�5�      $��16 0 0 0q�5�      $��Finance Manager��5�      $��20(�61   $��DemiBold"�6?   5�      5�      5�      5�      5�      