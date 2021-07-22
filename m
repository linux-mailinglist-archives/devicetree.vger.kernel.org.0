Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 901F33D1D09
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 06:26:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbhGVDpo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 23:45:44 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:39477 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229905AbhGVDpn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 23:45:43 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 35F075C01BF;
        Thu, 22 Jul 2021 00:26:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Thu, 22 Jul 2021 00:26:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=/EG0+NCRYyx4w
        oijHYcv+3mKLvonagwFjD+AP47/mSQ=; b=BEyfltFcxEnz+sfdwVBmtTUyxOSGq
        pgEbnlUtulbD/i3iKiQ7FhJbKAfkJWBrrSK9dVwH9di5tn97D07yNMujnGq525Cw
        VuJtf5Sx44iQxSOFZUCgDylhOGpZWiLaAOWc1cMdwCCjAF6IlbtR5vyZLiBsNTEj
        u/JnZCFGUPkgRwY6NMYxAiynyCJRqsoumcu0+EWt102sY5u5iJT1ikXqZW6Ijc5C
        wVCy0n0fW/Gri6uPfv5sp8lZY512FNdCsbexvj9dilZnu2A2LbaxgkO0BVX+hHkh
        Sz0KCj6uWpst9yJTlFWmciJppVzSkblwN+w/mGvUyYWfvS7ddeUSR1KiA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=/EG0+NCRYyx4woijHYcv+3mKLvonagwFjD+AP47/mSQ=; b=jqcFuXmU
        XNo4vu2LqHK2E1XNEb9wBJBv8c8CH2YsQ9x/c9G/UDKcz27x9cGphHkU0qZuQLbp
        f8qsyFkyIcEeNvuh2tQ3n1yI2QCF5a9wvqukhaDr17f6zKrYwv+g/Fic672hWPWI
        cTOzZezRXe/6n7W01CsB5UJc2gpntq1Dwj5LR3ESzRsxLRUgPwEqYdZtk+FBT7R6
        SuZBZSv48bAqhBPHkzrpvLQhIkVuJhjx0OXIONg6ImJMZ+lYfQYDsNE97efN3EJj
        T9lmKbgb1u0yElRkFFZHfxJhtGHmpfmzLv0P4BxRy0lGqPyHYI0aLM6T5dyuzACh
        2CIGZX82pgfPiQ==
X-ME-Sender: <xms:a_P4YOsISCak6EJjy4jgW0Yc2_kXeAd2wsFjyp5-BZx2oQKK1nqK0A>
    <xme:a_P4YDcKSU8YuwgXBEZUhRzwD6O48GW3Kgf5EkaTBw8RoWNuMww8r2SxSSkipqI4U
    8d9RTT_bXnfDlhari4>
X-ME-Received: <xmr:a_P4YJwbW3VSYD4sYS7jflna3PTPwKONm5_WRK6m_7x4vHA5KB9rzyJGXJg9xeqIzKTFdxhenysJWaLpQJ8ykul4s7VmSaL3_lGnsFiupKLAUIjhYgCBCMD9iqBk_9U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeehgdekudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpeekleevteelvdduheetgfdvfeelueekffeggeethedtteeljeeivedv
    gfehjeejheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
X-ME-Proxy: <xmx:a_P4YJNVTNMcw20K_Fw2T28OS0Ka8YbOoE_ryhbfZ_bAgayBqk5zQg>
    <xmx:a_P4YO9FKiYyjBuZXO_u7NhrLV6z4H29Np9nHm11IKC81X3ShivW7Q>
    <xmx:a_P4YBUdD3ZgVsGQSAcrwrp6G9fLGYQVQ0RKt4kDkbh5OB4qCzTp9A>
    <xmx:a_P4YFlC41CyhpCJdo5jaV13KiTs0VSpdKXmhgM7ohGcMLuGPgwIPg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 00:26:16 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH 1/5] arm64: dts: ls1088a: add internal PCS for DPMAC1 node
Date:   Thu, 22 Jul 2021 04:24:46 +0000
Message-Id: <20210722042450.11862-2-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210722042450.11862-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A previous patched added the PCS for DPMAC2 only, as
used for the AQR PHY on the LS1088ARDB.

DPMAC1 PCS access is required for PHYLINK SFP support
on the Traverse Ten64 board.

Signed-off-by: Mathew McBride <matt@traverse.com.au>
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

