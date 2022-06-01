Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7435853A584
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:55:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241567AbiFAMyb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:54:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350591AbiFAMy3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:54:29 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89FA96FD2F
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:54:27 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M3DFj-1nxDjk0o9N-003dK5; Wed, 01 Jun 2022 14:54:05 +0200
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
Subject: [PATCH V2 09/11] soc: bcm: bcm2835-power: Resolve ASB register macros
Date:   Wed,  1 Jun 2022 14:53:42 +0200
Message-Id: <20220601125344.60602-10-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220601125344.60602-1-stefan.wahren@i2se.com>
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:JNkKyC1r2Ouxj1l5dkd4fhl4awI4EFFVcTCxj3yzMZMXDV9H7q+
 bpTZT9atgYRSo1UXks+A9AerEvpU5NtjEi9xxUFYGzB2wphooh0NPIIsaFLEN0RVxJec2Rm
 Teqzn9g3jmc7hwOzUmu4wYUB6N1JusZtWSQLVWORdo7B/q9eBKLZl9ki9jrGCqSVFrmF4ge
 BAIyDlsX2XIWDB8kbEPmA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:X57HHXOFjQA=:6ZUCnzKWj5SEpO3zBAnrTt
 nAbKrrmo66eCZaBgxAxv6MkQNYpYRpWo9EKMWXaFhJEo5xn8pnCwF9Ti9obr9Gezmw8Kwtvyq
 X2oXqrh1YO6CWpwNEGqU5HBdKBsIaim7CilRzeJCQCrV+moHtvcZSXS4XAmVO9/kZ1wG1j16X
 6Eg1/IYd09izi0GiXTCOpNH9jA54BC10WMX819cEO/UZwkJ7oW/w6uk5reobwDflEo94NmAp1
 l/hMDRnFnyggD0Nfb+bgieXjDvVXJIliTuN1VxnM1DTIDQ0uAVBr5hNK/P5obdqqi8n+R6fFP
 WT15fZ+lIIQLGlFwYOtBGksMS6oNhCYBJE4urxlFscaCNqedrvhOCv0jhrkD8DbkIkNtvJNbd
 /7/Evm4pwBGt49i06WifKXqdw1J4X296Z5VmD1p/+PVOK9sg5STukzhNbaO1TaXsk6cpaPR8o
 3j6Lpk/nwYnGfnPf8oCxhhGzqU5MB0wF0SpdPOBU1TkjEIUk6pt7VjHJnU4G4p/Fw1nSbAj/1
 BFcQ/Um4q/0sCFQEekHaiXJ0OCJ7URNg/2yvM+708gxjNddxMCBl/pjwCXcopRZLrE0X62gGA
 pCwDdVzI2VnJs7lTWTOoCuqzLZdh9rmBvngQYIcLZ3Iy10nlrnOkOtyArfcHY12OPg9wR6Kwy
 WIP8lESwBJzGtXTnxpQLJjgIwbVB9ocIMpfBBTKDXpCigN3UZzzfmVt61uSy5pVMUcOI0DwqH
 Rr7XGKR45VMkMe/cxRXoGRMjG5Fy8UWdKz8Fs2Lqayltan3eDjqs0aZBV1Q=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The macros in order to access the ASB registers have a hard coded base
address. So extending them for other platforms would make them harder
to read. As a solution resolve these macros.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 drivers/soc/bcm/bcm2835-power.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
index 77dc9e62b207..9c352f66e6d5 100644
--- a/drivers/soc/bcm/bcm2835-power.c
+++ b/drivers/soc/bcm/bcm2835-power.c
@@ -126,9 +126,6 @@
 
 #define ASB_AXI_BRDG_ID			0x20
 
-#define ASB_READ(reg) readl(power->asb + (reg))
-#define ASB_WRITE(reg, val) writel(PM_PASSWORD | (val), power->asb + (reg))
-
 struct bcm2835_power_domain {
 	struct generic_pm_domain base;
 	struct bcm2835_power *power;
@@ -150,7 +147,9 @@ struct bcm2835_power {
 
 static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable)
 {
+	void __iomem *base = power->asb;
 	u64 start;
+	u32 val;
 
 	if (!reg)
 		return 0;
@@ -159,12 +158,13 @@ static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable
 
 	/* Enable the module's async AXI bridges. */
 	if (enable) {
-		ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
+		val = readl(base + reg) & ~ASB_REQ_STOP;
 	} else {
-		ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
+		val = readl(base + reg) | ASB_REQ_STOP;
 	}
+	writel(PM_PASSWORD | val, base + reg);
 
-	while (ASB_READ(reg) & ASB_ACK) {
+	while (readl(base + reg) & ASB_ACK) {
 		cpu_relax();
 		if (ktime_get_ns() - start >= 1000)
 			return -ETIMEDOUT;
@@ -622,7 +622,7 @@ static int bcm2835_power_probe(struct platform_device *pdev)
 	power->base = pm->base;
 	power->asb = pm->asb;
 
-	id = ASB_READ(ASB_AXI_BRDG_ID);
+	id = readl(power->asb + ASB_AXI_BRDG_ID);
 	if (id != 0x62726467 /* "BRDG" */) {
 		dev_err(dev, "ASB register ID returned 0x%08x\n", id);
 		return -ENODEV;
-- 
2.25.1

