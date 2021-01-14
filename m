Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A91102F6058
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729117AbhANLiP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:38:15 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:38493 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726259AbhANLhk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:40 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 8908415F9;
        Thu, 14 Jan 2021 06:36:05 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:36:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=Ug7edZVw2un8S
        a6iJImclDs/FAlC+jEIVLVhExbqMgs=; b=d6QbZHyrMq5zWdeZj1RVmvX3Jo8Hx
        7hdNh9NDYMcEiwDs/t94nBFx19nn8ojZbanYVE5Cahc4KrqxXjC4KCbPFAfu7A1e
        OBdSQGyhUbnd5RraXSkXmV8xV117CKJ6tBYMSoK5X7VyXjkskCv1VSp66QYMRiYF
        4GDtr7hWabncMRYw9TxtYAdM79KKpaPHsgbkXd6/PM2HhbOWU0R4rSUFFNThYpXW
        v7GqRZoyi7QNjbSYHEjiocA2mDG3DOwdNQzvQ2b0WPn6MnjypzfBj6+B9l8YVJ2p
        2FYHZTLfa0UxJ8DktVuFX2f1ETYsDMZrobkppgfqSkwJICem+ViGH9F2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=Ug7edZVw2un8Sa6iJImclDs/FAlC+jEIVLVhExbqMgs=; b=akO4u5ou
        t2CpMD5tBNKA0LAbXCGFVtr/ViHFaGW7/amini94pvvT+MxbNYCPLOHXQR2MAWxu
        XheOsWvMdZOCGbJ72GguZRKU/CMnP54LKr3qi2calb6ONb/ZpWq029FQxgXPqy0M
        0KOe4uVUsQ02yXCZunUW8vHZVtDQkcnkW90Sda47MkvFQTMuqaHJadEcQjmRTKOL
        bDRV299QxgXjYBr1LwrtY4/GwXfTQ0ahchVTygs/tlXCWbdU2QT7Ganikse4jrp+
        yYdBsIxaqObXwyilcTFJFFQszbUHuVQ9UBQfXV6od7QR55fxi8m/Uub0koAn8EiU
        1nRVGey7opeGSg==
X-ME-Sender: <xms:pCwAYDnb4AZCcnxm8vQ0qyOvkSte7bO7ppy_u_pOKIfhXdO1CqnieA>
    <xme:pCwAYG2pNMFDVk0jpvug7CPtawjzGj3C26Zo3y1VCTu1gaEliYS3UC9wTL5dDwS8W
    wMoGbMzhmsIr36PTIc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedutdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:pSwAYJppgEFbpVzAB1E0h7rIQah1HbbvswegAijCGD3eHjuVgoEjcw>
    <xmx:pSwAYLm-aG3GkmIlBQT7dQaMmsOji7jNfG-ujUhIuAKNsyfRj7JvGg>
    <xmx:pSwAYB0vwy1nu-JcQuY4aX-AGS5tAgS3LbpCKQSGAAJlu1zJpwNFXQ>
    <xmx:pSwAYMTFE4GhYmYdHbOsElVeX0559lNY-EBtoLaLzrcbf__zMUMxnA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id B88E5108005B;
        Thu, 14 Jan 2021 06:36:04 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 16/19] arm64: dts: allwinner: h6: Use - instead of @ for DT OPP entries
Date:   Thu, 14 Jan 2021 12:35:35 +0100
Message-Id: <20210114113538.1233933-16-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DTC and the dt-validate tools report warnings for opp with the format
opp@$frequency: dtc for a missing reg property, and dt-validate since
the binding requires child nodes to have the format opp-$frequency.

Change this to the latter format.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi
index 1a5eddc5a40f..8c6e8536b69f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi
@@ -8,7 +8,7 @@ cpu_opp_table: cpu-opp-table {
 		nvmem-cells = <&cpu_speed_grade>;
 		opp-shared;
 
-		opp@480000000 {
+		opp-480000000 {
 			clock-latency-ns = <244144>; /* 8 32k periods */
 			opp-hz = /bits/ 64 <480000000>;
 
@@ -17,7 +17,7 @@ opp@480000000 {
 			opp-microvolt-speed2 = <820000 820000 1200000>;
 		};
 
-		opp@720000000 {
+		opp-720000000 {
 			clock-latency-ns = <244144>; /* 8 32k periods */
 			opp-hz = /bits/ 64 <720000000>;
 
@@ -26,7 +26,7 @@ opp@720000000 {
 			opp-microvolt-speed2 = <820000 820000 1200000>;
 		};
 
-		opp@816000000 {
+		opp-816000000 {
 			clock-latency-ns = <244144>; /* 8 32k periods */
 			opp-hz = /bits/ 64 <816000000>;
 
@@ -35,7 +35,7 @@ opp@816000000 {
 			opp-microvolt-speed2 = <820000 820000 1200000>;
 		};
 
-		opp@888000000 {
+		opp-888000000 {
 			clock-latency-ns = <244144>; /* 8 32k periods */
 			opp-hz = /bits/ 64 <888000000>;
 
@@ -44,7 +44,7 @@ opp@888000000 {
 			opp-microvolt-speed2 = <820000 820000 1200000>;
 		};
 
-		opp@1080000000 {
+		opp-1080000000 {
 			clock-latency-ns = <244144>; /* 8 32k periods */
 			opp-hz = /bits/ 64 <1080000000>;
 
@@ -53,7 +53,7 @@ opp@1080000000 {
 			opp-microvolt-speed2 = <880000 880000 1200000>;
 		};
 
-		opp@1320000000 {
+		opp-1320000000 {
 			clock-latency-ns = <244144>; /* 8 32k periods */
 			opp-hz = /bits/ 64 <1320000000>;
 
@@ -62,7 +62,7 @@ opp@1320000000 {
 			opp-microvolt-speed2 = <940000 940000 1200000>;
 		};
 
-		opp@1488000000 {
+		opp-1488000000 {
 			clock-latency-ns = <244144>; /* 8 32k periods */
 			opp-hz = /bits/ 64 <1488000000>;
 
@@ -71,7 +71,7 @@ opp@1488000000 {
 			opp-microvolt-speed2 = <1000000 1000000 1200000>;
 		};
 
-		opp@1608000000 {
+		opp-1608000000 {
 			clock-latency-ns = <244144>; /* 8 32k periods */
 			opp-hz = /bits/ 64 <1608000000>;
 
@@ -80,7 +80,7 @@ opp@1608000000 {
 			opp-microvolt-speed2 = <1030000 1030000 1200000>;
 		};
 
-		opp@1704000000 {
+		opp-1704000000 {
 			clock-latency-ns = <244144>; /* 8 32k periods */
 			opp-hz = /bits/ 64 <1704000000>;
 
@@ -89,7 +89,7 @@ opp@1704000000 {
 			opp-microvolt-speed2 = <1060000 1060000 1200000>;
 		};
 
-		opp@1800000000 {
+		opp-1800000000 {
 			clock-latency-ns = <244144>; /* 8 32k periods */
 			opp-hz = /bits/ 64 <1800000000>;
 
-- 
2.29.2

