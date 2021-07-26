Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7DA33D53A0
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 09:13:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232035AbhGZGcb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 02:32:31 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:49201 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231332AbhGZGcb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Jul 2021 02:32:31 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id 756E75C010A;
        Mon, 26 Jul 2021 03:13:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Mon, 26 Jul 2021 03:13:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=BUNYiaqYyvvif
        TaaWDUMBb2en8mCP8FH1NoATW9aNVo=; b=j3rMWHl6bG3jP1uZHiFTVH3KgytDm
        KEu8rqoYUcjRlybRdVJXCVkv4zARCeOlN5mmlEck0IxhSEHPCiK6ShisX/Mt5+Hg
        6iiaOY6YAN6TUUZwuWUzFzADxTWrS/Q4W7I2Lkmq1eHqacjayl0Tlil/Vp231q8W
        BxBU92ha4KV7xQzliH/Vk8NIeMY/R06zt+NhtJkzoH2CN6OaVfPoWmutQYNIQTQe
        gCE4KAUEfoTmIrELSH/r9hY5OQVv2oxmPpZUJZ+C6M3uzdIPRUzJQFCbF5ANYZ08
        rCUcvTwt7OtC1JgR+z34b1a1Sky8/s2zSQ8xBcEIjkFVgUeFg3n0OsdYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=BUNYiaqYyvvifTaaWDUMBb2en8mCP8FH1NoATW9aNVo=; b=DQwujPap
        u+9FC1ibK+D5c3zOZaKPWE3a7w1+b/m0KvIsLZaNNuok5xUaZtJZwoWDuW/7TQ73
        RJp+MYYcFwLjX/jzNvYcuLBULxbrGaHCT3jMH1SxkU7Bj6Q0I7bovue8Szf0y+eh
        2bZGkXaG/4KhAM94BN0TbDDKa7URVSIeQxsp/GRmXYROomqKhUmQwSN47U87ryCd
        GIw8iUfb7ze+o1/YnSnQcnHaidu8TXJDbkaZyN6IiHOkeJXTz6CXNs8d4lrZkS4t
        zzRrjHVZnBhhxXI1RSHvrydb+V3OsfD1WGM1oC1wt8YK6X6HEXHyXhIjG1w3HO/X
        GyIcPsuJ2AFZYQ==
X-ME-Sender: <xms:fGD-YFr-rSUAfarGo0awHqpdhAhASHB9-EVlZE80zvU7VmNEWOaX_g>
    <xme:fGD-YHpEiCwES4wCW6ZEUYuZyylkV1-iByzeS-TZtpNQqX_xriuWtY9o8XOFXAnKz
    xCz1OJgTSlbuIXs9Wo>
X-ME-Received: <xmr:fGD-YCMcY0dwRuNKVf5K-CYxhOBP-TlwSawcmrG-2gML0vYyK6vdxH9tZJ8iru3_DokMr3NsO-rsKFikZ0QyGVbBnKCaNLQfo54CiqGVI10n4vNPXiFPc5JfW9K16EM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrgeeggdduuddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghthhgv
    ficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecugg
    ftrfgrthhtvghrnhepkeelveetledvudehtefgvdefleeukeffgeegteehtdetleejieev
    vdfgheejjeehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:fGD-YA7Zof-m8Mpc1d79K6LUPtpW9R5MYWhbML4tJvZPUdmXRXkxEQ>
    <xmx:fGD-YE7DF7oEgJcFPDQsNbC2h_9zQBzIuL_Pl9ZAgq0sPrVyHoFnKQ>
    <xmx:fGD-YIjYZMbmgYRp4lNlk919iYIQdSCYja-Cs3MnM-IxjSN6L18RnA>
    <xmx:fGD-YORc_fKaiCigeqj0vzdu0wi9goFjwP3qB9vj31LXjrOBayFQIg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 26 Jul 2021 03:12:57 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v2 1/5] arm64: dts: ls1088a: add internal PCS for DPMAC1 node
Date:   Mon, 26 Jul 2021 07:12:12 +0000
Message-Id: <20210726071216.22711-2-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210726071216.22711-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210726071216.22711-1-matt@traverse.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A previous patch added the PCS for DPMAC2 only, as
used for the AQR PHY on the LS1088ARDB.

DPMAC1 PCS access is required for PHYLINK SFP support
on the Traverse Ten64 board.

Signed-off-by: Mathew McBride <matt@traverse.com.au>
Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index 2fa6cfbef01f..79ceadc9dc4a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -765,6 +765,19 @@ emdio2: mdio@8b97000 {
 			status = "disabled";
 		};
 
+		pcs_mdio1: mdio@8c07000 {
+			compatible = "fsl,fman-memac-mdio";
+			reg = <0x0 0x8c07000 0x0 0x1000>;
+			little-endian;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+
+			pcs1: ethernet-phy@0 {
+				reg = <0>;
+			};
+		};
+
 		pcs_mdio2: mdio@8c0b000 {
 			compatible = "fsl,fman-memac-mdio";
 			reg = <0x0 0x8c0b000 0x0 0x1000>;
-- 
2.30.1

