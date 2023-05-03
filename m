Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1E896F572A
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 13:31:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229660AbjECLbX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 07:31:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbjECLbW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 07:31:22 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9924D46AC
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 04:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1683113480; x=1714649480;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=0UzE43ySqCPT254bw8f1OxQOLkvILAnqPlI1V0xt3OI=;
  b=JT4xvMQjCYOwQCEFABoQpOIQcQrj/BzklqYLe+m9sLI4Z1fwedjZH8dD
   C9vNGg+SiqAwf86VFKi7h1Yx48Ei9wXzKyscBwCz9X0jMK+QpAtyR4/2f
   h/WSjVHFLU3icd86c3VoDFYdH+P95VDhZdwKxYcKjaNQ9Q4aHgEbRtUAu
   ghsJ3N9mrqeJGh3Mt/sKuAB9V4oP8tx+Kd4bdQevxI+DFOz4Q2NTxTtB+
   7kfrmzw9sm0BBQfL/GpCbnMS/mmP8L204x/3CiXFgSi9lp+3xo7q9lOMT
   VpIRhbI+WMTjs8/9q//1nssYX2f1t+/sSdMA5LIE+lTMe1z0Q/5bg8+D2
   w==;
X-IronPort-AV: E=Sophos;i="5.99,247,1677538800"; 
   d="scan'208";a="30692132"
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
  bh=0UzE43ySqCPT254bw8f1OxQOLkvILAnqPlI1V0xt3OI=;
  b=QVB6LgxCoPMcsUTEzt1nkM2DaPHsG+N1TRY5sVWm+yiKYuPRJ6sXJ0Df
   NdJycqVTJudGNRFvyQQ3h2pG4TkTHkH2PHicFQ1FYQfWCxM8G4aXPFg98
   dqfvwe2Mn7ZI1NzJbLtDXoPumzgdevLYBnz9Sav2HQFIMUR9f0V3JJ++V
   3PI9y4L+03F+cWQqJHCEv33830fn2mQpQhBrhmy7JjCJQu9AUkGnS47Mc
   hQX+gPCxP4jzIkUduC7QhwZJJwPDvVgBKwRkuxxXSzs4W2RMZ3v3rcTfl
   0QmqrfofOOJi9ziFFpkCBK80rOwHeX83C0metMtgzyh7NIrzM28980BbS
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,247,1677538800"; 
   d="scan'208";a="30692131"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 03 May 2023 13:31:16 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 02AF8280072;
        Wed,  3 May 2023 13:31:15 +0200 (CEST)
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
Subject: [PATCH 2/3] ARM: dts: imx6qdl-mba6: add mac address for USB ethernet controller
Date:   Wed,  3 May 2023 13:31:11 +0200
Message-Id: <20230503113112.1751886-2-alexander.stein@ew.tq-group.com>
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

The mac address is stored in mainboard eeprom.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6qdl-mba6.dtsi  | 16 ++++++++++++++++
 arch/arm/boot/dts/imx6qdl-mba6a.dtsi |  6 ++++++
 arch/arm/boot/dts/imx6qdl-mba6b.dtsi |  6 ++++++
 3 files changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
index 7b7e6c2ad190..9d90d7647024 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
@@ -272,6 +272,22 @@ &uart5 {
 &usbh1 {
 	disable-over-current;
 	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	hub@1 {
+		compatible = "usb424,2517";
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethernet@1 {
+			compatible = "usb424,9e00";
+			reg = <1>;
+			nvmem-cells = <&mba_mac_address>;
+			nvmem-cell-names = "mac-address";
+		};
+	};
 };
 
 &usbotg {
diff --git a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
index df8fa169e9f6..c3f3a25133ca 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
@@ -21,6 +21,12 @@ m24c64_57: eeprom@57 {
 		compatible = "atmel,24c64";
 		reg = <0x57>;
 		pagesize = <32>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		mba_mac_address: mac-address@20 {
+				reg = <0x20 0x6>;
+		};
 	};
 
 	rtc0: rtc@68 {
diff --git a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
index 7d1cd7454c7f..85866cfed965 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
@@ -31,6 +31,12 @@ m24c64_57: eeprom@57 {
 		compatible = "atmel,24c64";
 		reg = <0x57>;
 		pagesize = <32>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		mba_mac_address: mac-address@20 {
+				reg = <0x20 0x6>;
+		};
 	};
 
 	rtc0: rtc@68 {
-- 
2.34.1

