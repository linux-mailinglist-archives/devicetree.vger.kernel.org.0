Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42E033FD6A1
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243596AbhIAJVW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:22 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:44215 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243585AbhIAJVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:19 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id C21675C0174;
        Wed,  1 Sep 2021 05:20:22 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:20:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=UY4GXbLCewh4D
        KtrIt8fcoRGgLltwC/w1F48If2t4dM=; b=Ak8KG3sPZrKcH6b0pF5SYtRT79jP2
        4WWXfKA9DBOFyZWcktCYEfg8uexufi0SV0WuYRGzHRe75t2Ir6m8C3pMxVRp6s3n
        telu8UH+wZQXHtCScKInH09glcz/sCRNs7sjBtUu5eRTSSbKbQcizTwhefC6Nr1z
        I4QXvmT68tWVME1XzGqZ0S0sMs7Cgg1pT3ZVyDC10recrOW/4R8d2N0HL1yDNv+/
        LXRLYZsqt+aR0lhg3+HqAtn6cjnKPjTcOISq8MaNVPArkISC/+E1CNFgU5Eoukqi
        wZqnCrE4EUSqcK2y9+gXN7gP6IlRbD73v6X4BLZ9haJwtIU/cPf5vpYAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=UY4GXbLCewh4DKtrIt8fcoRGgLltwC/w1F48If2t4dM=; b=PbUGONxW
        go6D4qHeRcKl/Z/vGhTnrDb2lRD7+W9vVn1WNqICZDFfDJdRWUXr8+zbKLz/48sI
        /WIRgtAmQi0Ch7hFKm1iqEKE4vXTMh7fOtcKoacffgTz6kU6nGMbeDYHCmQAztNe
        kvvAE8w5sVQLPC51dqVQ9rdHsHMWgIVh0NNoZaZpaimQkhaK9oJ7wSVx5AhVQGur
        gDdvEjL0chh0G/+Rhez6rwrMfkshWYgmTuNvzLIaMiIXvRHY47UPqSmLWmhUEDcu
        M4oW3hZDQlehM+UMjrnaIroGCxOChP2dch79qaf77KND3XbQooIKw2/VNeCK+vl7
        aOCYPWiEJ19RmA==
X-ME-Sender: <xms:1kUvYcZKHYXIC6XddfNsF_4jvXuXLDrKL_OqG9eNOh6pWv4yP627dg>
    <xme:1kUvYXbWJOlGCeLXqQOjtVWwynD5JKAcc9qQwIz8mMgfVFN2zvc8oD2BDa9Gh-rIs
    VXFFSyqLjm83EddWA4>
X-ME-Received: <xmr:1kUvYW-shV1UThbXw6A93yRGvug6GsUEpw6rB-7wMOEyUxjxr2ocQRBuWQ-aQSsWzJ8Hd-8AYmhGnohdfjEOaqigrLUag8JzxqCM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepheenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:1kUvYWqRDWgZv7iLUVc-OTETKWZOlfcng6BBiBYeHHB1pSdqm0Sc4w>
    <xmx:1kUvYXrqZ7SQisCtAxF-Nqx1TKZEoezM1ETlal-9lFy__czONpO30g>
    <xmx:1kUvYUQOR6IT5eQ9g_mxidqb8KzEJUJrZ8Gj-2YsDMYZ7oXAqqFnIg>
    <xmx:1kUvYYftKtTd3R4PJemCSBmQHAmwCWqva9PbuI6vCGDN3VexC-yoeQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:22 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 50/52] arm64: dts: allwinner: pinetab: Change regulator node name to avoid warning
Date:   Wed,  1 Sep 2021 11:18:50 +0200
Message-Id: <20210901091852.479202-51-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fixed regulator clock name has a unit address, but no reg property,
which generates a warning in DTC. Change its name to remove its useless
unit address.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
index 7ef96f9ff7ae..6a4af14718f5 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
@@ -77,7 +77,7 @@ speaker_amp: audio-amplifier {
 		sound-name-prefix = "Speaker Amp";
 	};
 
-	vdd_bl: regulator@0 {
+	vdd_bl: regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "bl-3v3";
 		regulator-min-microvolt = <3300000>;
-- 
2.31.1

