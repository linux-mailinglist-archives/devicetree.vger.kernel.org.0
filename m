Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C83D463F0F
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 21:14:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240038AbhK3URo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 15:17:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240035AbhK3URn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 15:17:43 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32661C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 12:14:24 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 654C2CE1B03
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 20:14:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01044C53FC7;
        Tue, 30 Nov 2021 20:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638303260;
        bh=P48hzhRf9rsrrVj90B9rI+PiPuvw5p3Ouy/o6FkQnmU=;
        h=From:To:Cc:Subject:Date:From;
        b=lgm26b9NwDJ3xSD7+y/C5iFI9gwbuvZ7lAm5dD0y71DsD2o/fvvdh6x8BkNFTQmNi
         gQM0Dr5NMSbRsAWF35cy352Vkt9AVva9p+ZwokPSSL1zZbjcUcySBaFLKdHE6xfBsx
         attL5G2sszD1yQdPrhslClB7cANZZQneIfZxe6cN8ga692xYUjWCsp6Hc3L2oR6tWI
         7CD6O7PnhKOG+/VZd5Z1pBiMeeKl9NIXO0Bg/6I0NH9WNXD0ICJyd0y6fEDpUhloNa
         IIXjvoFayok/6n/Ft2jnX6IKO5kHqrHY1CIxaaYqS/F1GJjjCV68pkhJzsgF+dEaCu
         BdL2lmiaMv8YA==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org
Subject: [PATCH] arm64: dts: n5x: add qspi, usb, and ethernet support
Date:   Tue, 30 Nov 2021 14:14:17 -0600
Message-Id: <20211130201417.2958749-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Populate the N5X board dts file with support for QSPI, USB, and
ethernet.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../boot/dts/intel/socfpga_n5x_socdk.dts      | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
index 01f1307ce4ac..f3c1310dae0a 100644
--- a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
@@ -29,6 +29,36 @@ &clkmgr {
 	compatible = "intel,easic-n5x-clkmgr";
 };
 
+&gmac0 {
+	status = "okay";
+	phy-mode = "rgmii";
+	phy-handle = <&phy0>;
+
+	max-frame-size = <9000>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+		phy0: ethernet-phy@0 {
+			reg = <4>;
+
+			txd0-skew-ps = <0>; /* -420ps */
+			txd1-skew-ps = <0>; /* -420ps */
+			txd2-skew-ps = <0>; /* -420ps */
+			txd3-skew-ps = <0>; /* -420ps */
+			rxd0-skew-ps = <420>; /* 0ps */
+			rxd1-skew-ps = <420>; /* 0ps */
+			rxd2-skew-ps = <420>; /* 0ps */
+			rxd3-skew-ps = <420>; /* 0ps */
+			txen-skew-ps = <0>; /* -420ps */
+			txc-skew-ps = <900>; /* 0ps */
+			rxdv-skew-ps = <420>; /* 0ps */
+			rxc-skew-ps = <1680>; /* 780ps */
+		};
+	};
+};
+
 &mmc {
 	status = "okay";
 	cap-sd-highspeed;
@@ -40,10 +70,51 @@ &osc1 {
 	clock-frequency = <25000000>;
 };
 
+&qspi {
+	status = "okay";
+	flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "micron,mt25qu02g", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <100000000>;
+
+		m25p,fast-read;
+		cdns,page-size = <256>;
+		cdns,block-size = <16>;
+		cdns,read-delay = <2>;
+		cdns,tshsl-ns = <50>;
+		cdns,tsd2d-ns = <50>;
+		cdns,tchsh-ns = <4>;
+		cdns,tslch-ns = <4>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			qspi_boot: partition@0 {
+				label = "Boot and fpga data";
+				reg = <0x0 0x03FE0000>;
+			};
+
+			qspi_rootfs: partition@3FE0000 {
+				label = "Root Filesystem - JFFS2";
+				reg = <0x03FE0000 0x0C020000>;
+			};
+		};
+	};
+};
+
 &uart0 {
 	status = "okay";
 };
 
+&usb0 {
+	status = "okay";
+	disable-over-current;
+};
+
 &watchdog0 {
 	status = "okay";
 };
-- 
2.25.1

