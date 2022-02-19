Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 766674BC85E
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 13:08:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242228AbiBSMJI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Feb 2022 07:09:08 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:41686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240894AbiBSMJI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Feb 2022 07:09:08 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86D9366608
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 04:08:48 -0800 (PST)
Received: from localhost.localdomain ([37.4.249.169]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MOQu6-1ncLaP2beg-00Prwh; Sat, 19 Feb 2022 13:08:27 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org,
        Maxime Ripard <maxime@cerno.tech>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH] ARM: boot: dts: bcm2711: Fix HVS register range
Date:   Sat, 19 Feb 2022 13:07:55 +0100
Message-Id: <1645272475-4096-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:CEQXljQlq99kCIS1ovn802odaTpnYacaS+3Ogj8ElXNPPTDkElg
 cevyNxcrsfhxgAcO3zh9TnJQ8tNG++GeF7m7PnzVThx3U3a4mqSSI1YISSw4Xjo7TJfx4Hj
 RgkaEzkrOc5oZNEXwZC0bjPMYr6CwIcHIGgDXl9/Ku10S8GuDZGkJqbBKRf43oeNd7qDgWm
 TYXSJFLGa6v6kyyGVyDoA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:iXlHHJ9AljU=:rI/f2rBnM3wxUNc8i0hOwm
 YlzY3n5YrYROV2XTtERbPCXy5EpV/AiVbIs//ZBP4gA9yORNJr52S7hrxgM/G3f12D/5WQjR2
 HNZcA9SB9kFIEyIM8eGJV8mSW9fgerVipepbvPUzJskjIlQu/FeAmebGZ+AexPgtzyCwVolyj
 XwE045wsjCZrPZ3S8voL2QlgoDQ/VUze1GNxvNYObzjPvMFHU77gSGwo6BJYe/C3uAMtaB+GQ
 Q1KFqZOU0qNSQ2fC+Qrq6t4KehubaHYa7faZvzzrMWnqEj9DelaJGI4Q7/ktQB+ALk+bh+MJb
 UYoIa5yKe08T20ZMP6DiS2M0FMqI/4kGtUcOjEsdz7DGCC9KpXSFqOAYqO1GO43NxVNMlpljm
 cS5UPtysEKqj0V7WvLDL4GVyyT2thy9xFV0YOrWVMhGKQihiZlXzMyiYtflQuJkE8Hqlzt3F8
 bN+8g3LD/+TpsiXBExCbxcVn2wj2YvGPkDvXLoP0+cxjNGgcYKlCFQ0HBGWSJeg0HzrC8QN62
 PuzyTGNZFLxl8+bY3HFcsVLiABWp+0VFuoO+lmCQUcdgi3uwyIBtESCibvXtaFfgY/cjHh2cH
 NYtH9Km0dGxZ+OXEncmXtmknpdiAdNz2zXLCZDFWaAhEXAdyphvPKkq991dEk+dmLzhNMRdKZ
 6zKoYgSM+fmqLPgcuvd7mJmUMF18Lncgdo2Xh17VDkNTcpQic98pNA2QKUhZQRnAhm58qAkXV
 swR2lj39dOdQicEx
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Maxime Ripard <maxime@cerno.tech>

While the HVS has the same context memory size in the BCM2711 than in
the previous SoCs, the range allocated to the registers doubled and it
now takes 16k + 16k, compared to 8k + 16k before.

The KMS driver will use the whole context RAM though, eventually
resulting in a pointer dereference error when we access the higher half
of the context memory since it hasn't been mapped.

Fixes: 4564363351e2 ("ARM: dts: bcm2711: Enable the display pipeline")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index dff18fc..21294f7 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -290,6 +290,7 @@
 
 		hvs: hvs@7e400000 {
 			compatible = "brcm,bcm2711-hvs";
+			reg = <0x7e400000 0x8000>;
 			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
-- 
2.7.4

