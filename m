Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65DE03D10CA
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:06:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239152AbhGUNZj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:39 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:53941 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239143AbhGUNZj (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:39 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id 8CF625C017D;
        Wed, 21 Jul 2021 10:06:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Wed, 21 Jul 2021 10:06:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=sKaimIwKsNZdm
        rLFh63SfCZasMdwCvV5Wd+Dlydu10g=; b=dF8LbrfQoP6rJ6oqonBeCJDvvWJeD
        lIznR2rhlZcn3cankvxKpv3iUYyhpohc92TZ/VbLdNBT5LPtRy1CFj71tyuL9L9s
        UjyqWpnQBLJHpM+bwVblI0T9OFX14zHpnWLhjmQ98TTKzhaUfyttMIqwlEG5sBBh
        F9CtfFFsrhFOqSH30KkimN/JD+9+xsPuoRxV8NTL4qec3D0OGDD9sB8WuLcoxcuJ
        6fhVtWyk+qgWEEAASzL3GRGdqDNS0wQ/egOdzmKeBgtoooP3nowtjdvaOifwlnDX
        ZPDMisFbWFLumui/u9CfyEdUQVqjwHM3BnRD0pE63aovIC4gLcxDSCEGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=sKaimIwKsNZdmrLFh63SfCZasMdwCvV5Wd+Dlydu10g=; b=BJD1yuhv
        Wi8ZutrfVTxNHghQt515L5Is/q5ln7ib3HwYr/0ky2WXgG1LahziHBiS1HaXT0PC
        SMgY6aD/QugrVmTEI0UL4RY1CgZ9pW/FK3/5MvZ5eEGMuw1bvqVmkRT9Ioi1wcP8
        7PD6MRVIy+LL+qisYedmhQDqdnCUAE/3t7cO62FU5uMMmuN5z2+fKmtgJp6Tw4lD
        pIcjzOJIzcWfFJt/hqmjiUuM0ZQUKWBPUStsLdG6uKvLtTedvALovuJDdvUV6BgN
        9k6P/nHyqTPuJlBwa0WlBYRQ7xo1TUa6zgF1BmHS6g45QOkGKABuGR7iwTmzKPV/
        HPwqp96EMEfmBw==
X-ME-Sender: <xms:1in4YHJ0WkWKdCIWFOTy1w3dc4HOloDxx_SbfAZ_S-0MLCiitVWqaA>
    <xme:1in4YLIcMEm0e_2bj-y6HxQuUasqxDqZ_QoMrdQdNqQQsmKJiRVbNAW2gW-m74vzr
    YBBdUaC0MZ0ZIdh-CY>
X-ME-Received: <xmr:1in4YPt7vCqikjoohkv-wjE2zNdBBq_S0wSag0Gaw8CnpeHLb_mZY4B7BaBrUKLdJ7HpjbWANhtzkGG2ru1IlyVY1gDUyMl8x_T2>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:1in4YAa468M-Tr3Mf18gKDqR3IsVu8irtDSZuUnP99OT1gXbHSWkKw>
    <xmx:1in4YOaCfkiIz9GDPEuCG263to_ouY2h35i2lLxFJHIKAVsyWyWPtA>
    <xmx:1in4YED8Zii7iJNiXJsGGjCEXVLKvN1hZSQ02YSu78HxwILXdCUvuw>
    <xmx:1yn4YDPa9X-bjmulIWahHMT7WgLD-fIt5k3w7tWe3XePjOowk9hgRA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:06:14 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 52/54] arm64: dts: allwinner: Remove regulator-ramp-delay
Date:   Wed, 21 Jul 2021 16:04:22 +0200
Message-Id: <20210721140424.725744-53-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The regulator-ramp-delay property isn't documented in the binding for
the AXP806, and it's ignored by the driver. Remove those properties.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts | 2 --
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts  | 2 --
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts    | 2 --
 3 files changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
index 6249e9e02928..a02644eebbe4 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
@@ -256,7 +256,6 @@ reg_dcdca: dcdca {
 				regulator-always-on;
 				regulator-min-microvolt = <810000>;
 				regulator-max-microvolt = <1160000>;
-				regulator-ramp-delay = <2500>;
 				regulator-name = "vdd-cpu";
 			};
 
@@ -264,7 +263,6 @@ reg_dcdcc: dcdcc {
 				regulator-enable-ramp-delay = <32000>;
 				regulator-min-microvolt = <810000>;
 				regulator-max-microvolt = <1080000>;
-				regulator-ramp-delay = <2500>;
 				regulator-name = "vdd-gpu";
 			};
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
index c45d7b7fb39a..69c0293aeb16 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
@@ -262,7 +262,6 @@ reg_dcdca: dcdca {
 				regulator-always-on;
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1160000>;
-				regulator-ramp-delay = <2500>;
 				regulator-name = "vdd-cpu";
 			};
 
@@ -270,7 +269,6 @@ reg_dcdcc: dcdcc {
 				regulator-enable-ramp-delay = <32000>;
 				regulator-min-microvolt = <810000>;
 				regulator-max-microvolt = <1080000>;
-				regulator-ramp-delay = <2500>;
 				regulator-name = "vdd-gpu";
 			};
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 1ffd68f43f87..6a1ee4232675 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -245,7 +245,6 @@ reg_dcdca: dcdca {
 				regulator-always-on;
 				regulator-min-microvolt = <810000>;
 				regulator-max-microvolt = <1160000>;
-				regulator-ramp-delay = <2500>;
 				regulator-name = "vdd-cpu";
 			};
 
@@ -253,7 +252,6 @@ reg_dcdcc: dcdcc {
 				regulator-enable-ramp-delay = <32000>;
 				regulator-min-microvolt = <810000>;
 				regulator-max-microvolt = <1080000>;
-				regulator-ramp-delay = <2500>;
 				regulator-name = "vdd-gpu";
 			};
 
-- 
2.31.1

