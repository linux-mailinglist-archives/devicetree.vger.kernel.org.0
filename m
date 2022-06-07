Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16BB254031C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 17:53:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344580AbiFGPxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 11:53:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344588AbiFGPxO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 11:53:14 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C8A82BF0
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 08:52:58 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N7QM9-1nhqx01R2T-017j9a; Tue, 07 Jun 2022 17:52:47 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH] ARM: dts: bcm283x: Drop unnecessary properties from dpi node
Date:   Tue,  7 Jun 2022 17:50:28 +0200
Message-Id: <20220607155028.42029-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:WcrKzCO5nzFZCPjgw/ARjO/8kBBFJxi1m5u17jpWQuf6AyHczGC
 REaLjym8bhoQTPpx1IWgna5qtKb/+5z4BHWjQmTeJ6ang6H0PdlW2vku17XJ5glT4vJwIln
 jyGjf6TwOJG4BeR4Tc6TVMJLj1+8fmVIoitvYz+HHYeuxWfduuajunPnEt1ScFNHZx90zSD
 PpSApGxFmtVFceqJ455mA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:0Zjy5MvneHM=:SI//QI7KJNXxnL6S40Sy1w
 Ypk8+4ZEhCexU9vqX9IE3E98XQcdGl+EOXD3BEhCFV2Lbtvd+bJV9+XOR7Z0f7xi+22tZhgcj
 Fpb/UQBwtwHNh8hUq94SC/fz+CnLew/Rj4smXvkeKrP0kBON1RS0v6I3SIYskiu0aF4QY6LIl
 rzmwa8IvK/44fyUXpITzKSiYlXZmdAsztqpPXz2o7fFP61jqr8btQrH798LjAN2DL7wbN/kU8
 snt2qPRBcy4Sd3NgT+d7V+mil1vujni4Dhac2io2kEtVXLCmU8sg772a4Xug4X5HEolRo6aSq
 ZSunEDwmZRVqpKccvhd1yeXG94gXQ4inSsN02TsW5XBPCZmzTbimeJ+ZuHHgdB59lP7tgRxC2
 93Hi4VnbJloV7IQ+xG9OMLIAkDr749wQwarPRHb769JkcMGTakb/fCGbduDqyOywoTZR0xfWM
 0AQG/YK7vXuV5NAc6C8FKpH0DaaI/5uxmSHvdx1EcHT4lavrVdyvG9qymse97eDzRLnkAJEpr
 g/3ecxfClUdwRpwCyXcGH+NeRX1HqTE9SdsWko70yURMCQHoHSZ5oKFsdnxZgA83iHcCq5tF+
 li2uDBB89/ds4YuYwTRceSETb57U1nCU3wDMyG2/iONccSgHxjZyrFSifFWtakfWe3Rmt9udO
 MiHJZPxXOLqq9eTTA/vxNysRgdm7v3gMcZXA6x8rad6cc5JbAPLRCxRYKea+7ai+DC6CE3da8
 3Q3BySpaYMOtibC6IyTTRkZwp7rGr9OyA5/8n2eYX+0w2mlZ3NhZn4rhNPA=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since commit 094536003e06 ("dt-bindings: display: Convert
VC4 bindings to schemas") it has been defined that the properties
'#address-cells' and '#size-cells' are not necessary for the dpi
node. This results in a warning during dtbs_check:

  dpi@7e208000: '#address-cells', '#size-cells' do not match any
  of the regexes: 'pinctrl-[0-9]+'

Since we don't need a reg property to differentiate between
multiple ports, drop them from the dtsi file.

Suggested-by: Maxime Ripard <maxime@cerno.tech>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm283x.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index c113661a6668..6f99b70e1db0 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -352,8 +352,6 @@ dpi: dpi@7e208000 {
 			clocks = <&clocks BCM2835_CLOCK_VPU>,
 				 <&clocks BCM2835_CLOCK_DPI>;
 			clock-names = "core", "pixel";
-			#address-cells = <1>;
-			#size-cells = <0>;
 			status = "disabled";
 		};
 
-- 
2.25.1

