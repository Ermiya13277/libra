

// ** structs of module TestFuncCall



// ** functions of module TestFuncCall

procedure {:inline 1} TestFuncCall_f (arg0: Value) returns (ret0: Value)
requires ExistsTxnSenderAccount(m, txn);
{
    // declare local variables
    var t0: Value; // IntegerType()
    var t1: Value; // IntegerType()
    var t2: Value; // IntegerType()
    var t3: Value; // IntegerType()

    var tmp: Value;
    var old_size: int;

    var saved_m: Memory;
    assume !abort_flag;
    saved_m := m;

    // assume arguments are of correct types
    assume is#Integer(arg0);

    old_size := local_counter;
    local_counter := local_counter + 4;
    m := UpdateLocal(m, old_size + 0, arg0);

    // bytecode translation starts here
    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 0));
    m := UpdateLocal(m, old_size + 1, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := LdConst(1);
    m := UpdateLocal(m, old_size + 2, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := Add(GetLocal(m, old_size + 1), GetLocal(m, old_size + 2));
    m := UpdateLocal(m, old_size + 3, tmp);
    if (abort_flag) { goto Label_Abort; }

    ret0 := GetLocal(m, old_size + 3);
    return;
    if (abort_flag) { goto Label_Abort; }

Label_Abort:
    abort_flag := true;
    m := saved_m;
    ret0 := DefaultValue;
}

procedure TestFuncCall_f_verify (arg0: Value) returns (ret0: Value)
{
    call ret0 := TestFuncCall_f(arg0);
}

procedure {:inline 1} TestFuncCall_g (arg0: Value) returns (ret0: Value)
requires ExistsTxnSenderAccount(m, txn);
{
    // declare local variables
    var t0: Value; // IntegerType()
    var t1: Value; // IntegerType()
    var t2: Value; // IntegerType()
    var t3: Value; // IntegerType()

    var tmp: Value;
    var old_size: int;

    var saved_m: Memory;
    assume !abort_flag;
    saved_m := m;

    // assume arguments are of correct types
    assume is#Integer(arg0);

    old_size := local_counter;
    local_counter := local_counter + 4;
    m := UpdateLocal(m, old_size + 0, arg0);

    // bytecode translation starts here
    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 0));
    m := UpdateLocal(m, old_size + 1, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := LdConst(2);
    m := UpdateLocal(m, old_size + 2, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := Add(GetLocal(m, old_size + 1), GetLocal(m, old_size + 2));
    m := UpdateLocal(m, old_size + 3, tmp);
    if (abort_flag) { goto Label_Abort; }

    ret0 := GetLocal(m, old_size + 3);
    return;
    if (abort_flag) { goto Label_Abort; }

Label_Abort:
    abort_flag := true;
    m := saved_m;
    ret0 := DefaultValue;
}

procedure TestFuncCall_g_verify (arg0: Value) returns (ret0: Value)
{
    call ret0 := TestFuncCall_g(arg0);
}

procedure {:inline 1} TestFuncCall_h (arg0: Value) returns (ret0: Value)
requires ExistsTxnSenderAccount(m, txn);
{
    // declare local variables
    var t0: Value; // BooleanType()
    var t1: Value; // IntegerType()
    var t2: Value; // IntegerType()
    var t3: Value; // IntegerType()
    var t4: Value; // BooleanType()
    var t5: Value; // IntegerType()
    var t6: Value; // IntegerType()
    var t7: Value; // IntegerType()
    var t8: Value; // IntegerType()
    var t9: Value; // BooleanType()
    var t10: Value; // IntegerType()
    var t11: Value; // IntegerType()
    var t12: Value; // BooleanType()
    var t13: Value; // BooleanType()
    var t14: Value; // BooleanType()
    var t15: Value; // BooleanType()
    var t16: Value; // IntegerType()
    var t17: Value; // IntegerType()
    var t18: Value; // BooleanType()
    var t19: Value; // BooleanType()
    var t20: Value; // BooleanType()
    var t21: Value; // BooleanType()
    var t22: Value; // IntegerType()
    var t23: Value; // IntegerType()

    var tmp: Value;
    var old_size: int;

    var saved_m: Memory;
    assume !abort_flag;
    saved_m := m;

    // assume arguments are of correct types
    assume is#Boolean(arg0);

    old_size := local_counter;
    local_counter := local_counter + 24;
    m := UpdateLocal(m, old_size + 0, arg0);

    // bytecode translation starts here
    call tmp := LdConst(3);
    m := UpdateLocal(m, old_size + 3, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 3));
    m := UpdateLocal(m, old_size + 1, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 0));
    m := UpdateLocal(m, old_size + 4, tmp);
    if (abort_flag) { goto Label_Abort; }

    tmp := GetLocal(m, old_size + 4);
    if (!b#Boolean(tmp)) { goto Label_8; }
    if (abort_flag) { goto Label_Abort; }

    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 1));
    m := UpdateLocal(m, old_size + 5, tmp);
    if (abort_flag) { goto Label_Abort; }

    call t6 := TestFuncCall_f(GetLocal(m, old_size + 5));
    assume is#Integer(t6);

    m := UpdateLocal(m, old_size + 6, t6);
    if (abort_flag) { goto Label_Abort; }

    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 6));
    m := UpdateLocal(m, old_size + 2, tmp);
    if (abort_flag) { goto Label_Abort; }

    goto Label_11;
    if (abort_flag) { goto Label_Abort; }

