Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD1203FD69D
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243579AbhIAJVN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:13 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:51113 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243573AbhIAJVN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:13 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 902395C0220;
        Wed,  1 Sep 2021 05:20:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 01 Sep 2021 05:20:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=38o1QE7X+TKkK
        9E0ktovt7/GfXdByUr87u7gZ1BrLjo=; b=Fb8GYOn/TIQEDO69fO27M7kJHd7SN
        +qiE8BITTDMQbzYVm/znjGIvcstSfdFEYg/gkrlc5P56+/d9nnbjQk9sh84dbl7L
        +8enHkkRZDR2nVWxhCYRUkb4/w9KDRJnFpCU1l995pwvqhwgLfGX92nx1PjUvbE1
        +48utKUoGKNOjmUtsIQ1MC3/upsymxJDFEedOVykHIi79P1YBXW7OzUJf1kE77Da
        gIAI10qkhQq9LsZeaG3/SKoBy9gMyVwYX6+lTIwspv5dRxcw1KHEFQYMYOIOiBmG
        oucpzV0USzFe56Lc28ZJ4fXbnuCvWcc3gBFX9tw81+qpJqZB42zZwqYfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=38o1QE7X+TKkK9E0ktovt7/GfXdByUr87u7gZ1BrLjo=; b=VxQ5BnbB
        YbOrhpWQUFReb5V3z/WL2ye7JFURa8376QtRcrIWt2kP47MX+N6G5fUcOTLsv035
        nx9bXnyrPeSJbn+lkmzj1jahb0JTJhHsQv2ag6ERsa+LqP3dZ2Mgy0zR7fstaGDL
        kpaseQkmt+BYtMw0lGswkcdKyz60BPLCyd1uddQ2o6ZaqmBpTvJJo82y99DKABVl
        q8Nmnm/5aCK2osIgOH5fwrHYTf+0TV6sIFpTv0F5EoONFT5rkFCN/eFjuZo+Z7oK
        9k/Xw+wwV4yopxwPAj/bdQzue/O8lHZTvHrdGwV96yrzwByZQhADvc/QA4aNsytg
        S0vzxbN6exk74Q==
X-ME-Sender: <xms:0EUvYfQf1Re_ulsaQTZEdjb537TSP3Y1m7KRdzL2iuzEMP89usyRbQ>
    <xme:0EUvYQzvWfXVyKPHs_J0J29VN07OSgo6pkYDrktcj2VTwN3ys4dDzmf75QC2rnmXd
    DrLnGQNbn1ZfmR-xWo>
X-ME-Received: <xmr:0EUvYU3ofwIMRfr9NcMg9CPIeL_3_AC79nMEcPbwKAks42M_SzryvQY_eWu623HYy1SPdFR-_NnZKXPCvVVK6DULMr7gQBMqhL7m>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepgeenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:0EUvYfCCCi2YzHNxWe9x-2UMEe0SE-pKXRMPnycIfW0XeGhntDq97A>
    <xmx:0EUvYYgkobAkpNDUIWgpZN4CFnR-MxmF_wAPaRNxsn6TGSHuL5Hz7w>
    <xmx:0EUvYTpatRmNK3Z3JsX68UGy7i4fcREnf6U8MZaq9urIyy721do5lg>
    <xmx:0EUvYTVqWl0lMUeop56p_EZGO-R7QIFldHSrNBB9PP3RU-DlJA9pKw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:16 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 46/52] ARM: dts: cubieboard4: Remove the dumb-vga-dac compatible
Date:   Wed,  1 Sep 2021 11:18:46 +0200
Message-Id: <20210901091852.479202-47-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The dumb-vga-dac and adi,adv7123 compatibles are not supposed to be used
together according to the binding.

Since the corpro gm7123 is a drop-in replacement for the adv7123, let's
remove dumb-vga-dac from our compatible list.

Reviewed-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun9i-a80-cubieboard4.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts b/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
index 1fe251ea94bc..c8ca8cb7f5c9 100644
--- a/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
+++ b/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
@@ -87,7 +87,7 @@ vga_con_in: endpoint {
 	};
 
 	vga-dac {
-		compatible = "corpro,gm7123", "adi,adv7123", "dumb-vga-dac";
+		compatible = "corpro,gm7123", "adi,adv7123";
 		vdd-supply = <&reg_dcdc1>;
 
 		ports {
-- 
2.31.1

