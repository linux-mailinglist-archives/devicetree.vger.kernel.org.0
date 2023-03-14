Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 012796B8FCC
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 11:25:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230139AbjCNKZY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 06:25:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230515AbjCNKZE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 06:25:04 -0400
Received: from smtp-bc0e.mail.infomaniak.ch (smtp-bc0e.mail.infomaniak.ch [IPv6:2001:1600:4:17::bc0e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DE4935B7
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 03:24:32 -0700 (PDT)
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [10.4.36.107])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PbV4p3Z36zMqPvs;
        Tue, 14 Mar 2023 11:24:26 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4PbV4p0DJRz2N3f;
        Tue, 14 Mar 2023 11:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pschenker.ch;
        s=20220412; t=1678789466;
        bh=LMCwVVSZb/2ruE9hHglUvviPdNE8OxkWFLUjNRx9xdY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=jA6PDwLvFN4+Wm7sm0Rtu+NR5/XK9skOnIAT/d9sODx3xelUM0K7qzQGaF/LG6Cnv
         9x0vuPurGbm8tQ7g/TZrWTIBfU/Q7QyJEaT5fcmjw70dL/p4N9AOTRsZYTY/eGcG4z
         rf96/BU8Pw9lJNgy0LeeO1mRx6wbjn/pOZfj4r1s=
From:   Philippe Schenker <dev@pschenker.ch>
To:     devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        Philippe Schenker <philippe.schenker@toradex.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 09/23] arm64: dts: colibri-imx8x: Add pinctrl group for hdmi hpd
Date:   Tue, 14 Mar 2023 11:23:55 +0100
Message-Id: <20230314102410.424773-10-dev@pschenker.ch>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314102410.424773-1-dev@pschenker.ch>
References: <20230314102410.424773-1-dev@pschenker.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
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

(no changes since v1)

 arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
index 1d4e127ffa7e..cd7de71c6d73 100644
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

