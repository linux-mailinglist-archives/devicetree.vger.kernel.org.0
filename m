Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3816A3D10CC
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:06:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237323AbhGUNZq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:46 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:33595 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239164AbhGUNZm (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:42 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id 47FC95C01BB;
        Wed, 21 Jul 2021 10:06:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 21 Jul 2021 10:06:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=qObQ/sukokj6z
        1aitjXam+xm26++0Ian4acgRfJlbh4=; b=0+DUGft8mbHRpZk1WV0rusEceSs2x
        CuyuEhgyElQuraoCh0WkXvm4lEI0fYZh/i740xx0Knar+9lGjSIOOv9mXEdSdJR8
        g17qNt9lZHwjj2Zm3BQEBcgpSIABb00NB+UZJhx8mgFkjRmBE9598zP4V0bnNB9W
        JhWL6l601AUvpuQ4z2GXRo90Eot5itFI1YJBsQyNiusBA8nSCbMLsDCblNqv91P5
        FT6H+UBD3jSsU4NECmjDCO1yRsRSIW1uB/f1GV6juIhQqkVOIYEGNQyyn1z/ukVW
        wpO5VqnG3qZI8XNHU/VcsXXlZuWLN6Hk0vuU568xGX1iWv3Ext9iUzBWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=qObQ/sukokj6z1aitjXam+xm26++0Ian4acgRfJlbh4=; b=Z6llqjp2
        Bw5MApjDL7z+xuJU5YuDkjz0mdHQrR53gDT/xaOMio2MUIh7lJ5WaX9kLxnxlwfz
        LIcGR/g37GjJ6Ie/q7GTyk8Fzi3eFIaqP+2TNAiTctT8jmgj9qSLEHjO6CBsoMKu
        AOPGnNVCEYf8J3cCZb/9GcT+Ve0Dg0mm/csK2v177F6aCi9gXPLW+ozxkTGEdfwh
        2k84TApWk8FJo01myoi5dJ+L8xadlo1NyVP3G2nRzRJlkWvP5jAKIzcPpKLAG8ua
        2OeAiA55NazzxdWSUiaS9sRMtCTJQh6z7MzfLekU/9k0Zm9qTrQUSmyiBkPc7R9v
        MPYUA00PnAAzfA==
X-ME-Sender: <xms:2in4YC649TeSWfwq8tmNqzxCUJ4V9hAB8eiK6LhtpqJQsdY7eSYfag>
    <xme:2in4YL7bdo3MCurTofiv-_-63NYRKRKmB5_jEON8WJyZEQFItfJtqmcfgtkZrG8Vx
    Jz6yvPyCE1p1NEBVfU>
X-ME-Received: <xmr:2in4YBeckFPJxvnUaVy9rsW2sYJgnmW-7PPBYoaxRqZBfCvnRKZ_mmzDohfvASD4adghnT4D_sYKFpDa862BUnatLvhquIZAlq4t>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:2in4YPKL5pwr1PjNPPSmQa-jjILdk2X4PI2z03AEDGy5VD9wSmh8lA>
    <xmx:2in4YGLGQAu4P_2o9C5Ul7UUosXAzDiHWJA-wA4_PPU1waFa5Mm7uA>
    <xmx:2in4YAwgD1wSHKs78BOk6SeomMtXbNrF0udtASxmZr0LyPjv9McEIQ>
    <xmx:2yn4YHrRZp0dPjKLnYasKS7-lr5ZvSd3LFzAipffvE3HnsWMWFQ4rg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:06:18 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Samuel Holland <samuel@sholland.org>
Subject: [PATCH 54/54] arm64: dts: allwinner: pinephone: Fix BT SCO codec cells size
Date:   Wed, 21 Jul 2021 16:04:24 +0200
Message-Id: <20210721140424.725744-55-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though the codec binding made no mention of it before, all the
other users are using a cells size of 0. Let's make it consistent.

Cc: Samuel Holland <samuel@sholland.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
index 5b44a979f250..1a9f9fcb6f6e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
@@ -26,7 +26,7 @@ backlight: backlight {
 	};
 
 	bt_sco_codec: bt-sco-codec {
-		#sound-dai-cells = <1>;
+		#sound-dai-cells = <0>;
 		compatible = "linux,bt-sco";
 	};
 
-- 
2.31.1

