Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E6273FD697
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243574AbhIAJVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:07 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:36897 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243570AbhIAJVF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:05 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id BA6EF5C0220;
        Wed,  1 Sep 2021 05:20:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 01 Sep 2021 05:20:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=yYSvWMusonrmY
        q8fPdKKl99H8nCf4BDNX1J9cL1Tvhk=; b=u+NnuX7oi5FSkwL5WPP9HFlv3lyQq
        cJc6kCs2MSeXHOTo0eoEffLUYPUybdT/fzvsKoSP1Zw3eTc8PRFORYl2Q86o4N/d
        qXZUp25SAkXS7bSvdXXhnzRKF0BAFUnmw/nS8IOasf636kgHaDAc8t3XQHBbO6jp
        y6dO4uB3bM7jxkJW3UhTUPXFBkpeshHUbJcCDL1Gv+mGtkuMKvFNTZpisUcSZV5L
        ck208u7k0K5/IY276fbSt/ULaMDpOd/HHdbYVs/6syR5DcXf7/AOkwZH2DjcPr4l
        TiNjrZ4fK1l5YzHvtWAoMkCCP+/uBVDT2sFkuketFc+n9x2RGts4mwLIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=yYSvWMusonrmYq8fPdKKl99H8nCf4BDNX1J9cL1Tvhk=; b=wdUTUjwG
        5uZx26TWI3D++4Uly9sZz6LnM0BryD2OP7LSwoerOwb2wiwbpLzOC/79eYQ8x12E
        pKuzquUHNmAZELMpivIcz0Awz8PfCqPtqS4k8QNiWdIjhbalunHB6tJwGJOUZhaM
        VjkkL1kUbXEqeBpBmgXl4DuXsXitTDiOfNrAVWKvItqG/RN/8NsZbVvhCv2BXzab
        dnW8pqPTi8x/if256Wbm08FmMLtoL1VvzIDL2Z+o/07TgvXmG6UnJBpJngwG/ovV
        X70Jz5h6DmLcud2F3zkOd/6FF8uOHmFvTbyRC3Jwrv+hMqFDjfJlZ56oT0d/XpUe
        QJTrKXiKJ05YKA==
X-ME-Sender: <xms:yEUvYXxXxvVqXavFxGU9dfy_IJIEGw6z2QQ3mgKGSLNwUigR007o-g>
    <xme:yEUvYfTDUk7QtoSlFJdNtHFwoQTO24kYyLGk8wGHf0DYNilxorHXH5mP886OrXWOt
    KuSvhc2G9SAPno2QRM>
X-ME-Received: <xmr:yEUvYRX_mulAzUIF29ZVvCofyIulZx1MFo1TXHq8vfLP-vtVFL81KQP4bvlZfe1oqsYhkDhEjaF0hbzgIwL2chtm2iwI_ClbGV-O>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepfeenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:yEUvYRjmalou4a63hT8ObL8fpVUFS-ed7BVhR9p9BsFE7FDWZXE9Lg>
    <xmx:yEUvYZBMobT3F3UVMJLrFbqxduOiv4p-UcDlINtYfz2ZvwV3Ozqq5w>
    <xmx:yEUvYaKVHcmT4EDvtLP2V5MH1FQKOWqTPGZLNgA8k3tVzDmcz50E5A>
    <xmx:yEUvYb2TqMMt4U3EbXVa9RAMpyHWDhxh_j1o4-SFk5VO3CVStGfvoQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:08 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 41/52] ARM: dts: sunxi: Fix OPP arrays
Date:   Wed,  1 Sep 2021 11:18:41 +0200
Message-Id: <20210901091852.479202-42-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
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

