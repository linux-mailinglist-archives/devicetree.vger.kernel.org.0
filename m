Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6BFC3E52F7
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 07:39:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234357AbhHJFj5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 01:39:57 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:40947 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234208AbhHJFj4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 01:39:56 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id D81045C013E;
        Tue, 10 Aug 2021 01:39:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 10 Aug 2021 01:39:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=qlpsgNglcB6Ix
        ihSP2vT3ExvbHzxYtc0un128CYLs/U=; b=LHnYkfg+CK7PBKV9JFetNc4M2xWqe
        34Ul+4WnLbYOqhikQePz1mcNLdGhZ1/hVTvNtgJpCGy3vFjGGvQje6sB9VKr/2dD
        n8kAGOWNavwKczxUC8P3SDVwFaPy+vFoX1a2DJpGZQn4wD4zZJyfPA5Zmku6ss5P
        V0XV3vraS3zRvPw3TXEFCcVTfi0kl8rn4Lhl2B6UlPA0jVc5uxf+npnFwDaJjBR4
        pwm3mSr288OSXyMr4VQCa8MzY8nYkZND9lSOzgh60YDGoGcU32iBLEfB6KrtVxPp
        5TcQYQz3mj631GqUd3H1kAkY9U1ip7xPn+MJx076SBBiLFJZx81etfHAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=qlpsgNglcB6IxihSP2vT3ExvbHzxYtc0un128CYLs/U=; b=PqEqvHo2
        tazgrWn/avuGRPzzi5/yrLuOxupMaX6FTL+2NFVzmkkiuL6uqz7d+n0kRh3bj6kY
        4Eqklb5nmUiyJPbLcwTjFtRB57J1uiuhLiJmacRbAo5CF8pX7v3Fg9mfmnsCYENj
        Xlq6KihySB7Ie2BxhvdOmLK2WLttJ2hgG+q3pQ+fTo4l+ZNgC6bMD70LXxyadX7W
        Yn2e82uBT4zK9sQ3cBz3yY9Ydl2ZljdpvAMuN88H/894aYu7eiZOcE1HKkwfbiuc
        D+VMKTcmaD79Wppem8D0KYtOem+D+S0yVg6JnuxOoCupi8UBjULoHebhuFpPWASF
        hOGv8B3biQFhZQ==
X-ME-Sender: <xms:FRESYeWZBE9DYqJWeGtB16mndoVZTqkGICmsPejcRNdwaJc6srIlxg>
    <xme:FRESYalgS4SoE_T9Y1_F4P8ZqEfs-aSp5XBTnkVqZ4ivAwcXf-Ya1KPRSm_fASEl0
    P66CWtCi1xQSQHtEqY>
X-ME-Received: <xmr:FRESYSZWHK7LQp8y3TJ4jOYa1IPOQC1pnhZrgfeFxhjMLL_QIFs-IlHkTlvVoah293I-fgV3Yp8L0H6_GCNnWvKTdPq-twtoIKu-G4d4N262R_yzNiwLA8MXcfQFKEo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrjeekgdellecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpeehudekgeevhfefueeiudegjeelgfeitdevveekkeetgfeiteetteff
    leevvedtleenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhtsehtrhgrvhgvrhhsvgdr
    tghomhdrrghu
X-ME-Proxy: <xmx:FRESYVU-YjuEk2OkOltPxCPipGOQJbetJGaMCzdvKuV3EuPAbPJd4w>
    <xmx:FRESYYmsdPUz2giiQajkpzSsrzMTFwcImQjMUcRRt_C3PUi0rDSkCA>
    <xmx:FRESYaco47JWa9UqJAxM0tSStqMJzW5NesVGLQ7J3wypTSY7iTLGpw>
    <xmx:FhESYXtvomR6yYxHvuX0dJIkysXANXlAUg7d_zypPL3Mwu5RhyDRSA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 10 Aug 2021 01:39:31 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v3 0/5] Add Traverse Technologies Ten64 board DTS
Date:   Tue, 10 Aug 2021 05:38:23 +0000
Message-Id: <20210810053828.4240-1-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210722042450.11862-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Traverse Technologies Ten64 board is a networking-oriented
Mini-ITX form factor appliance using the NXP LS1088A SoC.

This patch series adds a basic device tree (fsl-ls1088a-ten64.dts)
for the board. At the moment only hardware features supported
(or soon to be supported) by mainline kernels are described.

In the course of verifying the DTS on recent kernels, it
was found that some LS1088A features were not described
in fsl-ls1088a.dtsi. The first two patches add them.

The device tree includes a reference to the Epson RX-8035
RTC which depends on this patch series:
"rtc: Implement support for EPSON RX-8035", reviewed but
not yet in the Linus tree.
https://lore.kernel.org/linux-rtc/20210709044518.28769-1-matt@traverse.com.au/T/#t

Changes since v2:
 - Move flash (NOR and NAND) partitions under a partitions node
 - Fix minor spelling error in fsl.yaml (s/bassed/based/g)

Changes since v1:
 - Pick up Reviewed-By tags for PCS and MAC/PHY related parts
 - Use constants for describing interrupts for the PMU
 - Use the Cortex-A53 specific PMU compatible instead of the armv8-pmu3 generic
 - Fix formatting issues for the board DTS (ordering, newlines, node names)

Mathew McBride (5):
  arm64: dts: ls1088a: add internal PCS for DPMAC1 node
  arm64: dts: ls1088a: add missing PMU node
  dt-bindings: vendor-prefixes: add Traverse Technologies
  dt-bindings: arm: fsl: Add Traverse Ten64 (LS1088A) board
  arm64: dts: add device tree for Traverse Ten64 (LS1088A)

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/fsl-ls1088a-ten64.dts  | 389 ++++++++++++++++++
 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi |  18 +
 5 files changed, 416 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts

-- 
2.30.1

