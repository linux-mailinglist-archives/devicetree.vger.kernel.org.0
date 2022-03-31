Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CEBD4EDA23
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 15:02:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234061AbiCaNEE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 09:04:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232134AbiCaNED (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 09:04:03 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E357214078
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 06:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1648731735; x=1680267735;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=WQNzt8/7obQzyydz7wX8hH1DC72ml6JxCI2528MRrrs=;
  b=ZzpxziN9PMU91zoUBV21ifbqElhixzuW043bLA/G6Ere5HYwS56QuZgL
   vi9gpMGhuy+dF6gp66pQEGoETtzx04ITYIf9vM8r4lxkBtRQtrYHe7zqH
   FuIiA/cFmmAdFg/vO6hC/JRf3oeDncl2d9WOrraUI9ujO2/IExt/Cg7Pd
   0+QSGDQ7B7R8JCHcs3ikyWFUADwJcYrYK5xymRBeH+9da0J9ThTDhFdjU
   68rvbiFXLBCZKluWB46pxra5VY2ChRPQ/Ed/xW8CunkvCAe01gFsTdfg/
   Wi2pJpawL/6fCC74eOygmffzZ0BNKIDYnYbXpwb3P0yiAQ3lhPZfcU8Eq
   g==;
X-IronPort-AV: E=Sophos;i="5.90,225,1643670000"; 
   d="scan'208";a="23018119"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 31 Mar 2022 15:02:13 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 31 Mar 2022 15:02:13 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 31 Mar 2022 15:02:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1648731733; x=1680267733;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=WQNzt8/7obQzyydz7wX8hH1DC72ml6JxCI2528MRrrs=;
  b=Bxed/zyNBudAFek0FI8MdF9roPBa9xXYf844zODlNiO3fl9OWJ8iWGcc
   vYzX55Q0ChDfmYOWQ7zS0t5KZ66UNolQ7JFuCqilEDNxb3RxjiWzZ6iNt
   3usLygJyW8gNGqfNe33ZPiPx65DvjuGt0c0tc7wa8LEFGlXmhEQCg45BZ
   b+nxNU081UlINPyKOC0lU7OrUtn6//s23fmGPa8AyjPhibSW2R5xsctHE
   /4ZaGJ/3hYAPLGBVFwshsFbluk/kZvgO056OY/KZwNd73pduyD15Qg2cg
   ert/LN3en8V2NEqkP3lCKQmlDWYllJniAUCPlJ6iZQPCbr7Lcgiz3PVHd
   g==;
X-IronPort-AV: E=Sophos;i="5.90,225,1643670000"; 
   d="scan'208";a="23018118"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 31 Mar 2022 15:02:13 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3A2CA280065;
        Thu, 31 Mar 2022 15:02:13 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8mq-tqma8mq: change the spi-nor tx
Date:   Thu, 31 Mar 2022 15:02:06 +0200
Message-Id: <20220331130206.80349-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
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

This fixes the qspi read command by importing the changes from commit
04aa946d57b2 ("arm64: dts: imx8: change the spi-nor tx").

Fixes: b186b8b6e770 ("arm64: dts: freescale: add initial device tree for TQMa8Mx with i.MX8M")

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
index 38ffcd145b33..899e8e7dbc24 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
@@ -253,7 +253,7 @@ flash0: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		spi-max-frequency = <84000000>;
-		spi-tx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
 		spi-rx-bus-width = <4>;
 	};
 };
-- 
2.25.1

