Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C76103FD6A0
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243573AbhIAJVS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:18 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:47689 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243585AbhIAJVS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:18 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 380D75C023B;
        Wed,  1 Sep 2021 05:20:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:20:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=aaXXdzYbymxje
        EkP7346zCSc5zXoLr7WGI9cdcAtp44=; b=LHWmfhVI0eb/Com40S/2DaXyFZWDt
        3/tCTMQ/JaHFTxK+pEIJHyWZs9hRG+usrqthdX/I+o43qjIHBaj63/L/jXXdrHm/
        S3MesmWfnIkM57ktTNW6BjsXWYxJyyF6Htt0MVOitNEGrRcn6mG3jm5J/JLVkcVV
        hxVFwlB7MU7CP6Sr0PEW8WD54lerd6XISvgayWhYkJ8TlGRyly2aOTVz9TzAYJqO
        /JTw0MPeaBzliblAZq3bi37l+SBYKi7obBIQA6DjQl4pFl+a7MzjPYjEdNa4fBaD
        600uIooPTGyeIevw7nrQ5dm5Xr/2uGiMc1MHJ6M/IbB0rlahMBdhYAlxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=aaXXdzYbymxjeEkP7346zCSc5zXoLr7WGI9cdcAtp44=; b=IaUsOaJ5
        XPMBL22LHAhtMWa3hMYY9EBl02+DH9QzpR3OugzWePclUJQKKGdtZ8eW8+hvprZ8
        fLWOc6MRS9FGRwlvlgptDqT5s87MV332N9NNYUr0SMb/MEmZwBFQAN6Inpym4/6T
        B7/sECssK/6FdXkbNeXjPEd8SmU/2KbT8ZZNPdrEY2FrTeSU7KDwC7wCfBebW/eD
        PzNHjazjXtFxfF5Drw7sV8WIYH1NKxmuon103Jj6VrNUiWngYudXsL1s1dSoDfsz
        ven8L1qcENhM0GVsQuNMwzEB/Y1f9MDV1Nc7E3rlIRJnL36SS96f9P3K3pwW4RPw
        RpG2V3fDIg8xSQ==
X-ME-Sender: <xms:1UUvYaoM1rh3G2ntV8OTUE3ogvHMAIPV-NRUZQ__YWaLptzBJUUXrQ>
    <xme:1UUvYYo8MmMr9TZZPeYr-6YJR7zOj0u1KxI_xM4GTHSy6brXWKljMBHAkFXDIeWS2
    S3RwumKdMucRNv7Uig>
X-ME-Received: <xmr:1UUvYfMaYNGxXVaItra9NtnSV2uH6VfP9nbqaN3VsAngvd0tG-CtpSMHyHK-TwhPfrI7Siu1cRW7zLQvOgRHlb3fAI5SVWpcUiuc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepheenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:1UUvYZ43CVUBwNgSImBSb0m8Q74BwMK3l-q5iX7iCqTZ5InkuoebGA>
    <xmx:1UUvYZ5m0AJj5wZ_YOtaXlJhKIvgqeJ2bFls8Lk-HvAzKukhWQnfYg>
    <xmx:1UUvYZhBfI1x2fzrDhFGbAWPNguXEBhgZVpxKigfA0fhDMl6eBJ5Aw>
    <xmx:1UUvYWvw58Kc03UVAvgg7zY_v0ZZJ6dxa7nr7sYbHqfy5hAlfgcLbg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:20 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 49/52] arm64: dts: allwinner: a100: Fix thermal zone node name
Date:   Wed,  1 Sep 2021 11:18:49 +0200
Message-Id: <20210901091852.479202-50-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The thermal zones one the A100 are called $device-thermal-zone.

However, the thermal zone binding explicitly requires that zones are
called *-thermal. Let's fix it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
index cc321c04f121..f6d7d7f7fdab 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
@@ -343,19 +343,19 @@ r_i2c1: i2c@7081800 {
 	};
 
 	thermal-zones {
-		cpu-thermal-zone {
+		cpu-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 			thermal-sensors = <&ths 0>;
 		};
 
-		ddr-thermal-zone {
+		ddr-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 			thermal-sensors = <&ths 2>;
 		};
 
-		gpu-thermal-zone {
+		gpu-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 			thermal-sensors = <&ths 1>;
-- 
2.31.1

