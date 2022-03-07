var turneros  =require('../models/turneroModel');

module.exports = {
    getAll: async function (req, res, next) {
        var data = await turneros.getAll()
        //console.log("data", data)
        res.set('Access-Control-Allow-Origin', '*')
        res.status(200).json(data)
    },

    getComercios: async function (req, res, next) {
        var data = await turneros.getComercios()
        //console.log("data", data)
        res.set('Access-Control-Allow-Origin', '*')
        res.status(200).json(data)
    },

    getLocal: async function (req, res, next) {
        var idLocal = req.params.id;
        var data = await turneros.getLocal(idLocal)
        //console.log("data", data)
        res.set('Access-Control-Allow-Origin', '*')
        res.status(200).json(data)
    },

    getTurnosPendientes: async function (req, res, next) {
        var idLocal = req.params.id;
        var data = await turneros.getTurnosPendientes(idLocal)
        //console.log("data", data)
        res.set('Access-Control-Allow-Origin', '*')
        res.status(200).json(data)
    },
    postTurno: async function (req, res, next) {
        var idUsuario = req.body.idUsuario;
        var perfilComercial = req.body.perfilComercial;
        var detalleTurnero = req.body.detalleTurnero;
        var fecha = req.body.fecha;
        var hora = req.body.hora;
        var duracion = req.body.duracion;
        var cantidad = req.body.cantidad;
        console.log("QUERY ABAJO")
        console.log(req.body.cantidad)
        await turneros.postTurno(idUsuario, perfilComercial, detalleTurnero, fecha, hora, duracion, cantidad)
        res.set('Access-Control-Allow-Origin', '*')
        res.header('Access-Control-Allow-Origin', '*')
        res.status(200).json({"status":"ok"})
    },
    getTurnosCliente: async function (req, res, next) {
        var idCliente = req.params.id;
        var data = await turneros.getTurnosCliente(idCliente)
        //console.log("data", data)
        res.set('Access-Control-Allow-Origin', '*')
        res.status(200).json(data)
    },
    cancelTurno: async function (req, res, next) {
        var idTurno = req.body.idTurno;
        await turneros.cancelTurno(idTurno)
        res.set('Access-Control-Allow-Origin', '*')
        res.header('Access-Control-Allow-Origin', '*')
        res.status(200).json({"status":"ok"})
    },
    getTurnoUsuario: async function (req, res, next) {
        var idCliente = req.params.id;
        var data = await turneros.getTurnoUsuario(idCliente)
        //console.log("data", data)
        res.set('Access-Control-Allow-Origin', '*')
        res.status(200).json(data)
    }

    /*

    updateState: async function (req, res, next) {
        console.log("PARAMETRO"+req.params.id);
        var idPedido = req.params.id;
        await turneros.updateState(idPedido)
        res.set('Access-Control-Allow-Origin', '*')
        res.header('Access-Control-Allow-Origin', '*')
        res.status(200).json({"status":"ok"})
    }*/
}