Label_8:
    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 1));
    m := UpdateLocal(m, old_size + 7, tmp);
    if (abort_flag) { goto Label_Abort; }

    call t8 := TestFuncCall_g(GetLocal(m, old_size + 7));
    assume is#Integer(t8);

    m := UpdateLocal(m, old_size + 8, t8);
    if (abort_flag) { goto Label_Abort; }

    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 8));
    m := UpdateLocal(m, old_size + 2, tmp);
    if (abort_flag) { goto Label_Abort; }

Label_11:
    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 0));
    m := UpdateLocal(m, old_size + 9, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 2));
    m := UpdateLocal(m, old_size + 10, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := LdConst(4);
    m := UpdateLocal(m, old_size + 11, tmp);
    if (abort_flag) { goto Label_Abort; }

    tmp := Boolean(IsEqual(GetLocal(m, old_size + 10), GetLocal(m, old_size + 11)));
    m := UpdateLocal(m, old_size + 12, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := And(GetLocal(m, old_size + 9), GetLocal(m, old_size + 12));
    m := UpdateLocal(m, old_size + 13, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 0));
    m := UpdateLocal(m, old_size + 14, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := Not(GetLocal(m, old_size + 14));
    m := UpdateLocal(m, old_size + 15, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 2));
    m := UpdateLocal(m, old_size + 16, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := LdConst(5);
    m := UpdateLocal(m, old_size + 17, tmp);
    if (abort_flag) { goto Label_Abort; }

    tmp := Boolean(IsEqual(GetLocal(m, old_size + 16), GetLocal(m, old_size + 17)));
    m := UpdateLocal(m, old_size + 18, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := And(GetLocal(m, old_size + 15), GetLocal(m, old_size + 18));
    m := UpdateLocal(m, old_size + 19, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := Or(GetLocal(m, old_size + 13), GetLocal(m, old_size + 19));
    m := UpdateLocal(m, old_size + 20, tmp);
    if (abort_flag) { goto Label_Abort; }

    call tmp := Not(GetLocal(m, old_size + 20));
    m := UpdateLocal(m, old_size + 21, tmp);
    if (abort_flag) { goto Label_Abort; }

    tmp := GetLocal(m, old_size + 21);
    if (!b#Boolean(tmp)) { goto Label_27; }
    if (abort_flag) { goto Label_Abort; }

    call tmp := LdConst(42);
    m := UpdateLocal(m, old_size + 22, tmp);
    if (abort_flag) { goto Label_Abort; }

    goto Label_Abort;
    if (abort_flag) { goto Label_Abort; }

Label_27:
    call tmp := CopyOrMoveValue(GetLocal(m, old_size + 2));
    m := UpdateLocal(m, old_size + 23, tmp);
    if (abort_flag) { goto Label_Abort; }

    ret0 := GetLocal(m, old_size + 23);
    return;
    if (abort_flag) { goto Label_Abort; }

Label_Abort:
    abort_flag := true;
    m := saved_m;
    ret0 := DefaultValue;
}

procedure TestFuncCall_h_verify (arg0: Value) returns (ret0: Value)
{
    call ret0 := TestFuncCall_h(arg0);
}
