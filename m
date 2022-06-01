Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27E4453A583
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:55:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350435AbiFAMy0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:54:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348321AbiFAMyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:54:25 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFB786FD0D
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:54:23 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MZTua-1oGeWy34IY-00WWq2; Wed, 01 Jun 2022 14:54:02 +0200
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
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 04/11] ARM: dts: bcm2835/bcm2711: Introduce reg-names in watchdog node
Date:   Wed,  1 Jun 2022 14:53:37 +0200
Message-Id: <20220601125344.60602-5-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220601125344.60602-1-stefan.wahren@i2se.com>
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:lit9xzx1b0RFKJ0ogZ14F1fIMSaO5r8PXWZoifFHj8upZsz0XlI
 GZygmRcDKdFXQDEgEzdR7V2SPUbMVCtDK1gUeZq6tZp4MB171iJ9D0qzXVSZuxYUSR04Wkf
 4pvcZRVQHiXXCF4Er4psvdD67l9g3Qrs1zmK+7nbt9LFLLu3/GWhDV6A2fFiKXKxcwtjv0v
 AFfh3fXSF+Ab3AuNSm7xQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:6NnG3nL9ZTY=:ShG3tdiBmUD1OE1jjAzj8I
 49dxgYxLcFRFUgPVVaTr5vksBiyDIYTKJSb51JgeCGKe8DjpZobSKSmYGe1AlRTUHc1nVpFOc
 yk3xsNa9wiRDmOGPa1jREl86CyFlUKCB252wpBbeEIry8XA41/boBpuAGFqre1xqD66oSb4gs
 0mt6ghj4uY3s1vXrPjoJIR9m2o/Uf8Ig3ZjcZx5zLpqrGEDxp1qN+mYe+xchZotGBZlbZI0Su
 G6D9oD8tDQqWRmQtgazMUncePyojL9g6BgqEL7GlBxxDRCm9zQxi58wBJE+jU/UzsGquUaNU8
 6hibjHV2F2IUg8aT7WkrrG4GOF7xjvor6sub7jxMHXp/1Wd8yrspE+B4vp4/9vv3PGxBbqMi7
 CQ/rVGDuiWFLjsY1KUUADDH9EYJ1ndfREA9n5KDMKSn36bLfQ11mZaZLPRsKjeoHx0QTl7wX7
 kDgekCTs1mXInqe01dbMcpDpPPrfCDOo2+K/mAeuXu2/yhATayWWpGcgXxt01kPc+dLNYhWFb
 XR1Ky7q4qq1virOvox4BpCqiJrxPkif9fteQB6lQvKDwi6zpJdeGRjyiW0JTbmVmrKF5ZU3tP
 1dpliynk9+PceZDRn537/Ench0ZpO9SQAkTEvBSIiL4fi5olKiqL1oe8bj5NPAqPjA5OIjqTK
 LTy2S1UxMzq7Ah1mnHJkmBzDwyocc5jPNXvBO7i5pqWNlxsLbuKvhNjUkukAKEduzhQlFbbPp
 T/zhRVqFdt/dE58Wg068Bc8hUdsYvTWsOZSuHBfZUw4Cl2yzrt8yE89pUIc=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

bcm2835-pm's bindings now support explicitly setting 'reg-names,' so use
them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm/boot/dts/bcm2711.dtsi        | 1 +
 arch/arm/boot/dts/bcm2835-common.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 89af57482bc8..cbb47e2c9434 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -113,6 +113,7 @@ pm: watchdog@7e100000 {
 			reg = <0x7e100000 0x114>,
 			      <0x7e00a000 0x24>,
 			      <0x7ec11000 0x20>;
+			reg-names = "pm", "asb", "rpivid_asb";
 			clocks = <&clocks BCM2835_CLOCK_V3D>,
 				 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
 				 <&clocks BCM2835_CLOCK_H264>,
diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
index c25e797b9060..a037d2bc5b11 100644
--- a/arch/arm/boot/dts/bcm2835-common.dtsi
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -62,6 +62,7 @@ pm: watchdog@7e100000 {
 			#reset-cells = <1>;
 			reg = <0x7e100000 0x114>,
 			      <0x7e00a000 0x24>;
+			reg-names = "pm", "asb";
 			clocks = <&clocks BCM2835_CLOCK_V3D>,
 				 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
 				 <&clocks BCM2835_CLOCK_H264>,
-- 
2.25.1

