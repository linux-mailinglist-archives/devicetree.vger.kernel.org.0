Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5370B3D10BE
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239131AbhGUNZQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:16 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:36411 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234757AbhGUNZQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:16 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id A435C5C021D;
        Wed, 21 Jul 2021 10:05:52 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 21 Jul 2021 10:05:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=yYSvWMusonrmY
        q8fPdKKl99H8nCf4BDNX1J9cL1Tvhk=; b=BzwsOqctKAUaOSTGTlGaDD0rlbmIB
        YPZU+8K/MFGhLNyBhsXSFMUVXE/e2VZQvFdebAvpRE249vY3pJUVYDvO95ptMnO8
        X14YGJLKyFGdSR99RjfwDROUjOVxYKWYKDficyp/Va0Qv7bLOLQcivurHmYbkp3Y
        ArLBHOKPf5Yy5SojpPnkSxnRBzNBSCPjKAsend2CsbsvAE0lYLlxHe7mz9ps7vI3
        5e6nQhNYm6t+iLl0mL5Isf8zhTEaGQAbkfkaJbe6h6gcah17e6xaNmmb7f29ichJ
        NQuwFgpWzeSV1FCbjWw4xK2LpPilYSGa6urij3LfFtmblE8lZxEas8QOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=yYSvWMusonrmYq8fPdKKl99H8nCf4BDNX1J9cL1Tvhk=; b=qYzfjCNI
        Y2xOp68McyxRHvtxKzkX7N3QdNpL5jOCdYwmdVLXGs9heO+ORiMycryq6OPzw8ua
        l1TQqAV4iP9ztTgHmthc1fdhOSyXVe+I7xE5CYDP75nGuYr4s3iCBUBPXscZGoIq
        sYZJMk60+j+K8aqTh0+zkJq0U2Wj+ZrGS/F1293Qu50GPQR/hD2NGmLXTiy2gSX7
        j4ycVbQHH5FFM6smwWrAZN4Gq/lIZYy6BUeg1lX+i+AdAhapVYK8MVIPisPrOLQ4
        xFs3rMOomcWJg1urS1wl1kIettuVCwiMllMfMrL0Q5mWalR8y+OHGbxYlmwUtzKG
        J63gNTWxQjifmQ==
X-ME-Sender: <xms:wCn4YIHX8N4oj0EV97D7U8GYL0sQPZ__SE3wqgUgxfgyEBy5Uwu1CA>
    <xme:wCn4YBXECx80GeC7jkjPrHDfe96gLVO1PVJSJ3ArgKfZ2_8uSKUbU1bbtyBfiOTQm
    K8nmd0GZpoicXZWKXw>
X-ME-Received: <xmr:wCn4YCKz6bofaA9qzVszNGwHebuZQxYUDmlJmECfeiG9FSZdEfVJkLGXBBvi8V2TyuRG9HlH70cHCj_wOh2hkqTSUjnFWwjZebfQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:wCn4YKE9rXDc09rUsAzhbJzPOLpBlVoIP1-xaLDL5-hBm3WoxQJEjQ>
    <xmx:wCn4YOWn0UnjzXGf84-s4HD3T7PXNfyvJ0uMItgbFffKWNSRyJnsOQ>
    <xmx:wCn4YNPWHqkIVWgo8ah8LWxpDK6uHqbu_lAIvqsk3uPwMWqY_vFjHQ>
    <xmx:wCn4YAIfty7RkdfQrBUpvB3ixhfxXIDtezNQg_NpwibmczKTQ5OHmw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:52 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 41/54] ARM: dts: sunxi: Fix OPP arrays
Date:   Wed, 21 Jul 2021 16:04:11 +0200
Message-Id: <20210721140424.725744-42-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though it translates to the same thing down to the binary level, we
should have an array of 2 number cells to describe each OPP, which in
turns create a validation warning.

