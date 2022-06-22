Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E624554970
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:17:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357576AbiFVLuF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 07:50:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357760AbiFVLuB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 07:50:01 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6E943D1D7
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 04:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655898601; x=1687434601;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dKQdLKDDQGDaUKXxGGBsiWhbA/ht4/Rd1rbGHp/CLf0=;
  b=mnEI66vWbMH1M4Jo80Di+ZHQbqQhn5Pwx70HE3Yu8nRgeqk7/nGKfueN
   1BVBAOpQaZ2RhdnRmpQ6RTgHOUaVqScWxp5aBZxF2OVqYUr23plNhx3UX
   R3qnszGOE4gYDJ1VCNv07mvzEeT2njHBHTDbE2oytYipYR6SdGOZTo/TQ
   lonYUbqM3l7Q7BRMkRF4WO0sAaXzGKogmWXSlUjEjKhL7KGgWlQlWaCj8
   Tsd732oqr9HV81DLVAR8FPWkp7JVpClZqBOJ+7q9kR2TqedilzrlqFlP6
   +j78HILka4zBPwiEOLiZXIVm3/tdd9LcI68Pr9fqo7v5fszgvPLPrF1du
   A==;
X-IronPort-AV: E=Sophos;i="5.92,212,1650924000"; 
   d="scan'208";a="24603211"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 22 Jun 2022 13:49:56 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 22 Jun 2022 13:49:56 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 22 Jun 2022 13:49:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655898596; x=1687434596;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dKQdLKDDQGDaUKXxGGBsiWhbA/ht4/Rd1rbGHp/CLf0=;
  b=EPcSOoAGeCdHoyFttdijZo555gZ4Vu86rK6p/Tf82o+ETJtXxM5kHNuM
   TkvJ4KUPltkZlPygztZatxluqtB1QRmZXBEdkx6yZjU4oAX+u4fE4XJwp
   WYboeG2OixfA5OT3tbsoTzarHvETms6YnSxevpRhPnNlS6HCKQnnB4EUt
   YVoHgExOhdBdltrSl0WnKJhYrLA2s877J/k9VWNwtBRegkN9SruvcE6W0
   qk++pQ8OKgAPiDp5xnC6J9edMphYwDf3BGV88xa7YyuzihG1VmRB2V7z8
   yLXFhMe5f3NgJ4oDTsGSLZLXv767BApYElFmWHX8nIhV6vql3O3bxb4V8
   A==;
X-IronPort-AV: E=Sophos;i="5.92,212,1650924000"; 
   d="scan'208";a="24603210"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 22 Jun 2022 13:49:56 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id D8FEC280072;
        Wed, 22 Jun 2022 13:49:55 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@tq-group.com>
Subject: [PATCH v2 3/3] [DNI/WIP] arm64: dts: freescale: Add LVDS overlay for TQMa8MPxL
Date:   Wed, 22 Jun 2022 13:49:49 +0200
Message-Id: <20220622114949.889274-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220622114949.889274-1-alexander.stein@ew.tq-group.com>
References: <20220622114949.889274-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds an overlay for the supported LVDS display tianma tm070jvhg33.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This is the current WIP LVDS overlay which demonstrates how the compatible is
added this late. The display is not fixed and can optionally be attached,
but some connections like power-supply etc are set.
To get this overlay to work or even compile, imx8mp.dtsi patches are required,
e.g. [1].

I also noticed on issue when using ldb_lvds_ch0 (the endpoint node from lcdif):
Apparently in the overlay dtc is not able to determine that the phandle refers
to a node which is named endpoint. See the following warnings:

  DTC     arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtbo
arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtbo: Warning (graph_port): /fragment@4: graph port node name should be 'port'
../arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dts:26.15-28.3: Warning (graph_endpoint): /fragment@4/__overlay__: graph endpoint node name should be 'endpoint'
  DTOVL   arch/arm64/boot/dts/freescale/tqma8mpql-mba8mpxl-lvds.dtb

Using the configuration as subnodes to lvds_bridge (commented out right now),
the warnings are gone. But this seems a bit tedious. What is the right way
to configure this?

[1] https://gitlab.collabora.com/martyn/linux/-/commit/3830154763ff4a1c77ae0118d76bdb0465e94307

 arch/arm64/boot/dts/freescale/Makefile        |  2 +
 .../imx8mp-tqma8mpql-mba8mpxl-lvds.dts        | 44 +++++++++++++++++++
 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   |  6 +++
 3 files changed, 52 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index f814595cd351..64e999f006e1 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -84,6 +84,8 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mpxl.dtb
+tqma8mpql-mba8mpxl-lvds-dtbs += imx8mp-tqma8mpql-mba8mpxl.dtb imx8mp-tqma8mpql-mba8mpxl-lvds.dtbo
+dtb-$(CONFIG_ARCH_MXC) += tqma8mpql-mba8mpxl-lvds.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw74xx.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dev.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dts
new file mode 100644
index 000000000000..1d57e96d669b
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dts
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2022 TQ-Systems GmbH
+ * Author: Alexander Stein <alexander.stein@tq-group.com>
+ */
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
+};
+
+&lcdif2 {
+	status = "okay";
+};
+
+&ldb_lvds_ch0 {
+	remote-endpoint = <&panel_in_lvds0>;
+};
+
+&lvds_bridge {
+	status = "okay";
+
+	// ports {
+	// 	port@1 {
+	// 		ldb_lvds_ch0: endpoint {
+	// 			remote-endpoint = <&panel_in_lvds0>;
+	// 		};
+	// 	};
+	// };
+};
+
+&pwm2 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index d8ca52976170..772cbb664b2a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -106,6 +106,12 @@ display: display {
 		enable-gpios = <&gpio3 20 GPIO_ACTIVE_HIGH>;
 		backlight = <&backlight_lvds>;
 		status = "disabled";
+
+		port {
+			panel_in_lvds0: endpoint {
+				remote-endpoint = <&ldb_lvds_ch0>;
+			};
+		};
 	};
 
 	reg_usdhc2_vmmc: regulator-usdhc2 {
-- 
2.25.1

