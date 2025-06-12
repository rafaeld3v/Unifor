use RafaelTavares;

alter table TelefoneAgencia add(
    constraint FK_TelefoneAgencia_Agencia foreign key(Agencia_Codigo) references Agencia(Codigo)
);

alter table ContaCorrente add(
    constraint FK_ContaCorrente_Agencia foreign key(Agencia_Codigo) references Agencia(Codigo)
);

alter table TelefoneCorrentista add(
    constraint FK_TelefoneCorrentista_Correntista foreign key(Correntista_CPF) references Correntista(CPF)
);

alter table Dependente add(
    constraint FK_Dependente_Correntista foreign key(Correntista_CPF) references Correntista(CPF)
);

alter table ContaCorrente_Has_Correntista add(
    constraint FK_CCHC_ContaCorrente foreign key(ContaCorrente_Numero) references ContaCorrente(Numero),
    constraint FK_CCHC_Correntista foreign key(Correntista_CPF) references Correntista(CPF)
);