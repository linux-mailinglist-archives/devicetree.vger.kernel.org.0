Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63D77231D1C
	for <lists+devicetree@lfdr.de>; Wed, 29 Jul 2020 13:03:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726751AbgG2LC7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jul 2020 07:02:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726816AbgG2LCu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jul 2020 07:02:50 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB3A9C0619D5
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 04:02:48 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id b11so12775094lfe.10
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 04:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QiFmk3KSZQ39stE85or5bcAb3a7bPvoIf0tQyJ62VJ0=;
        b=sjN/+9P1NpBZqS3azkNDN3xCe1tY/7xLBJ2o7Xs3c2Q8VnqJzIAUgsawV/A8lampUZ
         5zj0+/hWnT6eeRFphtbjTGufo95GIyWm+x1dLe9VjSlRdFhiv+bE15ysqb7LjWuxFn4X
         glVKT1jE5XZBOY0UVx/wxfbnwPD+Y9AyVlZmbbqOCo5zhy5yx1o44tMKMva0dpxThKdS
         m93Mna9G4TTwqk02ddF9tz/G78xCqut7P768i43+rVRNMcewe8CkrbHT+VSPLZKlR8OT
         Jfi2HRWV0Kvmi800RnmJM2YYnZX+FExF1/5DHpTBDgLRZ6uU4bbfLfvWRT8ypxlXs46H
         4JSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QiFmk3KSZQ39stE85or5bcAb3a7bPvoIf0tQyJ62VJ0=;
        b=t2JKliRiJUMfnR/R7auC5kODSppK65zYSBe2PlxgEEwP4HSOalxiDjW3HAkuIqW8Z7
         hczIKZQMHaFje0751uSL/JygtkhtHZhBdUKSAXJNkOTz18PiimaaDH4xkqmi3MU+sLFJ
         pauCm/Y2zvp7tENAPXdOfC3cJWlUqARTyNFVW17Mm4jOJsJBWaXkw9wlrK/5sutUcABk
         S/odH8lilV04gIOwTccYOrX0gQ5sqR4UilWd9dJUbZrFWnf8JR07liZTnXRrPILcUrOx
         cHLE1Zb7TDqxgvZyqMXSJtcWAvwHHIpHWoHFH2wsjp4uEgqtpmTLUOVOtD2C16v5V5ag
         nqPw==
X-Gm-Message-State: AOAM5325ryREeGOaOzhf5CeciyzJEAoIyU1X0XY6T5VON4CZoBLsdNUR
        rHW+gKoTipAvrlYfAVQX8JmWkA==
X-Google-Smtp-Source: ABdhPJxJeH4gw4cqwfk+q4zE4Mal+VMvEwsJ05cdhhMOI1IB45W+SK48QS+uThQS2Ywo7AQv8vx1Lg==
X-Received: by 2002:a05:6512:6d6:: with SMTP id u22mr16807134lff.13.1596020567419;
        Wed, 29 Jul 2020 04:02:47 -0700 (PDT)
Received: from gilgamesh.semihalf.com (193-106-246-138.noc.fibertech.net.pl. [193.106.246.138])
        by smtp.gmail.com with ESMTPSA id e12sm329283ljk.74.2020.07.29.04.02.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jul 2020 04:02:46 -0700 (PDT)
From:   Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
To:     ssantosh@kernel.org, s-anna@ti.com
Cc:     grzegorz.jaszczyk@linaro.org, santosh.shilimkar@oracle.com,
        robh+dt@kernel.org, lee.jones@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        wmills@ti.com, praneeth@ti.com
Subject: [PATCH 4/6] soc: ti: pruss: Add support for PRU-ICSS subsystems on AM57xx SoCs
Date:   Wed, 29 Jul 2020 13:02:06 +0200
Message-Id: <1596020528-19510-5-git-send-email-grzegorz.jaszczyk@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1596020528-19510-1-git-send-email-grzegorz.jaszczyk@linaro.org>
References: <1596020528-19510-1-git-send-email-grzegorz.jaszczyk@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Suman Anna <s-anna@ti.com>

The AM57xx family of SoCs supports two PRU-ICSS instances, each of
which has two PRU processor cores. The two PRU-ICSS instances are
identical to each other, and are very similar to the PRU-ICSS1 of
AM33xx/AM43xx except for a few minor differences like the RAM sizes
and the number of interrupts coming into the MPU INTC. They do
not have a programmable module reset line unlike those present on
AM33xx/AM43xx SoCs. The modules are reset just like any other IP
with the SoC's global cold/warm resets. Each PRU-ICSS's INTC is also
preceded by a Crossbar that enables multiple external events to be
routed to a specific number of input interrupt events. Any interrupt
event directed towards PRUSS needs this crossbar to be setup properly
on the firmware side.

The existing PRUSS platform driver has been enhanced to support
these AM57xx PRU-ICSS instances through new AM57xx specific
compatible for properly probing and booting all the different PRU
cores in each PRU-ICSS processor subsystem. A build dependency with
SOC_DRA7XX is also added to enable the driver to be built in
AM57xx-only configuration (there is no separate Kconfig option
for AM57xx vs DRA7xx).

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
---
 drivers/soc/ti/Kconfig | 2 +-
 drivers/soc/ti/pruss.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/ti/Kconfig b/drivers/soc/ti/Kconfig
index 40d6a22..99dbc14 100644
--- a/drivers/soc/ti/Kconfig
+++ b/drivers/soc/ti/Kconfig
@@ -103,7 +103,7 @@ config TI_K3_SOCINFO
 
 config TI_PRUSS
 	tristate "TI PRU-ICSS Subsystem Platform drivers"
-	depends on SOC_AM33XX || SOC_AM43XX
+	depends on SOC_AM33XX || SOC_AM43XX || SOC_DRA7XX
 	select MFD_SYSCON
 	help
 	  TI PRU-ICSS Subsystem platform specific support.
diff --git a/drivers/soc/ti/pruss.c b/drivers/soc/ti/pruss.c
index 04938ba..5df4caa 100644
--- a/drivers/soc/ti/pruss.c
+++ b/drivers/soc/ti/pruss.c
@@ -161,6 +161,7 @@ static const struct of_device_id pruss_of_match[] = {
 	{ .compatible = "ti,am3356-pruss" },
 	{ .compatible = "ti,am4376-pruss0", .data = &am437x_pruss0_data, },
 	{ .compatible = "ti,am4376-pruss1", .data = &am437x_pruss1_data, },
+	{ .compatible = "ti,am5728-pruss" },
 	{},
 };
 MODULE_DEVICE_TABLE(of, pruss_of_match);
-- 
2.7.4

