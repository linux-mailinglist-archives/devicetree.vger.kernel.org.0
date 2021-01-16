Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA68B2F8E93
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 19:06:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727704AbhAPSGg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jan 2021 13:06:36 -0500
Received: from mail-out.m-online.net ([212.18.0.9]:47216 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727663AbhAPSGf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Jan 2021 13:06:35 -0500
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4DJ5Z64Qcbz1qs0p;
        Sat, 16 Jan 2021 19:05:34 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4DJ5Z63jNfz1qqkn;
        Sat, 16 Jan 2021 19:05:34 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id YsgKP4Ot00dp; Sat, 16 Jan 2021 19:05:33 +0100 (CET)
X-Auth-Info: DgP2Scq84PJFIgJmKrhhYnT8L6xBn47Wx0HdBALYiys=
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sat, 16 Jan 2021 19:05:33 +0100 (CET)
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Ludovic Barre <ludovic.barre@st.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: stm32: Rename mmc controller nodes to mmc@
Date:   Sat, 16 Jan 2021 19:05:27 +0100
Message-Id: <20210116180527.57532-1-marex@denx.de>
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
 arch/arm/boot/dts/stm32f429.dtsi  | 2 +-
 arch/arm/boot/dts/stm32f746.dtsi  | 4 ++--
 arch/arm/boot/dts/stm32mp151.dtsi | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)

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

