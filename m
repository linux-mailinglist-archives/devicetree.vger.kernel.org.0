Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EBE9D5E462
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 14:48:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727327AbfGCMrq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 08:47:46 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:35935 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727341AbfGCMrq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 08:47:46 -0400
Received: by mail-pg1-f193.google.com with SMTP id c13so1209362pgg.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 05:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mCaH1zDEb7rXxWPODznJD5TDB60K/MIWgCsOM7DfWzA=;
        b=XvV+sepbyVPb+bqVU2ddMHjUGfV6gsYJqGiOzXoE/sVnssSmwxNK1X6jp5hrH2J5YW
         xgo5xIC+eY8tZ+GQOEVNvPJuiAyb6ezfK5zX55JNViaJ4byIvaNsPY/i1uYaMsBAPQU3
         MreXhMg8B0Lgh/XizVxucFy7pZA5Skkrgkcr0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mCaH1zDEb7rXxWPODznJD5TDB60K/MIWgCsOM7DfWzA=;
        b=VLT5wIwYsVI7WGCqPOA1RE38GktBGuh3kEbjyuwxw6HIAfTu5G2Ufrxh4rcpSWJ1Qr
         Cu2NYQ48SC+9pKd5hCe/l58wHeobkzlUeLjVQ9JLgdN6m73YzkdOHIATePcl9+Yda/L3
         ItL/4Z5h7ueIaOBAds3pvMXTZd5cfr+P2ljS5sRVYs/G15723vr14c+BzhkCOCHU5/TR
         Kqx14H3gbpjFgjoXTF+HNS8qUMKpCCdwI0ZRlgvxHQwipXrbHvUunVa2z6PZ1ztaYPc4
         sTo7SFMoSvoVJ4v9EC+0e1KNta/2H1ti23Nz+G4FOgXHv/EZ+si7ODI5aMROOCgTOSKv
         XV1w==
X-Gm-Message-State: APjAAAUXJWOaWeL/TaBKHCmQG75BqJIHimusn8VsKH/WUBeSVyESo2vP
        TLaRY5elGYLPef59+5gVZnMIEw==
X-Google-Smtp-Source: APXvYqxW4FLjVoMYU10WvTiwLBq6QAA8nfXkzjUHAjIh87ID+gr/EINN1eTCTytChKyOdBqJLzJvmQ==
X-Received: by 2002:a63:89c2:: with SMTP id v185mr36489258pgd.241.1562158065157;
        Wed, 03 Jul 2019 05:47:45 -0700 (PDT)
Received: from localhost.localdomain ([183.82.231.32])
        by smtp.gmail.com with ESMTPSA id q1sm3735890pfn.178.2019.07.03.05.47.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jul 2019 05:47:44 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 18/25] ARM: dts: sun8i: Switch V3s dts(i) to use SPDX identifier
Date:   Wed,  3 Jul 2019 18:16:02 +0530
Message-Id: <20190703124609.21435-19-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190703124609.21435-1-jagan@amarulasolutions.com>
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adopt the SPDX license identifier headers to ease license
compliance management on Allwinner V3s dts(i) files.

While the text specifies "of the GPL or the X11 license"
but the actual license text matches the MIT license as
specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/sun8i-v3s-licheepi-zero-dock.dts | 39 +------------------
 arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts | 39 +------------------
 arch/arm/boot/dts/sun8i-v3s.dtsi              | 39 +------------------
 3 files changed, 3 insertions(+), 114 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-v3s-licheepi-zero-dock.dts b/arch/arm/boot/dts/sun8i-v3s-licheepi-zero-dock.dts
index db5cd0b8574b..314e5fbca327 100644
--- a/arch/arm/boot/dts/sun8i-v3s-licheepi-zero-dock.dts
+++ b/arch/arm/boot/dts/sun8i-v3s-licheepi-zero-dock.dts
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright (C) 2016 Icenowy Zheng <icenowy@aosc.xyz>
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 #include "sun8i-v3s-licheepi-zero.dts"
diff --git a/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts b/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts
index 2e4587d26ce5..c690fade42b3 100644
--- a/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts
+++ b/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright (C) 2016 Icenowy Zheng <icenowy@aosc.xyz>
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
index d7aef128acb3..3961fb7b3ca8 100644
--- a/arch/arm/boot/dts/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright (C) 2016 Icenowy Zheng <icenowy@aosc.xyz>
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-- 
2.18.0.321.gffc6fa0e3

