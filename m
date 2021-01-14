Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 799502F605D
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:40:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728240AbhANLid (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:38:33 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:36297 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729032AbhANLhU (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:20 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id B937D1619;
        Thu, 14 Jan 2021 06:35:53 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:35:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=GKOBNRCCnltEF
        Xz8SSDsfWNJOx0mPCEjXAtDU4h+NpU=; b=DtiRvpi/0fQJ1syIH8vyja2iXdbZ5
        FjR82TPvafCRVUei6h/dwaIFQ/u6qinTDVhEe5PzmEzeH+yD9p9DcyBO8v0FKxDy
        3jpJ9kmz+GiJF7X+eKWUHF5Uh4P61p7IgHFRwIp9C+Jo+80JgxhuP4plq6/mNIOt
        Draqnm7l29EKIT0A/opb+OINUkUYax6rF3BmOB7pB//J5B417YfanhaoI/aqrjDZ
        lnY7FMRTgWunQmhjBndTpHi35PCrVTl9LR3+I1MXKUUn6O3oKsU8bBj3I852TjWU
        ItL11L4EIYdbMlsMyp5smW+mZlZCoV788cuf6Qpc4H5FlFEqZCeq46cyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=GKOBNRCCnltEFXz8SSDsfWNJOx0mPCEjXAtDU4h+NpU=; b=qzdDvDaY
        LtO2JqCONE5aPg9fp2t2gQfLt/xDsILQyvTTgkAfGovDG/2inIZlTHwMQ1dmrtCj
        uINLIywU+eZFiZWVZrIRXD3ufH0K+3+LC32K/FBbLeQkOYR4ZcesyU9BpwzjK719
        590NClX021JA84HgSiV4/B5EdJsgDyXiVFOkOOr9zzlhlQaddmht0lGc30zz5SD3
        fwQhg8ukkdpJDkvGQZGkuo+UFZB0ckWZJXQEU6Xj3KM51JSUsvGAi3ER8M36RlNV
        W2OuK0MBpVUvJIxjKhhs1IskvW/XW7HZUXms0dVsumv6Pep2XGjiy9KXxIyoBZjg
        G/bpYsGjsjQAww==
X-ME-Sender: <xms:mSwAYHxX4yod7BG-205i0ZNtIKFxkSgWyJixVppJjm9fbt32v5qpyg>
    <xme:mSwAYPTDq_kLbjecPkIJm3B-xsrlfw2iwySNpiB-ITMaEbNV830HoFwDh8pIxCZOi
    d1wy33rS3jabyA_pQs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeegnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:mSwAYBX_f9RiGf7ccJ4ezbnNE2-WObfG8v3ojGlKa8oR95ZYONHqNw>
    <xmx:mSwAYBjm6xuQhGrhB_DIFBeLRxQheBLt9P7v1JfswnU9rdmnC0sSHw>
    <xmx:mSwAYJBMjv55wlBcCImkwz2yA6tgeLUnPoPTRDd770w8TkWiBzbSbg>
    <xmx:mSwAYE9SW-goN77-MQUE_UeN0Rj9s-WVgpz4lxkShxObnbE6xxctXw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id E76D8108005B;
        Thu, 14 Jan 2021 06:35:52 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 08/19] ARM: dts: sunxi: Fix CPU thermal zone node name
Date:   Thu, 14 Jan 2021 12:35:27 +0100
Message-Id: <20210114113538.1233933-8-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The CPU thermal zone is called on most of the older DTSI cpu_thermal.
However, the underscore is an invalid character for a node name and the
thermal zone binding explicitly requires that zones are called
*-thermal. Let's fix it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun5i-a13.dtsi | 2 +-
 arch/arm/boot/dts/sun6i-a31.dtsi | 2 +-
 arch/arm/boot/dts/sun7i-a20.dtsi | 2 +-
 arch/arm/boot/dts/sun8i-a33.dtsi | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/sun5i-a13.dtsi b/arch/arm/boot/dts/sun5i-a13.dtsi
index ae04955fd9a3..7075e10911d5 100644
--- a/arch/arm/boot/dts/sun5i-a13.dtsi
+++ b/arch/arm/boot/dts/sun5i-a13.dtsi
@@ -48,7 +48,7 @@
 
 / {
 	thermal-zones {
-		cpu_thermal {
+		cpu-thermal {
 			/* milliseconds */
 			polling-delay-passive = <250>;
 			polling-delay = <1000>;
diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index f3425a66fc0a..92fd47c54d73 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -165,7 +165,7 @@ cpu3: cpu@3 {
 	};
 
 	thermal-zones {
-		cpu_thermal {
+		cpu-thermal {
 			/* milliseconds */
 			polling-delay-passive = <250>;
 			polling-delay = <1000>;
diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index 6d6a37940db2..5a40e0280665 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -140,7 +140,7 @@ cpu1: cpu@1 {
 	};
 
 	thermal-zones {
-		cpu_thermal {
+		cpu-thermal {
 			/* milliseconds */
 			polling-delay-passive = <250>;
 			polling-delay = <1000>;
diff --git a/arch/arm/boot/dts/sun8i-a33.dtsi b/arch/arm/boot/dts/sun8i-a33.dtsi
index c458f5fb124f..7344c37107c6 100644
--- a/arch/arm/boot/dts/sun8i-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a33.dtsi
@@ -288,7 +288,7 @@ dphy: d-phy@1ca1000 {
 	};
 
 	thermal-zones {
-		cpu_thermal {
+		cpu-thermal {
 			/* milliseconds */
 			polling-delay-passive = <250>;
 			polling-delay = <1000>;
-- 
2.29.2