Let's fix this.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../arm/boot/dts/sun4i-a10-olinuxino-lime.dts | 11 +++--
 arch/arm/boot/dts/sun4i-a10.dtsi              | 11 +++--
 arch/arm/boot/dts/sun5i-a13.dtsi              | 15 +++----
 arch/arm/boot/dts/sun6i-a31.dtsi              | 44 +++++++++----------
 arch/arm/boot/dts/sun7i-a20-bananapi.dts      | 17 ++++---
 arch/arm/boot/dts/sun7i-a20.dtsi              | 34 +++++++-------
 6 files changed, 61 insertions(+), 71 deletions(-)

diff --git a/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts b/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts
index ad0e25af45be..83d283cf6633 100644
--- a/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts
+++ b/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts
@@ -91,12 +91,11 @@ &cpu0 {
 	/*
 	 * The A10-Lime is known to be unstable when running at 1008 MHz
 	 */
-	operating-points = <
-		/* kHz    uV */
-		912000  1350000
-		864000  1300000
-		624000  1250000
-		>;
+	operating-points =
+		/* kHz	  uV */
+		<912000	1350000>,
+		<864000	1300000>,
+		<624000	1250000>;
 };
 
 &de {
diff --git a/arch/arm/boot/dts/sun4i-a10.dtsi b/arch/arm/boot/dts/sun4i-a10.dtsi
index 1c5a666c54b5..51a6464aab9a 100644
--- a/arch/arm/boot/dts/sun4i-a10.dtsi
+++ b/arch/arm/boot/dts/sun4i-a10.dtsi
@@ -115,13 +115,12 @@ cpu0: cpu@0 {
 			reg = <0x0>;
 			clocks = <&ccu CLK_CPU>;
 			clock-latency = <244144>; /* 8 32k periods */
-			operating-points = <
+			operating-points =
 				/* kHz	  uV */
-				1008000 1400000
-				912000	1350000
-				864000	1300000
-				624000	1250000
-				>;
+				<1008000 1400000>,
+				<912000	1350000>,
+				<864000	1300000>,
+				<624000	1250000>;
 			#cooling-cells = <2>;
 		};
 	};
diff --git a/arch/arm/boot/dts/sun5i-a13.dtsi b/arch/arm/boot/dts/sun5i-a13.dtsi
index 7075e10911d5..3325ab07094a 100644
--- a/arch/arm/boot/dts/sun5i-a13.dtsi
+++ b/arch/arm/boot/dts/sun5i-a13.dtsi
@@ -102,15 +102,14 @@ &ccu {
 
 &cpu0 {
 	clock-latency = <244144>; /* 8 32k periods */
-	operating-points = <
+	operating-points =
 		/* kHz	  uV */
-		1008000 1400000
-		912000	1350000
-		864000	1300000
-		624000	1200000
-		576000	1200000
-		432000	1200000
-		>;
+		<1008000 1400000>,
+		<912000 1350000>,
+		<864000 1300000>,
+		<624000 1200000>,
+		<576000 1200000>,
+		<432000 1200000>;
 	#cooling-cells = <2>;
 };
 
diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index a31f9072bf79..715d74854449 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -105,13 +105,12 @@ cpu0: cpu@0 {
 			reg = <0>;
 			clocks = <&ccu CLK_CPU>;
 			clock-latency = <244144>; /* 8 32k periods */
-			operating-points = <
+			operating-points =
 				/* kHz	  uV */
-				1008000	1200000
-				864000	1200000
-				720000	1100000
-				480000	1000000
-				>;
+				<1008000 1200000>,
+				<864000 1200000>,
+				<720000 1100000>,
+				<480000 1000000>;
 			#cooling-cells = <2>;
 		};
 
@@ -121,13 +120,12 @@ cpu1: cpu@1 {
 			reg = <1>;
 			clocks = <&ccu CLK_CPU>;
 			clock-latency = <244144>; /* 8 32k periods */
-			operating-points = <
+			operating-points =
 				/* kHz	  uV */
-				1008000	1200000
-				864000	1200000
-				720000	1100000
-				480000	1000000
-				>;
+				<1008000 1200000>,
+				<864000 1200000>,
+				<720000 1100000>,
+				<480000 1000000>;
 			#cooling-cells = <2>;
 		};
 
@@ -137,13 +135,12 @@ cpu2: cpu@2 {
 			reg = <2>;
 			clocks = <&ccu CLK_CPU>;
 			clock-latency = <244144>; /* 8 32k periods */
-			operating-points = <
+			operating-points =
 				/* kHz	  uV */
-				1008000	1200000
-				864000	1200000
-				720000	1100000
-				480000	1000000
-				>;
+				<1008000 1200000>,
+				<864000 1200000>,
+				<720000 1100000>,
+				<480000 1000000>;
 			#cooling-cells = <2>;
 		};
 
@@ -153,13 +150,12 @@ cpu3: cpu@3 {
 			reg = <3>;
 			clocks = <&ccu CLK_CPU>;
 			clock-latency = <244144>; /* 8 32k periods */
-			operating-points = <
+			operating-points =
 				/* kHz	  uV */
-				1008000	1200000
-				864000	1200000
-				720000	1100000
-				480000	1000000
-				>;
+				<1008000 1200000>,
+				<864000 1200000>,
+				<720000 1100000>,
+				<480000 1000000>;
 			#cooling-cells = <2>;
 		};
 	};
