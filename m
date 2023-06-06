Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 076AC72474C
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 17:10:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234842AbjFFPKy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 11:10:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233277AbjFFPKx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 11:10:53 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A61F7126
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 08:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686064252; x=1717600252;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=DPnPrh9S1jAin1zEtS4sXsKQlQFOgosVJOCmatsRQLY=;
  b=Mo7XbXqH+6OMY3zmBDf1WWnOODByqNk2nAaHKXVr2aXFG3aUx43vFAVW
   HWqKMwdcigiwKUBtaYte/M5Bf37T+fJmwt6QigFtxlH5MmULqseOMdZgy
   qOzh3VJd7gSQ2N8u/5r95kj4TewM7qTKlvZ/E0cqvOtBBD526t/VaRX+F
   vBpke1RKxU7r8rMPHLFNogKDZxQ8NKdtxGQNqW7x3+IUDA67dXgxq69bS
   DeZsupebFd9Tqidackbb11KG4iRDY4G48mqOZUpiu0qQxUZsrrVwvQ5c6
   Odto0zlAsY3hAIGQHZ+UHqQGPhkxxRUb1Yjdvmr/mRc8owCZxEVzOn+oE
   w==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31308252"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2023 17:10:51 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Jun 2023 17:10:51 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 06 Jun 2023 17:10:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686064251; x=1717600251;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=DPnPrh9S1jAin1zEtS4sXsKQlQFOgosVJOCmatsRQLY=;
  b=L9hjcktwqGPvdaM8eRk/4DN144KTLaGmE6BFSSdrFq7rNYKzgKkj+dLy
   vfq9etqAJGhlvRRarUgZWkmWxTR46fbNUFQr/7RlClsMbfn6jq3sqtFuu
   UaNEjBxIYzr0wMxzmWy6YefaXdRUnx0CYJe3/jqUmj8odAo6UbGM7oHVn
   cMVDwcTbi56zrVCQs37yxX1ZVa2OrZlH3PLOsQU9FoxsUEg045FRgDuZo
   CIT5Sw53cEHaRdbz8j/PjzF/CBHvAXRxBlI4slKDq8KTJl1CEck5c89iN
   hORV8HzsG+aaSxt9MtsFXJ0Bfa5eciaQA2AN9hJcJ6rXtnPpnW5mKy5Fa
   A==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31308251"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jun 2023 17:10:51 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id D838E280090;
        Tue,  6 Jun 2023 17:10:50 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8mq-tqma8mq-mba8mx: Remove invalid properties
Date:   Tue,  6 Jun 2023 17:10:48 +0200
Message-Id: <20230606151048.778653-1-alexander.stein@ew.tq-group.com>
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

They originated from the downstream kernel and slipped into mainline.
Remove them to silence also dtbs_check warnings:
pcie@33800000: Unevaluated properties are not allowed ('epdev_on-supply',
  'hard-wired' were unexpected)
pcie@33c00000: Unevaluated properties are not allowed ('epdev_on-supply',
  'hard-wired' were unexpected)

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
index c5244b608524d..afb3ceb067517 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
@@ -108,8 +108,6 @@ &pcie0 {
 		 <&pcie0_refclk>,
 		 <&clk IMX8MQ_CLK_PCIE1_PHY>,
 		 <&clk IMX8MQ_CLK_PCIE1_AUX>;
-	epdev_on-supply = <&reg_vcc_3v3>;
-	hard-wired = <1>;
 	status = "okay";
 };
 
@@ -122,8 +120,6 @@ &pcie1 {
 		 <&pcie1_refclk>,
 		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
 		 <&clk IMX8MQ_CLK_PCIE2_AUX>;
-	epdev_on-supply = <&reg_vcc_3v3>;
-	hard-wired = <1>;
 	status = "okay";
 };
 
-- 
2.34.1

