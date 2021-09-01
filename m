Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4590A3FD699
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243559AbhIAJVI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:08 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:36269 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243564AbhIAJVH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:07 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 567FB5C023B;
        Wed,  1 Sep 2021 05:20:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:20:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-type:content-transfer-encoding; s=fm3; bh=
        K77lIztLhFjFoR/a+5768JAAgySjOfX2tYwOpxLFqbY=; b=jxtpCU9Ck63nnYtp
        x+Qb99LvQa4Ts4zxnrdHhTjPeQJYo0nQsYb8JZG/4y52LYTORRozkL3RQan0b8pu
        6YAsAxo5CBVosvB95+cVPigd9kkI/YEb8XHYZtRNkcVIZ2unCj4PXaiSVeIpF79R
        zhrIqfSaLW7irPi4798XDCxKUq5XboidNIu28PIHd2tAdwN6pd1Yg3rK9lPuUsAn
        8bIa6KvcOuFK/3sPMh2KdHh0Y+C7SxWI+H4ZPasgyQ/Uj6w0DYwqtRgnCd3CLad0
        5vGEmJRRH3dH5QELgw0KDRVbnyLL6nSnoX5VtRVanWO51N6Wntgukgepowm8liZf
        VFjHJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:in-reply-to:message-id:mime-version:references
        :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm3; bh=K77lIztLhFjFoR/a+5768JAAgySjOfX2tYwOpxLFq
        bY=; b=F6vuvovxEIvxrMzmrhU2U4W2YXBoO4vHSGaDhjUn4x9RIPfHTG4pZ3sAe
        OQHKGMtfbtfPqEbz9qBXJSsbXvU1TIy78IshNE86kzOpx2GLX+YSTNlJCo5eBtOE
        Uyi0cgYAeW4NoCDJSLbAmDy+gmihacs04Xlvi7x3tYybz8YQrtH0y8o7SNih4e8X
        3CNdWDu3pHhthz7x4akXp3WdXpyWS57Nvd4zQVEuRrm/V/MOo8Obm+mlP3+vnQN4
        hzjDnM956TPY/hL5VyWOHJtGCLOQwczxg5wNqJkodh7GwSX3BO4tkdeIkhP+bHWy
        3dqazRmEGXav4oexojxQkM9hiXGHw==
X-ME-Sender: <xms:ykUvYU0QfW6mdZ4vzr6pmVJmxcU5cydprfvdfDivLbL-Yd9ARwtRhA>
    <xme:ykUvYfE613wWTVUvsC8VIFzL5kOV_Kdv7PlEk19yK0t0RInb-f1Sggq6zBugxkR6L
    IRtP3n3qSw2CBbTl7Q>
X-ME-Received: <xmr:ykUvYc72JNKcBcktluzOqzxr5Ewb595qmhsAr3CdsS_Bu3rkOXg03P5y3Pnkrll4xf51_EzQ-6CD8iRoKMvXN2a-AGC1jpocHe44>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeejuefggeekfffgueevtddvudffhfejffejjedvvdduudethefhfefhfeeg
    ieekkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ykUvYd2VRR66aTuKgJqV8zQBVnmVsvK4NzYfhV8FXYptSJxyM0CmWw>
    <xmx:ykUvYXEhRXJEkgmakoTOW4nA50Ha211VFh8vOGCO4__fm0AjNggf7A>
    <xmx:ykUvYW9fjRbxcyhuV6fWxJFHNQTD9lQQj6poDZRS44Ixw8uODfGiFg>
    <xmx:ykUvYc4iM_bGnqN_W8fhzWiTBdJOyA4TaJKFJqkofYXFn9wkYwUL1w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:09 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 42/52] ARM: dts: sunxi: Fix OPPs node name
Date:   Wed,  1 Sep 2021 11:18:42 +0200
Message-Id: <20210901091852.479202-43-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The operating-points-v2 nodes are named inconsistently, but mostly
either opp_table0 or gpu-opp-table.  However, the underscore is an
invalid character for a node name and the thermal zone binding
explicitly requires that zones are called opp-table-*. Let's fix it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-a33.dtsi                      | 4 ++--
 arch/arm/boot/dts/sun8i-a83t.dtsi                     | 4 ++--
 arch/arm/boot/dts/sun8i-h3.dtsi                       | 4 ++--
 arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi  | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi  | 2 +-
 6 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a33.dtsi b/arch/arm/boot/dts/sun8i-a33.dtsi
index 2beddbb3c518..b3d1bdfb5118 100644
--- a/arch/arm/boot/dts/sun8i-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a33.dtsi
@@ -46,7 +46,7 @@
 #include <dt-bindings/thermal/thermal.h>
 
 / {
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-cpu {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -164,7 +164,7 @@ iio-hwmon {
 		io-channels = <&ths>;
 	};
 
-	mali_opp_table: gpu-opp-table {
+	mali_opp_table: opp-table-gpu {
 		compatible = "operating-points-v2";
 
 		opp-144000000 {
diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index ac97eac91349..82fdb04122ca 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -200,7 +200,7 @@ de: display-engine {
 		status = "disabled";
 	};
 
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-cluster0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -253,7 +253,7 @@ opp-1200000000 {
 		};
 	};
 
-	cpu1_opp_table: opp_table1 {
+	cpu1_opp_table: opp-table-cluster1 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
index 4e89701df91f..ae4f933abb89 100644
--- a/arch/arm/boot/dts/sun8i-h3.dtsi
+++ b/arch/arm/boot/dts/sun8i-h3.dtsi
@@ -44,7 +44,7 @@
 #include <dt-bindings/thermal/thermal.h>
 
 / {
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-cpu {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -112,7 +112,7 @@ cpu3: cpu@3 {
 		};
 	};
 
-	gpu_opp_table: gpu-opp-table {
+	gpu_opp_table: opp-table-gpu {
 		compatible = "operating-points-v2";
 
 		opp-120000000 {
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
index 578c37490d90..e39db51eb448 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
@@ -4,7 +4,7 @@
  */
 
 / {
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-cpu {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi
index b2657201957e..1afad8b437d7 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi
@@ -2,7 +2,7 @@
 // Copyright (C) 2020 Chen-Yu Tsai <wens@csie.org>
 
 / {
-	cpu_opp_table: cpu-opp-table {
+	cpu_opp_table: opp-table-cpu {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi
index 8c6e8536b69f..0baf0f8e4d27 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi
@@ -3,7 +3,7 @@
 // Copyright (C) 2020 Clément Péron <peron.clem@gmail.com>
 
 / {
-	cpu_opp_table: cpu-opp-table {
+	cpu_opp_table: opp-table-cpu {
 		compatible = "allwinner,sun50i-h6-operating-points";
 		nvmem-cells = <&cpu_speed_grade>;
 		opp-shared;
-- 
2.31.1