diff --git a/arch/arm/boot/dts/sun7i-a20-bananapi.dts b/arch/arm/boot/dts/sun7i-a20-bananapi.dts
index 9d792d7a0f92..46ecf9db2324 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapi.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapi.dts
@@ -104,16 +104,15 @@ &codec {
 
 &cpu0 {
 	cpu-supply = <&reg_dcdc2>;
-	operating-points = <
+	operating-points =
 		/* kHz	  uV */
-		960000	1400000
-		912000	1400000
-		864000	1350000
-		720000	1250000
-		528000	1150000
-		312000	1100000
-		144000	1050000
-		>;
+		<960000	1400000>,
+		<912000	1400000>,
+		<864000	1350000>,
+		<720000	1250000>,
+		<528000	1150000>,
+		<312000	1100000>,
+		<144000	1050000>;
 };
 
 &de {
diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index 5a40e0280665..5574299685ab 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -106,16 +106,15 @@ cpu0: cpu@0 {
 			reg = <0>;
 			clocks = <&ccu CLK_CPU>;
 			clock-latency = <244144>; /* 8 32k periods */
-			operating-points = <
+			operating-points =
 				/* kHz	  uV */
-				960000	1400000
-				912000	1400000
-				864000	1300000
-				720000	1200000
-				528000	1100000
-				312000	1000000
-				144000	1000000
-				>;
+				<960000	1400000>,
+				<912000	1400000>,
+				<864000	1300000>,
+				<720000	1200000>,
+				<528000	1100000>,
+				<312000	1000000>,
+				<144000	1000000>;
 			#cooling-cells = <2>;
 		};
 
@@ -125,16 +124,15 @@ cpu1: cpu@1 {
 			reg = <1>;
 			clocks = <&ccu CLK_CPU>;
 			clock-latency = <244144>; /* 8 32k periods */
-			operating-points = <
+			operating-points =
 				/* kHz	  uV */
-				960000	1400000
-				912000	1400000
-				864000	1300000
-				720000	1200000
-				528000	1100000
-				312000	1000000
-				144000	1000000
-				>;
+				<960000	1400000>,
+				<912000	1400000>,
+				<864000	1300000>,
+				<720000	1200000>,
+				<528000	1100000>,
+				<312000	1000000>,
+				<144000	1000000>;
 			#cooling-cells = <2>;
 		};
 	};
-- 
2.31.1

