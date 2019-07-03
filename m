Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 81E245E455
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 14:48:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726621AbfGCMsI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 08:48:08 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:41554 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727462AbfGCMsI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 08:48:08 -0400
Received: by mail-pl1-f193.google.com with SMTP id m7so1191765pls.8
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 05:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LeVp32fCyZqIo/d5l2qER2CwKv5pwBDkf2I+uhwHe8s=;
        b=V3DnPL5zk4ThmbRKSVn94ZksxfRwmk+EVcnMl4nlTJjcLknY6+1hlvBh1dwBNrzDmH
         ow6ZFZ9mcmPWii7TglC+rrCdK73BpOUrC8/anenKLMKn3oQamFdpn8xSt+5i2cd9ji2Q
         a6kCGn3aBBOHeDz1BP/vL739Wi/HVnRTxr6NI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LeVp32fCyZqIo/d5l2qER2CwKv5pwBDkf2I+uhwHe8s=;
        b=fz1LZsC0kNGBufsQlqx4UpsoyQ4lHaJtHpD0QRkVCnRFsBojbDtext6TRMJU6A25ja
         ue8HqjFygNovIDp3Gz0jkHeGX1pwHppc51rBixpCcQ2UkC3zuo6t4ewOEaNdjyN6pJfb
         A5C1lxwZj4YgX9DRlAd3tXWxYA6hxUrU9Twgh1db41Ytx5jm73WUK66twK7SlAOCMBG8
         1M4Y/C44ZnDyUYziwC314s3rvH7yfIDWQaVqxFcctnSa1Dj4/Vwch64T7D3YQwTH111t
         ldagZao/9keBR3AwsOb/2DXxNAB2NnN74yYxi/c3iLZHsYLE7BrMsRw+PK5Uyd2iyxX+
         lpQQ==
X-Gm-Message-State: APjAAAX+KBjmcYPbUBcJ5/6hm+MQauHpPRzGTlQkxJjEKXslHlsxswSn
        sNz9ZJkb0u5mKCvBXTvQM0PuqQ==
X-Google-Smtp-Source: APXvYqyl7oeWpq55E1rWzd8jsC71JAFEsVI26A8LO4PA4TcVfWTWVvZXb3P77i9AiNKVYR8cn1ZRLA==
X-Received: by 2002:a17:902:2a6b:: with SMTP id i98mr39877642plb.75.1562158087779;
        Wed, 03 Jul 2019 05:48:07 -0700 (PDT)
Received: from localhost.localdomain ([183.82.231.32])
        by smtp.gmail.com with ESMTPSA id q1sm3735890pfn.178.2019.07.03.05.48.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jul 2019 05:48:07 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 25/25] ARM: dts: axp81x: Switch to use SPDX identifier
Date:   Wed,  3 Jul 2019 18:16:09 +0530
Message-Id: <20190703124609.21435-26-jagan@amarulasolutions.com>
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
compliance management on axp81x.dtsi.

While the text specifies "of the GPL or the X11 license"
but the actual license text matches the MIT license as
specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/axp81x.dtsi | 39 +----------------------------------
 1 file changed, 1 insertion(+), 38 deletions(-)

diff --git a/arch/arm/boot/dts/axp81x.dtsi b/arch/arm/boot/dts/axp81x.dtsi
index 1dfeeceabf4c..83649e75f86d 100644
--- a/arch/arm/boot/dts/axp81x.dtsi
+++ b/arch/arm/boot/dts/axp81x.dtsi
@@ -1,45 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright 2017 Chen-Yu Tsai
  *
  * Chen-Yu Tsai <wens@csie.org>
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
 
 /* AXP813/818 Integrated Power Management Chip */
-- 
2.18.0.321.gffc6fa0e3

