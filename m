Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0CC13D10C5
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:06:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239153AbhGUNZ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:28 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:53103 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239138AbhGUNZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:27 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id AFE2B5C017D;
        Wed, 21 Jul 2021 10:06:03 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 21 Jul 2021 10:06:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=1d8oIaQnnxyrp
        5XlL3CXMlaY2jYqAVDxN4LgVOuvwj0=; b=i+01uX0vJLNQ87ZpC/6QN8O13cEoS
        rCVavSWgE+STYVaT9VuaSY9N0lqi+9NtadEXlPExAwpCOCj8qmlB+o1zM7iDbiO7
        N/YT4l4whVB4OPrxNe2GsnNAIK0K0915TMHPbXopw1/uoGOTfHdmuKN9lZ7LMgj3
        UjEEzNZZCgrJCpXqtiDLPgHOT6xbT7lP7sX0/jkp3IBPUuvTeSMBIQ/F33fACRu/
        1YmFWbL4a20NihQyIOQi/O+8+3quUk1x0duQCc9QjwJz3BliGkU7VzGzSY4MQ3Bk
        rw9F1OoniWCs49qT6sn7xZ42YuNYNPFE1UGU32jSk747TYIGE1qBOTfaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=1d8oIaQnnxyrp5XlL3CXMlaY2jYqAVDxN4LgVOuvwj0=; b=FJzlJdcG
        XukVdrew0HIMWGDApuLGRr2VkL6b6SokCcQOwJfPU8ILUhvaky/LKPbKTQWtI06z
        z29bw2NtKi5Wf2T7CN5rpLmg7IhJCWevw+AK/trjI6XGM8ewjiOxWvAeLyT4uKMT
        R6ybkZEUNkZW3d5eXNW2ZXrX24wo6bbkf3x8wLMA/O5M2JRye/cPalosUEnkWBTl
        qbxygLjoLDMqrNJiv2I6kx4CV6Ad7BL02vYqVmArHMKuoRmJ2vaShND4uYaYs/vV
        k9eeo6thAfDE0b3LOgGmMLLK1rdWksM5ososIZIGuhVaIpu5r0dOoWdqar/m34rm
        hbHZnZDn+nxh+g==
X-ME-Sender: <xms:yyn4YNBDtvsdpjDO9sHHJDcJ1vqNy85cZHbt8NE2vhH0erVpEzRNqg>
    <xme:yyn4YLjbPRktxny_K7BtW2q1_DSF9GPKzQnI6Qdxu5YimMg0KxSkX1pBoMaCeKAVv
    d-1tMCbPxzgPhN_z34>
X-ME-Received: <xmr:yyn4YIk1vmff1U3DV16iXKMfvBxym20A1kLwGbIk10vbUpBnQg62L_ywgTdixFSd5yIJD4dzm9vJHUw0IbWQ7ssC4WYVjD3cpFBk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:yyn4YHxNRX3Vi3ZQ0o7kzufsvTMqtgkIrvHNTqhuvZf25PXc9bMt-g>
    <xmx:yyn4YCQqs8wqwB2Jg11l-VIXInHDV4m0W7H-jSBITvBi1rcDns849g>
    <xmx:yyn4YKblO7LfDIMmVMitAYaoQsDFHgn9iqym2d0wqfyePCtC65DGlw>
    <xmx:yyn4YBE9fLuBDPVbp-9P5jCW-HfV8ZPMFZI4V5fIEPxl6WNXx5TeUA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:06:03 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 47/54] arm64: dts: allwinner: h5: Fix GPU thermal zone node name
Date:   Wed, 21 Jul 2021 16:04:17 +0200
Message-Id: <20210721140424.725744-48-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
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

