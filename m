Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22519703161
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 17:19:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242331AbjEOPTl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 11:19:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242335AbjEOPTi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 11:19:38 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA5A0213A
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 08:19:34 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f13c577e36so14687205e87.1
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 08:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684163973; x=1686755973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Q9CHQPW+2kek9z4eWNg1xHKXFPTlGMdDkAT/e5tNbY=;
        b=Be1sihjSryl/hg0LQ1JDnVKqLsWX6SBqtYrNcD2Oj/eMS4uyyk0+51Q4mhTPYyTz8E
         a3h8qn19412Vn3yrSolaWEjtfy99t6f9VAUxKx67qKcVRrSDSAEBLjSe5hRFo1vfKkgi
         1Waf5+g5b2UZXA4gK+7Ytw2U8EQEsjoZY11nMQiM23RvoZmrgU3YWaAc43zH3VHtnJwx
         mlLnMgSN60xyMhIguzdaxL4bbbU0lWSDXZJsexdhHonxYMHInUS42qMX3jS6hS2vbG+1
         p0PwZDM6ZURSffoQ9X71RDXU1zGWNnlIr3tHjuE0NEzwaiC26Y6PiRaCifetzFv5G2d0
         8n/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684163973; x=1686755973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Q9CHQPW+2kek9z4eWNg1xHKXFPTlGMdDkAT/e5tNbY=;
        b=bh9A9sGslYpXPLddv97gYU4gVwwazS/EV6HBJuvHja4CEujAuZCPGqAbCp7pVliRzG
         6+Av40RaqVtHr4GpBN7TycVOs7v5zV51bls8JfBi/oGywwQPv2NwHy4XJcp5dth9kJBQ
         W06IEHrvSLVwKKA7kAkCEqvv1lt6uah+l7mTCT7z+fTvZ+K03NVmWWAyeiHt0lIqGdrj
         uC9nFtXD/F7CxBXPNmyw82cd9frqFv7r3Po3j+bnp2UTxKbA7cL76OpaIl4WKleEsof0
         8TzflO255zZjEzTO/lb5vSMxEWYPqODHAbZCmDK5TTOztNm82aOK+ZLFFpmO7S5TGBRi
         HQqQ==
X-Gm-Message-State: AC+VfDzN8OvR3M6hxfIbPvzvD5nPYreB9C/chaKqzSSEKhKSIlMwaVpz
        1SiCmedixJLaULlJPMNQ0Ho=
X-Google-Smtp-Source: ACHHUZ4fyJHmL43YCP6hboBZYNNMrG7MP5whq2ax8u/eiRCyKETSlB3fq4qt2r77Fxm8zONOnVQiwQ==
X-Received: by 2002:ac2:454b:0:b0:4f1:45a7:114f with SMTP id j11-20020ac2454b000000b004f145a7114fmr6755594lfm.37.1684163972892;
        Mon, 15 May 2023 08:19:32 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id u10-20020a2e2e0a000000b002ad9df0586bsm2604170lju.132.2023.05.15.08.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 08:19:32 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] ARM: dts: BCM5301X: Relicense AXI interrupts code to the GPL 2.0+ / MIT
