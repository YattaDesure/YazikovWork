if (string.IsNullOrWhiteSpace(txtTitle.Text) || 
            string.IsNullOrWhiteSpace(txtAuthor.Text) ||
            string.IsNullOrWhiteSpace(txtPrice.Text))
        {
            MessageBox.Show("Заполните обязательные поля (Название, Автор, Цена)", "Ошибка");
            return;
        }

        // Создание SQL-запроса с параметрами
        string sql = $@"INSERT INTO Книги (Название, Автор, ГодИздания, Цена, Издательство, Количество) 
                       VALUES ('{txtTitle.Text.Replace("'", "''")}', 
                               '{txtAuthor.Text.Replace("'", "''")}', 
                               {(string.IsNullOrWhiteSpace(txtYear.Text) ? "NULL" : txtYear.Text)}, 
                               {txtPrice.Text.Replace(",", ".")}, 
                               '{(string.IsNullOrWhiteSpace(txtPublisher.Text) ? "NULL" : txtPublisher.Text.Replace("'", "''")}', 
                               {(string.IsNullOrWhiteSpace(txtQuantity.Text) ? "100" : txtQuantity.Text)})";

        try
        {
            int affectedRows = DAL.ExecuteNonQuery(sql);
            if (affectedRows > 0)
            {
                MessageBox.Show("Книга успешно добавлена", "Успех");
                this.Close();
            }
        }
        catch (Exception ex)
        {
            MessageBox.Show($"Ошибка добавления книги: {ex.Message}", "Ошибка");
        }