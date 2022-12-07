Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2226E645A07
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 13:42:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229663AbiLGMmU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 07:42:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbiLGMmT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 07:42:19 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66B0C2D1CD
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 04:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416937; x=1701952937;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=MK+y0H9ijIi5+S6z2ZIdRRCJwfa1L086SnsBn7LmBKQ=;
  b=iDf+WfdWxb7nNluJqiO/Gp0TecgmeW0c9udy1n+BK3roamN+24MffqMu
   N27+/EEAyPYNX6mwQctgcu8fCbQoLe5s9ZWJqtROt7U68gGQOPSxrjk1H
   zyBkqL1CNCrkoepO02kHCpikqf8xMO7t52SJ/Mr2RXzRndSA9dtEG3ndf
   ef+0Msn26JC7dlffpKdAbCFlyjqVUSxuKZ7955FOk4LjEk//QlegZonYZ
   PPxgu09hx0OC7k36fxs3wFDxmoz1tgH8ZYZG5gY11Ivv2UhJMtA1aMPnE
   FB8NjH+dHiLeTa4AOTXj4/AhKNUoP4OE0ypGwe41QdnMmd4zT+SLW7anN
   g==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811112"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 07 Dec 2022 13:42:15 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 07 Dec 2022 13:42:15 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 07 Dec 2022 13:42:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416935; x=1701952935;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=MK+y0H9ijIi5+S6z2ZIdRRCJwfa1L086SnsBn7LmBKQ=;
  b=S4N5z+gBY/4HymMD9McAD3d3E+1mwcHYKytnFsYSCX6OMDkzd0PjftDv
   PeH4eDupUj3TOksyXperJXTw7JvcM5zhr7kNiThfjvSAOwuWS/LK0Z7cE
   GqU3XTcNyxF+gTj5eJPtZqstvkdUGP3uehdh/KK/upRP/7//bVMBrXFDc
   G9jBXweng0bkZukxPOieRIW9oqUC2LdiZP4XvLtRTIvKcnFnNNSrxc4OP
   BGB5f05GOTQv5K8tFVdJBmEolqA6CEg6fTegbqWP+Rc6Gw7scnrKiVVwC
   BzIk9+1PBiYiJN0fIKgJKkMKo2Cy+enw6pHol8H0P0IPU6dhHRTPWDdc7
   A==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811109"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Dec 2022 13:42:15 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 1A600280071;
        Wed,  7 Dec 2022 13:42:15 +0100 (CET)
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
Date:   Wed,  7 Dec 2022 13:41:59 +0100
Message-Id: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com>
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

