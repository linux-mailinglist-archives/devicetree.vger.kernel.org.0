Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 364EA49AFFA
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 10:40:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355569AbiAYJVu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 04:21:50 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:33013 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1457743AbiAYJRB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 04:17:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643102218; x=1674638218;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=xTNXLuJM0Vyp9ZeUac6fejxzTDpE6u1G+aMvR0f2r9U=;
  b=DmFTApFGOWA7R+aDfItvDdgg/IVbn3Zf8teRjqGLz0SFtdB/MLQKAEfj
   Nbypsz/VmsnDxFYg/koaNcCeaRNxDoDzfkxdunV0IWRU9rUlr2SZoqDz/
   RbN0HormRq3upLpEqsuFtUTYeLEsfcn4Qst+LRzTZo01FYf3WYTrH+q/P
   677V/HXQ0U9aIIe0EpD2mOqR2vIUmyH9pJDsNrN1re2OG2omPnFlK5EJy
   lw9T0w7cFm8g9xPCNcUqeORak5fmMJWq2eq2kA/NXORg25nEUto5rge2+
   U2ssrFBhmfCdNrZimFLbU/aqbGAHRQ160Hcpjj65yvTNy6n7Qk7AomtmE
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,314,1635199200"; 
   d="scan'208";a="21690126"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 25 Jan 2022 10:16:55 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 25 Jan 2022 10:16:55 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 25 Jan 2022 10:16:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643102215; x=1674638215;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=xTNXLuJM0Vyp9ZeUac6fejxzTDpE6u1G+aMvR0f2r9U=;
  b=j3BauckMn2htIt55w3qPp40UkihvhzDkCzV2+cqVTP2CS2Oqp+zlKQSq
   hA4bQBvL445w4KOJROciGsesU+kshaq5MeM2qOwg6sF6R2Dl1ZiIbQs42
   7GVHH+WhoHiA2CojMAt6CCDsdNcPQtXJO6b98RcfkQarWqQOiyv+cg43N
   MWaU9QzZS3sI37/KnYvdkW80JPirr9o23UF7DiFjRakHYDOx3iQQXBQdq
   RPE2xh8IWj9BBY3I9fFFJJpNHL/Db5C/eXnXWmuRVh1MQ10H3ZZ/FzZi5
   E8ixtOiS2g9sun60tTB2VVNUeu2WvUBPGvT/pLBfIv9NT+QAlyTnhzKJn
   w==;
X-IronPort-AV: E=Sophos;i="5.88,314,1635199200"; 
   d="scan'208";a="21690125"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Jan 2022 10:16:55 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E8D51280065;
        Tue, 25 Jan 2022 10:16:54 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Peng Fan <peng.fan@nxp.com>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8mq: fix lcdif port node
Date:   Tue, 25 Jan 2022 10:16:46 +0100
Message-Id: <20220125091646.2845111-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The port node does not have a unit-address, remove it.
This fixes the warnings:
lcd-controller@30320000: 'port' is a required property
lcd-controller@30320000: 'port@0' does not match any of the regexes:
'pinctrl-[0-9]+'

Fixes: commit d0081bd02a03 ("arm64: dts: imx8mq: Add NWL MIPI DSI controller")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index bacdeb29ad9f..7b887861bea5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -554,7 +554,7 @@ lcdif: lcd-controller@30320000 {
 				assigned-clock-rates = <0>, <0>, <0>, <1032000000>;
 				status = "disabled";
 
-				port@0 {
+				port {
 					lcdif_mipi_dsi: endpoint {
 						remote-endpoint = <&mipi_dsi_lcdif_in>;
 					};
-- 
2.25.1

