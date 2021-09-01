Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B27BD3FD69A
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243556AbhIAJVJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:09 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:38443 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243579AbhIAJVI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:08 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id CD42B5C023E;
        Wed,  1 Sep 2021 05:20:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 01 Sep 2021 05:20:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=NBo7N2VNZZ0WD
        AqU6HUEAWRGAaaX8ieAM+2OeiktVZc=; b=JPPlleF6RVwvuE8HIZeJ2DqOlHyuf
        yhMosCssTP3CuYPHQUOVMN41GtR+glUBA9/bHf7IJOxEFMRsj7nrjt12QlQVeZ0a
        eyQX+/2VrEAMtCHtKbfU3Fb56BNKUEt/+sGDYDog6EBMKZLqfexZYSxbUjXj0efE
        BKi95SfGyeM7aVR9F2Pip5PpZ8SiPeheBWGmIAdMe//wqWLixu43if/N50RHGqwh
        cv/mt9kK+nJGhgEHROsvAm+vAWV9l5EyEzFACGpW6+j90l9l7eZq5ebQX0nhiAwH
        8v/ejQ2/l056dzXxFw7Z8Q8Ai0X4bFeJLxfdm472FsWVD/Exfb9BP3KLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=NBo7N2VNZZ0WDAqU6HUEAWRGAaaX8ieAM+2OeiktVZc=; b=QD9yYF9/
        wr2FVHpbzwIUlv9+5EfKt3R1eUbqFiY82nLIuGAbCnGhhGd8XRuU11z0o5uxSUAV
        uRcGCa9DVzHuWVjd2PQWEFURoPizqJ8ir6yj/uOCGSut8w6TFkClif+x/5OReMZp
        uOXvSa+XznBq7L4eZdaMIif7dsOSVjYkks6IWchDrtudoK9QfMt9AWnPcULzaeY3
        QS9BOMfIedZkrSwXPVG31yGejXSZ9iEy687VYwmn4TLeN+lOnWcptmQlmXwUEq+I
        cjcK7cYr7uxc7FtKEVpq9EktWXyZFE/hz39tp2fE1XXGPube/QlUGOzY4Ht4+XSi
        w+m2dXjP4WWM+A==
X-ME-Sender: <xms:y0UvYUT_fHTcHjFo_7HsYBHekgNdKF9Fo6XRONHWCV-ELGL20bdrog>
    <xme:y0UvYRzkNXmU4wmu77_elJjSh8K8KCWxx_l0NT5vMwodPsht7cw0nflb2s-6znR1D
    F33g8HYUNNd53O5xzo>
X-ME-Received: <xmr:y0UvYR2gE5BSj6o-RZEXShWlW3BLy3BuyAY2MBGSNxR-8RuDNz82dNaD9-d829Q8rtVQ9CRJ2dbcYnHrTnAb_wssZ-irnFyOO8Xb>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepfeenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:y0UvYYCm1P_me3DOj6dibypVv7X3bBF-EY_ls6VTnGnlP6ImuLXrHQ>
    <xmx:y0UvYdioZbXvtX1iAHgSUFA9oQ82D076p5b6NIOvOy1y2aDl_rONvQ>
    <xmx:y0UvYUqQAQq2_KkyXsG9_Y_tQCljg3MWLtXeeytuTLLyKya_xumsHg>
    <xmx:y0UvYYW9-GM9uC2lSOuC2B8p2slKytMzMWPCtXJQjL2rATjjWM7f9w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:11 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 43/52] ARM: dts: sunxi: Fix the SPI NOR node names
Date:   Wed,  1 Sep 2021 11:18:43 +0200
Message-Id: <20210901091852.479202-44-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to the SPI NOR bindings, the flash node names are supposed to
be flash@<address>. Let's fix our users to use that new scheme.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-v3-sl631.dtsi                     | 2 +-
 arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi          | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-v3-sl631.dtsi b/arch/arm/boot/dts/sun8i-v3-sl631.dtsi
index e0d2a31efc7f..6f93f8c49f84 100644
--- a/arch/arm/boot/dts/sun8i-v3-sl631.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3-sl631.dtsi
@@ -115,7 +115,7 @@ &reg_ldo2 {
 &spi0 {
 	status = "okay";
 
-	spi-flash@0 {
+	flash@0 {
 		reg = <0>;
 		compatible = "jedec,spi-nor";
 		spi-max-frequency = <50000000>;
diff --git a/arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi b/arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi
index 204fba3614f9..50d328c2a84d 100644
--- a/arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi
+++ b/arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi
@@ -156,7 +156,7 @@ &r_pio {
 &spi0 {
 	status = "okay";
 
-	spiflash@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
index 097a5511523a..c519d9fa6967 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
@@ -343,7 +343,7 @@ &sound {
 &spi0 {
 	status = "okay";
 
-	spi-flash@0 {
+	flash@0 {
 		compatible = "mxicy,mx25l1606e", "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <80000000>;
-- 
2.31.1

