Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F8975279CC
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:27:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231372AbiEOU1N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:27:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230016AbiEOU1M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:27:12 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB122EE08
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:26:46 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MzQwa-1ndDft0Jto-00vLjH; Sun, 15 May 2022 22:21:21 +0200
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
Subject: [PATCH 05/11] ARM: dts: bcm2711: Use proper compatible in PM/Watchdog node
Date:   Sun, 15 May 2022 22:20:26 +0200
Message-Id: <20220515202032.3046-6-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:0jzGuZpTigtObmzVR5ZyHvgD+0Dbhv2L1UAKpoafb+ZMxfpFCkE
 geN+ap+GvnT/Pyxp6i60JZGKNI5GO2ias3FxugPbmLUrdEcFqlrdm+S8e5z4e1H+9oGzdvs
 jgDCzHeMlUfY9LsTpBX7+mmB1JHnr7uwoHivPre49YF5SySW1wiDvYuAd8tEJCdOp8Vg1ih
 1ydZwdqn3b6a9C3fxbTKg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:jv/rFXgy7yI=:+diqKzL2kc5CcIXMGRq94u
 dPddwGnMAOxa1/MftfyN8OSu9Od8VWlqujEqPYCKap94h4UptOz0Tx2T6xIMtwJnPplz+ivII
 dJYCSLIU4158fHPyjkaTYQaj8CSaFoLCKp4zMP1qpUqvGnJCTY/MzAQiO/Zx+vbc5prFnlkbk
 ClFaWLaLJIrtievgUR4L5A3ySjYgG6yjr0oLzRCIAoVKBmeoChNPVm/WoCdutEgDHGnTmA4iR
 vHHLaq8GyIJdi+uaUPgQatUR73v8JHvcvoqSK673sDafhkRBhODkRc1zIYaxQTRX2I7sr/90A
 P9UZfBREwkBXukD6tr4EmnpSVtFd8F/ASMBRe9XX9EF9Y0BAo41jx5LVKmh+/jZ4xbxUAt1jE
 cpbkv+FD4fYNY14lPbOlWa22rTKzyAY98/Hy4I/vhBM5dOKsdXcKyzNwEzpujJzj1qRlK4GDx
 yFmv4XCHjmLkHwcOOU5QVSRaJ5LtPjWvikzO2RsZXUAvSxRokQhCfRj8jRMyh8yg9wA12wZmw
 5z3WySb9EsNLR/KXDXKgQEUqdwhhsfnikVOz+GyOFzGkngtbvs2ZOAd2HsNcQGaFIKJxe1ggk
 67DvWnCJlxGSVocD+0yV0YN6x0NrImsJh8psECletnnffqvj0oTQxKXAyiBRWPHen8m8IABWH
 6b4Ll9FrCMrX9JKAsyOlMoYgJdShCNRT+cm0O718f0Z9CZMt1zMc9IWSL1eNoofVBqXT5rG1i
 KuJWMs/fhp6lgnlP
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

