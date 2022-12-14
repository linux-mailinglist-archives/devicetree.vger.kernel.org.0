Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B0BA64C678
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 10:59:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238049AbiLNJ73 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 04:59:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238050AbiLNJ71 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 04:59:27 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B46215A11
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011966; x=1702547966;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aj/dw95ZdNd8eIMZkdNVYtby/iRlfIUUvKD0HV5Ilic=;
  b=pVKV6erf7qO9ks7YJvGjird7p3dFXMCA2wzwta88+lRw0WX/5C/XYetf
   LnGesd83AcLawu509P8duL0j/vUXOYYi2u/GUOeG8m8tIZIoa1JQ9rNXN
   kf8nlCU+RdE6SQg4aQ/wqHk7C8gfwgVz9cEC+01f2EF4J5Sc/nJfwjhkV
   BfR9zsRTNoiXLP+TjI/eKwxSQ9ndhV37eOEBaYtwmULSOFQMC1n+/cLVT
   g8L+zNIOenqF6BHKiSm4BAOfugXWgTsI2/j9IFuHyFldtJL0Rn1RdcSHa
   Q0VJmKM9+p3Ma0W79yMQ5vgdenF4XK5HE+xMMxdUAYf6B38SrWD+Qvwfd
   A==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943343"
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
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aj/dw95ZdNd8eIMZkdNVYtby/iRlfIUUvKD0HV5Ilic=;
  b=X1ZLJ9GhRQxDdYq/SR7f4WDmt1r6XC0Zkmj29eYMCoHVdeynSmWnZIyW
   CbjB/gcG1Fkki5H8KrEzyRj5Kt7SIug8tC1HW3tt7thG0vUynOCihMmcK
   ezQGKDop6bBun0/SK2LnOb54URxgN5h4jryUonoLDzD/6g6mbEdmNPZ4r
   UDIh8DsyQHYWAcgCE9Og/SwkgKGnSfaDr2OIYTu3I/MKAP4hI7AZCf1XN
   M/tYyzok4CgLj0gY1McnsLnIqkQUqsYK9GiGaGyc+4hVT06emD7OB2MLj
   raArjJg0QCqrBBCpaGs2LxxIS/KtUm9JNnPwwPLEL/WKvzuPUKoRpTBV4
   A==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943342"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2022 10:59:23 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 72139280073;
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
Subject: [PATCH 3/7] arm64: dts: imx8mq-tqma8mq: Fix temperature sensor compatible
Date:   Wed, 14 Dec 2022 10:59:13 +0100
Message-Id: <20221214095917.964695-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
References: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
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
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
index 9a95e30fb42d9..5ca6b22525469 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
@@ -194,8 +194,8 @@ vgen6_reg: vgen6 {
 		};
 	};
 
-	sensor0: temperature-sensor-eeprom@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	sensor0: temperature-sensor@1b {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1b>;
 	};
 
-- 
2.34.1

