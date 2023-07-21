Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF38175C180
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 10:26:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbjGUI0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 04:26:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230062AbjGUI0i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 04:26:38 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B38E0271F
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1689927994; x=1721463994;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Zv611XO42o1Iss5FSM6u+W5iDfRKCUhQI3WHrUVyewM=;
  b=DkeQIPMJTSbkQh9medgN6wWlaHvQOXlq6Ja//MJl+speeb0zkW+9pmJU
   EvI2GAkM9/9hBPb4U8SpQ/A506DzZUmYkNA79av3kGtvJ01qZze4NyYOv
   R1zy9xRhsUh9wrkoyr5WKvNgidgK6FJKn7P+RjvykFzu7CzgoFo9uNXBV
   I609+EOse77I2BRz1w+zumqNGHqHa+kG91aIPEUDKdFXq5FhcxAt4UcFJ
   SGm9NxOZo6CTYYfIn7B7Aj2Cy8HhhbEzDwO93m9KDMpikO5+1FAdk3F16
   vT4CT5sog/PMRHw5mcv6PF54aTfLIF6rDXCOc9+8r/52IbYqeiFMRe2Md
   A==;
X-IronPort-AV: E=Sophos;i="6.01,220,1684792800"; 
   d="scan'208";a="32048453"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Jul 2023 10:26:33 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id CA972280078;
        Fri, 21 Jul 2023 10:26:32 +0200 (CEST)
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
Subject: [PATCH 1/1] ARM: dts: imx6qdl-tqma6x: Add missing vs-supply for lm75
Date:   Fri, 21 Jul 2023 10:26:28 +0200
Message-Id: <20230721082628.1189087-1-alexander.stein@ew.tq-group.com>
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

Fixes the warning:
lm75 0-0048: supply vs not found, using dummy regulator

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi | 1 +
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
index aff46f3040c1..68525f0205d3 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
@@ -30,6 +30,7 @@ pmic: pmic@8 {
 	sensor@48 {
 		compatible = "national,lm75";
 		reg = <0x48>;
+		vs-supply = <&reg_3p3v>;
 	};
 
 	eeprom@50 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
index a3f6543c3aaa..aeba0a273600 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
@@ -23,6 +23,7 @@ pmic: pmic@8 {
 	sensor@48 {
 		compatible = "national,lm75";
 		reg = <0x48>;
+		vs-supply = <&reg_3p3v>;
 	};
 
 	eeprom@50 {
-- 
2.34.1

