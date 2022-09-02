Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 660595AA9CC
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 10:20:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235488AbiIBIUZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 04:20:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233481AbiIBIUY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 04:20:24 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CDED2611E
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 01:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662106822; x=1693642822;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=zVCtDod+EyoL3rTDBt8DB4qbD6SIwN48dUMt/u0DCck=;
  b=Ws+SAj9ml8/eBzQ2Fl1OZJCf93spXlVADX0cVRXfNSzsZqLoC497TUFr
   RvES0VNgsB4hTDSeimFRRRR9jAPhAZlMB+dsJbaUH/AQlTAvMF43OxAer
   XoangEv3RNJN9ygGhauNyn/ACY9qWxJNCFYeRXTxYgQMCqPSzUR/dw5Ow
   0M/cvLJ8qkh+K5+7F4pMf6+W2Dbxr5MeOzzBgKU0A2ZGR54cjF9r0PE/7
   PJ03r1Shu57y3Pg+HNlFTZ6llfJCOZfOp7DJPchRbJoRkliOIgm6GKXAP
   JEbTpC4vxO7WLmPSqFhk/9xFFrTHOPh01xrQd8UbqMS/wM7qb/sqNJ+/1
   w==;
X-IronPort-AV: E=Sophos;i="5.93,283,1654552800"; 
   d="scan'208";a="25953447"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 Sep 2022 10:20:19 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 02 Sep 2022 10:20:19 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 02 Sep 2022 10:20:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662106819; x=1693642819;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=zVCtDod+EyoL3rTDBt8DB4qbD6SIwN48dUMt/u0DCck=;
  b=UJz8oyn9JyxNIVKSo+8EA7RxOdM6O4YfLtz6g/RIlicdI1/xhPZdqwFJ
   15Kbi/knKeRkxaTKdSmvvHK1LHV4BpVmz5MIscjy2oKWICJtscIBBU9WP
   xYkj+Xcx02cFmNIaASMgTWy/cS+8AoXnBvAuB7T8l/2ZDjgwJhBo3RvFt
   roP1Ckfvoh3kFt6T3hixKqEhf8Acp+4iWkjvYWLm9F3RBct6fIrC5UjU1
   vG5VuvRU2akbWu2YYORv0aPjD6ta0IH6Nsg7Tx6Y1dxrvM3pykmmsy+aS
   TGRW+r5PWWwz8WyBx+4OWkoygAVO4ezzN+EWWox/9agWtloHPAdqHhv8f
   w==;
X-IronPort-AV: E=Sophos;i="5.93,283,1654552800"; 
   d="scan'208";a="25953446"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Sep 2022 10:20:19 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0246E280056;
        Fri,  2 Sep 2022 10:20:18 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: tqma8mpxl-ba8mpxl: Fix button GPIOs
Date:   Fri,  2 Sep 2022 10:20:15 +0200
Message-Id: <20220902082015.4149853-1-alexander.stein@ew.tq-group.com>
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

They were in wrong order, so fix it by switching them.

Fixes: 418d1d840e42 ("arm64: dts: freescale: add initial device tree for TQMa8MPQL with i.MX8MP")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 9b35460b64a1..79ec5256e8fe 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -81,13 +81,13 @@ gpio-keys {
 		switch-1 {
 			label = "S12";
 			linux,code = <BTN_0>;
-			gpios = <&gpio5 26 GPIO_ACTIVE_LOW>;
+			gpios = <&gpio5 27 GPIO_ACTIVE_LOW>;
 		};
 
 		switch-2 {
 			label = "S13";
 			linux,code = <BTN_1>;
-			gpios = <&gpio5 27 GPIO_ACTIVE_LOW>;
+			gpios = <&gpio5 26 GPIO_ACTIVE_LOW>;
 		};
 	};
 
-- 
2.25.1

