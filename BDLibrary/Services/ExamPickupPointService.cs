using BDLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Json;
using System.Text;
using System.Threading.Tasks;

namespace BDLibrary.Services
{
    public class ExamPickupPointService
    {
        private readonly HttpClient _client;
        private readonly string _baseAddress = "";

        public ExamPickupPointService()
        {
            _client = new() { BaseAddress = new Uri(_baseAddress) };
        }

        public async Task<List<ExamPickupPoint>?> GetPickupPointsAsync()//получение списка пунктов выдачи из БД
        {
            try
            {
                return await _client.GetFromJsonAsync<List<ExamPickupPoint>>("ExamPickupPoints");
            }
            catch (HttpRequestException ex)
            {
                throw new Exception("Ошибка получения пунктов доставки при выполнении запроса к API: " + ex.Message);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
