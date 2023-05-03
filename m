Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12A576F572B
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 13:31:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbjECLbX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 07:31:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229643AbjECLbX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 07:31:23 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC66744BE
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 04:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1683113482; x=1714649482;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=pwWxLstw9U0GOMnq/1k5AtPYkkRiclWV0kNxDcSKixk=;
  b=P1wOzBn15/EJOUUXwpJ6qQQTuzMYD7IM8jZdWp6BvD8zt5rHn5WJCLLE
   mlH3WkAmxCjv0JBNQq9Cfm4JZU2RZ7zhuEQ9ZDwHfVZ4V4yHJqRkKiHBy
   NMpeqlKRNjxsYutDh/x5At16I2PuCtZAx/kvGk/nEWi6lu3YGGhj3KgUc
   AfoXwu7Ux6DtGu9qaDbbCp39w2UPa24Cy6cjcvmVTp4Oq91sTcMn14Ysn
   u/U+0CM42GV5K+QXR/PfvYqUskUAizVaI5mSCpgnqe65tA4FzjLv2UImi
   gpu6+ZNXjbf+Q5rYK835zjejt6OOHY12GokKpCuViMsI/Mt8fRMKuelXl
   w==;
X-IronPort-AV: E=Sophos;i="5.99,247,1677538800"; 
   d="scan'208";a="30692134"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 03 May 2023 13:31:16 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 03 May 2023 13:31:16 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 03 May 2023 13:31:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1683113476; x=1714649476;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=pwWxLstw9U0GOMnq/1k5AtPYkkRiclWV0kNxDcSKixk=;
  b=c8k70p83J9CSLbNJrqRXJw/JHW7gnJGmJExTVySE52E3fD9pWZWGsivN
   1apcMpt7DdFgueHKFW3i++Mz3r4Fsc6DUNHXxLftYaxcjg/kp2oj+Gt1F
   /U189u6l+fVqy/T9n3vkte/cU7bmbSDcxi36/gyWqW3dTGSyGgXY/8YVI
   YnsbVcsXHEL7TuvXfhjaqEsbSbBGr1TVeH6JKwAjioDBMLpNqfnVgBf5c
   mFPkmMfGvrDU7uiBEC20CL1yYI3Xr9TqFp4LzMEJb+QQaqV0LGQf3WaN2
   tw0qdtooAlnDupcG0ZJWoiMGauUwxTuctZeloko8au3QN4enW2Oxc8Ibl
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,247,1677538800"; 
   d="scan'208";a="30692133"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 03 May 2023 13:31:16 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 76210280073;
        Wed,  3 May 2023 13:31:16 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] ARM: dts: imx6qdl-mba6: Add missing supply regulator for lm75 and at24
Date:   Wed,  3 May 2023 13:31:12 +0200
Message-Id: <20230503113112.1751886-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230503113112.1751886-1-alexander.stein@ew.tq-group.com>
References: <20230503113112.1751886-1-alexander.stein@ew.tq-group.com>
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

Fixes the warnings:
at24 0-0057: supply vcc not found, using dummy regulator
lm75 0-0049: supply vs not found, using dummy regulator

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6qdl-mba6a.dtsi | 2 ++
 arch/arm/boot/dts/imx6qdl-mba6b.dtsi | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
index c3f3a25133ca..3ca028c2dbe9 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
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
diff --git a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
index 85866cfed965..c97bd67462e7 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
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

