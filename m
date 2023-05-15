Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BF79702372
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 07:45:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229708AbjEOFo5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 01:44:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238231AbjEOFom (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 01:44:42 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F083B1FDE
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 22:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684129477; x=1715665477;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OUfOl1EkRMULuEeaIsaoK69yksSX70X52hrgijvAbh8=;
  b=RqWf3507sJdSYCcjHKHPI0eN6Vbf03svQf1/68NhKQNXFsOSXwXFTBh1
   hzkSY+er2sS/KxEqdLq/XgHIGseeryhus0mL5YpE8GuKFi+WoeGG3FE4S
   Y8hCpf9GGIIcHpYU+WYuJbbyvPqTevnHElJXRx3Xm9O90uH+Ez8uFijZJ
   9nUVBb6rMf1jKT76bzAuhzY/M2nursf5cHHDbVsRuj2BHdO/5ZnxvuFsY
   DOv4KFrl6VCunVFJJlpAFqG2ZShI4M/67ZF+xIOvw7N1oC7sEMkdE6r8X
   Jn3Wui4T13jM+XTDLQgk+cICxJ9CARlOtaBPVQhXkH2CfKUYoT5EK9zKA
   w==;
X-IronPort-AV: E=Sophos;i="5.99,275,1677538800"; 
   d="scan'208";a="30894296"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 15 May 2023 07:44:34 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 15 May 2023 07:44:34 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 15 May 2023 07:44:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684129474; x=1715665474;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OUfOl1EkRMULuEeaIsaoK69yksSX70X52hrgijvAbh8=;
  b=V39fj/9mCD0Sj76MmpLE3IygnGBGanG/bFtIH6UFec93jiz8k3WKwp+X
   /EjCb6PDLjcViKDTE9rM7br7uvDbAm9yGflmN41hmgX7qnByxVuLdAzV3
   wQv7mHbzSBAwiLN9C+Z7BK909ms0Bq1/zftjjeV0OqKX49xDIVhZOXGzH
   gnfZfnpsGpwTGGGplBfGck+Qs1jx8L9fcTmBFyTZggXR/AQLHBAz1vs/9
   q+kiPp4vH8BU7V5FKuqDYOS7L9tUa+PluM3gYNf0123V/MQhOJPO3ONau
   +z8G7LT1JR6z0tKqP1C1S1OK3q9PY44LWvNxHB1Txsf2Ns2o3lqxWgFzD
   g==;
X-IronPort-AV: E=Sophos;i="5.99,275,1677538800"; 
   d="scan'208";a="30894295"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 15 May 2023 07:44:34 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3D230280056;
        Mon, 15 May 2023 07:44:34 +0200 (CEST)
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
Subject: [PATCH v2 1/1] ARM: dts: imx6qdl-mba6: add mac address for USB ethernet controller
Date:   Mon, 15 May 2023 07:44:29 +0200
Message-Id: <20230515054429.14736-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
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

The mac address is stored in mainboard eeprom.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Fix indentation

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
index df8fa169e9f6..27fec340c380 100644
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
+			reg = <0x20 0x6>;
+		};
 	};
 
 	rtc0: rtc@68 {
diff --git a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
index 7d1cd7454c7f..0a9f076eeb36 100644
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
+			reg = <0x20 0x6>;
+		};
 	};
 
 	rtc0: rtc@68 {
-- 
2.34.1

