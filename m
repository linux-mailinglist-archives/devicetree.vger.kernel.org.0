Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B864671184
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 04:08:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjARDIu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 22:08:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjARDIl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 22:08:41 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07F6051C76
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 19:08:34 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 1E94A855EB;
        Wed, 18 Jan 2023 04:08:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1674011311;
        bh=yCUvH3cbu/3dVgZ0vX9TpRIh92dbwYC6KyliDAVQsQU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=wHv04TSdToyhbZE1xWEuQ4rPinHdmjT3HMX4p57M1CM6dvxo53d8hVYgRLEZUom4+
         2XA+jwfbYaMOQQ94eHx+V/87HKE6KvkW5LBEgWMmrq8krK4SbeNlmqo0UT5+NiARkm
         kfSGKtsyH5fyLfEbFaQUuE2Jo7ld54DMAy7FEJOl5vzpRzYZdEqsiXZ2FYceQS6+Xl
         eAv/fs1S1nnDFjJ0KCIRQU60ha0uqv7cU7wN9OzjTcYSW7571FVRV7lZuci4dCBbOz
         SLzUYTXxsCO4ATtdhVBgvF6MLaERMKtJ19CHRwyuGQ6jzkcc/ZzjT7zUQkbQJ+zVyE
         n8VMMvYkbewGA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Andrejs Cainikovs <andrejs.cainikovs@toradex.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: imx8mp: Drop sd-vsel-gpios from i.MX8M Plus Verdin SoM
Date:   Wed, 18 Jan 2023 04:07:56 +0100
Message-Id: <20230118030757.254086-2-marex@denx.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118030757.254086-1-marex@denx.de>
References: <20230118030757.254086-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The VSELECT pin is configured as MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT
and not as a GPIO, drop the bogus sd-vsel-gpios property as the eSDHC
block handles the VSELECT pin on its own.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Andrejs Cainikovs <andrejs.cainikovs@toradex.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Philippe Schenker <philippe.schenker@toradex.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index 6a1890a4b5d88..a6e317af272fe 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -453,7 +453,6 @@ pca9450: pmic@25 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_pmic>;
 		reg = <0x25>;
-		sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
 
 		/*
 		 * The bootloader is expected to switch on LDO4 for the on-module +V3.3_ADC and the
-- 
2.39.0

