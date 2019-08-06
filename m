Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 980D883375
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 16:02:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728102AbfHFOCB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 10:02:01 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:41545 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726834AbfHFOCA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 10:02:00 -0400
Received: by mail-pg1-f194.google.com with SMTP id x15so31305173pgg.8
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 07:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NNxJ+tbDDZ39iUywHLnl+FavlBAhdreQ78JZUGcO/6Q=;
        b=KWCwElDoIR4a775pD4nGJvCXl+KCPLJjXxpEXShqN1Su3f4gpv+xYeZ8u/aELHMTgS
         l7BqdZlV1mvqrhMmxqBA2nVAq15RIAFOXRmnBLXP/QD9Wwud12ZNUeAWDCD724uE6Sns
         /ovVAP5r6WDeC+OkTMSLFkAkLVkIQ6u4uOvV845D6hQzzTmDZFSJXljitbMZB8X7DcaZ
         +YyVYyhdK+M1N5XuGjwHJrT1Rp99nqsbLnKeshYTElFPtJkPbLNPoEkXImy3V0uueUIm
         fvhQqw6dY60QUOCsCjA9HjtkbBvp4lySE7zWNNlIONbrKPGtY7RxPeWos4zkBaRD45og
         lPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NNxJ+tbDDZ39iUywHLnl+FavlBAhdreQ78JZUGcO/6Q=;
        b=bsomCVoa0+vH35eFmOGVRBQNakGQxNyEAbk8eUrZ2utFdiaihIWSS6Q5EDwk0Wry0E
         VrmQWXjCXISgtOgbBXFTCuCZIMtgeNvVt2jtaiiP45B5vkLxM+gmV4zF/C8Fwu7ERCZV
         nKggd/Re4WyuFWQJ8mXMDmw5NQog4ABBXJWFRQjlHBd8S8tsH1pu5iwuLpfaitJFvK/z
         A10gsf2HSffsOBynSW0MMkd2hR+ajnIOsXOF1pC8H4EIblE7J7HXt+Zq/hSlyvTBRFIk
         liAPqokTefd2U+i92Qa51yWA6QfSCgouykLDx0FOLQrAf5Mu40yH2qt6yw7Q7rG68m/f
         6KKA==
X-Gm-Message-State: APjAAAU+Qy4CR9ivyKZemEJDJ21H1v9GNqdJZd6GJQrodjpYDF65H1Un
        ub11RRoD/AN4IyCAivBhBZU=
X-Google-Smtp-Source: APXvYqyoQrNDkoTxQQ5N0TxRl+eHehKXFF3o1q2edWC+jxD4IxF/6mv3JWY1+Yy2VtTysZvjlAx6Fg==
X-Received: by 2002:aa7:9514:: with SMTP id b20mr3881643pfp.223.1565100120106;
        Tue, 06 Aug 2019 07:02:00 -0700 (PDT)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net. [216.71.213.236])
        by smtp.gmail.com with ESMTPSA id q8sm25669353pjq.20.2019.08.06.07.01.59
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 07:01:59 -0700 (PDT)
From:   Vasily Khoruzhick <anarsoul@gmail.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Vasily Khoruzhick <anarsoul@gmail.com>,
        Harald Geyer <harald@ccbib.org>,
        "Jared D . McNeill" <jmcneill@NetBSD.org>
Subject: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
Date:   Tue,  6 Aug 2019 07:01:35 -0700
Message-Id: <20190806140135.4739-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Looks like PMU in A64 is broken, it generates no interrupts at all and
as result 'perf top' shows no events.

Tested on Pine64-LTS.

Fixes: 34a97fcc71c2 ("arm64: dts: allwinner: a64: Add PMU node")
Cc: Harald Geyer <harald@ccbib.org>
Cc: Jared D. McNeill <jmcneill@NetBSD.org>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 9cc9bdde81ac..cd92f546c483 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -142,15 +142,6 @@
 		clock-output-names = "ext-osc32k";
 	};
 
-	pmu {
-		compatible = "arm,cortex-a53-pmu";
-		interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
-	};
-
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
-- 
2.22.0

