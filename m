Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE67D6BD1BD
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 15:07:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbjCPOHK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 10:07:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230493AbjCPOHC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 10:07:02 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3285D7C29
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 07:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678975613; x=1710511613;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=C3m9C8ny4D14mwISVitYguRr9lTk6KYmz46eR1YoXC0=;
  b=mBbZje4+TguYUq+J0DlzI4/YkUQcmEoWfO0gr3kboE5GjLDLRcnBmpzT
   nSe4Hcd/+AVveQQ1AVjFDHLBzGSIDSXgfMLSZUW5Aakyek+vMqrC3Dntl
   QnITufjLXZm8ubavobw1+2HyIf367dSy2gthfd0mjwrqganFq1bi0mETw
   vWFT1U5QhJyj8DZweJ4zzweFn3bFLi8da5m9Q9/Tlo2Iroocy4rRQORcW
   TBjmeCSVEb5shA8MqDWSCeubXsqE1A3/DpjC/+Z9D2SbzdNt2g6qKxs10
   4xzmaySzkCWw3gkTQNIbPipnfSHgUK7XsHjmNE0clcsdqogZ0wBy6a61c
   w==;
X-IronPort-AV: E=Sophos;i="5.98,265,1673910000"; 
   d="scan'208";a="29741181"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Mar 2023 15:06:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 16 Mar 2023 15:06:50 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 16 Mar 2023 15:06:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678975610; x=1710511610;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=C3m9C8ny4D14mwISVitYguRr9lTk6KYmz46eR1YoXC0=;
  b=FUzM9C/I450uv8wIX6oh6quzr80agvhAqebY/AbxR4U3S1F+1SmaVn7W
   6ffc9fv4HOJ2vkw3Vm64zaKn3vQeQLI+qmmnE6S9+lRA0gzWXKC2P1Dbz
   LtGbPGUcs5Mjd1gezMom/DyKsNOngJL0UnDmdA5SxRPyxrQb/3xTfAqt5
   b5gtEAwowg7HUvuVM2uJyTcejxqBFtawzk0B+6IG9kfJZMSulqQc/pSaF
   o+v0oig7ptOZC9NicQPt6Cw54SrVQ5qEaI3TqozsoR0ESWMFVi0Qm4UDb
   iKN2WxY+cc2qxO2zYxawrnuMAb7xAGo4i9tHY+vacxMGha3qIShCpNpDD
   g==;
X-IronPort-AV: E=Sophos;i="5.98,265,1673910000"; 
   d="scan'208";a="29741180"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Mar 2023 15:06:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C5D1D280056;
        Thu, 16 Mar 2023 15:06:49 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: imx8mm: Fix lcdif compatible
Date:   Thu, 16 Mar 2023 15:06:45 +0100
Message-Id: <20230316140646.489626-1-alexander.stein@ew.tq-group.com>
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

imx8mm-lcdif is compatible to imx6sx-lcdif.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index fedd32cfa47a..1de455ba21da 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1120,7 +1120,7 @@ aips4: bus@32c00000 {
 			ranges = <0x32c00000 0x32c00000 0x400000>;
 
 			lcdif: lcdif@32e00000 {
-				compatible = "fsl,imx28-lcdif";
+				compatible = "fsl,imx8mm-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x32e00000 0x10000>;
 				clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
 					 <&clk IMX8MM_CLK_DISP_AXI_ROOT>,
-- 
2.34.1

