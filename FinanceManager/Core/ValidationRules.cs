﻿using System;
using System.Collections.Generic;
using System.Linq;
using FinanceManager.Model;

namespace FinanceManager.Core
{
    public class ValidationRules
    {
        private static ValidationRules VR;
        private Account _account;
        private Category _category;
        private Transaction _transaction;
        public Dictionary<string, ModelRule> AccountRules { get; set; }
        public Dictionary<string, ModelRule> CategoryRules { get; set; }
        public Dictionary<string, ModelRule> TransactionRules { get; set; }
        public ValidationRules()
        {
            AccountRules = new Dictionary<string, ModelRule>()
            {
                {"NameIsNotNull", new ModelRule(o=>!string.IsNullOrEmpty(_account.Name),"Введите имя аккаунта.") },
                {"NameValidLength",new ModelRule(o=>_account.Name.Length<=20,"Длина указана неверно.")},
                {"BalanceIsNotNegative", new ModelRule(o=> _account.Balance>=0 && !_account.Balance.ToString().Contains("-"),"Баланс не может быть отрицательным.")},
                {"BalanceIsValid", new ModelRule(o=> _account.Balance<1000000, "Значение слишком велико.")}
            };
            CategoryRules = new Dictionary<string, ModelRule>()
            {
                {"NameIsNotNull",new ModelRule(o=>!string.IsNullOrEmpty(_category.Name),"Введите название категории.")},
                {"NameValidLength",new ModelRule(o=>_category.Name.Length<=20,"Длина указана неверно.")},
                {"SumIsValid", new ModelRule(o=> _category.DefaultSum<1000000,"Значение слишком велико.")},
                {"SumIsNotNegative", new ModelRule(o=>_category.DefaultSum>=0 && !_category.DefaultSum.ToString().Contains("-"), "Сумма не может быть отрицательной.") }
            };
            TransactionRules = new Dictionary<string, ModelRule>()
            {
                {"SumIsNotNegative", new ModelRule(o=> _transaction.Money>=0 && !_transaction.Money.ToString().Contains("-"),"Сумма не может быть отрицательной.")},
                {"SumIsValid", new ModelRule(o=>
                {
                    if(_transaction.Type==OperationType.Expenses)return _transaction.Money<=(_transaction.Account.Balance + _transaction.StartMoney);
                    return true;
                }, "Сумма превышает баланс счета.")},
                {"SumIsNotNull", new ModelRule(o=> _transaction.Money>0, "Значение не может быть 0.")},
                {"DateIsValid", new ModelRule(o=>_transaction.Date<=DateTime.Today,"Неправильная дата.") },
                {"CategoryIsNotNull", new ModelRule(o=>_transaction.Category!=null,"Выберите категорию.") }
            };
        }

        public bool Validate(Account account)
        {
            _account = account;

            return CheckRules(AccountRules);
        }

        public bool Validate(Category category)
        {
            _category = category;

            return CheckRules(CategoryRules);
        }

        public bool Validate(Transaction transaction)
        {
            _transaction = transaction;

            return CheckRules(TransactionRules);
        }

        public bool Validate(Account account, string Property, ref string Error)
        {
            _account = account;
            return CheckRules(AccountRules, Property, ref Error);
        }
        public bool Validate(Category category, string Property, ref string Error)
        {
            _category = category;
            return CheckRules(CategoryRules, Property, ref Error);
        }
        public bool Validate(Transaction transaction, string Property, ref string Error)
        {
            _transaction = transaction;
            return CheckRules(TransactionRules, Property, ref Error);
        }
        public static ValidationRules GetInstance()
        {
            if (VR == null) VR = new ValidationRules();
            return VR;
        }

        private bool CheckRules(Dictionary<string, ModelRule> rules)
        {
            if (rules != null)
            {
                foreach (var rule in rules)
                {
                    if (!rule.Value.Property.Invoke(this)) return false;
                }
                return true;
            }
            return true;
        }

        private bool CheckRules(Dictionary<string, ModelRule> rules, string Property, ref string Error)
        {
            if (rules != null)
            {
                ModelRule rule;
                try
                {
                    rule = rules[Property];
                }
                catch
                {
                    return true;
                }
                if (!rule.Property.Invoke(this))
                {
                    Error = rule.Error;
                    return false;
                }

            }
            return true;
        }

    }
}
