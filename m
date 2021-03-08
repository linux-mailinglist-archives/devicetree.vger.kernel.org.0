Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DFA3331435
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:11:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230143AbhCHRKe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:10:34 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:33158 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230200AbhCHRJ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:09:59 -0500
Received: from mail-wr1-f72.google.com ([209.85.221.72])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJJOI-0003Ja-JL
        for devicetree@vger.kernel.org; Mon, 08 Mar 2021 17:09:58 +0000
Received: by mail-wr1-f72.google.com with SMTP id z6so5086161wrh.11
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:09:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6bdm0sjGtk8ALuy1N/+43SmVtmn6LvoyCFMfDfYjuck=;
        b=N9itZTB5uUv5lvXK+skt97RpDwf8n/9tk5mUMkn1IO2mnYehZxZ2gtOI6S98GMTb6y
         W6lkR5+gMrntHMujrqm1XuaveKI+iEP8zGolBq5pSY7AQJwjBke8hYfpRbPuCkFe3/Oh
         I/qGmsgYFCcpDoE2kvL7e21Rr7Y4DFPcbEXRNyj0dc3Fz153pu/aQDAmpksImk3nIN+w
         k8XvTwWFcqJ7poyQ9LPYwglfgp1gXANxUXMqhX0VHIaeMLynAxKflLeB7nzKvEZ/FBHR
         FHhMsx7GcvkljzpCMLNIS8IHrQ8qu1xGC7JgR0ItahvFwDLqf9swSWlK1ZWee+QJdRV0
         dx7w==
X-Gm-Message-State: AOAM530KrnQ9EUWCkEuspUlEWGDM5ZPYxMjnEQhjbq3zZUN8txZbEAO/
        fJyJYeoHOP0bigu5ZfQOgf0PC3RVcMA62v32K40Dc7Hyv6tBTo/xMulxGZ0h35tHUUoMqmCAKRJ
        +wLDan9psbkgSd15pNRiFQ/SDSlof9+b1D54xBnw=
X-Received: by 2002:a7b:c316:: with SMTP id k22mr12209066wmj.176.1615223398178;
        Mon, 08 Mar 2021 09:09:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy/vaioWrZfMyz0ifoB5yEGjPUKvGhG+eDmZX8KoWdrhuVHiFg7sKbEpL2kmn7OTH+70AH7xA==
X-Received: by 2002:a7b:c316:: with SMTP id k22mr12209049wmj.176.1615223398072;
        Mon, 08 Mar 2021 09:09:58 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id c11sm19568762wrs.28.2021.03.08.09.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:09:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND 2nd PATCH 03/10] arm64: dts: intel: socfpga_agilex: move clocks out of soc node
Date:   Mon,  8 Mar 2021 18:09:38 +0100
Message-Id: <20210308170945.161468-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
References: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

The clocks are usually not part of the SoC but provided on the board
(external oscillators).  Moving them out of soc node fixes dtc warning:

    arch/arm64/boot/dts/intel/socfpga_agilex.dtsi:111.10-137.5:
        Warning (simple_bus_reg): /soc/clocks: missing or empty reg/ranges property

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 56 +++++++++----------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 07c099b4ed5b..8f0736e4f3b5 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -87,6 +87,34 @@ intc: intc@fffc1000 {
 		      <0x0 0xfffc6000 0x0 0x2000>;
 	};
 
+	clocks {
+		cb_intosc_hs_div2_clk: cb-intosc-hs-div2-clk {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+		};
+
+		cb_intosc_ls_clk: cb-intosc-ls-clk {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+		};
+
+		f2s_free_clk: f2s-free-clk {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+		};
+
+		osc1: osc1 {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+		};
+
+		qspi_clk: qspi-clk {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			clock-frequency = <200000000>;
+		};
+	};
+
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -108,34 +136,6 @@ clkmgr: clock-controller@ffd10000 {
 			#clock-cells = <1>;
 		};
 
-		clocks {
-			cb_intosc_hs_div2_clk: cb-intosc-hs-div2-clk {
-				#clock-cells = <0>;
-				compatible = "fixed-clock";
-			};
-
-			cb_intosc_ls_clk: cb-intosc-ls-clk {
-				#clock-cells = <0>;
-				compatible = "fixed-clock";
-			};
-
-			f2s_free_clk: f2s-free-clk {
-				#clock-cells = <0>;
-				compatible = "fixed-clock";
-			};
-
-			osc1: osc1 {
-				#clock-cells = <0>;
-				compatible = "fixed-clock";
-			};
-
-			qspi_clk: qspi-clk {
-				#clock-cells = <0>;
-				compatible = "fixed-clock";
-				clock-frequency = <200000000>;
-			};
-		};
-
 		gmac0: ethernet@ff800000 {
 			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.74a", "snps,dwmac";
 			reg = <0xff800000 0x2000>;
-- 
2.25.1

