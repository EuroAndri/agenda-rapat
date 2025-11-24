<x-filament::page>
    <h2 class="text-xl font-bold mb-4">Google Calendar Events</h2>

    {{-- Kalau belum ada event atau belum login --}}
    @if(empty($this->events))
        <p class="text-gray-500">Belum ada event atau belum login Google.</p>

        {{-- 👉 Tombol login Google --}}
        <a href="{{ route('google.redirect') }}" class="btn btn-primary">
            Hubungkan Google Calendar
        </a>
    @else
        <ul class="space-y-2">
            @foreach($this->events as $event)
                <li class="p-2 border rounded">
                    <strong>{{ $event->getSummary() }}</strong><br>
                    {{ $event->getStart()->getDateTime() ?? $event->getStart()->getDate() }}
                </li>
            @endforeach
        </ul>
    @endif
</x-filament::page>