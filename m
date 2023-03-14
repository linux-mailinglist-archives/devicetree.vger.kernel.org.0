Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BE546B8C31
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 08:48:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229755AbjCNHs0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 03:48:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjCNHsZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 03:48:25 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59BA53A98
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 00:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678780103; x=1710316103;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=nQBZ2SVHeCeaFAEMGT56O/10DCsscaYSwrMdNKNcXR8=;
  b=bT/QuSttHbloH10gZb3aupS3J36qskTjJAOoBmrcUr6GQR3wzqJfxafr
   +7Vh2N8xH5wUqluBorqPyTW1HyWa1pU9NZH2IWawdjRb6sAI15EcHzy1Q
   5fXIlGWNXndSk5bzkYBZPnstzS1zfQQUq6LOOjy+TnoX5uKo8wcY2YumV
   1T6ZXqGzX/DUdJrQ6Kfax9wwcW1UD7XPnkI5ySlGAHk9jACjQQbJRax1f
   OXnbx+ZIFlbYyyPPv80xn7vskBECq1GfyRv24D1MLsT852RZEBQd+X14B
   N5wXB1qmgrT2rkrkfni0UYxlpd8IiG6Tax2xTD9BvaeIHqL/T+BSs8rFl
   g==;
X-IronPort-AV: E=Sophos;i="5.98,259,1673910000"; 
   d="scan'208";a="29665646"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 14 Mar 2023 08:48:21 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 14 Mar 2023 08:48:21 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 14 Mar 2023 08:48:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678780101; x=1710316101;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=nQBZ2SVHeCeaFAEMGT56O/10DCsscaYSwrMdNKNcXR8=;
  b=j/qd93RDG36N5XtO3xpo8zeY/baWYkVAArV4ldsNiVBpnCepQvx/IK2A
   a13kwUQOR+kTL5EdM0tm7N9T2d9V6R3GfU8PAcJYCBVk0BYGLB/cSduhD
   /Fjk/QT76kBwZGevW3IyBOPHOHI4dy1ZlfyDl3Yhf1vvXCdiqju3mzrR/
   yU9Fe2KaW+WzqGqX+Gs5zqof0nZjIzLvtv2pCiKCO5/LmISdr0nydMCsB
   wIjKC4d1odZVCktdmPz1i5AQ9qb6TJ39yA4g6FLaf3i51QVC9E4utJa91
   96nYlrQKpLnOBj1CMR1wBSKB7KAYCpi4X5wxHy8eh3Mmpqhk1sPxS6YmJ
   w==;
X-IronPort-AV: E=Sophos;i="5.98,259,1673910000"; 
   d="scan'208";a="29665645"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Mar 2023 08:48:21 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 30958280056;
        Tue, 14 Mar 2023 08:48:21 +0100 (CET)
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
Subject: [PATCH v2 1/1] arm64: dts: imx8mp: fix address length for LCDIF2
Date:   Tue, 14 Mar 2023 08:48:17 +0100
Message-Id: <20230314074817.382496-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

0x238 is the offset for PANIC0_THRES, so the length needs to be greater
than that. Use the size from memory map from reference manual.

Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Use size from memory map in from reference manual

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 3cea1df83105..399858a87304 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1330,7 +1330,7 @@ lcdif1_to_dsim: endpoint {
 
 			lcdif2: display-controller@32e90000 {
 				compatible = "fsl,imx8mp-lcdif";
-				reg = <0x32e90000 0x238>;
+				reg = <0x32e90000 0x10000>;
 				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MP_CLK_MEDIA_DISP2_PIX_ROOT>,
 					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
-- 
2.34.1

