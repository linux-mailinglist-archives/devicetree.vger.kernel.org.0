Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9111264C676
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 10:59:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238051AbiLNJ71 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 04:59:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238029AbiLNJ70 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 04:59:26 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB41715721
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011965; x=1702547965;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=MK+y0H9ijIi5+S6z2ZIdRRCJwfa1L086SnsBn7LmBKQ=;
  b=I+l9f5XjDFdADlfZ4P6mOoh0USs71BQPGMfRpKChZvjh86WCwzZRlORs
   zJbkOtiyofzjjqVqScsRdu7LdiNF7TWIl85tGdmJsmqKNxuaXPXA7DB4P
   3acnm8M/KbW/gyxdqSRXfmOZAMm89BxVym/s+0O4TipjAPvfP4OLeH4tX
   QJ9Mka77LZddmWlEJi4ermQ46FR7DF+ogWUmdm+KKT1TajJ7jgkYEQlAF
   PUtQadRhKluWYf3z4iHUC+M2MRnxCFDG8zTBYguu8fwN/EEuSWmIYuF/t
   bj5/EqrqXFzkODZhzKjq58iQaZlpadPphlo5oolxjrXAwc/vmNmQXGkwC
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943339"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 14 Dec 2022 10:59:23 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 14 Dec 2022 10:59:23 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 14 Dec 2022 10:59:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011963; x=1702547963;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=MK+y0H9ijIi5+S6z2ZIdRRCJwfa1L086SnsBn7LmBKQ=;
  b=LeewLR2l1a7QAj++eHIVKUSes7wetMPNpD8UvUDFtIvEHR52tjj9d15t
   JvlIRduPeHHq+qQA3CYwKiqUGbmDEk2ZTQp9axqyqhUu6orOupaci2f7/
   wL67HNo2556D1V0MG/BcLN4F62zRozdl8i1BwuJUl03W5fxAOvtnB/CR3
   9OoYSLMn49Lnri4/7XAo6agrFM4yDNYn+SOgsNXhYT5PSZ/pPf9Pwlp/P
   pOIVlYA0YSnrXcACvVQNAOjnbumsIkWa32F0lyIYuXUHauwsgrCELo0l6
   QDAWkN0qOnrvMHMSbVlE0e4A9nrXCrQE9hWR/5cDNbro5x5qknNMIpbA/
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943338"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2022 10:59:23 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 1BC3D280071;
        Wed, 14 Dec 2022 10:59:23 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/7] arm64: dts: tqma8mpql: Fix temperature sensor compatible
Date:   Wed, 14 Dec 2022 10:59:11 +0100
Message-Id: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
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

Use the correct compatible 'nxp,se97b' as it is an SE97BTP chip.
While at it, fix the node name according to device tree spec
recommendations. The EEPROM is a separate node anyway.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 5 ++---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi         | 5 ++---
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index a3340814099aa..f7f657b007a18 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -516,9 +516,8 @@ tlv320aic3x04: audio-codec@18 {
 		ldoin-supply = <&reg_vcc_3v3>;
 	};
 
-	/* NXP SE97BTP with temperature sensor + eeprom */
-	se97_1c: temperature-sensor-eeprom@1c {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	se97_1c: temperature-sensor@1c {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1c>;
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
index 7bd680a926ce7..ebc29a950ba9a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
@@ -63,9 +63,8 @@ &i2c1 {
 	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
-	/* NXP SE97BTP with temperature sensor + eeprom */
-	se97: temperature-sensor-eeprom@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	se97: temperature-sensor@1b {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1b>;
 	};
 
-- 
2.34.1

