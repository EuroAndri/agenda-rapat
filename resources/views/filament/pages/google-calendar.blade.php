<x-filament::page>
    <h2 class="text-xl font-bold mb-4">
        Kalender Bulan {{ now()->translatedFormat('F Y') }}
    </h2>

    @php
        $today = now()->copy()->startOfDay();
        $startOfMonth = now()->startOfMonth();
        $endOfMonth = now()->endOfMonth();
        $daysInMonth = $endOfMonth->day;
        $firstDayOfWeek = $startOfMonth->dayOfWeek;
        $weeks = ceil(($daysInMonth + $firstDayOfWeek) / 7);
    @endphp

    <table class="w-full text-center border border-gray-400 border-collapse border-spacing-0">
        <thead class="bg-gray-100">
            <tr>
                <th class="border border-gray-400 p-2">Minggu</th>
                <th class="border border-gray-400 p-2">Senin</th>
                <th class="border border-gray-400 p-2">Selasa</th>
                <th class="border border-gray-400 p-2">Rabu</th>
                <th class="border border-gray-400 p-2">Kamis</th>
                <th class="border border-gray-400 p-2">Jumat</th>
                <th class="border border-gray-400 p-2">Sabtu</th>
            </tr>
        </thead>

        <tbody>
        @for ($week = 0; $week < $weeks; $week++)
            <tr>
                @for ($dow = 0; $dow < 7; $dow++)
                    @php
                        $cellDay = $week * 7 + $dow - $firstDayOfWeek + 1;
                        $date = $cellDay > 0 && $cellDay <= $daysInMonth
                            ? $startOfMonth->copy()->addDays($cellDay - 1)
                            : null;
                    @endphp

                    <td class="border border-gray-400 h-16 w-16 p-0 flex items-center justify-center">
                        @if ($date)
                            <div class="flex items-center justify-center w-12 h-12
                                @if ($date->isSameDay($today))
                                    bg-blue-500 text-white font-bold rounded-full
                                @endif
                            ">
                                {{ $cellDay }}
                            </div>
                        @else
                            <div class="w-12 h-12"></div>
                        @endif
                    </td>
                @endfor
            </tr>
        @endfor
        </tbody>
    </table>

    <div class="mt-4 text-center">
        @if(session()->has('google_token'))
            <p class="text-green-600 font-semibold">✅ Anda sudah login Google Calendar</p>
        @else
            <a href="{{ route('google.redirect') }}" class="btn btn-primary">
                Hubungkan Google Calendar
            </a>
        @endif
    </div>
</x-filament::page>
