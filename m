Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B38025E446
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 14:47:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727200AbfGCMrX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 08:47:23 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:39822 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727185AbfGCMrW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 08:47:22 -0400
Received: by mail-pf1-f196.google.com with SMTP id j2so1234752pfe.6
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 05:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yNi+jgx3lQdMBEwMmP6BN4Xd0pkiX3oYg56Fvm+D/U0=;
        b=fU2w0i8/igNZZ4XzvDL6UGujBxNiSXj9kZJ5A5CJeafo4jd3Qg80YUst6aAtRnCrS3
         dEzd5z25iEVtZf7gNHPEFmOaocmwKALv40d3MALPoqJC6eFz0IS6MeAmKxeMOqe4HW6q
         CrO/Hp8IKQkzOE6F/DGYpVb01OliaiC9+DSSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yNi+jgx3lQdMBEwMmP6BN4Xd0pkiX3oYg56Fvm+D/U0=;
        b=Xa4b5csTzPC0+drW2aSOzfisVkPi+HnKIMQcfUnLFKG+0oLxShzSG3qKCCjfc0icmt
         tNytl8WD2dTRkYg+4jdRCV+Wy0MuHzF+gwwl+wO2JHqx1U+OLMwCuGTmNRX1Npj2Bn9t
         nXfyvKiVI2/eCNR8+kbcMocG46vUasLkoGs3bp/0xchv4v4lFqwDcJ/8HofBz9cdziIt
         5Cx/LzyaaZp9/5u8L8ZBRWHijfixmY3fmZK8bWVfTtuxFnBw4gdVZadFifj0rGXabB9f
         CNNo+QRfZoKMM/sWSH3NHX9/vaVpeorgR5fIno+oN+HbDm0MSBkHzSUv1GMacx0rnlpN
         MJUQ==
X-Gm-Message-State: APjAAAWBUhFv5yK6whzm2zSdvN3+p13SpBPzaDNzrpdm3on51zeAyMA5
        etMm/DfWz4i8Z2SJUfU2kMTxIQ==
X-Google-Smtp-Source: APXvYqyP76v0X/60PBMXUNT/tKb15DU8UxzaQ3Gwk5FrUdNvWD39oKr0U4qQ4cdiev+OVYnaeTDe/A==
X-Received: by 2002:a17:90a:1904:: with SMTP id 4mr12945020pjg.116.1562158041934;
        Wed, 03 Jul 2019 05:47:21 -0700 (PDT)
Received: from localhost.localdomain ([183.82.231.32])
        by smtp.gmail.com with ESMTPSA id q1sm3735890pfn.178.2019.07.03.05.47.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jul 2019 05:47:21 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Hao Zhang <hao5781286@gmail.com>
Subject: [PATCH 11/25] ARM: dts: sun8i: t3-cqa3t-bv3: Remove legacy license text
Date:   Wed,  3 Jul 2019 18:15:55 +0530
Message-Id: <20190703124609.21435-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190703124609.21435-1-jagan@amarulasolutions.com>
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This dts file already used SPDX Licence identifier and
forgot to drop legacy license text from

commit <382744d35916> ("ARM: dts: sun8i: Add board dts file for t3-cqa3t-bv3.")

Cc: Hao Zhang <hao5781286@gmail.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/sun8i-t3-cqa3t-bv3.dts | 38 ------------------------
 1 file changed, 38 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-t3-cqa3t-bv3.dts b/arch/arm/boot/dts/sun8i-t3-cqa3t-bv3.dts
index 6931aaab2382..cf35c0b930ee 100644
--- a/arch/arm/boot/dts/sun8i-t3-cqa3t-bv3.dts
+++ b/arch/arm/boot/dts/sun8i-t3-cqa3t-bv3.dts
@@ -3,44 +3,6 @@
  * Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
  * Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
  * Copyright (C) 2018 Hao Zhang <hao5781286@gmail.com>
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
-- 
2.18.0.321.gffc6fa0e3

