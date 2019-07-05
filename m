Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 80E38608F4
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2019 17:15:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727879AbfGEPPJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Jul 2019 11:15:09 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:38551 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727899AbfGEPPJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Jul 2019 11:15:09 -0400
Received: by mail-pf1-f193.google.com with SMTP id y15so4458776pfn.5
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2019 08:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pnFKwgNsYpmubPKLkJXycKS9VYfFkpb2W871iieZZDk=;
        b=FsMlfk2ZU1BrvhnsQetLbWU/mxumz9RLpLIFkhi3D4wujKxRDkrRQIqZJdyxeCFYMj
         RzGyO7tG+3v1VY1p3FjAPLjLRWM7SyP/hI3Lq57e+JupfcKpTUihhyK6z8rCrkgQMyfH
         J8Ft8lVHesiX0u54DldtCczALimAENg83xEl2PHqLnmdezVUp1TpOf+WrVYdX1tM0h61
         Y0D+wcf4+x3jq6Y08eJ3ckDQm6352vn1sITAsrVWSVd5G232Ok4TLGNMX8JWdnycmbjf
         NeLGBwT7rzeCUjrwD3PwitOwuQnrrY00Spycn59BAFrBR0J4z/YtmG+L/4tGXIpb2xts
         TwsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pnFKwgNsYpmubPKLkJXycKS9VYfFkpb2W871iieZZDk=;
        b=MRvseeqP11xFyBf05GIuM6wCHxDsatiHoWLLey/vIS5l2Sa69Q3VpN3it22vqMRCVv
         4NpdcPBC6ra/eLyXtLJuULeSgzRhBp9E75eLjvxcSjXGM6Sfg8Wm8Tb+fVOcxAhdnJjj
         z41JXCa10t1HNHV99ZX2kSQ9MvZyIL3xu3n7CgxNZt1vH3nw9LkLJt/WugKYeFHMb8ox
         5n4FA9kAwq0X2IE6rjIOGZdKmZU9YoptkkRMwoloOL3RNwS7T4fenwcBlKwfPL15yo1l
         L6NuqhE+RrWDMvfGzRC8wEHuYaN8elJmxHT19NW84c0xr7/9ZEc7KUlDPMxtww/xWFVq
         yNvA==
X-Gm-Message-State: APjAAAWXzt+RXTGmi4a/1EubpGzYroCYApAOU6/uayKJVSWlIFk10XaK
        R4xDtODLHDiClD1N0aMEp7tU
X-Google-Smtp-Source: APXvYqz3mPNH6Ybau1VTJ26KlOtoId3CcrfwCRjbTIhdJy1DoBb5E8LmAdQckUNquFrcjd6b5Isxfg==
X-Received: by 2002:a17:90a:b312:: with SMTP id d18mr6095115pjr.35.1562339708466;
        Fri, 05 Jul 2019 08:15:08 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:916:7317:a59d:72b6:ef7f:a938])
        by smtp.gmail.com with ESMTPSA id w3sm8248778pgl.31.2019.07.05.08.15.00
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 05 Jul 2019 08:15:07 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 2/5] arm64: dts: bitmain: Add clock controller support for BM1880 SoC
Date:   Fri,  5 Jul 2019 20:44:37 +0530
Message-Id: <20190705151440.20844-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add clock controller support for Bitmain BM1880 SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/bitmain/bm1880.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/bitmain/bm1880.dtsi b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
index 86e73af1629c..d2edb2e28bf2 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880.dtsi
+++ b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
@@ -4,6 +4,7 @@
  * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
  */
 
+#include <dt-bindings/clock/bm1880-clock.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 
 / {
@@ -65,6 +66,12 @@
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
 	};
 
+	osc: osc {
+		compatible = "fixed-clock";
+		clock-frequency = <25000000>;
+		#clock-cells = <0>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -93,6 +100,14 @@
 				reg = <0x400 0x120>;
 			};
 
+			clk: clock-controller {
+				compatible = "bitmain,bm1880-clk";
+				reg = <0xe8 0x0c>,<0x800 0xb0>;
+				reg-names = "pll", "sys";
+				clocks = <&osc>;
+				#clock-cells = <1>;
+			};
+
 			rst: reset-controller@c00 {
 				compatible = "bitmain,bm1880-reset";
 				reg = <0xc00 0x8>;
-- 
2.17.1

