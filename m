Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46BAE755ECF
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 10:54:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230059AbjGQIyu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 04:54:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbjGQIyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 04:54:49 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C15611AE
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 01:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1689584083; x=1721120083;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Lf/7l6CWdcpP6BOnRv7G72ZRDNGSU3AYTK4M9wYtTtw=;
  b=FXQG9wpfspmPl9Pr3E21knovyqEpwy7/cO8r6cP3fu79XbAeSDDIAA74
   4Pq3p/oZvj9JtH1QgGCUjqSKS4kHOF9tu1CLKZlTz2H3WI+ZWpipHzI0H
   /ya2XLpFPSaGJLwM8rEtmJ4I4CG5aIuvH7ouD4As7WR+GUd4b4ntQceAz
   VwZ2C4iEDUOQVrgRNX8idI8HB+LPcd2uLPg+4Qj2G35B54XatIc8/Jsvq
   k/+VtEQy/kuawOqigbhq/3JKF9q7RCP8UeP4MUdm4ErswGY9KrjCSzPah
   2+RlWspAtyzE1qPP3NSvSrl9d8DoVJvHI3Of9wOVE44elmU0sXLhQnygc
   g==;
X-IronPort-AV: E=Sophos;i="6.01,211,1684792800"; 
   d="scan'208";a="31958242"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 17 Jul 2023 10:54:40 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 59FF2280078;
        Mon, 17 Jul 2023 10:54:40 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] ARM: dts: imx6qdl-mba6: Add missing supply regulator for lm75 and at24
Date:   Mon, 17 Jul 2023 10:54:38 +0200
Message-Id: <20230717085438.408194-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the warnings:
at24 0-0057: supply vcc not found, using dummy regulator
lm75 0-0049: supply vs not found, using dummy regulator

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Rebase to next-20230717

 arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi | 2 ++
 arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi
index 27fec340c380..238f3af42822 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi
@@ -15,6 +15,7 @@ &i2c1 {
 	lm75: temperature-sensor@49 {
 		compatible = "national,lm75";
 		reg = <0x49>;
+		vs-supply = <&reg_mba6_3p3v>;
 	};
 
 	m24c64_57: eeprom@57 {
@@ -23,6 +24,7 @@ m24c64_57: eeprom@57 {
 		pagesize = <32>;
 		#address-cells = <1>;
 		#size-cells = <1>;
+		vcc-supply = <&reg_mba6_3p3v>;
 
 		mba_mac_address: mac-address@20 {
 			reg = <0x20 0x6>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi
index 0a9f076eeb36..a587bc88f76f 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi
@@ -25,6 +25,7 @@ &i2c3 {
 	lm75: temperature-sensor@49 {
 		compatible = "national,lm75";
 		reg = <0x49>;
+		vs-supply = <&reg_mba6_3p3v>;
 	};
 
 	m24c64_57: eeprom@57 {
@@ -33,6 +34,7 @@ m24c64_57: eeprom@57 {
 		pagesize = <32>;
 		#address-cells = <1>;
 		#size-cells = <1>;
+		vcc-supply = <&reg_mba6_3p3v>;
 
 		mba_mac_address: mac-address@20 {
 			reg = <0x20 0x6>;
-- 
2.34.1

