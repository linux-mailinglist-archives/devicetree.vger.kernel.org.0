Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EA57C11D000
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2019 15:38:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729691AbfLLOi0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Dec 2019 09:38:26 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:40682 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729713AbfLLOiZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Dec 2019 09:38:25 -0500
Received: by mail-wm1-f66.google.com with SMTP id t14so2768347wmi.5
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2019 06:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IRa2P15JWd6yJ1hNkD7pnHDIq7rswcnHahGMVU4CTFI=;
        b=zZDTXj50NJUYtsoJMVI4UBnkdOFa/BR1tjfzRVP2m/vjyLczlalfh9zilxZiXOJchN
         S7FiGfMBixLntjrFudYTUMd+wH1WVS4IIIa6x6trOnG70K3pxITkpuUm50udmAK8EFem
         +uq2d5RP2FbE6f3pCaevkLQ+ZFnLDsQnT3MY/aFcRglYeTmuQO1Q5K6+jKgJhFOIvzap
         cesJOxuJExEp+W9/JQQDDzd3EHhI2FWkrhZ8kThLsgEPYagfpHb9HMAvVkDeroHbOYPD
         HzaaJS5Qmcm3ZW+IyNUdQZcG86gcN6ocJQxmoumdvbUWgIUzRFYIahPhmq2G56Cg8b7F
         JzSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=IRa2P15JWd6yJ1hNkD7pnHDIq7rswcnHahGMVU4CTFI=;
        b=q+6YZWBHPKqwB4lZ4boA27oFJJ0WrI8wx2/FCQfuT8R+UfQk25O6wMRHNagNAd9Qqv
         UaWjjxJBshHSdQ902cePWEmQhfuR7JIa+Pek2ehrQ/52NqTS3j9X9xu/TEDaQ98Jogfw
         AmQQdO+TKuoJpkCTh3cFS9qcAeSLO7i6yDrYsAa4hiidSxXo9TlSxHAzzGT4N2p6xR4H
         UJHzmDK86gAYvSLbrxm83QrkAG1UW+msihGetE5UTcQr8leuNGhF8wv4swDnAQypOiDW
         yrMmg6uBEfokNYQPF9j5Cu6Bz+WJq/xAnwudlIJ8eyTNsu8q5wVgt2qygVCBIvQBwEfZ
         Nkjg==
X-Gm-Message-State: APjAAAUpHSNb1WVbtBGCo5ncZBe1PbJQOh5CnB5bMiWAzAd8ZLAAHkhC
        7tAD/15h63sA3tqUxF2gim+UOQ==
X-Google-Smtp-Source: APXvYqziK1VPELmI60zIYS1D+M1NyY1LFCBCZDlsW/ln/D5k+VAz/+wP+s++KRHeq9efGtLkL1EslQ==
X-Received: by 2002:a1c:9d8b:: with SMTP id g133mr6774930wme.27.1576161502689;
        Thu, 12 Dec 2019 06:38:22 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id x6sm6781798wmi.44.2019.12.12.06.38.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Dec 2019 06:38:22 -0800 (PST)
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Zumeng Chen <zumeng.chen@windriver.com>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] ARM: dts: zynq: enablement of coresight topology
Date:   Thu, 12 Dec 2019 15:38:20 +0100
Message-Id: <882627bc1ecd622355fb72b742b4e3c013d0b1ca.1576161496.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Zumeng Chen <zumeng.chen@windriver.com>

This patch is to build the coresight topology structure of zynq-7000
series according to the docs of coresight and userguide of zynq-7000.

Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Remove slava-mode from replicator in-ports
- Remove ITM completely

 arch/arm/boot/dts/zynq-7000.dtsi | 135 +++++++++++++++++++++++++++++++
 1 file changed, 135 insertions(+)

diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-7000.dtsi
index ca6425ad794c..db3899b07992 100644
--- a/arch/arm/boot/dts/zynq-7000.dtsi
+++ b/arch/arm/boot/dts/zynq-7000.dtsi
@@ -59,6 +59,39 @@ regulator_vccpint: fixedregulator {
 		regulator-always-on;
 	};
 
+	replicator {
+		compatible = "arm,coresight-static-replicator";
+		clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+		clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+
+		out-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			/* replicator output ports */
+			port@0 {
+				reg = <0>;
+				replicator_out_port0: endpoint {
+					remote-endpoint = <&tpiu_in_port>;
+				};
+			};
+			port@1 {
+				reg = <1>;
+				replicator_out_port1: endpoint {
+					remote-endpoint = <&etb_in_port>;
+				};
+			};
+		};
+		in-ports {
+			/* replicator input port */
+			port {
+				replicator_in_port0: endpoint {
+					remote-endpoint = <&funnel_out_port>;
+				};
+			};
+		};
+	};
+
 	amba: amba {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -365,5 +398,107 @@ watchdog0: watchdog@f8005000 {
 			reg = <0xf8005000 0x1000>;
 			timeout-sec = <10>;
 		};
+
+		etb@f8801000 {
+			compatible = "arm,coresight-etb10", "arm,primecell";
+			reg = <0xf8801000 0x1000>;
+			clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+			clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+			in-ports {
+				port {
+					etb_in_port: endpoint {
+						remote-endpoint = <&replicator_out_port1>;
+					};
+				};
+			};
+		};
+
+		tpiu@f8803000 {
+			compatible = "arm,coresight-tpiu", "arm,primecell";
+			reg = <0xf8803000 0x1000>;
+			clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+			clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+			in-ports {
+				port {
+					tpiu_in_port: endpoint {
+						remote-endpoint = <&replicator_out_port0>;
+					};
+				};
+			};
+		};
+
+		funnel@f8804000 {
+			compatible = "arm,coresight-static-funnel", "arm,primecell";
+			reg = <0xf8804000 0x1000>;
+			clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+			clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+
+			/* funnel output ports */
+			out-ports {
+				port {
+					funnel_out_port: endpoint {
+						remote-endpoint =
+							<&replicator_in_port0>;
+					};
+				};
+			};
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				/* funnel input ports */
+				port@0 {
+					reg = <0>;
+					funnel0_in_port0: endpoint {
+						remote-endpoint = <&ptm0_out_port>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					funnel0_in_port1: endpoint {
+						remote-endpoint = <&ptm1_out_port>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					funnel0_in_port2: endpoint {
+					};
+				};
+				/* The other input ports are not connect to anything */
+			};
+		};
+
+		ptm@f889c000 {
+			compatible = "arm,coresight-etm3x", "arm,primecell";
+			reg = <0xf889c000 0x1000>;
+			clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+			clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+			cpu = <&cpu0>;
+			out-ports {
+				port {
+					ptm0_out_port: endpoint {
+						remote-endpoint = <&funnel0_in_port0>;
+					};
+				};
+			};
+		};
+
+		ptm@f889d000 {
+			compatible = "arm,coresight-etm3x", "arm,primecell";
+			reg = <0xf889d000 0x1000>;
+			clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+			clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+			cpu = <&cpu1>;
+			out-ports {
+				port {
+					ptm1_out_port: endpoint {
+						remote-endpoint = <&funnel0_in_port1>;
+					};
+				};
+			};
+		};
 	};
 };
-- 
2.24.0

