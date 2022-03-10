/*
 * Copyright (c) 2021 Justin Haygood (jhaygood86@gmail.com)
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street - Fifth Floor,
 * Boston, MA 02110-1301, USA.
 */

namespace Power.Services.DBusInterfaces {
    [DBus (name = "net.hadess.PowerProfiles")]
    public interface PowerProfiles : GLib.DBusProxy {
        public abstract HashTable<string,Variant>[] profiles { owned get; }
        public abstract string active_profile { owned get; owned set; }
    }
}