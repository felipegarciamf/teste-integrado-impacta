package steps;

import cucumber.api.PendingException;
import groovy.json.internal.LazyMap;
import org.junit.Assert;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;
import definition.CrudProcessos;
import support.RESTSupport;

public class CrudProcessosSteps {
    @Dado("^que o usuário está na página de processos$")
    public void queOUsuarioEstaNaPaginaDeProcessos() {
        CrudProcessos.clearFields();
    }

    @E("^o usuário coloca no campo \"([^\"]*)\" o valor \"([^\"]*)\"$")
    public void oUsuarioInformaNoCampoOValor(String campo, String valor) throws Throwable {
        CrudProcessos.addFields(campo, valor);
    }

    @Quando("^o usuário selecionar o botao salvar$")
    public void oUsuarioClicarEmSalvar() {
        RESTSupport.executePost(CrudProcessos.getEndPoint(),CrudProcessos.getFields());
        CrudProcessos.setLastID(RESTSupport.key("id").toString());
    }

    @Então("^o usuário deve ver uma mensagem de \"([^\"]*)\"$")
    public void oUsuarioDeveriaReceberUmaMensagemDe(String message) throws Throwable {
        LazyMap messageJson = new LazyMap();
        messageJson.put("salvo com sucesso", 201);
        messageJson.put("sucesso", 200);
        messageJson.put("sem conteudo", 204);
        messageJson.put("nao encontrado", 404);
        messageJson.put("nao autorizado", 401);

        Assert.assertEquals(messageJson.get(message),RESTSupport.getResponseCode());
    }

    @E("^o usuário gostaria de visualizar o processo com o id (\\d+)$")
    public void oUsuárioGostariaDeVisualizarOProcessoComOId(int id) {
        CrudProcessos.setLastID(String.valueOf(id));
    }

    @Quando("^o usuário selecionar o botao visualizar$")
    public void oUsuárioClicarEmVisualizar() {
        RESTSupport.executeGet(CrudProcessos.getEndPoint() + "/" + CrudProcessos.getLastID() + ".json");
    }

    @E("^o usuário deve visualizar campo \"([^\"]*)\"com o valor \"([^\"]*)\"$")
    public void oUsuárioDeveVerOCampoComOValor(String campo, String valor) throws Throwable {
        Assert.assertEquals(valor, RESTSupport.key(campo));
    }

    @Quando("^o usuário selecionar o botao atualizar$")
    public void oUsuárioClicarEmAtualizar() {
        RESTSupport.executePut(CrudProcessos.getEndPoint() + "/" + CrudProcessos.getLastID() + ".json",CrudProcessos.getFields());
    }

    @Quando("^o usuário selecionar o botao apagar$")
    public void oUsuárioClicarEmApagar() {
        RESTSupport.executeDelete(CrudProcessos.getEndPoint() + "/" + CrudProcessos.getLastID() + ".json");
    }
}
