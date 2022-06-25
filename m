Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5338355A980
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232592AbiFYLhS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232657AbiFYLhQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:16 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EDB918371
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:14 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N8XDT-1naHdB2HRp-014Q3j; Sat, 25 Jun 2022 13:37:04 +0200
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
Subject: [PATCH V4 08/11] soc: bcm: bcm2835-power: Refactor ASB control
Date:   Sat, 25 Jun 2022 13:36:16 +0200
Message-Id: <20220625113619.15944-9-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:AQyuJ6BWAMS7izam3rfsN3EezkqlAy92xousHG1PtVIeKYqyY7u
 RIR9wN5UaeeQMb9/mq1P3lU012jDucCarYPA6qgdur5ZJ3ZqHoxpz2fEbzwxbMVbERG9LAD
 kB0wGWkxYlkHlxq8eBwTp6VOHqIwN3gdLOt9beS1YcFlSdPUd+v6aX7gTKovjZATVT2Dham
 Kjo3RUgFNJZdKioC1RigA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:dUze6tolySQ=:U8PQGkgT9Hw8WUHhlPNETh
 R5vsr+Ipoo7/OR3QQAyLpCoIfIhrooybsW2dCRlau2/UHa5mLNIQaE6HGdOQ50d6yAEq4llDG
 WvdwERA4nWFfwbmfs8DQmNv+vIrJwJqNUTfFMh38K/lOFoXQwlN3qDMPpkvomEBb02+iPmCtJ
 RdRG6znpu3Up3X0W3RoEvF3QFOU3kjon22nQDmsZtdtOdrMV3Ui0ACb5CmHcPU07q5i2k7CX7
 PTcg3SkRDN/XsZ5QLyD0ElvEJe89N3PaCUnTOmYO709OASbIOSzcBEKAJFj7zj9mp2mZesRw8
 IV9tgpucpX4KDJ9uXsGjc76RkEi0ws141tkV0drcsUyPT0wr6iz+iMVEKancBGqwHhxyf8Q6x
 F8mPrOXcsk/COp+ba5uL/rqlE3H3b9KD398N40j4I5/JZiBxFM6WsPAIs32Lmw+ry5JFhKD6n
 ZqXA1Lggddd2bi5tCtYFOjj2Z76tw0tijrJUeTNcuCCFFWUgT3tEp9W9opn5gZE7ziqDVP48N
 Atbuh90Yp5pFNb8eNUNyJayBSeCzlvYTLL2kj2DtjBXBHsYdcVE/ktetQ/CwLOXehPOp907qY
 afVB7QeqAaFDBrBzTET0L0CrWhLxtS9Glp4cxitCISs+rtB95sUCqHKgzFN2R6LWX6zEIXvs0
 Zb3WMeWDiIVAE34P/DtPzgn4r04FHQPP7sps2pB2gfgu4Y3gv8DmSmmJoQcVZNQ+aQ18IyFMf
 Pe8LPYQOZD0UAiREtJbIf8iG/2C3KW7bqHHhfHpeCoEFVPVeZFVc/xj4Htw=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
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