Date:   Mon, 15 May 2023 17:19:21 +0200
Message-Id: <20230515151921.25021-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230515151921.25021-1-zajec5@gmail.com>
References: <20230515151921.25021-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Those entries were added by:
1. Hauke in commits dec378827c4a ("ARM: BCM5301X: Add IRQs to Broadcom's
   bus-axi in DTS file") and 1f80de6863ca ("ARM: BCM5301X: add IRQ
   numbers for PCIe controller")
2. Florian in the commit 2cd0c0202f13 ("ARM: dts: BCM5301X: Add SRAB
   interrupts")

Move them to the bcm-ns.dtsi which uses dual licensing. That syncs more
Northstar code to be based on the same licensing schema.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Cc: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/dts/bcm-ns.dtsi   | 73 ++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/bcm5301x.dtsi | 75 ---------------------------------
 2 files changed, 73 insertions(+), 75 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dtsi
index 58c30e3a142f..3f8220a7a54d 100644
--- a/arch/arm/boot/dts/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/bcm-ns.dtsi
@@ -92,6 +92,79 @@ axi@18000000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0x000fffff 0xffff>;
+		interrupt-map =
+			/* ChipCommon */
+			<0x00000000 0 &gic GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
+
+			/* Switch Register Access Block */
+			<0x00007000 0 &gic GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 1 &gic GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 2 &gic GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 3 &gic GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 4 &gic GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 5 &gic GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 6 &gic GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 7 &gic GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 8 &gic GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 9 &gic GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 10 &gic GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 11 &gic GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00007000 12 &gic GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
+
+			/* PCIe Controller 0 */
+			<0x00012000 0 &gic GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00012000 1 &gic GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00012000 2 &gic GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00012000 3 &gic GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00012000 4 &gic GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00012000 5 &gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+
+			/* PCIe Controller 1 */
+			<0x00013000 0 &gic GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00013000 1 &gic GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00013000 2 &gic GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00013000 3 &gic GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00013000 4 &gic GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00013000 5 &gic GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
+
+			/* PCIe Controller 2 */
+			<0x00014000 0 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00014000 1 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00014000 2 &gic GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00014000 3 &gic GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00014000 4 &gic GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00014000 5 &gic GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+
+			/* USB 2.0 Controller */
+			<0x00021000 0 &gic GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>,
+
+			/* USB 3.0 Controller */
+			<0x00023000 0 &gic GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>,
+
+			/* Ethernet Controller 0 */
+			<0x00024000 0 &gic GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+
+			/* Ethernet Controller 1 */
+			<0x00025000 0 &gic GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+
+			/* Ethernet Controller 2 */
+			<0x00026000 0 &gic GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>,
+
+			/* Ethernet Controller 3 */
+			<0x00027000 0 &gic GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>,
+
+			/* NAND Controller */
+			<0x00028000 0 &gic GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00028000 1 &gic GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00028000 2 &gic GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00028000 3 &gic GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00028000 4 &gic GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00028000 5 &gic GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00028000 6 &gic GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+			<0x00028000 7 &gic GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+
 		chipcommon: chipcommon@0 {
 			reg = <0x00000000 0x1000>;
 
diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index d6c31ead0398..0f40812eb5a4 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -3,8 +3,6 @@
  * Generic DTS part for all BCM53010, BCM53011, BCM53012, BCM53014, BCM53015,
  * BCM53016, BCM53017, BCM53018, BCM4707, BCM4708 and BCM4709 SoCs
  *
- * Copyright 2013-2014 Hauke Mehrtens <hauke@hauke-m.de>
- *
  * Licensed under the GNU/GPL. See COPYING for details.
  */
 
@@ -72,79 +70,6 @@ periph_clk: periph_clk {
 	};
 
 	axi@18000000 {
-		#interrupt-cells = <1>;
-		interrupt-map-mask = <0x000fffff 0xffff>;
-		interrupt-map = 
-			/* ChipCommon */
-			<0x00000000 0 &gic GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
-
-			/* Switch Register Access Block */
-			<0x00007000 0 &gic GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 1 &gic GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 2 &gic GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 3 &gic GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 4 &gic GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 5 &gic GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 6 &gic GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 7 &gic GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 8 &gic GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 9 &gic GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 10 &gic GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 11 &gic GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00007000 12 &gic GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
-
-			/* PCIe Controller 0 */
-			<0x00012000 0 &gic GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00012000 1 &gic GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00012000 2 &gic GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00012000 3 &gic GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00012000 4 &gic GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00012000 5 &gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
-
-			/* PCIe Controller 1 */
-			<0x00013000 0 &gic GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00013000 1 &gic GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00013000 2 &gic GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00013000 3 &gic GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00013000 4 &gic GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00013000 5 &gic GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
-
-			/* PCIe Controller 2 */
-			<0x00014000 0 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00014000 1 &gic GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00014000 2 &gic GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00014000 3 &gic GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00014000 4 &gic GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00014000 5 &gic GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
-
-			/* USB 2.0 Controller */
-			<0x00021000 0 &gic GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>,
-
-			/* USB 3.0 Controller */
-			<0x00023000 0 &gic GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>,
-
-			/* Ethernet Controller 0 */
-			<0x00024000 0 &gic GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
-
-			/* Ethernet Controller 1 */
-			<0x00025000 0 &gic GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
-
-			/* Ethernet Controller 2 */
-			<0x00026000 0 &gic GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>,
-
-			/* Ethernet Controller 3 */
-			<0x00027000 0 &gic GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>,
-
-			/* NAND Controller */
-			<0x00028000 0 &gic GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 1 &gic GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 2 &gic GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 3 &gic GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 4 &gic GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 5 &gic GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 6 &gic GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
-			<0x00028000 7 &gic GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
-
 		pcie2: pcie@14000 {
 			reg = <0x00014000 0x1000>;
 		};
-- 
2.35.3

