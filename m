Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C881D301DD0
	for <lists+devicetree@lfdr.de>; Sun, 24 Jan 2021 18:05:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726041AbhAXRE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Jan 2021 12:04:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725798AbhAXREz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Jan 2021 12:04:55 -0500
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E205C06174A
        for <devicetree@vger.kernel.org>; Sun, 24 Jan 2021 09:04:14 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4DNzq41Mwwz1rypl;
        Sun, 24 Jan 2021 18:03:44 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4DNzq40sd3z1tYWg;
        Sun, 24 Jan 2021 18:03:44 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id 0lgeyNOPJ06X; Sun, 24 Jan 2021 18:03:42 +0100 (CET)
X-Auth-Info: VUSjwYk+C3xvJGqCpa11C2WD1zkVUEgTNVi6c5ABBWo=
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sun, 24 Jan 2021 18:03:42 +0100 (CET)
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Ludovic Barre <ludovic.barre@st.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        devicetree@vger.kernel.org
Subject: [PATCH V2] ARM: dts: stm32: Rename mmc controller nodes to mmc@
Date:   Sun, 24 Jan 2021 18:03:37 +0100
Message-Id: <20210124170337.32917-1-marex@denx.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Per mmc-controller.yaml, the node pattern is "^mmc(@.*)?$" ,
so adjust the node.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Ludovic Barre <ludovic.barre@st.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: devicetree@vger.kernel.org
---
V2: Fix stm32h743.dtsi
---
 arch/arm/boot/dts/stm32f429.dtsi  | 2 +-
 arch/arm/boot/dts/stm32f746.dtsi  | 4 ++--
 arch/arm/boot/dts/stm32h743.dtsi  | 2 +-
 arch/arm/boot/dts/stm32mp151.dtsi | 6 +++---
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index ad715a0e1c9a..f6530d724d00 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -566,7 +566,7 @@ adc3: adc@200 {
 			};
 		};
 
-		sdio: sdio@40012c00 {
+		sdio: mmc@40012c00 {
 			compatible = "arm,pl180", "arm,primecell";
 			arm,primecell-periphid = <0x00880180>;
 			reg = <0x40012c00 0x400>;
diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
index 640ff54ed00c..e1df603fc981 100644
--- a/arch/arm/boot/dts/stm32f746.dtsi
+++ b/arch/arm/boot/dts/stm32f746.dtsi
@@ -473,7 +473,7 @@ usart6: serial@40011400 {
 			status = "disabled";
 		};
 
-		sdio2: sdio2@40011c00 {
+		sdio2: mmc@40011c00 {
 			compatible = "arm,pl180", "arm,primecell";
 			arm,primecell-periphid = <0x00880180>;
 			reg = <0x40011c00 0x400>;
@@ -484,7 +484,7 @@ sdio2: sdio2@40011c00 {
 			status = "disabled";
 		};
 
-		sdio1: sdio1@40012c00 {
+		sdio1: mmc@40012c00 {
 			compatible = "arm,pl180", "arm,primecell";
 			arm,primecell-periphid = <0x00880180>;
 			reg = <0x40012c00 0x400>;
diff --git a/arch/arm/boot/dts/stm32h743.dtsi b/arch/arm/boot/dts/stm32h743.dtsi
index b083afd0ebd6..4ebffb0a45a3 100644
--- a/arch/arm/boot/dts/stm32h743.dtsi
+++ b/arch/arm/boot/dts/stm32h743.dtsi
@@ -354,7 +354,7 @@ mdma1: dma-controller@52000000 {
 			dma-requests = <32>;
 		};
 
-		sdmmc1: sdmmc@52007000 {
+		sdmmc1: mmc@52007000 {
 			compatible = "arm,pl18x", "arm,primecell";
 			arm,primecell-periphid = <0x10153180>;
 			reg = <0x52007000 0x1000>;
diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 8c2a5d0875d8..33777a80799a 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -1055,7 +1055,7 @@ adc2: adc@100 {
 			};
 		};
 
-		sdmmc3: sdmmc@48004000 {
+		sdmmc3: mmc@48004000 {
 			compatible = "arm,pl18x", "arm,primecell";
 			arm,primecell-periphid = <0x00253180>;
 			reg = <0x48004000 0x400>;
@@ -1375,7 +1375,7 @@ qspi: spi@58003000 {
 			status = "disabled";
 		};
 
-		sdmmc1: sdmmc@58005000 {
+		sdmmc1: mmc@58005000 {
 			compatible = "arm,pl18x", "arm,primecell";
 			arm,primecell-periphid = <0x00253180>;
 			reg = <0x58005000 0x1000>;
@@ -1390,7 +1390,7 @@ sdmmc1: sdmmc@58005000 {
 			status = "disabled";
 		};
 
-		sdmmc2: sdmmc@58007000 {
+		sdmmc2: mmc@58007000 {
 			compatible = "arm,pl18x", "arm,primecell";
 			arm,primecell-periphid = <0x00253180>;
 			reg = <0x58007000 0x1000>;
-- 
2.29.2

