Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FE2A646B8C
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 10:09:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230211AbiLHJJp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 04:09:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbiLHJIw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 04:08:52 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 753EE1AD96
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 01:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670490531; x=1702026531;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=IRxyjKwx8MYOWiyaUgXq4MZ0RFREaiW9N9dB3Mi9UhE=;
  b=p6aX6u+UrQ3HaID4Q3oetYJT7RXyLrv9NZD4pPm9aspzxU8DPoio5ti5
   WiXfPKKMl5q31oyoYKWBp4Pvz7JmKKmbpVvVcnslReB8mlyTcJvioNEoB
   1e1xfycRQh5pNMoLOKZVeuQNvWR55lFvS5oZEnA3bRiq4+rp2ToWifhQr
   VkT+9zMr5wOZuXUPerGcKvDnhyaw+XpUXSmMZjh2sU7lv03atqDvS63XU
   kJY9YbLvHCERiIix7H6JNTaMfBhuYEfFAOq3lUOUr/Shmq36GVfS3x4IB
   xhvV4C18GJfQLbYWh+gNrWfldQM3C+VRu2NAiTytv5Ij5AlXha0aIymdw
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27831353"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Dec 2022 10:08:46 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 08 Dec 2022 10:08:46 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 08 Dec 2022 10:08:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670490526; x=1702026526;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=IRxyjKwx8MYOWiyaUgXq4MZ0RFREaiW9N9dB3Mi9UhE=;
  b=E5eBGwk3O4uELi1QeY4FAwbVFQN4mT7uUaF+NCVWdBRdIr79yQjeelSe
   Na4UGZQJXG6j+P1N8GxNXkCaI4oPWrB4vv3p5ngRG1LcvMoMsjHKUv5W4
   HC+cFqKKz6bnD2uHWuZDFJTuvdK56SvEoT+xn8v+A0hU8m6iYQR5cowTE
   8onomeH7xust0UVQSBG8pyw8swpdCv0Dfwg5jWNTEqDuOuS+lbBT15tBQ
   mBtXNDaD4Bu6T/VX+dBSEbvMllm+sXn50+LzwzY+n/BXkX87Ub2mCwzTj
   trt8lLzxM6oVZrh/zz/sGkhDW6cyEqJzB84fVLuSWRgGI63k7U1eNu6BT
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27831352"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Dec 2022 10:08:46 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A2105280072;
        Thu,  8 Dec 2022 10:08:46 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: freescale: Add LVDS overlay for TQMa8MPxL
Date:   Thu,  8 Dec 2022 10:08:42 +0100
Message-Id: <20221208090842.2869374-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221208090842.2869374-1-alexander.stein@ew.tq-group.com>
References: <20221208090842.2869374-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds an overlay for the supported LVDS display tianma tm070jvhg33.
The display timings have to be specified explicitly. Using the typical pixel
clock, the LDB clock can not be configured as the 7-fold of that.
By setting pixel clock to 74.25 MHz, LDB can be configured to exactly
519.75 MHz.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
To be hold I'm unsure where to list the overlays. I checked other overlays
and opted to added them at the end of imx8mp section.

 arch/arm64/boot/dts/freescale/Makefile        |  4 ++
 .../imx8mp-tqma8mpql-mba8mpxl-lvds.dtso       | 61 +++++++++++++++++++
 2 files changed, 65 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index ef6f364eaa183..9eedee68413b2 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -97,6 +97,10 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dev.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-wifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-wifi-dev.dtb
+
+imx8mp-tqma8mpql-mba8mpxl-lvds-dtbs += imx8mp-tqma8mpql-mba8mpxl.dtb imx8mp-tqma8mpql-mba8mpxl-lvds.dtbo
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mpxl-lvds.dtb
+
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-hummingboard-pulse.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-kontron-pitx-imx8m.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso
new file mode 100644
index 0000000000000..ea44d605342ba
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtso
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (c) 2022 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Alexander Stein
+ */
+
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	compatible = "tq,imx8mp-tqma8mpql-mba8mpxl", "tq,imx8mp-tqma8mpql", "fsl,imx8mp";
+};
+
+&backlight_lvds {
+	status = "okay";
+};
+
+&display {
+	compatible = "tianma,tm070jvhg33";
+	status = "okay";
+
+	panel-timing {
+		clock-frequency = <74250000>;
+		hactive = <1280>;
+		vactive = <800>;
+		hfront-porch = <64>;
+		hback-porch = <5>;
+		hsync-len = <1>;
+		vfront-porch = <40>;
+		vback-porch = <2>;
+		vsync-len = <1>;
+		de-active = <1>;
+	};
+
+	port {
+		panel_in_lvds0: endpoint {
+			remote-endpoint = <&ldb_lvds_ch0>;
+		};
+	};
+};
+
+&lcdif2 {
+	status = "okay";
+};
+
+&lvds_bridge {
+	status = "okay";
+
+	ports {
+		port@1 {
+			ldb_lvds_ch0: endpoint {
+				remote-endpoint = <&panel_in_lvds0>;
+			};
+		};
+	};
+};
+
+&pwm2 {
+	status = "okay";
+};
-- 
2.34.1

