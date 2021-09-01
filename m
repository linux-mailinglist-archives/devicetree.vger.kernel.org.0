Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C28C3FD6A2
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243585AbhIAJVY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:24 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:35775 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243595AbhIAJVW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:22 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id 6F0705C00C8;
        Wed,  1 Sep 2021 05:20:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 01 Sep 2021 05:20:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=VA1mIc8yNbTF2
        OIlHCjDFCpG6avOvBN47GRAdoilK7o=; b=VHZWLguml92LpeTqxNHAT09MYiVpD
        +QxkHfDvOypR1zSbHW7pXWFJx38DKZAHFBstcbnJtqx5ICBfg9IR2tqDcr/hWGz+
        P9PtFrj2ZCGERqoiWfOTH216dOGm/qvOHBX2Pdf+KDyIyrYCiqe81NaLcxNLfMZR
        FUYx8JSxhkJbkbmA/IT+nS9BYN0Gtg9haui5J3gdDJFiFt4J24mpzU0RjklN+uLX
        4T3pTigVnz+5pZZ2ewitQh2iY8pUCaKEdpAhvMJXGaxM/BYTN5/XXkq5mHfeKUGi
        +trWmBo0ichkNpK/m8TPsWMgUV4MRjucmjxtEJQnkvS7gWreQS83HL0mQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=VA1mIc8yNbTF2OIlHCjDFCpG6avOvBN47GRAdoilK7o=; b=u/UsjgiZ
        ZqEHUFPiY2x+BhXZ4XQm81AgWjx7txfClvhyp3XQK7katDkV1yWmZscHruOmemqx
        f4DqHcajykWvToDNTM2HC8EDAn+tgo5owV8i2z0L3Aq4vEA55t8TTpNcp6sduM65
        1yObvVtUh+vUODTdN0C5JKFgOu2Ifd2wShXNukeCScga+goALqyWwFJwRtY+A/D+
        SqU6jKsRofFONWFUO040BJdSkDdzSQFmfKpRk2vaWFBxDg3KKkzEjrGjex3YHH3i
        ibpiCx5wRcVu7s/l7pXAMD+GVv5ed/HVO+HZe8O8jhgWLFLr84CctFGkBEQ0tuE7
        OWWJhVchIvdOdg==
X-ME-Sender: <xms:2EUvYY4rwgxGa8xCdbh_F2HKwLeKC4goXVxxmg_327F0-PMtdeaGoA>
    <xme:2EUvYZ47rHSmeILBbXi5k8Zr6W_X0MalqnGiwfM0I5kzkM_vfeBialn0JQo2Z_Fnq
    2RmES2DXBiIgPtD0Ek>
X-ME-Received: <xmr:2EUvYXeu7VvKbAJ-kMbSIw_I7q9cbs_xvNAjoXcRcTgdol7Of9Ahz6RgFq2v9F2oF091xkLklj75fyPHiKG_eZZkK2kWQKzlhKNw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:2EUvYdKeifsjQrzMtfnBvNUFGu9VrDK0P-rV1SUdAEIBqyI1Yhmrhg>
    <xmx:2EUvYcIPJYCan-P1Y69gGByIzOLpn-x2t2jOiN0YXGcXrl6wwv8ePA>
    <xmx:2EUvYeydrh9j2JBpnbWOBiuf5K0zfvYFw0emAkrFBjDbiC0KRg68rA>
    <xmx:2UUvYU-QaWmYUZlfz2RpdTXbn9pTU043bKfu626rKVzpWOfgD9H6aQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:23 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 51/52] arm64: dts: allwinner: teres-i: Add missing reg
Date:   Wed,  1 Sep 2021 11:18:51 +0200
Message-Id: <20210901091852.479202-52-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The anx6345 bridge mandates that the input port is named port@0. Since
we have a unit-address, this implies that we need a reg property with
the same value, but it was found to be missing in the Teres-I device
tree. Make sure it's there.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index 45e1abdf70a0..52e032f7fb68 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -139,6 +139,8 @@ ports {
 			#size-cells = <0>;
 
 			port@0 {
+				reg = <0>;
+
 				anx6345_in: endpoint {
 					remote-endpoint = <&tcon0_out_anx6345>;
 				};
-- 
2.31.1

