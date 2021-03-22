Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12201343600
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 01:42:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbhCVAkU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Mar 2021 20:40:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229696AbhCVAjr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Mar 2021 20:39:47 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DF44C061756
        for <devicetree@vger.kernel.org>; Sun, 21 Mar 2021 17:39:47 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id f16so19018293ljm.1
        for <devicetree@vger.kernel.org>; Sun, 21 Mar 2021 17:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BgZ7HgNTm/UP99/YoRuqdj9+3TXma4Ehz1JtkcBaT5Q=;
        b=HokPlg6gMGIZVQ4DU3bzd0RTLuMjlseq3sDQ4OyN87nORSN83HFNDj5GkksY46/M2e
         RyfpOc7i7MwU5lKpuds78vAkNb3vLDvYNbuwaVIR8I8tzIzWjpHX0VVZdOxzOt2p8n35
         XnBYSmJVIVrWxqMbah2EiPTQcZBsp7lpE8ucG4r3lce3VAuls+64rqhQSuhzrHSBpKdd
         8cgXjTgdhVaaZwrc0Yu1pqcp3gLp1kRoyzMtnYw/UTHoKskR+A9ld1NnDddYEDlDexrR
         FTlD1p0vfoBzGoz2j6ztI+JvPUY9VwuyaGQKEiXAmPT0TOXA/0yHKp1Rb+8vYPwoGDbd
         qgYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BgZ7HgNTm/UP99/YoRuqdj9+3TXma4Ehz1JtkcBaT5Q=;
        b=tobQGMO9Hb6oRVztDs7kcmlfuUcFITk+HHjxJ2+9Qd/QpIBcT3yl5xAOyABXMP933O
         i1XOPxp2zU8/djeEcVfhVtafhW/c8GTgsDPX3Fsft7cH+XCgvZHnlw4p908TSZ3lJrYN
         yhDO+5HQqidRwWTjTKSWMsoOJfY75YEfvcXMK7fal8qbZUM0SRllvzPJyf1BW7YO39/h
         +Xa2RGgfildwlqlSI4uiaXTkVaJ31dVRMQcvgrSXfB75q/eOvbcqLHPIxvXdE5KYiFNY
         pESe1JpgVk8odxJ3USr/uUDSc1vAaP6tCuIUD+AbRxOLnbVzeItXB6oXDLrKrxEVt8rv
         5c1Q==
X-Gm-Message-State: AOAM530FV4qCan7NItLXlTdp7kmTrZNL8dCBsdBzltHQACRmXo4c3wMy
        avIAKt9jvYiEYss1U42N9l/pvw==
X-Google-Smtp-Source: ABdhPJzF6sSQk4GqGecvPY0obUYGBn4a8JXhCfM6eH/VIQYzkT4p/77yJ81+X+dUVdeywWYQXSx6iQ==
X-Received: by 2002:a2e:8185:: with SMTP id e5mr8020563ljg.138.1616373585692;
        Sun, 21 Mar 2021 17:39:45 -0700 (PDT)
Received: from gilgamesh.int.semihalf.com (host-193.106.246.138.static.3s.pl. [193.106.246.138])
        by smtp.gmail.com with ESMTPSA id a10sm1381964lfu.263.2021.03.21.17.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Mar 2021 17:39:45 -0700 (PDT)
From:   Marcin Wojtas <mw@semihalf.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     andrew@lunn.ch, gregory.clement@bootlin.com, robh+dt@kernel.org,
        Marcin Wojtas <mw@semihalf.com>
Subject: [PATCH] arm64: dts: ensure backward compatibility of the AP807 Xenon
Date:   Mon, 22 Mar 2021 01:39:15 +0100
Message-Id: <20210322003915.3199775-1-mw@semihalf.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A recent switch to a dedicated AP807 compatible string for the Xenon
SD/MMC controller result in the driver not being probed when
using updated device tree with the older kernel revisions.
It may also be problematic for other OSs/firmware that use
Linux device tree sources as a reference. Resolve the problem
with backward compatibility by restoring a previous compatible
string as secondary one.

Signed-off-by: Marcin Wojtas <mw@semihalf.com>
---
 arch/arm64/boot/dts/marvell/armada-ap807.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap807.dtsi b/arch/arm64/boot/dts/marvell/armada-ap807.dtsi
index d9bbbfa4b4eb..4a23f65d475f 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap807.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap807.dtsi
@@ -29,6 +29,7 @@ cpu_clk: clock-cpu {
 };
 
 &ap_sdhci0 {
-	compatible = "marvell,armada-ap807-sdhci";
+	compatible = "marvell,armada-ap807-sdhci",
+		     "marvell,armada-ap806-sdhci"; /* Backward compatibility */
 };
 
-- 
2.29.0

