<x-filament::page>
    <h2 class="text-xl font-bold mb-4">
        Kalender Bulan {{ now()->translatedFormat('F Y') }}
    </h2>

    {{-- Jika belum login --}}
    @if(!$isLoggedIn)
        <div class="p-4 bg-yellow-100 rounded mb-4 flex items-center justify-between">
        <p class="mb-0">Anda belum login ke Google Calendar.</p>
        <a href="{{ route('google.redirect') }}"
       class="px-4 py-2 bg-blue-600 text-white rounded">
       Login dengan Google
    </a>
</div>

    @else
        {{-- Jika sudah login --}}
        <div class="p-4 bg-green-100 rounded mb-4 flex items-center justify-between">
        <p class="mb-0">✅ Anda sudah login ke Google Calendar</p>
        <a href="{{ route('google.logout') }}"
           class="px-4 py-2 bg-red-600 text-white rounded">
           Logout
        </a>
    </div>
        <div id="calendar"></div>
    @endif

    @push('styles')
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- FullCalendar CSS -->
        <link href="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.css" rel="stylesheet">
    @endpush

    @push('scripts')
        <!-- FullCalendar JS -->
        <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                var calendarEl = document.getElementById('calendar');

                if (calendarEl) {
                    var calendar = new FullCalendar.Calendar(calendarEl, {
                        initialView: 'dayGridMonth',
                        themeSystem: 'bootstrap5',
                        headerToolbar: {
                            left: 'prev,next today',
                            center: 'title',
                            right: 'dayGridMonth,timeGridWeek,timeGridDay'
                        },
                        events: @json($events ?? [])
                    });

                    calendar.render();
                }
            });
        </script>
    @endpush
</x-filament::page>