@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Pilih Role</h2>
    <form method="POST" action="{{ route('register.setRole', $user->id) }}">
        @csrf
        <select name="role" required>
            <option value="">-- Pilih Role --</option>
            <option value="admin">Admin</option>
            <option value="operator">Operator</option>
            <option value="pegawai">Pegawai</option>
        </select>
        <button type="submit">Simpan</button>
    </form>
</div>
@endsection