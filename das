if (string.IsNullOrWhiteSpace(txtBookId.Text))
        {
            MessageBox.Show("Введите код книги", "Ошибка");
            return;
        }

        string sql = $"DELETE FROM Книги WHERE ID_книги = {txtBookId.Text}";
        
        try
        {
            int affectedRows = DAL.ExecuteNonQuery(sql);
            if (affectedRows > 0)
            {
                MessageBox.Show($"Книга с кодом {txtBookId.Text} успешно удалена", "Успех");
            }
            else
            {
                MessageBox.Show($"Книга с кодом {txtBookId.Text} не найдена", "Информация");
            }
        }
        catch (Exception ex)
        {
            MessageBox.Show($"Ошибка удаления книги: {ex.Message}", "Ошибка");
        }