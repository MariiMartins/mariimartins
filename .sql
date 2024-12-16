def mean_absolute_percentage_error(y_true, y_pred):
    return np.mean(np.abs((y_true - y_pred) /np.mean(y_true))) * 100

# Exemplo de cálculo para o modelo base
mape_base = mean_absolute_percentage_error(df_train_ajusted['meantemp'], df_train_ajusted['meantemp_base'])
mape_sazonal = mean_absolute_percentage_error(df_train_ajusted['meantemp'], df_train_ajusted['meantemp_sazonal'])
mape_trend = mean_absolute_percentage_error(df_train_ajusted['meantemp'], df_train_ajusted['meantemp_tend'])
mape_moving_avg = mean_absolute_percentage_error(df_train_ajusted['meantemp'], df_train_ajusted['meantemp_moving_avg'])

print("MAPE Modelo Base: {:.2f}%".format(mape_base))
print("MAPE Modelo Sazonal: {:.2f}%".format(mape_sazonal))
print("MAPE Modelo de Tendência: {:.2f}%".format(mape_trend))
print("MAPE Média Móvel: {:.2f}%".format(mape_moving_avg))