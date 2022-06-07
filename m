Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF69C542432
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:52:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242680AbiFHAsd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 20:48:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1842487AbiFHAJe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 20:09:34 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AE081F0A7B
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 13:43:04 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M1INQ-1nvv9A1KiQ-002nl8; Tue, 07 Jun 2022 22:42:54 +0200
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
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V3 05/11] ARM: dts: bcm2711: Use proper compatible in PM/Watchdog node
Date:   Tue,  7 Jun 2022 22:42:20 +0200
Message-Id: <20220607204226.8703-6-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607204226.8703-1-stefan.wahren@i2se.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:zELN2rQeacuGlbrII61qEELxj982ZGzztwLFEicqtg86t/fczcv
 ZYHzq8HttUOpkM2CcqlAPiSXDXEIiI3X8ReIoWENpfCroMkFQ3yBTdr350NXYUW/uRFeMT1
 YWPQlAwMKKh+uWB6JkJb1AUjpn/+qd07CwLX1J5BpTqpGi9gLcBXHePapsO8btNyIpT3b74
 b4xipHoKeoCL6Ccd0vI/A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:tL4oKOIphs0=:NSEbR8dyNyTRa4yE/ygb74
 Epz/7HgTjBZLbEFHIrpxccUKlTcn8SJZEAS/syBx1A6rAg1c8PiL4P+Z9PEnd/Sn85d88pBiT
 ILcZg3xlPDIkj2jzhdpDQqqELNW5ERb+Gvwpcq1yVLVr0lT0PqLMNVbmh+uTqErG9MFsrwok6
 qSgwJt3D7NAP4+HLNJO4+RZLacf+04wT2ITqW3RVXvQ808SY/hvRMup7S3CKO0yPfUgw+rJaD
 Glt0Y03AeLdhycA3vQ/T2pO2H/QQUBFXv+lWxwWR8zrNaZrIXenIQpBveT+IgwkdVedPvzks1
 BIvnzX5N8SyYm3wTOOp+Mwa9ZFNOyg8wkNT3dGZ9MUGX0XaVGuJk57rvZVeJVVBSW+1WNJHku
 BKuYYxhx09xqH+g6ZBYergNrw3VbyPn7C5ujMZTSQv8bqngX7MF9oA4YKkpGZ459tRfS6appb
 ajWfqHGO1SFLemwZrFT+dobW8e9WGBklvUWLUc+00z2V4NsL16Vc5eXoF46WJHWf4e2rnSils
 6zNUwc9BTRnr58jW9zoJCcdfKGS8ubtindBST6lkckTMfReih7NJB9XZFz6F9Z6jhphPmUDTu
 /H+r3H5cpJct+nQm/ZxXLtiuhkh08KXutsMb4dDNY/39Uimc02kbV7EAxFl3f2IcHFB5InGTV
 zX4kMNvYTcIXxfdqEvWlakHLaLixshX04eBiGsA7B1Wok6LlyG/gvH11eHBNES42A87ob2dcO
 uV3tMxJLXGZY/WWm3H8vALixXwMBI0w4GodV5QiQk4Ak8lBVkLRedboDio4=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

A new compatible string was introduced specifically for BCM2711, so make
use of it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm/boot/dts/bcm2711.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index cbb47e2c9434..5eca5207c212 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -107,7 +107,7 @@ dma: dma@7e007000 {
 		};
 
 		pm: watchdog@7e100000 {
-			compatible = "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
+			compatible = "brcm,bcm2711-pm", "brcm,bcm2835-pm-wdt";
 			#power-domain-cells = <1>;
 			#reset-cells = <1>;
 			reg = <0x7e100000 0x114>,
-- 
2.25.1

