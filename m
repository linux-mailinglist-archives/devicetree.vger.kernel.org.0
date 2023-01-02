Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9345265B392
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 15:49:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232888AbjABOs7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 09:48:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236241AbjABOsy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 09:48:54 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BF98FE6
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 06:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672670932; x=1704206932;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=5XiJPpMtwxZUStyqDjtIvUFKE3GRSgXWVaOwx/qHn0I=;
  b=R6f5Z0duFm9CENlqRTg3C3WCQQjNDLFF1pEit3Y+MiDLPF6qvyj9xh/e
   ezNbjCRljz67gXs8Bf5dqXDydK2ZRXURReEn5TLm5oM5Il6TaCoWzATbk
   HNZdrARrfpRkDullgNEo4+Whcn5MU2BuQ25GvL3Vv53Vkhf5lGQ4H6S4v
   oyKiiytyi8mUrDMK+iDyMzzNlDuaWLkDlqDw4a7He/46cdyR+gqGRjBbY
   fTvMku+0TVVQPND+dwtUqhzBgIizYpCzWMLK5wnac+kpV9zNprNJo07Zp
   q7WJlMEgLyp4FV2rljd0EX/4OWinaJB3v61zc5TiQkDXMHXVr9haoSopr
   A==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206335"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 Jan 2023 15:48:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 02 Jan 2023 15:48:50 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 02 Jan 2023 15:48:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672670930; x=1704206930;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=5XiJPpMtwxZUStyqDjtIvUFKE3GRSgXWVaOwx/qHn0I=;
  b=KYZAgXbEkP1xgFONT0/I3TDeB968eG8jnXq/iqcgve/uy3ZVJ0O/NOOp
   v8/mTEFHVi0TQNamhD0UD9+07Dx9FE5ECEdlLfgEH2xUDNxcbo9fYfeW9
   x0GJpKwcCBydd7gBLEEYGtXEbNOZcgbys5DN1OVVV9gH68/rihDMvr1eH
   OsKN4OUGd1DtaI4q063z9H4OAsBZYFz0OCqbVMdYB2Qeve81zgPVcGY2s
   D2c0oBwoAXDeLQ34wnQcBYa5xWsog0+I5TZ8iJ2bmWnia2Rh+WYOOv6OS
   jRLv4upYFOb0E9crqOs/aLIX++QjVI3KKJqTpIwUEfjSWHigeNMYN11un
   w==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206334"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Jan 2023 15:48:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 67249280056;
        Mon,  2 Jan 2023 15:48:50 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/5] arm64: dts: tqma8mpql: Fix temperature sensor compatible
Date:   Mon,  2 Jan 2023 15:48:44 +0100
Message-Id: <20230102144848.3135398-1-alexander.stein@ew.tq-group.com>
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
Changes in v2:
* Split into arm64-only series

 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 5 ++---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi         | 5 ++---
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 25cbe333ab8f..34b62d8c76a0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -510,9 +510,8 @@ tlv320aic3x04: audio-codec@18 {
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
index 7bd680a926ce..ebc29a950ba9 100644
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

