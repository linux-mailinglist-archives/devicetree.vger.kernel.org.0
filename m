Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BB6F6B07B5
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 14:01:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231526AbjCHNBF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 08:01:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231389AbjCHNAe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 08:00:34 -0500
Received: from smtp-8fae.mail.infomaniak.ch (smtp-8fae.mail.infomaniak.ch [IPv6:2001:1600:4:17::8fae])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28D8D746E6
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 04:59:56 -0800 (PST)
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PWsgD3fH5zMrRwQ;
        Wed,  8 Mar 2023 13:53:12 +0100 (CET)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4PWsgC6tjzzMslsT;
        Wed,  8 Mar 2023 13:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pschenker.ch;
        s=20220412; t=1678279992;
        bh=y6j0m4/VStBN5HBf/0nS/vbecd2JQ1gf/jtUCNvtOlM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=MRaoFWh+migoH/IRtLJL6jV4Cna6nt8gPVQINS2aaKvR/mkHITrzpD2lUV/O/2Lg3
         CRxgenV2Zv39H6gs99jYEveWfEZpRSvBkCnLDYMFdbXz/kzrU7Z/9hsTzNOTv3t/cp
         aU3N4rqv5EFLfdBPqrGEyl1aGpvkKq6pXhFU+ARg=
From:   Philippe Schenker <dev@pschenker.ch>
To:     devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 10/25] arm64: dts: colibri-imx8x: Add pinctrl group for hdmi hpd
Date:   Wed,  8 Mar 2023 13:52:44 +0100
Message-Id: <20230308125300.58244-11-dev@pschenker.ch>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308125300.58244-1-dev@pschenker.ch>
References: <20230308125300.58244-1-dev@pschenker.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Philippe Schenker <philippe.schenker@toradex.com>

The colibri imx8x contains a dedicated gpio meant for HDMI
hot-plug-detect. Add a pinctrl group to make this usable.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

 arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
index 2cc94589c36f..c6aaf6aeab07 100644
--- a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
@@ -218,6 +218,11 @@ pinctrl_gpio_bl_on: gpioblongrp {
 		fsl,pins = <IMX8QXP_QSPI0A_DATA3_LSIO_GPIO3_IO12		0x60>;		/* SODIMM  71 */
 	};
 
+	/* HDMI Hot Plug Detect on FFC (X2) */
+	pinctrl_gpio_hpd: gpiohpdgrp {
+		fsl,pins = <IMX8QXP_MIPI_DSI1_GPIO0_00_LSIO_GPIO1_IO31		0x20>;		/* SODIMM 138 */
+	};
+
 	pinctrl_gpiokeys: gpiokeysgrp {
 		fsl,pins = <IMX8QXP_QSPI0A_DATA1_LSIO_GPIO3_IO10		0x06700041>;	/* SODIMM  45 */
 	};
-- 
2.39.2

