Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E90815279C6
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:21:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231891AbiEOUVm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:21:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232971AbiEOUVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:21:39 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F33291EAF1
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:21:37 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MwwuJ-1nfhqj41CF-00yMXI; Sun, 15 May 2022 22:21:23 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 08/11] soc: bcm: bcm2835-power: Refactor ASB control
Date:   Sun, 15 May 2022 22:20:29 +0200
Message-Id: <20220515202032.3046-9-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:Zqx34iD9uP2vLVfJxyyrnXUaDcBAS1OAjj+1y5zlPa6QSvmg7dF
 lNniJXMsL7INUDUZVbU4O2kSzlZB4jjnbiAbXKC6KSplR7p7cmoPyuMaLHCxL9ikzuALSfl
 VYXJIXicKPowLJh6A66+fnP7HCu9Y2b1PK3x+x2iVCl4fPTj3IK8Sk46oPQXMdMKdw6+4WZ
 6UZHATKF7UpguG4FWurGw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:wHxqaCRRoUs=:7jadS5BZLbCNTKKcTEADfW
 +aSAv/86dO5OsBydg79joGUnw/7GDqTV9kVQSarYMEjLR0w0+k+T9IVf44z1GlYwanKn5jWRh
 B+tKSiCk2lqwN9umJ06V6hOT7h2WVKAASD6mxoP37eDgY40c02hlocx5oQIjENoj1lAfGtIst
 r9heMmlAgkSwToJAIf8feiJJouW8Nl9b0RWucE1xleFB1S8OwsF3vxM9FA2v7EETpw9U0ncgl
 FcaW4b/XQglYtHoXSzz7rEAZSlaWUM5ZZ3HDhLTBCfym0iqkowwA9aXeiMCOvqbwHnOWDQbuH
 NarRhAtCCbxKLKFOCjhIUxYHIUJ/6X67LEjZPA/aSKSsjuNpPaPNISNc+KDK1lPB3OrF20wxa
 rCAdD2vj6XZf4XI651H1AAXz/LrBb03RXIgLhhB5qOkrMbDBLAUikD8RxNyeElpI0qGtpIiB2
 nZLheFMqITZVHOSsug2CWz3JVHWN4CFnW0+wzEwmYZrDvQ7+DKC7/dDirljjMChp3dPNp9tVE
 hv3mEqM9bHlXEXFZTGftx5FCC4mPBobGIDOYmWbqSm8n69pQJETvNUeFlipEqvteHDL9aXNho
 ffHp0zyK0u4m41dqzac9uhHrtFNqDdSaLNAhUVt7omIUULuoYmz+iw7+WUJA4hvyqvZINGk4P
 3zOFvtFhNaGSuPYD5vjXZMlkzSwFHHY/83urlDBoSJ1vyGVI08lBjU9WiJ2m6OP78ZfUJytLg
 yZxgTeDR0g9U36hU
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

