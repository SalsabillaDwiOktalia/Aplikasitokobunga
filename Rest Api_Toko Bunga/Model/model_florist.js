const mongoose = require('mongoose')
const Schema = mongoose.Schema
const UserSchema = new Schema({
    gerai: { type: String },
    alamat: { type: String },
    gambar: { type: String },
    no_tlpn: { type: String },
    jam_operasional: { type: String },
    harga_buket_bunga_segar: { type: String },
    pemesanan: { type: String },
    LatLng: { type: String },
    date: { type: Date, default: Date.now }

})
module.exports = mongoose.model('florist', UserSchema)