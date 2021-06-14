Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69CAE3A6A11
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:26:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233358AbhFNP2I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:28:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233199AbhFNP2I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:08 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1826EC0613A2
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:25:55 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id ho18so17335399ejc.8
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=suucIjcD7AZEOlm9ZQcvacG4OEzi3IigwuSu3QmJxiE=;
        b=bgJk0fMBeSUnXHJNemWtNsg2vGXZUWnJdu986JZn9FqFfiS3O1/fyDpHZUtI643qvf
         Zruuj+rzXLgcMCXyM1TvY1eGygPt7so9Up42au6wmkrsrevJgRAmo6OUb05SP159kfbG
         KUF7eOuVpj6m1m2TihC00UR7sPCyao7guU3+yBBuhG92GHzECkeypYlHjHAxTWPxGG7t
         FPxw4STL3mf3L06OxeL4jUzMP9Xuq+8aj7NOjlpAvNVUVmu270HEowXJlLA4R57vcTEN
         /cQ1RehpPSvlmwQ+XrykJTqOKFzQAue+BzQWSsoM8F+R9P74gxojcFIVva+2vHrruFFq
         u8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=suucIjcD7AZEOlm9ZQcvacG4OEzi3IigwuSu3QmJxiE=;
        b=VVaqCW/sshmh/jzAx6C2HLt4O47/NoIV2WEUhR3uzxQ8f4Ga/3AAOI6X0GNFk9usV8
         3TgpY6EglAAh495xjXO/m01GdOj/c1bOLr5DjcYNt6MLClLOVNT8X523y69mASom7krw
         2KoroMKUUCrC/EaDNkRsOd7Gq+04s59IDetwuxmDhMTLynH7hn0Ixae5eOMeHP3cm7Eq
         L3MYnPCsNqLMttQzci9rlSjksprP5VTTOzD+9Kqv+itOTfDWlvyhAw3KHCjyqYk8sKxY
         AifT6h1sZ6d5f/0B7svBUCHfaB3E6zlvHzvqedCXVLcMvH/psZnyOmYN/IAxFQ+Kv+UC
         bvFQ==
X-Gm-Message-State: AOAM532U1icounCUx6ziGNy9UllJfFW7mD9CZjzewJuYOIWZI7OH4Ou/
        f3Vgd9vUnwjxsnWgf/PzmA6sSQ==
X-Google-Smtp-Source: ABdhPJxwnJGDsxzjhTQCU3oCfEaG6nwTBZiodeca/8pcFoac7qsiRLAHNd4MeodliTpBh4QVRMuMEA==
X-Received: by 2002:a17:906:3c56:: with SMTP id i22mr16134001ejg.369.1623684353741;
        Mon, 14 Jun 2021 08:25:53 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id u13sm2302398ejt.23.2021.06.14.08.25.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:25:53 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 07/33] arm64: zynqmp: Wire psgtr for zc1751-xm015
Date:   Mon, 14 Jun 2021 17:25:15 +0200
Message-Id: <3fb11fdb9ade828fa174379515e45ba02bc17247.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add psgtr description for SATA and USB. Display Port could be also added
but it wasn't tested yet.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 .../dts/xilinx/zynqmp-zc1751-xm015-dc1.dts    | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index 5b258129c7ef..f57cb5356cef 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -11,6 +11,7 @@
 
 #include "zynqmp.dtsi"
 #include "zynqmp-clk-ccf.dtsi"
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/pinctrl-zynqmp.h>
 
@@ -36,6 +37,31 @@ memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>, <0x8 0x00000000 0x0 0x80000000>;
 	};
+
+	clock_si5338_0: clk27 {	/* u55 SI5338-GM */
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <27000000>;
+	};
+
+	clock_si5338_2: clk26 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <26000000>;
+	};
+
+	clock_si5338_3: clk150 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <150000000>;
+	};
+};
+
+&psgtr {
+	status = "okay";
+	/* dp, usb3, sata */
+	clocks = <&clock_si5338_0>, <&clock_si5338_2>, <&clock_si5338_3>;
+	clock-names = "ref1", "ref2", "ref3";
 };
 
 &fpd_dma_chan1 {
@@ -328,6 +354,8 @@ &sata {
 	ceva,p1-comwake-params = /bits/ 8 <0x06 0x19 0x08 0x0E>;
 	ceva,p1-burst-params = /bits/ 8 <0x13 0x08 0x4A 0x06>;
 	ceva,p1-retry-params = /bits/ 16 <0x96A4 0x3FFC>;
+	phy-names = "sata-phy";
+	phys = <&psgtr 3 PHY_TYPE_SATA 1 3>;
 };
 
 /* eMMC */
@@ -357,4 +385,7 @@ &usb0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usb0_default>;
 	dr_mode = "host";
+	phy-names = "usb3-phy";
+	phys = <&psgtr 2 PHY_TYPE_USB3 0 2>;
+	maximum-speed = "super-speed";
 };
-- 
2.32.0

