Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F12E23D53A1
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 09:13:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231902AbhGZGcf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 02:32:35 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:58667 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231332AbhGZGce (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Jul 2021 02:32:34 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id 688025C010A;
        Mon, 26 Jul 2021 03:13:03 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 26 Jul 2021 03:13:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=XGXySQXk0njgc
        3zuMDvI8hFGu0ZsjKRJKHONoj+sjhY=; b=eKozgajZfbcpTkOstPn8yJm42kdcg
        /fKLuVgBYtREfJDsKs/c69JzKChti2VeNgfEa0tjeAzvcfTjzulDmlRRvgjHDGaQ
        zDW9Vq0qmMRFOasjruUF0ltQcDEdH9ndpMAtxJoGLz0jgtXDILyDfq7odgyKowLQ
        Bzy8i/vuVw5xM0wlMHUXHAkpzEhv0GHpW6oc4GelmR3GJJQsrIurKRYTeUv3pu7O
        fuoYIW5jnTgA7zCd60+dY/odJDxOF67qAfe8ZBtf5Wx7QNQcXp9eZPjjaBJM2BD4
        Kdj7ZFYcliRJ96iyu/syYIlacYAi2Rb/B6syG3YVgcoBWl4kIa9tKMzJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=XGXySQXk0njgc3zuMDvI8hFGu0ZsjKRJKHONoj+sjhY=; b=GuD+WNdU
        RBefUnEBGLJqkIbFkKyfCQkGjSgaqU2Qaz4DyzkXTPdWL7Na6+dCdPPS0+yOihgV
        JRGvjPeaIG/vAoPAisp9YtySLmLs3P6sjoP4Gy4TMhKw+udLoUz0uPzLqFNDOUts
        syk6Cz2BvS8/HZE8tPcV8AHbp8wze0wCPVpCiRDKv3n0XitjQOzVpDOU2ZPT83d6
        OAZsvA/r+bSNk4Cc5c2wpxw+SLs2VaOtBuVSaE7pGJSHtSaUuPP7r5VadeevR7f1
        DobKsTuxFWZSUhWeoyzpiruafa24SoZ8E2FRzNyfKue+k7Azj12cY59uGgY1Ycwm
        0U5h5VZ8w83a2g==
X-ME-Sender: <xms:f2D-YAUmMVkkHlNKHFan1QHy3hIR7ySDH_mugWMDlZograZ9aQteww>
    <xme:f2D-YEnKp8yGd7z2PnItY39xegMRAaUnLZIlB0CK6VrPEJqY7-1BIwnstspJtXJuv
    yI4xc2E6V_-NiV0sSQ>
X-ME-Received: <xmr:f2D-YEYP26Mi5SrA8qy-OykBsAKlXi7DpXzGSSjFa_nOp-crbCDhi_MDfeOwA02Qj2LnQa8t0mnpYMgyQR57p68QoY9NHi0Xo1_Edtbe6BseFVkePi1e5FiDpCw2uaY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrgeeggdduuddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghthhgv
    ficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecugg
    ftrfgrthhtvghrnhepkeelveetledvudehtefgvdefleeukeffgeegteehtdetleejieev
    vdfgheejjeehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:f2D-YPXQaaGFJaVl8bwf8da6sehWw8zUrLHtaOttp1cxi6qOwT8YSA>
    <xmx:f2D-YKna6R_ai5MejTLy8Mh0vBo3Y8r0bK5-XuUiAYTy97a9VbDnpA>
    <xmx:f2D-YEeMuFOUO2_XDUn80DAu69xAU2GWX7WBomyScN-iWvJh029qPw>
    <xmx:f2D-YBuANya5uik-YoVpobCtfe7hBHTSQ_-U4CoA1qfdRM-kwICBCQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 26 Jul 2021 03:13:00 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v2 2/5] arm64: dts: ls1088a: add missing PMU node
Date:   Mon, 26 Jul 2021 07:12:13 +0000
Message-Id: <20210726071216.22711-3-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210726071216.22711-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210726071216.22711-1-matt@traverse.com.au>
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

