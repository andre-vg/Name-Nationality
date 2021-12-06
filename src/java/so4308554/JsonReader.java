/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package so4308554;

/**
 *
 * @author André
 */
import java.io.BufferedReader;
        import java.io.IOException;
        import java.io.InputStream;
        import java.io.InputStreamReader;
        import java.io.Reader;
import java.lang.reflect.Array;
        import java.net.URL;
        import java.nio.charset.Charset;
        import java.util.ArrayList;
        import java.util.List;
        import org.json.JSONArray;

        import org.json.JSONException;
        import org.json.JSONObject;

        public class JsonReader {

        private static String readAll(Reader rd) throws IOException {
            StringBuilder sb = new StringBuilder();
            int cp;
            while ((cp = rd.read()) != -1) {
            sb.append((char) cp);
            }
            return sb.toString();
        }

        public static JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
            InputStream is = new URL(url).openStream();
            try {
            BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
            String jsonText = readAll(rd);
            JSONObject json = new JSONObject(jsonText);
            return json;
            } finally {
            is.close();
            }
        }

        public static void main(String[] args) throws IOException, JSONException {
            String nome;
            nome = "andre";
            JSONObject json = so4308554.JsonReader.readJsonFromUrl("https://api.nationalize.io/?name=" + nome);
            String url = json.toString();
            System.out.println(url);
                      
                    
        }
        }
