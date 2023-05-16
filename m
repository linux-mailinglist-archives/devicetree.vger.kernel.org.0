Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12D657044DF
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 07:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229822AbjEPFuQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 01:50:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229915AbjEPFuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 01:50:15 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AB5040D9
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 22:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684216209; x=1715752209;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=1p1ZzL9ijDN6kyEto+V5mQcqEqMI0qS4vAA7XzP8+Iw=;
  b=kgCPA+tirA8p8yff3kBQVM2X5Ds0wCyB5pWqvdl34r+uNBuqUhR9I8c+
   55mQMQe5Ao9Cs4UR4jC1igcnMJqXcMtvbhZ7biwaaJzWuPDJkfiUT3rju
   iNNx58Dmu8DIQLNHHXfwntA28+cf2ysGBuYIQSUA9nni3csJEXdwskqrw
   K/TXGPD2cgZIV82gOJBarMznzzJSJFGozVVbDMG/zbAz5X0Rsxhprdu5a
   ipyCoqdWIamd3eRtC4fO7UTZvj+frJoAyRmCmPxDdMoibS/ceyeeOp36C
   Uvf8q2y578W4SsDGK6FLcJCUQ9hHabmIvVkhxHQG8R2hfBXNJqWzWvZp3
   A==;
X-IronPort-AV: E=Sophos;i="5.99,277,1677538800"; 
   d="scan'208";a="30921339"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 May 2023 07:50:07 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 16 May 2023 07:50:07 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 16 May 2023 07:50:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684216207; x=1715752207;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=1p1ZzL9ijDN6kyEto+V5mQcqEqMI0qS4vAA7XzP8+Iw=;
  b=e16y2YoHvIRYhA+0Pxk/VgyBn+GV9AQuhaxVgl23OBGGGpgYwAiPtWue
   zVU1HkYnULBRPAElCa8VywY863ccRi4BQtknRal+3r3JYve11kHwaE4jU
   dPQr2lCwQo4mzVB/ZpgRK8lYBFTaxr2eiTcq+3LCI4AFlLtE3+HHC3N8m
   1nFl2YPElFeZeaRh2HwVLHMMbuHu66hna9Thqtf3JF813ThiCXspeFbLd
   wee6JE/+4A10Ew8gtxyiqItJd+BlzxFe5Yb+xeEn00NFhm7VxJeowmmbr
   TO5IpVmh896LEllArSPoFJJGwdgZx9h//pCjrrrUS9BMI9oVGrbrJfcSV
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,277,1677538800"; 
   d="scan'208";a="30921338"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 May 2023 07:50:07 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7DCEA280056;
        Tue, 16 May 2023 07:50:07 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8mp: move noc node to correct position
Date:   Tue, 16 May 2023 07:50:06 +0200
Message-Id: <20230516055006.320488-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The base address of NOC is bigger than aips5, but smaller than aips4.

Fixes: b86c3afabb4f ("arm64: dts: imx8mp: Add SAI, SDMA, AudioMIX")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This patch is to actually move aips5 before noc, but the diff for moving
noc is smaller, so that's why it is this way around.

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 40 +++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 005527ea6934..39aef5fbf77b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1176,26 +1176,6 @@ eqos: ethernet@30bf0000 {
 			};
 		};
 
-		noc: interconnect@32700000 {
-			compatible = "fsl,imx8mp-noc", "fsl,imx8m-noc";
-			reg = <0x32700000 0x100000>;
-			clocks = <&clk IMX8MP_CLK_NOC>;
-			#interconnect-cells = <1>;
-			operating-points-v2 = <&noc_opp_table>;
-
-			noc_opp_table: opp-table {
-				compatible = "operating-points-v2";
-
-				opp-200000000 {
-					opp-hz = /bits/ 64 <200000000>;
-				};
-
-				opp-1000000000 {
-					opp-hz = /bits/ 64 <1000000000>;
-				};
-			};
-		};
-
 		aips5: bus@30c00000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			reg = <0x30c00000 0x400000>;
@@ -1347,6 +1327,26 @@ audio_blk_ctrl: clock-controller@30e20000 {
 			};
 		};
 
+		noc: interconnect@32700000 {
+			compatible = "fsl,imx8mp-noc", "fsl,imx8m-noc";
+			reg = <0x32700000 0x100000>;
+			clocks = <&clk IMX8MP_CLK_NOC>;
+			#interconnect-cells = <1>;
+			operating-points-v2 = <&noc_opp_table>;
+
+			noc_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-200000000 {
+					opp-hz = /bits/ 64 <200000000>;
+				};
+
+				opp-1000000000 {
+					opp-hz = /bits/ 64 <1000000000>;
+				};
+			};
+		};
+
 		aips4: bus@32c00000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			reg = <0x32c00000 0x400000>;
-- 
2.34.1

