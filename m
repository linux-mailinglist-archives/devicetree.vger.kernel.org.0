Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3569C3FD69E
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243582AbhIAJVP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:15 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:45701 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243573AbhIAJVO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:14 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 2293D5C00C8;
        Wed,  1 Sep 2021 05:20:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 01 Sep 2021 05:20:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=1d8oIaQnnxyrp
        5XlL3CXMlaY2jYqAVDxN4LgVOuvwj0=; b=0AVHORZi6nemRVuDAkXfSyWOgKjqB
        uW0XqFunygpiQedld6zvAjAmUtefXJJD9Z8aDLTCg+Oyf1+ZCLAp4jDfEsO2fYQu
        oZ2k+948OvIEvsGIVZv0DTFUMpuAzfTy8/BZ7Vet34WpKYP2u13n0jk92ha2yH1q
        e12soYUck0RLeKjYtpSNGOoQ3oGtfhaVHD1xprab+EEehZ3REkQHj2rS81yAosN0
        EVJvaevunNs+8JUkmzZcM6BiJgqEIVU9TvVATT9eqO3QZKc8LKX4j62YYTiJKO2n
        DX6oz9utRgM90GZLz940qnVitewOZ7w+eiCtIiataubH0ikP9Z0mh5g7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=1d8oIaQnnxyrp5XlL3CXMlaY2jYqAVDxN4LgVOuvwj0=; b=nM7vWXPQ
        YFnIGNKgtG1vHrp2EfMZ7mhWOyLhQBQneKG89oE2VRfHX+HhAZPjJ27wfIoL//R4
        0Mx69q/yxRzcMOJR9aor4BYHLK9CXUYEJ/9G79yc2wjjUdLzXt1+2RZSJCNU6F2e
        kQtB5kqf4NRWWsCWgT5sexYE9imd0p4R3ViiHwXo8dm1bznAddpbtyENpbwzlZSu
        5zdJMWsqprzJ5RQS5PUzDEdFJ8FRS//VdOJ5wUKuO0+SiaDvuJ9ebUmg7hOPq+MT
        apPPH/UG3ns6JuQtdXzlvY9JGth/WBQUnKeQ7FrCKxOy38uuALf5dM+zzmXhAgXn
        bFrDaMrRUcHWhw==
X-ME-Sender: <xms:0kUvYQP2vLqbUvfzvpf-Mp6_VWonIePHzqehCPGgXjcGu4-zw7vJCg>
    <xme:0kUvYW-NNfQ6yVOQ0j6wZBvRIrqn15OvIHcqXyiSkJYlpo7YRgIGvl9cdYKFeueum
    8nh8EbUixbHs9fhBZE>
X-ME-Received: <xmr:0kUvYXRKk7Nqp44WACh1tbQBjRrKjRdvTGlA_Fj7xdUlTyYdQICxDwgFV2C05zzQ_sCs04NfqpvrrREhD8PclGHCV4vafFRAiZTD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepgeenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:0kUvYYtXbkqzCx8sEzNQ-pgroLK2OgFVVAFovtt8DkSMxtHeVZTOSw>
    <xmx:0kUvYYfsCU7_ZoupNL03lodFqoYnhirKgAS-5vPlS8ys9cdU-qSq0w>
    <xmx:0kUvYc2bFcTz-tqlMbZ6ky_3hC0WrcmKx-CHMx0V9lga1eL8C0oQdw>
    <xmx:0kUvYQTiryiMP6P9z140H5e3HNWLQNU23vk7nLLbxuadkvqIBGAVng>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:17 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 47/52] arm64: dts: allwinner: h5: Fix GPU thermal zone node name
Date:   Wed,  1 Sep 2021 11:18:47 +0200
Message-Id: <20210901091852.479202-48-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GPU thermal zone is named gpu_thermal. However, the underscore is
an invalid character for a node name and the thermal zone binding
explicitly requires that zones are called *-thermal. Let's fix it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index 578a63dedf46..9988e87ea7b3 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -217,7 +217,7 @@ cpu-hot-limit {
 			};
 		};
 
-		gpu_thermal {
+		gpu-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 			thermal-sensors = <&ths 1>;
-- 
2.31.1

