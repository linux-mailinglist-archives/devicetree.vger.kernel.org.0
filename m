Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACE1F33143D
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:11:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230327AbhCHRKg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:10:36 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:33253 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230439AbhCHRKE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:10:04 -0500
Received: from mail-wr1-f69.google.com ([209.85.221.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJJON-0003PH-EC
        for devicetree@vger.kernel.org; Mon, 08 Mar 2021 17:10:03 +0000
Received: by mail-wr1-f69.google.com with SMTP id 75so5063400wrl.3
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:10:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ncNIlFsguYiY4EF+KxnIV2xUChGRcZpDkfhtUUnJSss=;
        b=lcntKYxENmjjtU3iIhw4Zq3GImJIklP/NDvkfQbOOYrD9Ckt5aXc+fTb1vuESHbE/l
         NpJBFDQjeVyFQgqRPpE5ldxQ2rlzXdbYK23E/3RStpalrRJO/FWoI/5P8/wgtnRW7k9K
         3V79Vy4baSpIjRSWEapzU5mNCK+MDjqQrHP32gvjhYv1by4Dci2hDd+yJOXDAR4dTFFO
         X4cE8qJG8EmWAGhdt9tSnWzrFRd0xxqt7GvgX12aIA4IO9K8bbNrG0cNdpDebx7+PDgR
         PVZ+0a8nExB8e2GKzM4mOs+EXsC12dKFwgJ1z0G2AYvxoVjcMO3JMSSM5q4XbV+pF/LQ
         +tzw==
X-Gm-Message-State: AOAM531CPlssOc0qP7VYVHnCnflJMQG/AntUqe2r5d3J3IjZ2PMmBfSM
        VZPMODQodzXl2jAZ3stilPCRayaGJTwJNCaLUzMOAoQkLHw2KhBb4uoB0Snmvq4MlzOBNMZXNhu
        4zvoVd5k4dfR+7UaJ0glty30RTYCGfWkNwIHQIoY=
X-Received: by 2002:a1c:6a05:: with SMTP id f5mr23064139wmc.75.1615223403147;
        Mon, 08 Mar 2021 09:10:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJynHW0REjkwiR9tjpHrXCCFWLKx3SXjo9gDBvdZo+0uKZAhz3wSWTrLAfBYT39sHPr5aWe/nw==
X-Received: by 2002:a1c:6a05:: with SMTP id f5mr23064130wmc.75.1615223403027;
        Mon, 08 Mar 2021 09:10:03 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id c11sm19568762wrs.28.2021.03.08.09.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:10:02 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND 2nd PATCH 08/10] arm64: dts: intel: socfpga_agilex: align node names with dtschema
Date:   Mon,  8 Mar 2021 18:09:43 +0100
Message-Id: <20210308170945.161468-9-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
References: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

Align the NAND, GIC and UART node names with dtschema to silence
dtbs_check warnings like:

    arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dt.yaml:
        intc@fffc1000: $nodename:0: 'intc@fffc1000' does not match '^interrupt-controller(@[0-9a-f,]+)*$'
    arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dt.yaml:
        serial0@ffc02000: $nodename:0: 'serial0@ffc02000' does not match '^serial(@[0-9a-f,]+)*$'

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 3cba4c03d560..163f33b46e4f 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -78,7 +78,7 @@ psci {
 		method = "smc";
 	};
 
-	intc: intc@fffc1000 {
+	intc: interrupt-controller@fffc1000 {
 		compatible = "arm,gic-400", "arm,cortex-a15-gic";
 		#interrupt-cells = <3>;
 		interrupt-controller;
@@ -316,7 +316,7 @@ mmc: dwmmc0@ff808000 {
 			status = "disabled";
 		};
 
-		nand: nand@ffb90000 {
+		nand: nand-controller@ffb90000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			compatible = "altr,socfpga-denali-nand";
@@ -479,7 +479,7 @@ timer3: timer3@ffd00100 {
 			clock-names = "timer";
 		};
 
-		uart0: serial0@ffc02000 {
+		uart0: serial@ffc02000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xffc02000 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
@@ -490,7 +490,7 @@ uart0: serial0@ffc02000 {
 			clocks = <&clkmgr AGILEX_L4_SP_CLK>;
 		};
 
-		uart1: serial1@ffc02100 {
+		uart1: serial@ffc02100 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xffc02100 0x100>;
 			interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.25.1

