Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0695B3E52F8
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 07:39:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237155AbhHJFkA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 01:40:00 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:39805 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234208AbhHJFj7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 01:39:59 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id BD4965C012F;
        Tue, 10 Aug 2021 01:39:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 10 Aug 2021 01:39:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=BUNYiaqYyvvif
        TaaWDUMBb2en8mCP8FH1NoATW9aNVo=; b=evPGH6ZT1+DL+K2VLMg8yVBME1bo7
        O6Pya0aJhGT2c+JWA2AnGh3MWjNO7Q3kKdLlyEEQz9CatsFZCEGPwafNyZvANIHc
        11riBj2gDbqveUwX/LRWUAPFxmFifjIpS8Jm3L6t5dZ014s1pzH2ZM881zXzRrng
        5LEXeP3gyS4KPFnrvQYRNDH/qsEE0lFVctlNwVxTP3o7yVv7PTdaarY9xwU+FzOv
        4kpnOzZKoqiFu1PpgLIbW4vRbjm41jF1kFE5rZcxcmfKDLF8+mXYLZx4ziYJFbDJ
        Gme/92/OvOwqOGri8uI1kgEOSLhZMdVHsrGW1g55RFTkfFf81qAdOupPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=BUNYiaqYyvvifTaaWDUMBb2en8mCP8FH1NoATW9aNVo=; b=S61RzuV1
        OmwxgzdbOpPiev4eBPzK8nlJts6K37hCnIDjLK1MOhrVBgM61IdiCDDyOvTlHK78
        2YtvOysz4dIUisQqqCNONC2UnbR5FAqVgJLxUGW+Uf9MO4Xes4VP+a34jOhFr3Ko
        /mJ7zp1FZDFroiomScS3p0Y9NEiYxul3lJFyJfSwgb5P07vG4QfZDWQdwPFufnQU
        E8Yvy2XUjtiteyRZCx4l30VoWafQYEmzblwFNj18mM6qiRoPpcUAuocwUh7xXecz
        0ozNVM8NidWLgI8U3/f4/fJPTv9pxUBHfNpOaPjCcd+cHoiR3wQxtwrnxLmgIoMq
        8yRY4WV7M97ylQ==
X-ME-Sender: <xms:GRESYddmlg9RbYTeumBoA_usx4XCk8-j5e7iMbeSTQF4V2FR3KJx_A>
    <xme:GRESYbMPmUvhc3yjB4LGbS2YFb8RKEvdxydUrcabiLqo4CuY5keDJBqQtg4UuQtV2
    u9-dkjC3kV3FvdhACY>
X-ME-Received: <xmr:GRESYWjZql77TYoQPCrVlvcMVZb5-EgzsqGg65X_01QgQV2umfZBNy2mEUyzeOle_w-HIO78pfPSzGGuD-QEN36MTcjTzASH37mK5P_LurF0eRuItYO-xCd0uSe2Lmo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrjeekgdellecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpeekleevteelvdduheetgfdvfeelueekffeggeethedtteeljeeivedv
    gfehjeejheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
X-ME-Proxy: <xmx:GRESYW9t1a57re6AIh-rOwykKrXfQTIF2z2Y2uYioL6oZRWSB5YmCg>
    <xmx:GRESYZsWyZFUJXxVMbqGusrk7DF8Q0-pGt0B08_ijxq2PZ5TuK6KaA>
    <xmx:GRESYVF-uH4_racH_QJVNSEQ1g5YH833I37dvkX9IjeSEmeeUV1yVQ>
    <xmx:GRESYXWToxFHGmIQTabfY4uYVBUyKi_kkkTTziqi8Ey_ZFrkKJWusQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 10 Aug 2021 01:39:35 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v3 1/5] arm64: dts: ls1088a: add internal PCS for DPMAC1 node
Date:   Tue, 10 Aug 2021 05:38:24 +0000
Message-Id: <20210810053828.4240-2-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210810053828.4240-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210810053828.4240-1-matt@traverse.com.au>
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

