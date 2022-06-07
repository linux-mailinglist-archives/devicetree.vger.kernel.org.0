Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3D29542707
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:58:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233030AbiFHCza (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 22:55:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1443731AbiFHCxM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 22:53:12 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8FA01F0A76
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 13:43:09 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MauJJ-1nMJPg3BQh-00cPYl; Tue, 07 Jun 2022 22:42:55 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V3 08/11] soc: bcm: bcm2835-power: Refactor ASB control
Date:   Tue,  7 Jun 2022 22:42:23 +0200
Message-Id: <20220607204226.8703-9-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607204226.8703-1-stefan.wahren@i2se.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:WFPoiHPB+UjDxwBJeyOPFDIsAZ2kFHIp5hl9lhT0C5P23iX8MAL
 hs3ueGpJWcZvTQvL5Z7lU09ZxQbRpKJ8cyCjk3ugL5KcurH9fqifJyrWeYIKYfAyEiXkFPj
 cdyVFM2q9qTC5ob6RzyAqEa3cjC9TKtxo8BgXaWT1cIBtzPg0Xj179/nqowi1x2il/X9fm/
 oqgL4QjvRsh7yKx1srTww==
X-UI-Out-Filterresults: notjunk:1;V03:K0:3PxX7hzxzDY=:2Rxbo+3IaeIwrBEm7e8a84
 WwGYUk2bcj0HVIgHRla2bMbFA8ZdmBVTCn+gUMao483mw3xC+KkRSMxV5eXIAhAVzVGLK5jQj
 qo9AnE8OxtBqUwPFQR9Nvd3olQpSDG6jvB1XK1atq1sMOo0XwF607d07HhjUcSRE4ZDhjVsMl
 xtXf1GFTC7cvfCbslbCBQOGT9v12sm7M94BKIp8kpfO/lfx0dhOxRHMosDrjNpVVKxjYZEsaJ
 UvAJLwzHr6WyBGGGMzuAzPFQv3DFLJ2xPOX84WxBqcVZ5jgR+TfNa1CGnBKGAsUJue4dMjoZk
 GrVa8eRNBUCxu8nrcmeCoAq+yNV77zOBGUdPzrkG3967XnkPQlruTmadE74JoNh8Uvnt517Y9
 +09+sF1KdY4FYhUT0NF8xcKqBGYUIVLexH166EBo+7r7aImFEqXSnz4CY4yaEX6sY6w3+kZgU
 onSO+e3L4qae8Is0QHJJ4ZCXEegWJUdATfcCGuWihzqbgRdcaSNlbzT2mRoMgRBmNSv20qx0t
 LtbQj7ggncMdUgHeOQHe+015eCYruphbf7j5viJZDc8eO1g8dD1CUQZOci0mNmyxwCRiqkw5C
 iVJon2qqroKguCI1aI2b3MFVLHdZ1ypmMi30CJxVA+nUe3zZEf/ttfM4LqSI1Q/4RwoKl8+ia
 kRk/N8AlG5oEl2GNEAic55D0LIDUjGIIa9dViQ1gqA+NjNJlfnmriBKlhAtlzuhDyjtJriSWI
 UibXpMZAIzORog1R+kF5wZK4lQaQPmni6D8SOLZjrYt3Oe6ILF3OMaX0OmY=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The functions to control the async AXI bridges are almost identical.
So define a general function to handle it and keep the original ones as
wrapper. This should make this driver easier to extend.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 drivers/soc/bcm/bcm2835-power.c | 31 +++++++++++++------------------
 1 file changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
index 1e0041ec8132..77dc9e62b207 100644
--- a/drivers/soc/bcm/bcm2835-power.c
+++ b/drivers/soc/bcm/bcm2835-power.c
@@ -148,7 +148,7 @@ struct bcm2835_power {
 	struct reset_controller_dev reset;
 };
 
-static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
+static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable)
 {
 	u64 start;
 
@@ -158,7 +158,12 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
 	start = ktime_get_ns();
 
 	/* Enable the module's async AXI bridges. */
-	ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
+	if (enable) {
+		ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
+	} else {
+		ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
+	}
+
 	while (ASB_READ(reg) & ASB_ACK) {
 		cpu_relax();
 		if (ktime_get_ns() - start >= 1000)
@@ -168,24 +173,14 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
 	return 0;
 }
 
-static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
+static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
 {
-	u64 start;
-
-	if (!reg)
-		return 0;
-
-	start = ktime_get_ns();
-
-	/* Enable the module's async AXI bridges. */
-	ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
-	while (!(ASB_READ(reg) & ASB_ACK)) {
-		cpu_relax();
-		if (ktime_get_ns() - start >= 1000)
-			return -ETIMEDOUT;
-	}
+	return bcm2835_asb_control(power, reg, true);
+}
 
-	return 0;
+static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
+{
+	return bcm2835_asb_control(power, reg, false);
 }
 
 static int bcm2835_power_power_off(struct bcm2835_power_domain *pd, u32 pm_reg)
-- 
2.25.1

