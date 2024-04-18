using FinanceManager.Core;
using System;
using System.Globalization;
using System.Windows.Data;

namespace FinanceManager.Converters
{
    class PeriodToBoolConverterForMonth : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if ((Period)value == Period.Month) return true;
            return false;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return null;
        }
    }
}
