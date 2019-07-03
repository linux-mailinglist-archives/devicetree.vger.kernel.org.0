Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0F7F65E460
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 14:48:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727377AbfGCMrw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 08:47:52 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:40431 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727374AbfGCMrw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 08:47:52 -0400
Received: by mail-pl1-f194.google.com with SMTP id a93so1200552pla.7
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 05:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gMi5S9N0GS+CtqUmG8SfHhdsksm3MgXETiiYgsZWDa4=;
        b=D7K74xUqXT9ATiZBZ3DrvWEEytOGd7t049PvGLghPyWRlkTxxABKFBVoF8x3eZh6YL
         i9aoG8NXBBb323/5pMTanuGFoLG1U/Gstktbuyy3kegJ331Fm6D0TR5KOiXEZpMAhhNb
         i+rpNLQC42wUqeEYu34I8TJ1xjC5qfPaXRR7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gMi5S9N0GS+CtqUmG8SfHhdsksm3MgXETiiYgsZWDa4=;
        b=BwWzMsF7c4QxoreGIpQKvggUeZ7ZixywOeOusV1cvZPBATvjCnYn9bvDZBvTgNnXgT
         narWifVw6NzmaDBr/nRFwa+oASvzj6Sb+Rweli4LQWK712ewmF3o76kC3wKVHU60eY9c
         Y3RzjqLVO0dT/xO2tNDKjfxfDmy7C0uaqa0rIGxH12yrXL53MD61/+8Ws4cwPrl0PXEn
         7i+p7IKNs3Pv8tFPjqH5d5p5KaRNc4pMccwMEqKoTQdHFjAJDZqLEVysktl0sqqkzkAo
         JMqwJyBxxXl34pOv4+pIpnry+hFlQg1PypvQVbIZgd6TNcp5QR1pRUk9nRfz1Yth+zwj
         QBeA==
X-Gm-Message-State: APjAAAVN3lbti/+f+vLlOPGrnHLqU1SahWia0Jnit6Jlxvy9/Xv3XhUA
        6Qut/y4vX9nE++jnym/zA8eh4g==
X-Google-Smtp-Source: APXvYqz6N8t5Rl+9VqdoH4geuUip5ZR+hfO739jS5YHsDGWfchAIGowwt/dTDF4YfxbNLaKb/UyG2Q==
X-Received: by 2002:a17:902:8a94:: with SMTP id p20mr42018467plo.312.1562158071569;
        Wed, 03 Jul 2019 05:47:51 -0700 (PDT)
Received: from localhost.localdomain ([183.82.231.32])
        by smtp.gmail.com with ESMTPSA id q1sm3735890pfn.178.2019.07.03.05.47.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jul 2019 05:47:51 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 20/25] ARM: dts: axp152: Switch to use SPDX identifier
Date:   Wed,  3 Jul 2019 18:16:04 +0530
Message-Id: <20190703124609.21435-21-jagan@amarulasolutions.com>
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
compliance management on axp152.dtsi.

While the text specifies "of the GPL or the X11 license"
but the actual license text matches the MIT license as
specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/axp152.dtsi | 39 +----------------------------------
 1 file changed, 1 insertion(+), 38 deletions(-)

diff --git a/arch/arm/boot/dts/axp152.dtsi b/arch/arm/boot/dts/axp152.dtsi
index f90ad6c64a07..4122aaf49e21 100644
--- a/arch/arm/boot/dts/axp152.dtsi
+++ b/arch/arm/boot/dts/axp152.dtsi
@@ -1,45 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright 2015 Chen-Yu Tsai
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
 
 &axp152 {
-- 
2.18.0.321.gffc6fa0e3

