Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D3D92F605C
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:40:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728786AbhANLid (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:38:33 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:58055 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729031AbhANLhU (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:20 -0500
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
        by mailout.west.internal (Postfix) with ESMTP id B111E160E;
        Thu, 14 Jan 2021 06:35:55 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Thu, 14 Jan 2021 06:35:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=mtbAav2V79CUM
        3CPoSXiQuxaHU5tsNL2rVJPqSWlyhI=; b=H4OI3fazFD4mt8GGSBpAlKF7zNSQL
        Us5mqsNfjfD+avvkQd5kAYt9qiCZGN5dL4jreDtH/XrEirTjoAwL9CdYI1KXTEn9
        yferr4Wj8eXWAdU45YxyobL6j+Qo9ZDlfulI5CrewN7nbGFhYf49YzgowDBvw/YN
        KKR4jg/k66E9a7WLzY1wdi0GSwSkBC0e9e6jNh/QvpNC/SqiPiGMA8Bm8P8TnaW6
        i99KkHRIlzLfot44/q935UZ7x6z3qvGWkkhUbcxRHe/4VYec9QRH36xKn5eCqJV6
        N+oRe6r4wFcyajn5dMqVcmhgT8xrTp9jlKdB44G/tiGCNjT/e5GtUFTAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=mtbAav2V79CUM3CPoSXiQuxaHU5tsNL2rVJPqSWlyhI=; b=hnZA00/d
        lAmzalk011wKyR82KXmUxQyf+cDYsnh8xSP9gu0dKCiXsjoMAsAow/oayH/BUO+J
        TjbBPuIclZOF3Fdz23n+N+4QNV/rQCEIlbfCcAKZrv+vsTWU88J/Z0L4sguezT+N
        yyle8qksCgVu6tqz7oOKJ01iW+lbp7jOePvFq9Gi4WlmhGuakQ2KgU7NHFgG4QLi
        cDXtSPLXTIleguESS2t1lPDy34h9gFc09d52eK1xGWtomocfoTTEB5VIar27pxpb
        imuiltowc5PMe4MpxlVLvdKmsHE4oL/qT8Ozq/4ZYFD1LBXRguZ8PoLyUGnyfA9k
        u7GkW5MSENZ9bw==
X-ME-Sender: <xms:miwAYMwOZVmsDHLYjHAXtxJGAhss6BIv4cUiIgY3aJi8X494z2nBZg>
    <xme:miwAYAMW2M-L3PIPeSV328G-hg_NJ-Gt87FBcOSPFT8ya2GOpSFBZQWE0qZIIFNwP
    MYIakFzQ_UQxMaeSAw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:miwAYLMGsSjg4PaYo3VoxsXtxw8oNWTmkWts4v-A8GOpa9rFTMpkbg>
    <xmx:miwAYCSZE4iNip-cPbGVjhl7iitlt3gnshEZrwSZt3XMGrXkkH2HqQ>
    <xmx:miwAYNCVHQAUyqcMAx4VGAx8hSNgScNwaJySWxN6bohZv1p_6gsImg>
    <xmx:mywAYFHstemPF4L_ousHvrmeHk0TWcy22fZzDFNzgKNClmzFyGTktw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 5C3EE1080057;
        Thu, 14 Jan 2021 06:35:54 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 09/19] ARM: dts: sunxi: Remove thermal zones without trip points
Date:   Thu, 14 Jan 2021 12:35:28 +0100
Message-Id: <20210114113538.1233933-9-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The thermal zone binding requires a trips node with a list of trip
points, however some thermal zones (usually the GPU ones) in our DTSI
don't provide it.

Remove them until we have something to fill there.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi             |  6 ------
 arch/arm/boot/dts/sun8i-r40.dtsi              | 16 ---------------
 .../arm64/boot/dts/allwinner/sun50i-a100.dtsi | 20 -------------------
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 14 -------------
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  6 ------
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  6 ------
 6 files changed, 68 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index c010b27fdb6a..d42b6a0d1b53 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -1264,11 +1264,5 @@ cpu-hot-limit {
 				};
 			};
 		};
-
-		gpu_thermal: gpu-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-			thermal-sensors = <&ths 2>;
-		};
 	};
 };
diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index d5ad3b9efd12..921cf8088413 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -111,22 +111,6 @@ de: display-engine {
 		status = "disabled";
 	};
 
-	thermal-zones {
-		cpu_thermal: cpu0-thermal {
-			/* milliseconds */
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-			thermal-sensors = <&ths 0>;
-		};
-
-		gpu_thermal: gpu-thermal {
-			/* milliseconds */
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-			thermal-sensors = <&ths 1>;
-		};
-	};
-
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
index cc321c04f121..93fe7eee10cb 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
@@ -341,24 +341,4 @@ r_i2c1: i2c@7081800 {
 			#size-cells = <0>;
 		};
 	};
-
-	thermal-zones {
-		cpu-thermal-zone {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-			thermal-sensors = <&ths 0>;
-		};
-
-		ddr-thermal-zone {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-			thermal-sensors = <&ths 2>;
-		};
-
-		gpu-thermal-zone {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-			thermal-sensors = <&ths 1>;
-		};
-	};
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 51cc30e84e26..9d3b280bd151 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -215,20 +215,6 @@ cpu_crit: cpu_crit {
 				};
 			};
 		};
-
-		gpu0_thermal: gpu0-thermal {
-			/* milliseconds */
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-			thermal-sensors = <&ths 1>;
-		};
-
-		gpu1_thermal: gpu1-thermal {
-			/* milliseconds */
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-			thermal-sensors = <&ths 2>;
-		};
 	};
 
 	soc {
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index 578a63dedf46..f364918f8647 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -216,12 +216,6 @@ cpu-hot-limit {
 				};
 			};
 		};
-
-		gpu_thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-			thermal-sensors = <&ths 1>;
-		};
 	};
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 8a62a9fbe347..f35bd3b5b2a6 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -1022,11 +1022,5 @@ map0 {
 				};
 			};
 		};
-
-		gpu-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-			thermal-sensors = <&ths 1>;
-		};
 	};
 };
-- 
2.29.2

