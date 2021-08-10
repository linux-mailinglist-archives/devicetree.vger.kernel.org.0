Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF31F3E52FA
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 07:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236412AbhHJFkC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 01:40:02 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:36619 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236404AbhHJFkC (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 01:40:02 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id 8FB325C015A;
        Tue, 10 Aug 2021 01:39:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Tue, 10 Aug 2021 01:39:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=XGXySQXk0njgc
        3zuMDvI8hFGu0ZsjKRJKHONoj+sjhY=; b=jOu++EnPHbf+UOfGd6yW2XjpzKJrl
        qa+hbMeGAQCtOro7AgigXV7LkwLhVCurgArTMVniRL4e4rFvwh9MUQPbhl0H3W8e
        ucsUYtTHoVPSMMyCcmAkRPgBZFadjRREXGule+bXx6cz5vbmYSISJHeBEYhaigLW
        gUCGttfPv4aCGX2Ebrm/5ktJDpnkiLahPQ1h1fJyzMwTJhhChs7o5leenTxgMSTB
        fvpVihY5m1qZxCKqgdQDR+VNjwX+fAnAGKAYqaQjhhxGwPi5pPx+H5HE9W4pppS3
        O04qoSkuul6o+9k5zE+QlI2bg/KIO+V0UwwaBX3lYYICufslC1cReAzDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=XGXySQXk0njgc3zuMDvI8hFGu0ZsjKRJKHONoj+sjhY=; b=d7fmAjYt
        yJDL0m82yn6PlLHcPAnXO39kcEJwTiz6ZD8bf0xpMz38y4XDY1lairSb9Vcx0Tn5
        C1LbxIgENx42vlekKZ2PWNLrzliIaZsp/k8ikjdwbHPsxAnP5loPXleWBq+S9dtL
        iBPRur/1aiZ8+Nq5ZM5Z9C5G3kKwQ5UEMfEqoU4L9zU2XK+TVjlODdyMsmxFfhGs
        x8VgrYIcF6Bw0r4xIkQjDaIQ5Ay/hAry7LUHao1rvoGKvBJjuiG3X2+fPSWhApL1
        rTEhCUH2PCBT+xRYrIGRiVp0CW2GZeFoPt50lfWZOfcIz+Mz6hNkS42+m1gzvQ9z
        aw+Nz5gW+G7xEA==
X-ME-Sender: <xms:HBESYRSj_LbvWikNjl-uxdvb3t7RkI9R_9KRgsHoE9XHyt0npmaC5A>
    <xme:HBESYayDe9revK_PVDKzAtOu6MPe-tXsfiFDcx3rsFlbhLotgXk5BJjnYxXQtkMPH
    NKX0Pk8_hG4487V7Mw>
X-ME-Received: <xmr:HBESYW3w04AzZ_PASh6HZ3KqyIYAocG6TEZhZrR9oWr-8-w0IXWsXVdn5zdOl1E4LhPE9C9E2MoidCATorQBhB_I1T8YCpMClsM2LLoXrWEVl7qm06h9cUVDQiyV1UM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrjeekgdelkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpeekleevteelvdduheetgfdvfeelueekffeggeethedtteeljeeivedv
    gfehjeejheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
X-ME-Proxy: <xmx:HBESYZC4nrPffunDcRLUTeCy-q2dp-Dm1u5EFC8yF9tHCpnwumXuZg>
    <xmx:HBESYai5aVWOaZV1RKX5LyADlFKgHOMf2sGBHhREmvMhvha6ydryBg>
    <xmx:HBESYdqYl7IOAWDEiKSi6XgVQh6Ta2xIvz_YoR28dOn0HXYWTB1ybg>
    <xmx:HBESYcbEbTBZc6775JvZm0Vhm2p9zmQpJDbSqu3ed8NIeLuYLwhWOw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 10 Aug 2021 01:39:38 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v3 2/5] arm64: dts: ls1088a: add missing PMU node
Date:   Tue, 10 Aug 2021 05:38:25 +0000
Message-Id: <20210810053828.4240-3-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210810053828.4240-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210810053828.4240-1-matt@traverse.com.au>
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
index 79ceadc9dc4a..f85e437f80b7 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -189,6 +189,11 @@ timer {
 			     <1 10 IRQ_TYPE_LEVEL_LOW>;/* Hypervisor PPI */
 	};
 
+	pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+	};
+
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
-- 
2.30.1

