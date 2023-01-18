Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D198671181
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 04:08:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbjARDIs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 22:08:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbjARDIl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 22:08:41 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9CFE51C71
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 19:08:34 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C652E855EC;
        Wed, 18 Jan 2023 04:08:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1674011312;
        bh=mDQsj5fklnawGJhk5ScBP5gaOrvAw/iYRGQn0OxJ4u4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=MmnGlm4iNK3pbgd/DirTHgmTtU41Wiqu1zopdkTlnr+M7gXKmCKkcD32R4cpfTDD6
         RROcuyYzk8vk3YUu6Vpp2kDRM71nIHfYk7iYw8VHicMOl7TtCUhEBRVQKfIARoVbPa
         IRMxfzphl/SgxOTrtraSV91tVGOiHzfCxDIv1q7mn0Tav3cP4w4UvLPk7jwFflW9Re
         8lps3LSNk4vEV/bxfjec6kXkKfngx8nJXfCMxlvfQBN8nEdGkD+xD/llrPP/iZLz1Q
         NxA+czSHnXfSRuLoPbrVpac4pl1wN441Yh9psq1GFXR100TQ+uL1n64oDux7Xv+9yH
         ZftBjlCxMtpWQ==
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
Subject: [PATCH 3/3] arm64: dts: imx8mp: Drop sd-vsel-gpios from i.MX8M Plus DHCOM SoM
Date:   Wed, 18 Jan 2023 04:07:57 +0100
Message-Id: <20230118030757.254086-3-marex@denx.de>
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
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index 21b1d75a9a1cf..fb87a73859830 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -239,7 +239,6 @@ pmic: pmic@25 {
 		pinctrl-0 = <&pinctrl_pmic>;
 		interrupt-parent = <&gpio1>;
 		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
-		sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
 
 		/*
 		 * i.MX 8M Plus Data Sheet for Consumer Products
-- 
2.39.0

