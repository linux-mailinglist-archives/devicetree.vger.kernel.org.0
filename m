Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9FBDC1C560
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 10:50:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726238AbfENIu3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 04:50:29 -0400
Received: from michel.telenet-ops.be ([195.130.137.88]:54392 "EHLO
        michel.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726078AbfENIu3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 04:50:29 -0400
Received: from ramsan ([84.194.111.163])
        by michel.telenet-ops.be with bizsmtp
        id C8qT2000H3XaVaC068qT9H; Tue, 14 May 2019 10:50:27 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1hQT8j-0000Cv-Ko; Tue, 14 May 2019 10:50:25 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1hQT8j-0004aR-IQ; Tue, 14 May 2019 10:50:25 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: property-units: Sanitize unit naming
Date:   Tue, 14 May 2019 10:50:24 +0200
Message-Id: <20190514085024.17587-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make the naming of units consistent with common practices:
  - Do not capitalize the first character of units ("Celsius" is
    special, as it is not the unit name, but a reference to its
    proposer),
  - Do not use plural for units,
  - Do not abbreviate "ampere",
  - Concatenate prefixes and units (no spaces or hyphens),
  - Separate units by spaces not hyphens,
  - "milli" applies to "degree", not to "Celsius".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../devicetree/bindings/property-units.txt    | 34 +++++++++----------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/property-units.txt b/Documentation/devicetree/bindings/property-units.txt
index bfd33734facaba73..e9b8360b32880f12 100644
--- a/Documentation/devicetree/bindings/property-units.txt
+++ b/Documentation/devicetree/bindings/property-units.txt
@@ -12,32 +12,32 @@ unit prefixes.
 Time/Frequency
 ----------------------------------------
 -mhz		: megahertz
--hz		: Hertz (preferred)
--sec		: seconds
--ms		: milliseconds
--us		: microseconds
--ns		: nanoseconds
+-hz		: hertz (preferred)
+-sec		: second
+-ms		: millisecond
+-us		: microsecond
+-ns		: nanosecond
 
 Distance
 ----------------------------------------
--mm		: millimeters
+-mm		: millimeter
 
 Electricity
 ----------------------------------------
--microamp	: micro amps
--microamp-hours : micro amp-hours
--ohms		: Ohms
--micro-ohms	: micro Ohms
--microwatt-hours: micro Watt-hours
--microvolt	: micro volts
--picofarads	: picofarads
--femtofarads	: femtofarads
+-microamp	: microampere
+-microamp-hours : microampere hour
+-ohms		: ohm
+-micro-ohms	: microohm
+-microwatt-hours: microwatt hour
+-microvolt	: microvolt
+-picofarads	: picofarad
+-femtofarads	: femtofarad
 
 Temperature
 ----------------------------------------
--celsius	: Degrees Celsius
--millicelsius	: Degreee milli-Celsius
+-celsius	: degree Celsius
+-millicelsius	: millidegree Celsius
 
 Pressure
 ----------------------------------------
--kpascal	: kiloPascal
+-kpascal	: kilopascal
-- 
2.17.1

