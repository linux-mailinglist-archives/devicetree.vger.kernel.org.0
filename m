Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41FD6782AB8
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 15:40:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235454AbjHUNko (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 09:40:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235488AbjHUNkn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 09:40:43 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1A1EE2
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 06:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692625242; x=1724161242;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=gCqCeA9Mhl1BSzXcnOjCgyy15ViBEQTGSXOXayKV8Q0=;
  b=mTYJ4gRNSw+5v/Bm/uw5uIEu5ZLo2onwbAXKZ6UdUSlkAbh81umNWgzt
   f3AstFzGv3vo35HpgFqYMwJx5JPcyl/o8vnh7XtA5EfoV2sZ5w+7kgFvD
   XoCfQjnlomsInxQt8szut6g0RiAqbEf4UbjizPzJEtUqkAJ82RG7/e2ql
   r2USJTMg4b2XlA5btb/IUoEhgl6WYGDKg8oBZy1QpFqN+ji6533fEpq0h
   2afqTSIJyoZMBrRdRkgC9pSVykaRheJPJhfFY72hY2dHCdev0iuvi+KPQ
   okOKNGYrwvabQHcmMLxPedobfmDyPWE9zIU/9SBAjNyY7hqkeMrG4vdze
   A==;
X-IronPort-AV: E=Sophos;i="6.01,190,1684792800"; 
   d="scan'208";a="32542897"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Aug 2023 15:40:30 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E340E280085;
        Mon, 21 Aug 2023 15:40:29 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux@ew.tq-group.com,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: dts: imx8mm-tqma8mqml-mba8mx: Add LVDS overlay
Date:   Mon, 21 Aug 2023 15:40:25 +0200
Message-Id: <20230821134026.385752-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230821134026.385752-1-alexander.stein@ew.tq-group.com>
References: <20230821134026.385752-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This overlay enables the DSI-LVDS display chain and configures the
actual panel compatible.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  4 ++
 .../imx8mm-tqma8mqml-mba8mx-lvds.dtso         | 43 +++++++++++++++++++
 2 files changed, 47 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index a3e037e5bd8ae..c39ba0fd660f8 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -82,6 +82,10 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-verdin-nonwifi-yavia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-verdin-wifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-verdin-wifi-dev.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-verdin-wifi-yavia.dtb
+
+imx8mm-tqma8mqml-mba8mx-lvds-dtbs += imx8mm-tqma8mqml-mba8mx.dtb imx8mm-tqma8mqml-mba8mx-lvds.dtbo
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-tqma8mqml-mba8mx-lvds.dtb
+
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-beacon-kit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-bsh-smm-s2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-bsh-smm-s2pro.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds.dtso b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds.dtso
new file mode 100644
index 0000000000000..d7f0b9b80f0c4
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds.dtso
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (c) 2022-23 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Alexander Stein
+ */
+
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	compatible = "tq,imx8mm-tqma8mqml-mba8mx", "tq,imx8mm-tqma8mqml", "fsl,imx8mm";
+};
+
+&backlight_lvds0 {
+	status = "okay";
+};
+
+&dsi_lvds_bridge {
+	status = "okay";
+};
+
+&expander0 {
+	dsi-mux-oe-hog {
+		gpio-hog;
+		gpios = <10 0>;
+		output-low;
+		line-name = "DSI_MUX_OE#";
+	};
+};
+
+&lcdif {
+	status = "okay";
+};
+
+&mipi_dsi {
+	status = "okay";
+};
+
+&panel0 {
+	compatible = "tianma,tm070jvhg33";
+	status = "okay";
+};
-- 
2.34.1

