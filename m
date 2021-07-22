Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB2543D1D0A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 06:26:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230021AbhGVDpq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 23:45:46 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:53241 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229905AbhGVDpq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 23:45:46 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id E84DA5C01E3;
        Thu, 22 Jul 2021 00:26:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Thu, 22 Jul 2021 00:26:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=bvHSmzBLvenTa
        xgVXhkOtqVZ879wzNNM44pHo8k3y7E=; b=hCN+z0YQJTKFnJzfxpYgHY3W3K8pd
        31oQQogyyo8l4nZoSSy8p/zCxUvDyGt4wQqRhbDYOCdDFadSEfkALQgOWTy3v8Ip
        jFl1H+1e1CbJAuUxZaqBfyrSCEP5ddAZ5Mi/wDp0xQZC6OgUOXytRTmzmf9mjTu6
        GHyOkucFS35sbVG1hQQJ4+fr+fQoEV8WkjbxC8L7XqzoTdhr6gR6ReFiAIAgQF5Q
        qu56E0LaHKzcxSm5h9Z6rNMcnolHzxPnOsQiRspFFR6Xa390J7c5ZdpffQHBe90u
        T+zI/07zzNUHtvB4YCbf6rAwgOZnY/dVTPqPcXezv6O6aql20qeXpiyDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=bvHSmzBLvenTaxgVXhkOtqVZ879wzNNM44pHo8k3y7E=; b=S7JlRNNA
        QMnXw2dB7qX5odKvfbFsVb9Mm2ftDZy6teejwoScN7YI404EA44wSB1BATlcbdr6
        YHPIXNyWDov+wsAn1zj/Sbi2QVXfzQ+QbcRvmERJVGgAAoFZp86Jf5Cr94aMKaL+
        6CoZMZzcTG22nIKEMlXZ1UhzXDOFroC+GYZWA1G6aUbr8ICfBBOPhRQ3eJZ6WnVA
        e6uXc3Z2p9ftvLGSF6FPP3hi1JLnrfxKzH2iXbbGI2CeuYwHQW4xkkfXZTcRKKOQ
        T1rSV5RO3sMX1eIG4Mq2nhQJ6K8rvT6kx2LMnZtwr3FB+mmF2b1scbHFxE6ERlzt
        yYGQemjM/mt2KQ==
X-ME-Sender: <xms:bfP4YIqgvyAn3oCbLPOVpQm77Jza3ZA9aRBild8ncCCHtsRdZCUjtQ>
    <xme:bfP4YOpyAQ9rFmfOIqSOs83K2v0w1qzqRYOF_bEVnkzGEUAdc0sI-hSJdyWHLawvd
    ZhZ3gFPgIXKkNhxOf0>
X-ME-Received: <xmr:bfP4YNOB9IPuD8XNzSNLuiDt_ueB3A8VvbJZMAyw5AmEfj-3zSoNU7QK_a8K38RC0B_Gk8zJcSR6y9H_nvTXyNDW7L6mfOiqrakzQFRTs9pI1xBwJxlXzfVR1Aa0VeA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeehgdekudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpeekleevteelvdduheetgfdvfeelueekffeggeethedtteeljeeivedv
    gfehjeejheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
X-ME-Proxy: <xmx:bfP4YP5EJsmaRsJWDicnYX6LwbV0EZx10ZOJKD55pCteNpMEEw3chw>
    <xmx:bfP4YH5YsyE8MgdF-42JWWjR6RUlIOUayZsY55cBsuRy_9G44l34MA>
    <xmx:bfP4YPh97NNQTyxGBWHCzWN0ypOf2q29f8va7AyLAM8pghXHlEivRA>
    <xmx:bfP4YNQFiTlNwFi-qGKAJQ2DmO2BW5qFLt8n_aN7co5KtvpsyydRrQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 00:26:19 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH 2/5] arm64: dts: ls1088a: add missing PMU node
Date:   Thu, 22 Jul 2021 04:24:47 +0000
Message-Id: <20210722042450.11862-3-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210722042450.11862-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Performance Manager Unit was not described in the DTS
which meant performance event monitoring was not possible.

This was exposed by a change to the PMU handling in KVM
in 5.11-rc3 which now prevents a PMU being exposed to a
guest when the host does not provide one:
"KVM: arm64: Don't access PMCR_EL0 when no PMU is available"

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index 79ceadc9dc4a..752c7f41e6b1 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -189,6 +189,11 @@ timer {
 			     <1 10 IRQ_TYPE_LEVEL_LOW>;/* Hypervisor PPI */
 	};
 
+	pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <1 7 0x8>; /* PMU PPI, Level low type */
+	};
+
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
-- 
2.30.1

